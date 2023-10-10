# Copyright 2022 The TensorFlow MRI Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

import string

import tensorflow as tf
import tensorflow_mri as tfmri

from tensorflow_mri.python.activations import complex_activations
from tensorflow_mri.python.coils import coil_combination
from tensorflow_mri.python.layers import normalization
from tensorflow_mri.python.ops import math_ops
from tensorflow_mri.python.util import keras_util
from tensorflow_mri.python.util import layer_util
from tensorflow_mri.python.util import model_util


class VarNet(tf.keras.Model):
  """${rank}-D variational network.

  This model can be used to reconstruct MR images from *k*-space measurements.
  The architecture consists of an interleaved cascade of gradient descent (GD)
  steps and neural networks (NNs). The GD steps incorporate the MRI encoding
  operator and they minimize the error between the current *k*-space estimate
  and the *k*-space measurements (data consistency). The NNs act as a
  regularization term.

  This model is flexible. It supports Cartesian and non-Cartesian data and
  single and multicoil inputs. The corresponding encoding operator is
  auto-constructed internally based on the available inputs. See
  `tfmri.linalg.LinearOperatorMRI` for more details on how this operator
  is constructed.

  Notes:
    Test note.

  References:
    1. Sriram A, Zbontar J, Murrell T, Defazio A, Zitnick CL, Yakubova N,
       Knoll F, Johnson P. End-to-end variational networks for accelerated MRI
       reconstruction. InInternational Conference on Medical Image Computing
       and Computer-Assisted Intervention 2020 Oct 4 (pp. 64-73). Springer,
       Cham.
    2. Hammernik K, Klatzer T, Kobler E, Recht MP, Sodickson DK, Pock T,
       Knoll F. Learning a variational network for reconstruction of
       accelerated MRI data. Magnetic resonance in medicine.
       2018 Jun;79(6):3055-71.
    3. Schlemper J, Salehi SS, Kundu P, Lazarus C, Dyvorne H, Rueckert D,
       Sofka M. Nonuniform variational network: deep learning for accelerated
       nonuniform MR image reconstruction. InInternational Conference on
       Medical Image Computing and Computer-Assisted Intervention 2019 Oct 13
       (pp. 57-64). Springer, Cham.
  """
  def __init__(self,
               rank,
               num_iterations=12,
               calib_fn=None,
               reg_network='auto',
               sens_network='auto',
              #  compress_coils=False,
              #  coil_compression_kwargs=None,
               scale_kspace=True,
               estimate_sensitivities=True,
               reinterpret_complex=False,
               return_rss=False,
               return_multicoil=False,
               return_zfill=False,
               return_sensitivities=False,
               kspace_index=None,
               **kwargs):
    kwargs['dtype'] = kwargs.get('dtype') or keras_util.complexx()
    super().__init__(**kwargs)
    self.rank = rank
    self.num_iterations = num_iterations
    self.calib_fn = calib_fn
    self.reg_network = reg_network
    self.sens_network = sens_network
    # self.compress_coils = compress_coils
    # self.coil_compression_kwargs = coil_compression_kwargs or {}
    self.scale_kspace = scale_kspace
    self.estimate_sensitivities = estimate_sensitivities
    self.reinterpret_complex = reinterpret_complex
    self.return_rss = return_rss
    self.return_zfill = return_zfill
    self.return_multicoil = return_multicoil
    self.return_sensitivities = return_sensitivities
    self.kspace_index = kspace_index

    lsgd_layer_class = layer_util.get_nd_layer(
        'LeastSquaresGradientDescent', rank)
    lsgd_layers_kwargs = dict(
        expand_channel_dim=True,
        reinterpret_complex=self.reinterpret_complex
    )

    if self.reg_network == 'auto':
      reg_network_class = lambda *args, name=None, **kwargs: normalization.Normalized(
          model_util.get_nd_model('UNet', rank)(*args, **kwargs),
          axis=list(range(-(self.rank + 1), 0)), name=name)
      reg_network_kwargs = dict(
          filters=[32, 64, 128],
          kernel_size=3,
          activation=(tf.keras.layers.LeakyReLU(alpha=0.2)),
          output_filters=2 if self.reinterpret_complex else 1,
          # kernel_initializer='he_uniform',
          use_deconv=True,
          use_instance_norm=True,
          dtype=(tf.as_dtype(self.dtype).real_dtype.name
                 if self.reinterpret_complex else self.dtype)
      )

    if self.sens_network == 'auto':
      sens_network = reg_network_class(**reg_network_kwargs)

    # if self.compress_coils:
    #   coil_compression_kwargs = _get_default_coil_compression_kwargs()
    #   coil_compression_kwargs.update(self.coil_compression_kwargs)
    #   self._coil_compression_layer = layer_util.get_nd_layer(
    #       'CoilCompression', self.rank)(
    #           calib_fn=self.calib_fn,
    #           coil_compression_kwargs=coil_compression_kwargs,
    #           kspace_index=self.kspace_index)

    # if self.scale_kspace:
    #   self._kspace_scaling_layer = layer_util.get_nd_layer(
    #       'KSpaceScaling', self.rank)(
    #           calib_fn=self.calib_fn,
    #           kspace_index=self.kspace_index)

    if self.estimate_sensitivities:
      self._coil_sensitivities_layer = layer_util.get_nd_layer(
          'CoilSensitivityEstimation', self.rank)(
              calib_fn=self.calib_fn,
              algorithm='direct',
              refine_sensitivities=True,
              refinement_network=tf.keras.layers.TimeDistributed(sens_network),
              normalize_sensitivities=True,
              expand_channel_dim=True,
              reinterpret_complex=self.reinterpret_complex)

    self._recon_adjoint_layer = layer_util.get_nd_layer(
        'ReconAdjoint', self.rank)(
            expand_channel_dim=True,
            reinterpret_complex=self.reinterpret_complex)

    self._lsgd_layers = [
        lsgd_layer_class(**lsgd_layers_kwargs, name=f'lsgd_{i}')
        for i in range(self.num_iterations)]
    self._reg_layers = [
        reg_network_class(**reg_network_kwargs, name=f'reg_{i}')
        for i in range(self.num_iterations)]

    # self._forward_layer = linear_operator_layer.LinearTransform(adjoint=False)
    # self._adjoint_layer = linear_operator_layer.LinearTransform(adjoint=True)

  def call(self, inputs):
    # x = {k: v for k, v in inputs.items()}
    data, operator = inputs

    # if self.compress_coils:
    #   x['kspace'] = self._coil_compression_layer(x)

    # if self.scale_kspace:
    #   x['kspace'] = self._kspace_scaling_layer(x)

    if self.estimate_sensitivities:
      sensitivities = self._coil_sensitivities_layer((data, operator))

    # Make new operator with coil sensitivities.
    kwargs = operator.parameters
    kwargs['sensitivities'] = sensitivities
    operator = operator.__class__(**kwargs)

    zfill = self._recon_adjoint_layer((data, operator))

    image = zfill
    for lsgd, reg in zip(self._lsgd_layers, self._reg_layers):
      image = reg(image)
      image = lsgd((image, data, operator))

    if self.reinterpret_complex:
      zfill = math_ops.view_as_complex(image, stacked=False)
      image = math_ops.view_as_complex(image, stacked=False)

    if self.return_multicoil or self.return_rss:
      multicoil = (tf.expand_dims(image, -(self.rank + 2)) *
                   tf.expand_dims(sensitivities, axis=-1))

    if self.return_rss:
      rss = tf.math.abs(
          coil_combination.combine_coils(multicoil, coil_axis=-(self.rank + 2)))

    outputs = {'image': image}

    if self.return_rss:
      outputs['rss'] = rss
    if self.return_zfill:
      outputs['zfill'] = zfill
    if self.return_multicoil:
      outputs['multicoil'] = multicoil
    if self.return_sensitivities:
      outputs['sensitivities'] = sensitivities

    return outputs


@tf.keras.utils.register_keras_serializable(package='MRI')
class VarNet2D(VarNet):
  def __init__(self, *args, **kwargs):
    super().__init__(2, *args, **kwargs)


@tf.keras.utils.register_keras_serializable(package='MRI')
class VarNet3D(VarNet):
  def __init__(self, *args, **kwargs):
    super().__init__(3, *args, **kwargs)


VarNet2D.__doc__ = string.Template(VarNet.__doc__).substitute(rank=2)
VarNet3D.__doc__ = string.Template(VarNet.__doc__).substitute(rank=3)


def _get_default_coil_compression_kwargs():
  return {
      'out_coils': 12
  }