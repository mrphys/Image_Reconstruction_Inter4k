ˇĄ2
űË
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ö
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%ÍĚL>"
Ttype0:
2
Ŕ
	MaxPool3D

input"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"
Ttype:
2

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8żş,
°
,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/v
Š
@Adam/u_net3d/conv_block3d_5/conv3d_10/bias/v/Read/ReadVariableOpReadVariableOp,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/v*
_output_shapes
:*
dtype0
Ä
.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/v
˝
BAdam/u_net3d/conv_block3d_5/conv3d_10/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/v**
_output_shapes
:@*
dtype0
Ž
+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*<
shared_name-+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/v
§
?Adam/u_net3d/conv_block3d_3/conv3d_7/bias/v/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/v*
_output_shapes
:\*
dtype0
Â
-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:\\*>
shared_name/-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/v
ť
AAdam/u_net3d/conv_block3d_3/conv3d_7/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/v**
_output_shapes
:\\*
dtype0
Ž
+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*<
shared_name-+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/v
§
?Adam/u_net3d/conv_block3d_3/conv3d_6/bias/v/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/v*
_output_shapes
:\*
dtype0
Ă
-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:Ü\*>
shared_name/-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/v
ź
AAdam/u_net3d/conv_block3d_3/conv3d_6/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/v*+
_output_shapes
:Ü\*
dtype0
Ž
+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/v
§
?Adam/u_net3d/conv_block3d_1/conv3d_3/bias/v/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/v*
_output_shapes
:@*
dtype0
Â
-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*>
shared_name/-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/v
ť
AAdam/u_net3d/conv_block3d_1/conv3d_3/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/v**
_output_shapes
:@@*
dtype0
Ž
+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/v
§
?Adam/u_net3d/conv_block3d_1/conv3d_2/bias/v/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/v*
_output_shapes
:@*
dtype0
Ă
-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*>
shared_name/-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/v
ź
AAdam/u_net3d/conv_block3d_1/conv3d_2/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/v*+
_output_shapes
:@*
dtype0
Ż
+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/v
¨
?Adam/u_net3d/conv_block3d_4/conv3d_9/bias/v/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/v*
_output_shapes	
:*
dtype0
Ä
-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*>
shared_name/-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/v
˝
AAdam/u_net3d/conv_block3d_4/conv3d_9/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/v*,
_output_shapes
:*
dtype0
Ż
+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/v
¨
?Adam/u_net3d/conv_block3d_4/conv3d_8/bias/v/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/v*
_output_shapes	
:*
dtype0
Ă
-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0* 
shape:\*>
shared_name/-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/v
ź
AAdam/u_net3d/conv_block3d_4/conv3d_8/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/v*+
_output_shapes
:\*
dtype0
Ž
+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*<
shared_name-+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/v
§
?Adam/u_net3d/conv_block3d_2/conv3d_5/bias/v/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/v*
_output_shapes
:\*
dtype0
Â
-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:\\*>
shared_name/-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/v
ť
AAdam/u_net3d/conv_block3d_2/conv3d_5/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/v**
_output_shapes
:\\*
dtype0
Ž
+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*<
shared_name-+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/v
§
?Adam/u_net3d/conv_block3d_2/conv3d_4/bias/v/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/v*
_output_shapes
:\*
dtype0
Â
-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@\*>
shared_name/-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/v
ť
AAdam/u_net3d/conv_block3d_2/conv3d_4/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/v**
_output_shapes
:@\*
dtype0
Ş
)Adam/u_net3d/conv_block3d/conv3d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)Adam/u_net3d/conv_block3d/conv3d_1/bias/v
Ł
=Adam/u_net3d/conv_block3d/conv3d_1/bias/v/Read/ReadVariableOpReadVariableOp)Adam/u_net3d/conv_block3d/conv3d_1/bias/v*
_output_shapes
:@*
dtype0
ž
+Adam/u_net3d/conv_block3d/conv3d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*<
shared_name-+Adam/u_net3d/conv_block3d/conv3d_1/kernel/v
ˇ
?Adam/u_net3d/conv_block3d/conv3d_1/kernel/v/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d/conv3d_1/kernel/v**
_output_shapes
:@@*
dtype0
Ś
'Adam/u_net3d/conv_block3d/conv3d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adam/u_net3d/conv_block3d/conv3d/bias/v

;Adam/u_net3d/conv_block3d/conv3d/bias/v/Read/ReadVariableOpReadVariableOp'Adam/u_net3d/conv_block3d/conv3d/bias/v*
_output_shapes
:@*
dtype0
ş
)Adam/u_net3d/conv_block3d/conv3d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)Adam/u_net3d/conv_block3d/conv3d/kernel/v
ł
=Adam/u_net3d/conv_block3d/conv3d/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/u_net3d/conv_block3d/conv3d/kernel/v**
_output_shapes
:@*
dtype0
°
,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/m
Š
@Adam/u_net3d/conv_block3d_5/conv3d_10/bias/m/Read/ReadVariableOpReadVariableOp,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/m*
_output_shapes
:*
dtype0
Ä
.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/m
˝
BAdam/u_net3d/conv_block3d_5/conv3d_10/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/m**
_output_shapes
:@*
dtype0
Ž
+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*<
shared_name-+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/m
§
?Adam/u_net3d/conv_block3d_3/conv3d_7/bias/m/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/m*
_output_shapes
:\*
dtype0
Â
-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:\\*>
shared_name/-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/m
ť
AAdam/u_net3d/conv_block3d_3/conv3d_7/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/m**
_output_shapes
:\\*
dtype0
Ž
+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*<
shared_name-+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/m
§
?Adam/u_net3d/conv_block3d_3/conv3d_6/bias/m/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/m*
_output_shapes
:\*
dtype0
Ă
-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:Ü\*>
shared_name/-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/m
ź
AAdam/u_net3d/conv_block3d_3/conv3d_6/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/m*+
_output_shapes
:Ü\*
dtype0
Ž
+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/m
§
?Adam/u_net3d/conv_block3d_1/conv3d_3/bias/m/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/m*
_output_shapes
:@*
dtype0
Â
-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*>
shared_name/-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/m
ť
AAdam/u_net3d/conv_block3d_1/conv3d_3/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/m**
_output_shapes
:@@*
dtype0
Ž
+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/m
§
?Adam/u_net3d/conv_block3d_1/conv3d_2/bias/m/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/m*
_output_shapes
:@*
dtype0
Ă
-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*>
shared_name/-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/m
ź
AAdam/u_net3d/conv_block3d_1/conv3d_2/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/m*+
_output_shapes
:@*
dtype0
Ż
+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/m
¨
?Adam/u_net3d/conv_block3d_4/conv3d_9/bias/m/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/m*
_output_shapes	
:*
dtype0
Ä
-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*>
shared_name/-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/m
˝
AAdam/u_net3d/conv_block3d_4/conv3d_9/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/m*,
_output_shapes
:*
dtype0
Ż
+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/m
¨
?Adam/u_net3d/conv_block3d_4/conv3d_8/bias/m/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/m*
_output_shapes	
:*
dtype0
Ă
-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
shape:\*>
shared_name/-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/m
ź
AAdam/u_net3d/conv_block3d_4/conv3d_8/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/m*+
_output_shapes
:\*
dtype0
Ž
+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*<
shared_name-+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/m
§
?Adam/u_net3d/conv_block3d_2/conv3d_5/bias/m/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/m*
_output_shapes
:\*
dtype0
Â
-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:\\*>
shared_name/-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/m
ť
AAdam/u_net3d/conv_block3d_2/conv3d_5/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/m**
_output_shapes
:\\*
dtype0
Ž
+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*<
shared_name-+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/m
§
?Adam/u_net3d/conv_block3d_2/conv3d_4/bias/m/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/m*
_output_shapes
:\*
dtype0
Â
-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@\*>
shared_name/-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/m
ť
AAdam/u_net3d/conv_block3d_2/conv3d_4/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/m**
_output_shapes
:@\*
dtype0
Ş
)Adam/u_net3d/conv_block3d/conv3d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)Adam/u_net3d/conv_block3d/conv3d_1/bias/m
Ł
=Adam/u_net3d/conv_block3d/conv3d_1/bias/m/Read/ReadVariableOpReadVariableOp)Adam/u_net3d/conv_block3d/conv3d_1/bias/m*
_output_shapes
:@*
dtype0
ž
+Adam/u_net3d/conv_block3d/conv3d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*<
shared_name-+Adam/u_net3d/conv_block3d/conv3d_1/kernel/m
ˇ
?Adam/u_net3d/conv_block3d/conv3d_1/kernel/m/Read/ReadVariableOpReadVariableOp+Adam/u_net3d/conv_block3d/conv3d_1/kernel/m**
_output_shapes
:@@*
dtype0
Ś
'Adam/u_net3d/conv_block3d/conv3d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adam/u_net3d/conv_block3d/conv3d/bias/m

;Adam/u_net3d/conv_block3d/conv3d/bias/m/Read/ReadVariableOpReadVariableOp'Adam/u_net3d/conv_block3d/conv3d/bias/m*
_output_shapes
:@*
dtype0
ş
)Adam/u_net3d/conv_block3d/conv3d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)Adam/u_net3d/conv_block3d/conv3d/kernel/m
ł
=Adam/u_net3d/conv_block3d/conv3d/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/u_net3d/conv_block3d/conv3d/kernel/m**
_output_shapes
:@*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
˘
%u_net3d/conv_block3d_5/conv3d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%u_net3d/conv_block3d_5/conv3d_10/bias

9u_net3d/conv_block3d_5/conv3d_10/bias/Read/ReadVariableOpReadVariableOp%u_net3d/conv_block3d_5/conv3d_10/bias*
_output_shapes
:*
dtype0
ś
'u_net3d/conv_block3d_5/conv3d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'u_net3d/conv_block3d_5/conv3d_10/kernel
Ż
;u_net3d/conv_block3d_5/conv3d_10/kernel/Read/ReadVariableOpReadVariableOp'u_net3d/conv_block3d_5/conv3d_10/kernel**
_output_shapes
:@*
dtype0
 
$u_net3d/conv_block3d_3/conv3d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*5
shared_name&$u_net3d/conv_block3d_3/conv3d_7/bias

8u_net3d/conv_block3d_3/conv3d_7/bias/Read/ReadVariableOpReadVariableOp$u_net3d/conv_block3d_3/conv3d_7/bias*
_output_shapes
:\*
dtype0
´
&u_net3d/conv_block3d_3/conv3d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:\\*7
shared_name(&u_net3d/conv_block3d_3/conv3d_7/kernel
­
:u_net3d/conv_block3d_3/conv3d_7/kernel/Read/ReadVariableOpReadVariableOp&u_net3d/conv_block3d_3/conv3d_7/kernel**
_output_shapes
:\\*
dtype0
 
$u_net3d/conv_block3d_3/conv3d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*5
shared_name&$u_net3d/conv_block3d_3/conv3d_6/bias

8u_net3d/conv_block3d_3/conv3d_6/bias/Read/ReadVariableOpReadVariableOp$u_net3d/conv_block3d_3/conv3d_6/bias*
_output_shapes
:\*
dtype0
ľ
&u_net3d/conv_block3d_3/conv3d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:Ü\*7
shared_name(&u_net3d/conv_block3d_3/conv3d_6/kernel
Ž
:u_net3d/conv_block3d_3/conv3d_6/kernel/Read/ReadVariableOpReadVariableOp&u_net3d/conv_block3d_3/conv3d_6/kernel*+
_output_shapes
:Ü\*
dtype0
 
$u_net3d/conv_block3d_1/conv3d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$u_net3d/conv_block3d_1/conv3d_3/bias

8u_net3d/conv_block3d_1/conv3d_3/bias/Read/ReadVariableOpReadVariableOp$u_net3d/conv_block3d_1/conv3d_3/bias*
_output_shapes
:@*
dtype0
´
&u_net3d/conv_block3d_1/conv3d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*7
shared_name(&u_net3d/conv_block3d_1/conv3d_3/kernel
­
:u_net3d/conv_block3d_1/conv3d_3/kernel/Read/ReadVariableOpReadVariableOp&u_net3d/conv_block3d_1/conv3d_3/kernel**
_output_shapes
:@@*
dtype0
 
$u_net3d/conv_block3d_1/conv3d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$u_net3d/conv_block3d_1/conv3d_2/bias

8u_net3d/conv_block3d_1/conv3d_2/bias/Read/ReadVariableOpReadVariableOp$u_net3d/conv_block3d_1/conv3d_2/bias*
_output_shapes
:@*
dtype0
ľ
&u_net3d/conv_block3d_1/conv3d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@*7
shared_name(&u_net3d/conv_block3d_1/conv3d_2/kernel
Ž
:u_net3d/conv_block3d_1/conv3d_2/kernel/Read/ReadVariableOpReadVariableOp&u_net3d/conv_block3d_1/conv3d_2/kernel*+
_output_shapes
:@*
dtype0
Ą
$u_net3d/conv_block3d_4/conv3d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$u_net3d/conv_block3d_4/conv3d_9/bias

8u_net3d/conv_block3d_4/conv3d_9/bias/Read/ReadVariableOpReadVariableOp$u_net3d/conv_block3d_4/conv3d_9/bias*
_output_shapes	
:*
dtype0
ś
&u_net3d/conv_block3d_4/conv3d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:*7
shared_name(&u_net3d/conv_block3d_4/conv3d_9/kernel
Ż
:u_net3d/conv_block3d_4/conv3d_9/kernel/Read/ReadVariableOpReadVariableOp&u_net3d/conv_block3d_4/conv3d_9/kernel*,
_output_shapes
:*
dtype0
Ą
$u_net3d/conv_block3d_4/conv3d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$u_net3d/conv_block3d_4/conv3d_8/bias

8u_net3d/conv_block3d_4/conv3d_8/bias/Read/ReadVariableOpReadVariableOp$u_net3d/conv_block3d_4/conv3d_8/bias*
_output_shapes	
:*
dtype0
ľ
&u_net3d/conv_block3d_4/conv3d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:\*7
shared_name(&u_net3d/conv_block3d_4/conv3d_8/kernel
Ž
:u_net3d/conv_block3d_4/conv3d_8/kernel/Read/ReadVariableOpReadVariableOp&u_net3d/conv_block3d_4/conv3d_8/kernel*+
_output_shapes
:\*
dtype0
 
$u_net3d/conv_block3d_2/conv3d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*5
shared_name&$u_net3d/conv_block3d_2/conv3d_5/bias

8u_net3d/conv_block3d_2/conv3d_5/bias/Read/ReadVariableOpReadVariableOp$u_net3d/conv_block3d_2/conv3d_5/bias*
_output_shapes
:\*
dtype0
´
&u_net3d/conv_block3d_2/conv3d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:\\*7
shared_name(&u_net3d/conv_block3d_2/conv3d_5/kernel
­
:u_net3d/conv_block3d_2/conv3d_5/kernel/Read/ReadVariableOpReadVariableOp&u_net3d/conv_block3d_2/conv3d_5/kernel**
_output_shapes
:\\*
dtype0
 
$u_net3d/conv_block3d_2/conv3d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*5
shared_name&$u_net3d/conv_block3d_2/conv3d_4/bias

8u_net3d/conv_block3d_2/conv3d_4/bias/Read/ReadVariableOpReadVariableOp$u_net3d/conv_block3d_2/conv3d_4/bias*
_output_shapes
:\*
dtype0
´
&u_net3d/conv_block3d_2/conv3d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@\*7
shared_name(&u_net3d/conv_block3d_2/conv3d_4/kernel
­
:u_net3d/conv_block3d_2/conv3d_4/kernel/Read/ReadVariableOpReadVariableOp&u_net3d/conv_block3d_2/conv3d_4/kernel**
_output_shapes
:@\*
dtype0

"u_net3d/conv_block3d/conv3d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"u_net3d/conv_block3d/conv3d_1/bias

6u_net3d/conv_block3d/conv3d_1/bias/Read/ReadVariableOpReadVariableOp"u_net3d/conv_block3d/conv3d_1/bias*
_output_shapes
:@*
dtype0
°
$u_net3d/conv_block3d/conv3d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*5
shared_name&$u_net3d/conv_block3d/conv3d_1/kernel
Š
8u_net3d/conv_block3d/conv3d_1/kernel/Read/ReadVariableOpReadVariableOp$u_net3d/conv_block3d/conv3d_1/kernel**
_output_shapes
:@@*
dtype0

 u_net3d/conv_block3d/conv3d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" u_net3d/conv_block3d/conv3d/bias

4u_net3d/conv_block3d/conv3d/bias/Read/ReadVariableOpReadVariableOp u_net3d/conv_block3d/conv3d/bias*
_output_shapes
:@*
dtype0
Ź
"u_net3d/conv_block3d/conv3d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"u_net3d/conv_block3d/conv3d/kernel
Ľ
6u_net3d/conv_block3d/conv3d/kernel/Read/ReadVariableOpReadVariableOp"u_net3d/conv_block3d/conv3d/kernel**
_output_shapes
:@*
dtype0

serving_default_input_1Placeholder*,
_output_shapes
:*
dtype0*!
shape:
š	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1"u_net3d/conv_block3d/conv3d/kernel u_net3d/conv_block3d/conv3d/bias$u_net3d/conv_block3d/conv3d_1/kernel"u_net3d/conv_block3d/conv3d_1/bias&u_net3d/conv_block3d_2/conv3d_4/kernel$u_net3d/conv_block3d_2/conv3d_4/bias&u_net3d/conv_block3d_2/conv3d_5/kernel$u_net3d/conv_block3d_2/conv3d_5/bias&u_net3d/conv_block3d_4/conv3d_8/kernel$u_net3d/conv_block3d_4/conv3d_8/bias&u_net3d/conv_block3d_4/conv3d_9/kernel$u_net3d/conv_block3d_4/conv3d_9/bias&u_net3d/conv_block3d_3/conv3d_6/kernel$u_net3d/conv_block3d_3/conv3d_6/bias&u_net3d/conv_block3d_3/conv3d_7/kernel$u_net3d/conv_block3d_3/conv3d_7/bias&u_net3d/conv_block3d_1/conv3d_2/kernel$u_net3d/conv_block3d_1/conv3d_2/bias&u_net3d/conv_block3d_1/conv3d_3/kernel$u_net3d/conv_block3d_1/conv3d_3/bias'u_net3d/conv_block3d_5/conv3d_10/kernel%u_net3d/conv_block3d_5/conv3d_10/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *.
f)R'
%__inference_signature_wrapper_1134410

NoOpNoOp
ĎÔ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ô
valueţÓBúÓ BňÓ

layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_filters
_dwt_kwargs
_enc_blocks
_dec_blocks

_pools
_upsamps
_concats

_out_block*
Ş
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11
&12
'13
(14
)15
*16
+17
,18
-19
.20
/21*
Ş
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11
&12
'13
(14
)15
*16
+17
,18
-19
.20
/21*
* 
°
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
5trace_0
6trace_1
7trace_2
8trace_3* 
6
9trace_0
:trace_1
;trace_2
<trace_3* 
* 
ü
=iter

>beta_1

?beta_2
	@decay
Alearning_ratemémęmëměmímî mď!mđ"mń#mň$mó%mô&mő'mö(m÷)mř*mů+mú,mű-mü.mý/mţv˙vvvvv v!v"v#v$v%v&v'v(v)v*v+v,v-v.v/v*

Bserving_default* 
Ş
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11
&12
'13
(14
)15
*16
+17
,18
-19
.20
/21*
Ş
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11
&12
'13
(14
)15
*16
+17
,18
-19
.20
/21*
* 

Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
* 
* 

P0
Q1
R2*

S0
T1*

U0
V1* 

W0
X1* 

Y0
Z1* 
Ĺ
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
a_filters

b_convs

c_norms
d	_dropouts*
b\
VARIABLE_VALUE"u_net3d/conv_block3d/conv3d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE u_net3d/conv_block3d/conv3d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$u_net3d/conv_block3d/conv3d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"u_net3d/conv_block3d/conv3d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&u_net3d/conv_block3d_2/conv3d_4/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$u_net3d/conv_block3d_2/conv3d_4/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&u_net3d/conv_block3d_2/conv3d_5/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$u_net3d/conv_block3d_2/conv3d_5/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&u_net3d/conv_block3d_4/conv3d_8/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$u_net3d/conv_block3d_4/conv3d_8/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&u_net3d/conv_block3d_4/conv3d_9/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$u_net3d/conv_block3d_4/conv3d_9/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&u_net3d/conv_block3d_1/conv3d_2/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$u_net3d/conv_block3d_1/conv3d_2/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&u_net3d/conv_block3d_1/conv3d_3/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$u_net3d/conv_block3d_1/conv3d_3/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&u_net3d/conv_block3d_3/conv3d_6/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$u_net3d/conv_block3d_3/conv3d_6/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&u_net3d/conv_block3d_3/conv3d_7/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$u_net3d/conv_block3d_3/conv3d_7/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE'u_net3d/conv_block3d_5/conv3d_10/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%u_net3d/conv_block3d_5/conv3d_10/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

e0
f1
g2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
Z
P0
Q1
R2
S3
T4
U5
V6
W7
X8
Y9
Z10
11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Ĺ
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses
n_filters

o_convs

p_norms
q	_dropouts*
Ĺ
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses
x_filters

y_convs

z_norms
{	_dropouts*
Ë
|	variables
}trainable_variables
~regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_filters
_convs
_norms
	_dropouts*
Ď
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_filters
_convs
_norms
	_dropouts*
Ď
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_filters
_convs
_norms
	_dropouts*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

 	variables
Ątrainable_variables
˘regularization_losses
Ł	keras_api
¤__call__
+Ľ&call_and_return_all_conditional_losses* 

Ś	variables
§trainable_variables
¨regularization_losses
Š	keras_api
Ş__call__
+Ť&call_and_return_all_conditional_losses* 

Ź	variables
­trainable_variables
Žregularization_losses
Ż	keras_api
°__call__
+ą&call_and_return_all_conditional_losses* 

˛	variables
łtrainable_variables
´regularization_losses
ľ	keras_api
ś__call__
+ˇ&call_and_return_all_conditional_losses* 

¸	variables
štrainable_variables
şregularization_losses
ť	keras_api
ź__call__
+˝&call_and_return_all_conditional_losses* 

.0
/1*

.0
/1*
* 

žnon_trainable_variables
żlayers
Ŕmetrics
 Álayer_regularization_losses
Âlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*
:
Ătrace_0
Ätrace_1
Ĺtrace_2
Ćtrace_3* 
:
Çtrace_0
Čtrace_1
Étrace_2
Ętrace_3* 
* 

Ë0*
* 
* 
<
Ě	variables
Í	keras_api

Îtotal

Ďcount*
M
Đ	variables
Ń	keras_api

Ňtotal

Ócount
Ô
_fn_kwargs*
M
Ő	variables
Ö	keras_api

×total

Řcount
Ů
_fn_kwargs*
 
0
1
2
3*
 
0
1
2
3*
* 

Únon_trainable_variables
Űlayers
Ümetrics
 Ýlayer_regularization_losses
Ţlayer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*
:
ßtrace_0
ŕtrace_1
átrace_2
âtrace_3* 
:
ătrace_0
ätrace_1
ĺtrace_2
ćtrace_3* 
* 

ç0
č1*
* 
* 
 
0
1
 2
!3*
 
0
1
 2
!3*
* 

énon_trainable_variables
ęlayers
ëmetrics
 ělayer_regularization_losses
ílayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*
:
îtrace_0
ďtrace_1
đtrace_2
ńtrace_3* 
:
ňtrace_0
ótrace_1
ôtrace_2
őtrace_3* 
* 

ö0
÷1*
* 
* 
 
"0
#1
$2
%3*
 
"0
#1
$2
%3*
* 

řnon_trainable_variables
ůlayers
úmetrics
 űlayer_regularization_losses
ülayer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
ýtrace_0
ţtrace_1
˙trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 

0
1*
* 
* 
 
&0
'1
(2
)3*
 
&0
'1
(2
)3*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 

0
1*
* 
* 
 
*0
+1
,2
-3*
 
*0
+1
,2
-3*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
 trace_1
Ątrace_2
˘trace_3* 
* 

Ł0
¤1*
* 
* 
* 
* 
* 

Ľnon_trainable_variables
Ślayers
§metrics
 ¨layer_regularization_losses
Šlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Ştrace_0* 

Ťtrace_0* 
* 
* 
* 

Źnon_trainable_variables
­layers
Žmetrics
 Żlayer_regularization_losses
°layer_metrics
 	variables
Ątrainable_variables
˘regularization_losses
¤__call__
+Ľ&call_and_return_all_conditional_losses
'Ľ"call_and_return_conditional_losses* 

ątrace_0* 

˛trace_0* 
* 
* 
* 

łnon_trainable_variables
´layers
ľmetrics
 ślayer_regularization_losses
ˇlayer_metrics
Ś	variables
§trainable_variables
¨regularization_losses
Ş__call__
+Ť&call_and_return_all_conditional_losses
'Ť"call_and_return_conditional_losses* 

¸trace_0* 

štrace_0* 
* 
* 
* 

şnon_trainable_variables
ťlayers
źmetrics
 ˝layer_regularization_losses
žlayer_metrics
Ź	variables
­trainable_variables
Žregularization_losses
°__call__
+ą&call_and_return_all_conditional_losses
'ą"call_and_return_conditional_losses* 

żtrace_0* 

Ŕtrace_0* 
* 
* 
* 

Ánon_trainable_variables
Âlayers
Ămetrics
 Älayer_regularization_losses
Ĺlayer_metrics
˛	variables
łtrainable_variables
´regularization_losses
ś__call__
+ˇ&call_and_return_all_conditional_losses
'ˇ"call_and_return_conditional_losses* 

Ćtrace_0* 

Çtrace_0* 
* 
* 
* 

Čnon_trainable_variables
Élayers
Ęmetrics
 Ëlayer_regularization_losses
Ělayer_metrics
¸	variables
štrainable_variables
şregularization_losses
ź__call__
+˝&call_and_return_all_conditional_losses
'˝"call_and_return_conditional_losses* 

Ítrace_0* 

Îtrace_0* 
* 

Ë0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Ď
Ď	variables
Đtrainable_variables
Ńregularization_losses
Ň	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses

.kernel
/bias
!Ő_jit_compiled_convolution_op*

Î0
Ď1*

Ě	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ň0
Ó1*

Đ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

×0
Ř1*

Ő	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

ç0
č1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Ď
Ö	variables
×trainable_variables
Řregularization_losses
Ů	keras_api
Ú__call__
+Ű&call_and_return_all_conditional_losses

kernel
bias
!Ü_jit_compiled_convolution_op*
Ď
Ý	variables
Ţtrainable_variables
ßregularization_losses
ŕ	keras_api
á__call__
+â&call_and_return_all_conditional_losses

kernel
bias
!ă_jit_compiled_convolution_op*
* 

ö0
÷1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Ď
ä	variables
ĺtrainable_variables
ćregularization_losses
ç	keras_api
č__call__
+é&call_and_return_all_conditional_losses

kernel
bias
!ę_jit_compiled_convolution_op*
Ď
ë	variables
ětrainable_variables
íregularization_losses
î	keras_api
ď__call__
+đ&call_and_return_all_conditional_losses

 kernel
!bias
!ń_jit_compiled_convolution_op*
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Ď
ň	variables
ótrainable_variables
ôregularization_losses
ő	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses

"kernel
#bias
!ř_jit_compiled_convolution_op*
Ď
ů	variables
útrainable_variables
űregularization_losses
ü	keras_api
ý__call__
+ţ&call_and_return_all_conditional_losses

$kernel
%bias
!˙_jit_compiled_convolution_op*
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Ď
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

&kernel
'bias
!_jit_compiled_convolution_op*
Ď
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

(kernel
)bias
!_jit_compiled_convolution_op*
* 

Ł0
¤1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Ď
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

*kernel
+bias
!_jit_compiled_convolution_op*
Ď
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

,kernel
-bias
!_jit_compiled_convolution_op*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

.0
/1*

.0
/1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
Ď	variables
Đtrainable_variables
Ńregularization_losses
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses*

Ątrace_0* 

˘trace_0* 
* 

0
1*

0
1*
* 

Łnon_trainable_variables
¤layers
Ľmetrics
 Ślayer_regularization_losses
§layer_metrics
Ö	variables
×trainable_variables
Řregularization_losses
Ú__call__
+Ű&call_and_return_all_conditional_losses
'Ű"call_and_return_conditional_losses*

¨trace_0* 

Štrace_0* 
* 

0
1*

0
1*
* 

Şnon_trainable_variables
Ťlayers
Źmetrics
 ­layer_regularization_losses
Žlayer_metrics
Ý	variables
Ţtrainable_variables
ßregularization_losses
á__call__
+â&call_and_return_all_conditional_losses
'â"call_and_return_conditional_losses*

Żtrace_0* 

°trace_0* 
* 

0
1*

0
1*
* 

ąnon_trainable_variables
˛layers
łmetrics
 ´layer_regularization_losses
ľlayer_metrics
ä	variables
ĺtrainable_variables
ćregularization_losses
č__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses*

śtrace_0* 

ˇtrace_0* 
* 

 0
!1*

 0
!1*
* 

¸non_trainable_variables
šlayers
şmetrics
 ťlayer_regularization_losses
źlayer_metrics
ë	variables
ětrainable_variables
íregularization_losses
ď__call__
+đ&call_and_return_all_conditional_losses
'đ"call_and_return_conditional_losses*

˝trace_0* 

žtrace_0* 
* 

"0
#1*

"0
#1*
* 

żnon_trainable_variables
Ŕlayers
Ámetrics
 Âlayer_regularization_losses
Ălayer_metrics
ň	variables
ótrainable_variables
ôregularization_losses
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses*

Ätrace_0* 

Ĺtrace_0* 
* 

$0
%1*

$0
%1*
* 

Ćnon_trainable_variables
Çlayers
Čmetrics
 Élayer_regularization_losses
Ęlayer_metrics
ů	variables
útrainable_variables
űregularization_losses
ý__call__
+ţ&call_and_return_all_conditional_losses
'ţ"call_and_return_conditional_losses*

Ëtrace_0* 

Ětrace_0* 
* 

&0
'1*

&0
'1*
* 

Ínon_trainable_variables
Îlayers
Ďmetrics
 Đlayer_regularization_losses
Ńlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ňtrace_0* 

Ótrace_0* 
* 

(0
)1*

(0
)1*
* 

Ônon_trainable_variables
Őlayers
Ömetrics
 ×layer_regularization_losses
Řlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ůtrace_0* 

Útrace_0* 
* 

*0
+1*

*0
+1*
* 

Űnon_trainable_variables
Ülayers
Ýmetrics
 Ţlayer_regularization_losses
ßlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ŕtrace_0* 

átrace_0* 
* 

,0
-1*

,0
-1*
* 

ânon_trainable_variables
ălayers
ämetrics
 ĺlayer_regularization_losses
ćlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

çtrace_0* 

čtrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

VARIABLE_VALUE)Adam/u_net3d/conv_block3d/conv3d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE'Adam/u_net3d/conv_block3d/conv3d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d/conv3d_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/u_net3d/conv_block3d/conv3d_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/u_net3d/conv_block3d/conv3d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE'Adam/u_net3d/conv_block3d/conv3d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d/conv3d_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/u_net3d/conv_block3d/conv3d_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
&
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename6u_net3d/conv_block3d/conv3d/kernel/Read/ReadVariableOp4u_net3d/conv_block3d/conv3d/bias/Read/ReadVariableOp8u_net3d/conv_block3d/conv3d_1/kernel/Read/ReadVariableOp6u_net3d/conv_block3d/conv3d_1/bias/Read/ReadVariableOp:u_net3d/conv_block3d_2/conv3d_4/kernel/Read/ReadVariableOp8u_net3d/conv_block3d_2/conv3d_4/bias/Read/ReadVariableOp:u_net3d/conv_block3d_2/conv3d_5/kernel/Read/ReadVariableOp8u_net3d/conv_block3d_2/conv3d_5/bias/Read/ReadVariableOp:u_net3d/conv_block3d_4/conv3d_8/kernel/Read/ReadVariableOp8u_net3d/conv_block3d_4/conv3d_8/bias/Read/ReadVariableOp:u_net3d/conv_block3d_4/conv3d_9/kernel/Read/ReadVariableOp8u_net3d/conv_block3d_4/conv3d_9/bias/Read/ReadVariableOp:u_net3d/conv_block3d_1/conv3d_2/kernel/Read/ReadVariableOp8u_net3d/conv_block3d_1/conv3d_2/bias/Read/ReadVariableOp:u_net3d/conv_block3d_1/conv3d_3/kernel/Read/ReadVariableOp8u_net3d/conv_block3d_1/conv3d_3/bias/Read/ReadVariableOp:u_net3d/conv_block3d_3/conv3d_6/kernel/Read/ReadVariableOp8u_net3d/conv_block3d_3/conv3d_6/bias/Read/ReadVariableOp:u_net3d/conv_block3d_3/conv3d_7/kernel/Read/ReadVariableOp8u_net3d/conv_block3d_3/conv3d_7/bias/Read/ReadVariableOp;u_net3d/conv_block3d_5/conv3d_10/kernel/Read/ReadVariableOp9u_net3d/conv_block3d_5/conv3d_10/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp=Adam/u_net3d/conv_block3d/conv3d/kernel/m/Read/ReadVariableOp;Adam/u_net3d/conv_block3d/conv3d/bias/m/Read/ReadVariableOp?Adam/u_net3d/conv_block3d/conv3d_1/kernel/m/Read/ReadVariableOp=Adam/u_net3d/conv_block3d/conv3d_1/bias/m/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_2/conv3d_4/kernel/m/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_2/conv3d_4/bias/m/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_2/conv3d_5/kernel/m/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_2/conv3d_5/bias/m/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_4/conv3d_8/kernel/m/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_4/conv3d_8/bias/m/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_4/conv3d_9/kernel/m/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_4/conv3d_9/bias/m/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_1/conv3d_2/kernel/m/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_1/conv3d_2/bias/m/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_1/conv3d_3/kernel/m/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_1/conv3d_3/bias/m/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_3/conv3d_6/kernel/m/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_3/conv3d_6/bias/m/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_3/conv3d_7/kernel/m/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_3/conv3d_7/bias/m/Read/ReadVariableOpBAdam/u_net3d/conv_block3d_5/conv3d_10/kernel/m/Read/ReadVariableOp@Adam/u_net3d/conv_block3d_5/conv3d_10/bias/m/Read/ReadVariableOp=Adam/u_net3d/conv_block3d/conv3d/kernel/v/Read/ReadVariableOp;Adam/u_net3d/conv_block3d/conv3d/bias/v/Read/ReadVariableOp?Adam/u_net3d/conv_block3d/conv3d_1/kernel/v/Read/ReadVariableOp=Adam/u_net3d/conv_block3d/conv3d_1/bias/v/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_2/conv3d_4/kernel/v/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_2/conv3d_4/bias/v/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_2/conv3d_5/kernel/v/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_2/conv3d_5/bias/v/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_4/conv3d_8/kernel/v/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_4/conv3d_8/bias/v/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_4/conv3d_9/kernel/v/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_4/conv3d_9/bias/v/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_1/conv3d_2/kernel/v/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_1/conv3d_2/bias/v/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_1/conv3d_3/kernel/v/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_1/conv3d_3/bias/v/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_3/conv3d_6/kernel/v/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_3/conv3d_6/bias/v/Read/ReadVariableOpAAdam/u_net3d/conv_block3d_3/conv3d_7/kernel/v/Read/ReadVariableOp?Adam/u_net3d/conv_block3d_3/conv3d_7/bias/v/Read/ReadVariableOpBAdam/u_net3d/conv_block3d_5/conv3d_10/kernel/v/Read/ReadVariableOp@Adam/u_net3d/conv_block3d_5/conv3d_10/bias/v/Read/ReadVariableOpConst*Z
TinS
Q2O	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *)
f$R"
 __inference__traced_save_1137925

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename"u_net3d/conv_block3d/conv3d/kernel u_net3d/conv_block3d/conv3d/bias$u_net3d/conv_block3d/conv3d_1/kernel"u_net3d/conv_block3d/conv3d_1/bias&u_net3d/conv_block3d_2/conv3d_4/kernel$u_net3d/conv_block3d_2/conv3d_4/bias&u_net3d/conv_block3d_2/conv3d_5/kernel$u_net3d/conv_block3d_2/conv3d_5/bias&u_net3d/conv_block3d_4/conv3d_8/kernel$u_net3d/conv_block3d_4/conv3d_8/bias&u_net3d/conv_block3d_4/conv3d_9/kernel$u_net3d/conv_block3d_4/conv3d_9/bias&u_net3d/conv_block3d_1/conv3d_2/kernel$u_net3d/conv_block3d_1/conv3d_2/bias&u_net3d/conv_block3d_1/conv3d_3/kernel$u_net3d/conv_block3d_1/conv3d_3/bias&u_net3d/conv_block3d_3/conv3d_6/kernel$u_net3d/conv_block3d_3/conv3d_6/bias&u_net3d/conv_block3d_3/conv3d_7/kernel$u_net3d/conv_block3d_3/conv3d_7/bias'u_net3d/conv_block3d_5/conv3d_10/kernel%u_net3d/conv_block3d_5/conv3d_10/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_2count_2total_1count_1totalcount)Adam/u_net3d/conv_block3d/conv3d/kernel/m'Adam/u_net3d/conv_block3d/conv3d/bias/m+Adam/u_net3d/conv_block3d/conv3d_1/kernel/m)Adam/u_net3d/conv_block3d/conv3d_1/bias/m-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/m+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/m-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/m+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/m-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/m+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/m-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/m+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/m-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/m+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/m-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/m+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/m-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/m+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/m-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/m+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/m.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/m,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/m)Adam/u_net3d/conv_block3d/conv3d/kernel/v'Adam/u_net3d/conv_block3d/conv3d/bias/v+Adam/u_net3d/conv_block3d/conv3d_1/kernel/v)Adam/u_net3d/conv_block3d/conv3d_1/bias/v-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/v+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/v-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/v+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/v-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/v+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/v-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/v+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/v-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/v+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/v-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/v+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/v-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/v+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/v-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/v+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/v.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/v,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/v*Y
TinR
P2N*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *,
f'R%
#__inference__traced_restore_1138166ĽŃ(

Ő
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132554

inputs/
conv3d_8_1132541:\
conv3d_8_1132543:	0
conv3d_9_1132547:
conv3d_9_1132549:	
identity˘ conv3d_8/StatefulPartitionedCall˘ conv3d_9/StatefulPartitionedCall
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_8_1132541conv3d_8_1132543*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1132467
	LeakyRelu	LeakyRelu)conv3d_8/StatefulPartitionedCall:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_9_1132547conv3d_9_1132549*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1132484
LeakyRelu_1	LeakyRelu)conv3d_9/StatefulPartitionedCall:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=u
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
NoOpNoOp!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙@@\: : : : 2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:[ W
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
 
_user_specified_nameinputs
Ń


E__inference_conv3d_5_layer_call_and_return_conditional_losses_1132324

inputs<
conv3d_readvariableop_resource:\\-
biasadd_readvariableop_resource:\
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙\: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs

Y
-__inference_concatenate_layer_call_fn_1137442
inputs_0
inputs_1
identityÔ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1133542o
IdentityIdentityPartitionedCall:output:0*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙@:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
"
_user_specified_name
inputs/0:_[
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
"
_user_specified_name
inputs/1
´˙

B__inference_model_layer_call_and_return_conditional_losses_1135520

inputsX
:u_net3d_conv_block3d_conv3d_conv3d_readvariableop_resource:@I
;u_net3d_conv_block3d_conv3d_biasadd_readvariableop_resource:@Z
<u_net3d_conv_block3d_conv3d_1_conv3d_readvariableop_resource:@@K
=u_net3d_conv_block3d_conv3d_1_biasadd_readvariableop_resource:@\
>u_net3d_conv_block3d_2_conv3d_4_conv3d_readvariableop_resource:@\M
?u_net3d_conv_block3d_2_conv3d_4_biasadd_readvariableop_resource:\\
>u_net3d_conv_block3d_2_conv3d_5_conv3d_readvariableop_resource:\\M
?u_net3d_conv_block3d_2_conv3d_5_biasadd_readvariableop_resource:\]
>u_net3d_conv_block3d_4_conv3d_8_conv3d_readvariableop_resource:\N
?u_net3d_conv_block3d_4_conv3d_8_biasadd_readvariableop_resource:	^
>u_net3d_conv_block3d_4_conv3d_9_conv3d_readvariableop_resource:N
?u_net3d_conv_block3d_4_conv3d_9_biasadd_readvariableop_resource:	]
>u_net3d_conv_block3d_3_conv3d_6_conv3d_readvariableop_resource:Ü\M
?u_net3d_conv_block3d_3_conv3d_6_biasadd_readvariableop_resource:\\
>u_net3d_conv_block3d_3_conv3d_7_conv3d_readvariableop_resource:\\M
?u_net3d_conv_block3d_3_conv3d_7_biasadd_readvariableop_resource:\]
>u_net3d_conv_block3d_1_conv3d_2_conv3d_readvariableop_resource:@M
?u_net3d_conv_block3d_1_conv3d_2_biasadd_readvariableop_resource:@\
>u_net3d_conv_block3d_1_conv3d_3_conv3d_readvariableop_resource:@@M
?u_net3d_conv_block3d_1_conv3d_3_biasadd_readvariableop_resource:@]
?u_net3d_conv_block3d_5_conv3d_10_conv3d_readvariableop_resource:@N
@u_net3d_conv_block3d_5_conv3d_10_biasadd_readvariableop_resource:
identity˘2u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp˘1u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp˘4u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp˘3u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp˘7u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp˘6u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp¸
1u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOpReadVariableOp:u_net3d_conv_block3d_conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0Ď
"u_net3d/conv_block3d/conv3d/Conv3DConv3Dinputs9u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
Ş
2u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOpReadVariableOp;u_net3d_conv_block3d_conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Î
#u_net3d/conv_block3d/conv3d/BiasAddBiasAdd+u_net3d/conv_block3d/conv3d/Conv3D:output:0:u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@
u_net3d/conv_block3d/LeakyRelu	LeakyRelu,u_net3d/conv_block3d/conv3d/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=ź
3u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOpReadVariableOp<u_net3d_conv_block3d_conv3d_1_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ů
$u_net3d/conv_block3d/conv3d_1/Conv3DConv3D,u_net3d/conv_block3d/LeakyRelu:activations:0;u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
Ž
4u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOpReadVariableOp=u_net3d_conv_block3d_conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ô
%u_net3d/conv_block3d/conv3d_1/BiasAddBiasAdd-u_net3d/conv_block3d/conv3d_1/Conv3D:output:0<u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@
 u_net3d/conv_block3d/LeakyRelu_1	LeakyRelu.u_net3d/conv_block3d/conv3d_1/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=Đ
u_net3d/max_pooling3d/MaxPool3D	MaxPool3D.u_net3d/conv_block3d/LeakyRelu_1:activations:0*
T0*,
_output_shapes
:@*
ksize	
*
paddingSAME*
strides	
Ŕ
5u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_2_conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:@\*
dtype0ů
&u_net3d/conv_block3d_2/conv3d_4/Conv3DConv3D(u_net3d/max_pooling3d/MaxPool3D:output:0=u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_2_conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ú
'u_net3d/conv_block3d_2/conv3d_4/BiasAddBiasAdd/u_net3d/conv_block3d_2/conv3d_4/Conv3D:output:0>u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\
 u_net3d/conv_block3d_2/LeakyRelu	LeakyRelu0u_net3d/conv_block3d_2/conv3d_4/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=Ŕ
5u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_2_conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0˙
&u_net3d/conv_block3d_2/conv3d_5/Conv3DConv3D.u_net3d/conv_block3d_2/LeakyRelu:activations:0=u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_2_conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ú
'u_net3d/conv_block3d_2/conv3d_5/BiasAddBiasAdd/u_net3d/conv_block3d_2/conv3d_5/Conv3D:output:0>u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\
"u_net3d/conv_block3d_2/LeakyRelu_1	LeakyRelu0u_net3d/conv_block3d_2/conv3d_5/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=Ň
!u_net3d/max_pooling3d_1/MaxPool3D	MaxPool3D0u_net3d/conv_block3d_2/LeakyRelu_1:activations:0*
T0**
_output_shapes
:@@\*
ksize	
*
paddingSAME*
strides	
Á
5u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_4_conv3d_8_conv3d_readvariableop_resource*+
_output_shapes
:\*
dtype0ú
&u_net3d/conv_block3d_4/conv3d_8/Conv3DConv3D*u_net3d/max_pooling3d_1/MaxPool3D:output:0=u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@*
paddingSAME*
strides	
ł
6u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_4_conv3d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ů
'u_net3d/conv_block3d_4/conv3d_8/BiasAddBiasAdd/u_net3d/conv_block3d_4/conv3d_8/Conv3D:output:0>u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@
 u_net3d/conv_block3d_4/LeakyRelu	LeakyRelu0u_net3d/conv_block3d_4/conv3d_8/BiasAdd:output:0*+
_output_shapes
:@@*
alpha%ÍĚĚ=Â
5u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_4_conv3d_9_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ţ
&u_net3d/conv_block3d_4/conv3d_9/Conv3DConv3D.u_net3d/conv_block3d_4/LeakyRelu:activations:0=u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@*
paddingSAME*
strides	
ł
6u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_4_conv3d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ů
'u_net3d/conv_block3d_4/conv3d_9/BiasAddBiasAdd/u_net3d/conv_block3d_4/conv3d_9/Conv3D:output:0>u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@
"u_net3d/conv_block3d_4/LeakyRelu_1	LeakyRelu0u_net3d/conv_block3d_4/conv3d_9/BiasAdd:output:0*+
_output_shapes
:@@*
alpha%ÍĚĚ=i
'u_net3d/up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ç
u_net3d/up_sampling3d_1/splitSplit0u_net3d/up_sampling3d_1/split/split_dim:output:00u_net3d/conv_block3d_4/LeakyRelu_1:activations:0*
T0* 
_output_shapes
:@@:@@:@@:@@:@@:@@*
	num_splite
#u_net3d/up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :÷
u_net3d/up_sampling3d_1/concatConcatV2&u_net3d/up_sampling3d_1/split:output:0&u_net3d/up_sampling3d_1/split:output:0&u_net3d/up_sampling3d_1/split:output:1&u_net3d/up_sampling3d_1/split:output:1&u_net3d/up_sampling3d_1/split:output:2&u_net3d/up_sampling3d_1/split:output:2&u_net3d/up_sampling3d_1/split:output:3&u_net3d/up_sampling3d_1/split:output:3&u_net3d/up_sampling3d_1/split:output:4&u_net3d/up_sampling3d_1/split:output:4&u_net3d/up_sampling3d_1/split:output:5&u_net3d/up_sampling3d_1/split:output:5,u_net3d/up_sampling3d_1/concat/axis:output:0*
N*
T0*+
_output_shapes
:@@k
)u_net3d/up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ř
u_net3d/up_sampling3d_1/split_1Split2u_net3d/up_sampling3d_1/split_1/split_dim:output:0'u_net3d/up_sampling3d_1/concat:output:0*
T0*Ö
_output_shapesĂ
Ŕ:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@*
	num_split@g
%u_net3d/up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :,
 u_net3d/up_sampling3d_1/concat_1ConcatV2(u_net3d/up_sampling3d_1/split_1:output:0(u_net3d/up_sampling3d_1/split_1:output:0(u_net3d/up_sampling3d_1/split_1:output:1(u_net3d/up_sampling3d_1/split_1:output:1(u_net3d/up_sampling3d_1/split_1:output:2(u_net3d/up_sampling3d_1/split_1:output:2(u_net3d/up_sampling3d_1/split_1:output:3(u_net3d/up_sampling3d_1/split_1:output:3(u_net3d/up_sampling3d_1/split_1:output:4(u_net3d/up_sampling3d_1/split_1:output:4(u_net3d/up_sampling3d_1/split_1:output:5(u_net3d/up_sampling3d_1/split_1:output:5(u_net3d/up_sampling3d_1/split_1:output:6(u_net3d/up_sampling3d_1/split_1:output:6(u_net3d/up_sampling3d_1/split_1:output:7(u_net3d/up_sampling3d_1/split_1:output:7(u_net3d/up_sampling3d_1/split_1:output:8(u_net3d/up_sampling3d_1/split_1:output:8(u_net3d/up_sampling3d_1/split_1:output:9(u_net3d/up_sampling3d_1/split_1:output:9)u_net3d/up_sampling3d_1/split_1:output:10)u_net3d/up_sampling3d_1/split_1:output:10)u_net3d/up_sampling3d_1/split_1:output:11)u_net3d/up_sampling3d_1/split_1:output:11)u_net3d/up_sampling3d_1/split_1:output:12)u_net3d/up_sampling3d_1/split_1:output:12)u_net3d/up_sampling3d_1/split_1:output:13)u_net3d/up_sampling3d_1/split_1:output:13)u_net3d/up_sampling3d_1/split_1:output:14)u_net3d/up_sampling3d_1/split_1:output:14)u_net3d/up_sampling3d_1/split_1:output:15)u_net3d/up_sampling3d_1/split_1:output:15)u_net3d/up_sampling3d_1/split_1:output:16)u_net3d/up_sampling3d_1/split_1:output:16)u_net3d/up_sampling3d_1/split_1:output:17)u_net3d/up_sampling3d_1/split_1:output:17)u_net3d/up_sampling3d_1/split_1:output:18)u_net3d/up_sampling3d_1/split_1:output:18)u_net3d/up_sampling3d_1/split_1:output:19)u_net3d/up_sampling3d_1/split_1:output:19)u_net3d/up_sampling3d_1/split_1:output:20)u_net3d/up_sampling3d_1/split_1:output:20)u_net3d/up_sampling3d_1/split_1:output:21)u_net3d/up_sampling3d_1/split_1:output:21)u_net3d/up_sampling3d_1/split_1:output:22)u_net3d/up_sampling3d_1/split_1:output:22)u_net3d/up_sampling3d_1/split_1:output:23)u_net3d/up_sampling3d_1/split_1:output:23)u_net3d/up_sampling3d_1/split_1:output:24)u_net3d/up_sampling3d_1/split_1:output:24)u_net3d/up_sampling3d_1/split_1:output:25)u_net3d/up_sampling3d_1/split_1:output:25)u_net3d/up_sampling3d_1/split_1:output:26)u_net3d/up_sampling3d_1/split_1:output:26)u_net3d/up_sampling3d_1/split_1:output:27)u_net3d/up_sampling3d_1/split_1:output:27)u_net3d/up_sampling3d_1/split_1:output:28)u_net3d/up_sampling3d_1/split_1:output:28)u_net3d/up_sampling3d_1/split_1:output:29)u_net3d/up_sampling3d_1/split_1:output:29)u_net3d/up_sampling3d_1/split_1:output:30)u_net3d/up_sampling3d_1/split_1:output:30)u_net3d/up_sampling3d_1/split_1:output:31)u_net3d/up_sampling3d_1/split_1:output:31)u_net3d/up_sampling3d_1/split_1:output:32)u_net3d/up_sampling3d_1/split_1:output:32)u_net3d/up_sampling3d_1/split_1:output:33)u_net3d/up_sampling3d_1/split_1:output:33)u_net3d/up_sampling3d_1/split_1:output:34)u_net3d/up_sampling3d_1/split_1:output:34)u_net3d/up_sampling3d_1/split_1:output:35)u_net3d/up_sampling3d_1/split_1:output:35)u_net3d/up_sampling3d_1/split_1:output:36)u_net3d/up_sampling3d_1/split_1:output:36)u_net3d/up_sampling3d_1/split_1:output:37)u_net3d/up_sampling3d_1/split_1:output:37)u_net3d/up_sampling3d_1/split_1:output:38)u_net3d/up_sampling3d_1/split_1:output:38)u_net3d/up_sampling3d_1/split_1:output:39)u_net3d/up_sampling3d_1/split_1:output:39)u_net3d/up_sampling3d_1/split_1:output:40)u_net3d/up_sampling3d_1/split_1:output:40)u_net3d/up_sampling3d_1/split_1:output:41)u_net3d/up_sampling3d_1/split_1:output:41)u_net3d/up_sampling3d_1/split_1:output:42)u_net3d/up_sampling3d_1/split_1:output:42)u_net3d/up_sampling3d_1/split_1:output:43)u_net3d/up_sampling3d_1/split_1:output:43)u_net3d/up_sampling3d_1/split_1:output:44)u_net3d/up_sampling3d_1/split_1:output:44)u_net3d/up_sampling3d_1/split_1:output:45)u_net3d/up_sampling3d_1/split_1:output:45)u_net3d/up_sampling3d_1/split_1:output:46)u_net3d/up_sampling3d_1/split_1:output:46)u_net3d/up_sampling3d_1/split_1:output:47)u_net3d/up_sampling3d_1/split_1:output:47)u_net3d/up_sampling3d_1/split_1:output:48)u_net3d/up_sampling3d_1/split_1:output:48)u_net3d/up_sampling3d_1/split_1:output:49)u_net3d/up_sampling3d_1/split_1:output:49)u_net3d/up_sampling3d_1/split_1:output:50)u_net3d/up_sampling3d_1/split_1:output:50)u_net3d/up_sampling3d_1/split_1:output:51)u_net3d/up_sampling3d_1/split_1:output:51)u_net3d/up_sampling3d_1/split_1:output:52)u_net3d/up_sampling3d_1/split_1:output:52)u_net3d/up_sampling3d_1/split_1:output:53)u_net3d/up_sampling3d_1/split_1:output:53)u_net3d/up_sampling3d_1/split_1:output:54)u_net3d/up_sampling3d_1/split_1:output:54)u_net3d/up_sampling3d_1/split_1:output:55)u_net3d/up_sampling3d_1/split_1:output:55)u_net3d/up_sampling3d_1/split_1:output:56)u_net3d/up_sampling3d_1/split_1:output:56)u_net3d/up_sampling3d_1/split_1:output:57)u_net3d/up_sampling3d_1/split_1:output:57)u_net3d/up_sampling3d_1/split_1:output:58)u_net3d/up_sampling3d_1/split_1:output:58)u_net3d/up_sampling3d_1/split_1:output:59)u_net3d/up_sampling3d_1/split_1:output:59)u_net3d/up_sampling3d_1/split_1:output:60)u_net3d/up_sampling3d_1/split_1:output:60)u_net3d/up_sampling3d_1/split_1:output:61)u_net3d/up_sampling3d_1/split_1:output:61)u_net3d/up_sampling3d_1/split_1:output:62)u_net3d/up_sampling3d_1/split_1:output:62)u_net3d/up_sampling3d_1/split_1:output:63)u_net3d/up_sampling3d_1/split_1:output:63.u_net3d/up_sampling3d_1/concat_1/axis:output:0*
N*
T0*,
_output_shapes
:@k
)u_net3d/up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
u_net3d/up_sampling3d_1/split_2Split2u_net3d/up_sampling3d_1/split_2/split_dim:output:0)u_net3d/up_sampling3d_1/concat_1:output:0*
T0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
	num_split@g
%u_net3d/up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :,
 u_net3d/up_sampling3d_1/concat_2ConcatV2(u_net3d/up_sampling3d_1/split_2:output:0(u_net3d/up_sampling3d_1/split_2:output:0(u_net3d/up_sampling3d_1/split_2:output:1(u_net3d/up_sampling3d_1/split_2:output:1(u_net3d/up_sampling3d_1/split_2:output:2(u_net3d/up_sampling3d_1/split_2:output:2(u_net3d/up_sampling3d_1/split_2:output:3(u_net3d/up_sampling3d_1/split_2:output:3(u_net3d/up_sampling3d_1/split_2:output:4(u_net3d/up_sampling3d_1/split_2:output:4(u_net3d/up_sampling3d_1/split_2:output:5(u_net3d/up_sampling3d_1/split_2:output:5(u_net3d/up_sampling3d_1/split_2:output:6(u_net3d/up_sampling3d_1/split_2:output:6(u_net3d/up_sampling3d_1/split_2:output:7(u_net3d/up_sampling3d_1/split_2:output:7(u_net3d/up_sampling3d_1/split_2:output:8(u_net3d/up_sampling3d_1/split_2:output:8(u_net3d/up_sampling3d_1/split_2:output:9(u_net3d/up_sampling3d_1/split_2:output:9)u_net3d/up_sampling3d_1/split_2:output:10)u_net3d/up_sampling3d_1/split_2:output:10)u_net3d/up_sampling3d_1/split_2:output:11)u_net3d/up_sampling3d_1/split_2:output:11)u_net3d/up_sampling3d_1/split_2:output:12)u_net3d/up_sampling3d_1/split_2:output:12)u_net3d/up_sampling3d_1/split_2:output:13)u_net3d/up_sampling3d_1/split_2:output:13)u_net3d/up_sampling3d_1/split_2:output:14)u_net3d/up_sampling3d_1/split_2:output:14)u_net3d/up_sampling3d_1/split_2:output:15)u_net3d/up_sampling3d_1/split_2:output:15)u_net3d/up_sampling3d_1/split_2:output:16)u_net3d/up_sampling3d_1/split_2:output:16)u_net3d/up_sampling3d_1/split_2:output:17)u_net3d/up_sampling3d_1/split_2:output:17)u_net3d/up_sampling3d_1/split_2:output:18)u_net3d/up_sampling3d_1/split_2:output:18)u_net3d/up_sampling3d_1/split_2:output:19)u_net3d/up_sampling3d_1/split_2:output:19)u_net3d/up_sampling3d_1/split_2:output:20)u_net3d/up_sampling3d_1/split_2:output:20)u_net3d/up_sampling3d_1/split_2:output:21)u_net3d/up_sampling3d_1/split_2:output:21)u_net3d/up_sampling3d_1/split_2:output:22)u_net3d/up_sampling3d_1/split_2:output:22)u_net3d/up_sampling3d_1/split_2:output:23)u_net3d/up_sampling3d_1/split_2:output:23)u_net3d/up_sampling3d_1/split_2:output:24)u_net3d/up_sampling3d_1/split_2:output:24)u_net3d/up_sampling3d_1/split_2:output:25)u_net3d/up_sampling3d_1/split_2:output:25)u_net3d/up_sampling3d_1/split_2:output:26)u_net3d/up_sampling3d_1/split_2:output:26)u_net3d/up_sampling3d_1/split_2:output:27)u_net3d/up_sampling3d_1/split_2:output:27)u_net3d/up_sampling3d_1/split_2:output:28)u_net3d/up_sampling3d_1/split_2:output:28)u_net3d/up_sampling3d_1/split_2:output:29)u_net3d/up_sampling3d_1/split_2:output:29)u_net3d/up_sampling3d_1/split_2:output:30)u_net3d/up_sampling3d_1/split_2:output:30)u_net3d/up_sampling3d_1/split_2:output:31)u_net3d/up_sampling3d_1/split_2:output:31)u_net3d/up_sampling3d_1/split_2:output:32)u_net3d/up_sampling3d_1/split_2:output:32)u_net3d/up_sampling3d_1/split_2:output:33)u_net3d/up_sampling3d_1/split_2:output:33)u_net3d/up_sampling3d_1/split_2:output:34)u_net3d/up_sampling3d_1/split_2:output:34)u_net3d/up_sampling3d_1/split_2:output:35)u_net3d/up_sampling3d_1/split_2:output:35)u_net3d/up_sampling3d_1/split_2:output:36)u_net3d/up_sampling3d_1/split_2:output:36)u_net3d/up_sampling3d_1/split_2:output:37)u_net3d/up_sampling3d_1/split_2:output:37)u_net3d/up_sampling3d_1/split_2:output:38)u_net3d/up_sampling3d_1/split_2:output:38)u_net3d/up_sampling3d_1/split_2:output:39)u_net3d/up_sampling3d_1/split_2:output:39)u_net3d/up_sampling3d_1/split_2:output:40)u_net3d/up_sampling3d_1/split_2:output:40)u_net3d/up_sampling3d_1/split_2:output:41)u_net3d/up_sampling3d_1/split_2:output:41)u_net3d/up_sampling3d_1/split_2:output:42)u_net3d/up_sampling3d_1/split_2:output:42)u_net3d/up_sampling3d_1/split_2:output:43)u_net3d/up_sampling3d_1/split_2:output:43)u_net3d/up_sampling3d_1/split_2:output:44)u_net3d/up_sampling3d_1/split_2:output:44)u_net3d/up_sampling3d_1/split_2:output:45)u_net3d/up_sampling3d_1/split_2:output:45)u_net3d/up_sampling3d_1/split_2:output:46)u_net3d/up_sampling3d_1/split_2:output:46)u_net3d/up_sampling3d_1/split_2:output:47)u_net3d/up_sampling3d_1/split_2:output:47)u_net3d/up_sampling3d_1/split_2:output:48)u_net3d/up_sampling3d_1/split_2:output:48)u_net3d/up_sampling3d_1/split_2:output:49)u_net3d/up_sampling3d_1/split_2:output:49)u_net3d/up_sampling3d_1/split_2:output:50)u_net3d/up_sampling3d_1/split_2:output:50)u_net3d/up_sampling3d_1/split_2:output:51)u_net3d/up_sampling3d_1/split_2:output:51)u_net3d/up_sampling3d_1/split_2:output:52)u_net3d/up_sampling3d_1/split_2:output:52)u_net3d/up_sampling3d_1/split_2:output:53)u_net3d/up_sampling3d_1/split_2:output:53)u_net3d/up_sampling3d_1/split_2:output:54)u_net3d/up_sampling3d_1/split_2:output:54)u_net3d/up_sampling3d_1/split_2:output:55)u_net3d/up_sampling3d_1/split_2:output:55)u_net3d/up_sampling3d_1/split_2:output:56)u_net3d/up_sampling3d_1/split_2:output:56)u_net3d/up_sampling3d_1/split_2:output:57)u_net3d/up_sampling3d_1/split_2:output:57)u_net3d/up_sampling3d_1/split_2:output:58)u_net3d/up_sampling3d_1/split_2:output:58)u_net3d/up_sampling3d_1/split_2:output:59)u_net3d/up_sampling3d_1/split_2:output:59)u_net3d/up_sampling3d_1/split_2:output:60)u_net3d/up_sampling3d_1/split_2:output:60)u_net3d/up_sampling3d_1/split_2:output:61)u_net3d/up_sampling3d_1/split_2:output:61)u_net3d/up_sampling3d_1/split_2:output:62)u_net3d/up_sampling3d_1/split_2:output:62)u_net3d/up_sampling3d_1/split_2:output:63)u_net3d/up_sampling3d_1/split_2:output:63.u_net3d/up_sampling3d_1/concat_2/axis:output:0*
N*
T0*-
_output_shapes
:c
!u_net3d/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ň
u_net3d/concatenate_1/concatConcatV2)u_net3d/up_sampling3d_1/concat_2:output:00u_net3d/conv_block3d_2/LeakyRelu_1:activations:0*u_net3d/concatenate_1/concat/axis:output:0*
N*
T0*-
_output_shapes
:ÜÁ
5u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_3_conv3d_6_conv3d_readvariableop_resource*+
_output_shapes
:Ü\*
dtype0ö
&u_net3d/conv_block3d_3/conv3d_6/Conv3DConv3D%u_net3d/concatenate_1/concat:output:0=u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_3_conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ú
'u_net3d/conv_block3d_3/conv3d_6/BiasAddBiasAdd/u_net3d/conv_block3d_3/conv3d_6/Conv3D:output:0>u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\
 u_net3d/conv_block3d_3/LeakyRelu	LeakyRelu0u_net3d/conv_block3d_3/conv3d_6/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=Ŕ
5u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_3_conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0˙
&u_net3d/conv_block3d_3/conv3d_7/Conv3DConv3D.u_net3d/conv_block3d_3/LeakyRelu:activations:0=u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_3_conv3d_7_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ú
'u_net3d/conv_block3d_3/conv3d_7/BiasAddBiasAdd/u_net3d/conv_block3d_3/conv3d_7/Conv3D:output:0>u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\
"u_net3d/conv_block3d_3/LeakyRelu_1	LeakyRelu0u_net3d/conv_block3d_3/conv3d_7/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=g
%u_net3d/up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ů
u_net3d/up_sampling3d/splitSplit.u_net3d/up_sampling3d/split/split_dim:output:00u_net3d/conv_block3d_3/LeakyRelu_1:activations:0*
T0*ś
_output_shapesŁ
 :\:\:\:\:\:\:\:\:\:\:\:\*
	num_splitc
!u_net3d/up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¨
u_net3d/up_sampling3d/concatConcatV2$u_net3d/up_sampling3d/split:output:0$u_net3d/up_sampling3d/split:output:0$u_net3d/up_sampling3d/split:output:1$u_net3d/up_sampling3d/split:output:1$u_net3d/up_sampling3d/split:output:2$u_net3d/up_sampling3d/split:output:2$u_net3d/up_sampling3d/split:output:3$u_net3d/up_sampling3d/split:output:3$u_net3d/up_sampling3d/split:output:4$u_net3d/up_sampling3d/split:output:4$u_net3d/up_sampling3d/split:output:5$u_net3d/up_sampling3d/split:output:5$u_net3d/up_sampling3d/split:output:6$u_net3d/up_sampling3d/split:output:6$u_net3d/up_sampling3d/split:output:7$u_net3d/up_sampling3d/split:output:7$u_net3d/up_sampling3d/split:output:8$u_net3d/up_sampling3d/split:output:8$u_net3d/up_sampling3d/split:output:9$u_net3d/up_sampling3d/split:output:9%u_net3d/up_sampling3d/split:output:10%u_net3d/up_sampling3d/split:output:10%u_net3d/up_sampling3d/split:output:11%u_net3d/up_sampling3d/split:output:11*u_net3d/up_sampling3d/concat/axis:output:0*
N*
T0*,
_output_shapes
:\i
'u_net3d/up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ł
u_net3d/up_sampling3d/split_1Split0u_net3d/up_sampling3d/split_1/split_dim:output:0%u_net3d/up_sampling3d/concat:output:0*
T0*
_output_shapes
:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\*
	num_splite
#u_net3d/up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :˝S
u_net3d/up_sampling3d/concat_1ConcatV2&u_net3d/up_sampling3d/split_1:output:0&u_net3d/up_sampling3d/split_1:output:0&u_net3d/up_sampling3d/split_1:output:1&u_net3d/up_sampling3d/split_1:output:1&u_net3d/up_sampling3d/split_1:output:2&u_net3d/up_sampling3d/split_1:output:2&u_net3d/up_sampling3d/split_1:output:3&u_net3d/up_sampling3d/split_1:output:3&u_net3d/up_sampling3d/split_1:output:4&u_net3d/up_sampling3d/split_1:output:4&u_net3d/up_sampling3d/split_1:output:5&u_net3d/up_sampling3d/split_1:output:5&u_net3d/up_sampling3d/split_1:output:6&u_net3d/up_sampling3d/split_1:output:6&u_net3d/up_sampling3d/split_1:output:7&u_net3d/up_sampling3d/split_1:output:7&u_net3d/up_sampling3d/split_1:output:8&u_net3d/up_sampling3d/split_1:output:8&u_net3d/up_sampling3d/split_1:output:9&u_net3d/up_sampling3d/split_1:output:9'u_net3d/up_sampling3d/split_1:output:10'u_net3d/up_sampling3d/split_1:output:10'u_net3d/up_sampling3d/split_1:output:11'u_net3d/up_sampling3d/split_1:output:11'u_net3d/up_sampling3d/split_1:output:12'u_net3d/up_sampling3d/split_1:output:12'u_net3d/up_sampling3d/split_1:output:13'u_net3d/up_sampling3d/split_1:output:13'u_net3d/up_sampling3d/split_1:output:14'u_net3d/up_sampling3d/split_1:output:14'u_net3d/up_sampling3d/split_1:output:15'u_net3d/up_sampling3d/split_1:output:15'u_net3d/up_sampling3d/split_1:output:16'u_net3d/up_sampling3d/split_1:output:16'u_net3d/up_sampling3d/split_1:output:17'u_net3d/up_sampling3d/split_1:output:17'u_net3d/up_sampling3d/split_1:output:18'u_net3d/up_sampling3d/split_1:output:18'u_net3d/up_sampling3d/split_1:output:19'u_net3d/up_sampling3d/split_1:output:19'u_net3d/up_sampling3d/split_1:output:20'u_net3d/up_sampling3d/split_1:output:20'u_net3d/up_sampling3d/split_1:output:21'u_net3d/up_sampling3d/split_1:output:21'u_net3d/up_sampling3d/split_1:output:22'u_net3d/up_sampling3d/split_1:output:22'u_net3d/up_sampling3d/split_1:output:23'u_net3d/up_sampling3d/split_1:output:23'u_net3d/up_sampling3d/split_1:output:24'u_net3d/up_sampling3d/split_1:output:24'u_net3d/up_sampling3d/split_1:output:25'u_net3d/up_sampling3d/split_1:output:25'u_net3d/up_sampling3d/split_1:output:26'u_net3d/up_sampling3d/split_1:output:26'u_net3d/up_sampling3d/split_1:output:27'u_net3d/up_sampling3d/split_1:output:27'u_net3d/up_sampling3d/split_1:output:28'u_net3d/up_sampling3d/split_1:output:28'u_net3d/up_sampling3d/split_1:output:29'u_net3d/up_sampling3d/split_1:output:29'u_net3d/up_sampling3d/split_1:output:30'u_net3d/up_sampling3d/split_1:output:30'u_net3d/up_sampling3d/split_1:output:31'u_net3d/up_sampling3d/split_1:output:31'u_net3d/up_sampling3d/split_1:output:32'u_net3d/up_sampling3d/split_1:output:32'u_net3d/up_sampling3d/split_1:output:33'u_net3d/up_sampling3d/split_1:output:33'u_net3d/up_sampling3d/split_1:output:34'u_net3d/up_sampling3d/split_1:output:34'u_net3d/up_sampling3d/split_1:output:35'u_net3d/up_sampling3d/split_1:output:35'u_net3d/up_sampling3d/split_1:output:36'u_net3d/up_sampling3d/split_1:output:36'u_net3d/up_sampling3d/split_1:output:37'u_net3d/up_sampling3d/split_1:output:37'u_net3d/up_sampling3d/split_1:output:38'u_net3d/up_sampling3d/split_1:output:38'u_net3d/up_sampling3d/split_1:output:39'u_net3d/up_sampling3d/split_1:output:39'u_net3d/up_sampling3d/split_1:output:40'u_net3d/up_sampling3d/split_1:output:40'u_net3d/up_sampling3d/split_1:output:41'u_net3d/up_sampling3d/split_1:output:41'u_net3d/up_sampling3d/split_1:output:42'u_net3d/up_sampling3d/split_1:output:42'u_net3d/up_sampling3d/split_1:output:43'u_net3d/up_sampling3d/split_1:output:43'u_net3d/up_sampling3d/split_1:output:44'u_net3d/up_sampling3d/split_1:output:44'u_net3d/up_sampling3d/split_1:output:45'u_net3d/up_sampling3d/split_1:output:45'u_net3d/up_sampling3d/split_1:output:46'u_net3d/up_sampling3d/split_1:output:46'u_net3d/up_sampling3d/split_1:output:47'u_net3d/up_sampling3d/split_1:output:47'u_net3d/up_sampling3d/split_1:output:48'u_net3d/up_sampling3d/split_1:output:48'u_net3d/up_sampling3d/split_1:output:49'u_net3d/up_sampling3d/split_1:output:49'u_net3d/up_sampling3d/split_1:output:50'u_net3d/up_sampling3d/split_1:output:50'u_net3d/up_sampling3d/split_1:output:51'u_net3d/up_sampling3d/split_1:output:51'u_net3d/up_sampling3d/split_1:output:52'u_net3d/up_sampling3d/split_1:output:52'u_net3d/up_sampling3d/split_1:output:53'u_net3d/up_sampling3d/split_1:output:53'u_net3d/up_sampling3d/split_1:output:54'u_net3d/up_sampling3d/split_1:output:54'u_net3d/up_sampling3d/split_1:output:55'u_net3d/up_sampling3d/split_1:output:55'u_net3d/up_sampling3d/split_1:output:56'u_net3d/up_sampling3d/split_1:output:56'u_net3d/up_sampling3d/split_1:output:57'u_net3d/up_sampling3d/split_1:output:57'u_net3d/up_sampling3d/split_1:output:58'u_net3d/up_sampling3d/split_1:output:58'u_net3d/up_sampling3d/split_1:output:59'u_net3d/up_sampling3d/split_1:output:59'u_net3d/up_sampling3d/split_1:output:60'u_net3d/up_sampling3d/split_1:output:60'u_net3d/up_sampling3d/split_1:output:61'u_net3d/up_sampling3d/split_1:output:61'u_net3d/up_sampling3d/split_1:output:62'u_net3d/up_sampling3d/split_1:output:62'u_net3d/up_sampling3d/split_1:output:63'u_net3d/up_sampling3d/split_1:output:63'u_net3d/up_sampling3d/split_1:output:64'u_net3d/up_sampling3d/split_1:output:64'u_net3d/up_sampling3d/split_1:output:65'u_net3d/up_sampling3d/split_1:output:65'u_net3d/up_sampling3d/split_1:output:66'u_net3d/up_sampling3d/split_1:output:66'u_net3d/up_sampling3d/split_1:output:67'u_net3d/up_sampling3d/split_1:output:67'u_net3d/up_sampling3d/split_1:output:68'u_net3d/up_sampling3d/split_1:output:68'u_net3d/up_sampling3d/split_1:output:69'u_net3d/up_sampling3d/split_1:output:69'u_net3d/up_sampling3d/split_1:output:70'u_net3d/up_sampling3d/split_1:output:70'u_net3d/up_sampling3d/split_1:output:71'u_net3d/up_sampling3d/split_1:output:71'u_net3d/up_sampling3d/split_1:output:72'u_net3d/up_sampling3d/split_1:output:72'u_net3d/up_sampling3d/split_1:output:73'u_net3d/up_sampling3d/split_1:output:73'u_net3d/up_sampling3d/split_1:output:74'u_net3d/up_sampling3d/split_1:output:74'u_net3d/up_sampling3d/split_1:output:75'u_net3d/up_sampling3d/split_1:output:75'u_net3d/up_sampling3d/split_1:output:76'u_net3d/up_sampling3d/split_1:output:76'u_net3d/up_sampling3d/split_1:output:77'u_net3d/up_sampling3d/split_1:output:77'u_net3d/up_sampling3d/split_1:output:78'u_net3d/up_sampling3d/split_1:output:78'u_net3d/up_sampling3d/split_1:output:79'u_net3d/up_sampling3d/split_1:output:79'u_net3d/up_sampling3d/split_1:output:80'u_net3d/up_sampling3d/split_1:output:80'u_net3d/up_sampling3d/split_1:output:81'u_net3d/up_sampling3d/split_1:output:81'u_net3d/up_sampling3d/split_1:output:82'u_net3d/up_sampling3d/split_1:output:82'u_net3d/up_sampling3d/split_1:output:83'u_net3d/up_sampling3d/split_1:output:83'u_net3d/up_sampling3d/split_1:output:84'u_net3d/up_sampling3d/split_1:output:84'u_net3d/up_sampling3d/split_1:output:85'u_net3d/up_sampling3d/split_1:output:85'u_net3d/up_sampling3d/split_1:output:86'u_net3d/up_sampling3d/split_1:output:86'u_net3d/up_sampling3d/split_1:output:87'u_net3d/up_sampling3d/split_1:output:87'u_net3d/up_sampling3d/split_1:output:88'u_net3d/up_sampling3d/split_1:output:88'u_net3d/up_sampling3d/split_1:output:89'u_net3d/up_sampling3d/split_1:output:89'u_net3d/up_sampling3d/split_1:output:90'u_net3d/up_sampling3d/split_1:output:90'u_net3d/up_sampling3d/split_1:output:91'u_net3d/up_sampling3d/split_1:output:91'u_net3d/up_sampling3d/split_1:output:92'u_net3d/up_sampling3d/split_1:output:92'u_net3d/up_sampling3d/split_1:output:93'u_net3d/up_sampling3d/split_1:output:93'u_net3d/up_sampling3d/split_1:output:94'u_net3d/up_sampling3d/split_1:output:94'u_net3d/up_sampling3d/split_1:output:95'u_net3d/up_sampling3d/split_1:output:95'u_net3d/up_sampling3d/split_1:output:96'u_net3d/up_sampling3d/split_1:output:96'u_net3d/up_sampling3d/split_1:output:97'u_net3d/up_sampling3d/split_1:output:97'u_net3d/up_sampling3d/split_1:output:98'u_net3d/up_sampling3d/split_1:output:98'u_net3d/up_sampling3d/split_1:output:99'u_net3d/up_sampling3d/split_1:output:99(u_net3d/up_sampling3d/split_1:output:100(u_net3d/up_sampling3d/split_1:output:100(u_net3d/up_sampling3d/split_1:output:101(u_net3d/up_sampling3d/split_1:output:101(u_net3d/up_sampling3d/split_1:output:102(u_net3d/up_sampling3d/split_1:output:102(u_net3d/up_sampling3d/split_1:output:103(u_net3d/up_sampling3d/split_1:output:103(u_net3d/up_sampling3d/split_1:output:104(u_net3d/up_sampling3d/split_1:output:104(u_net3d/up_sampling3d/split_1:output:105(u_net3d/up_sampling3d/split_1:output:105(u_net3d/up_sampling3d/split_1:output:106(u_net3d/up_sampling3d/split_1:output:106(u_net3d/up_sampling3d/split_1:output:107(u_net3d/up_sampling3d/split_1:output:107(u_net3d/up_sampling3d/split_1:output:108(u_net3d/up_sampling3d/split_1:output:108(u_net3d/up_sampling3d/split_1:output:109(u_net3d/up_sampling3d/split_1:output:109(u_net3d/up_sampling3d/split_1:output:110(u_net3d/up_sampling3d/split_1:output:110(u_net3d/up_sampling3d/split_1:output:111(u_net3d/up_sampling3d/split_1:output:111(u_net3d/up_sampling3d/split_1:output:112(u_net3d/up_sampling3d/split_1:output:112(u_net3d/up_sampling3d/split_1:output:113(u_net3d/up_sampling3d/split_1:output:113(u_net3d/up_sampling3d/split_1:output:114(u_net3d/up_sampling3d/split_1:output:114(u_net3d/up_sampling3d/split_1:output:115(u_net3d/up_sampling3d/split_1:output:115(u_net3d/up_sampling3d/split_1:output:116(u_net3d/up_sampling3d/split_1:output:116(u_net3d/up_sampling3d/split_1:output:117(u_net3d/up_sampling3d/split_1:output:117(u_net3d/up_sampling3d/split_1:output:118(u_net3d/up_sampling3d/split_1:output:118(u_net3d/up_sampling3d/split_1:output:119(u_net3d/up_sampling3d/split_1:output:119(u_net3d/up_sampling3d/split_1:output:120(u_net3d/up_sampling3d/split_1:output:120(u_net3d/up_sampling3d/split_1:output:121(u_net3d/up_sampling3d/split_1:output:121(u_net3d/up_sampling3d/split_1:output:122(u_net3d/up_sampling3d/split_1:output:122(u_net3d/up_sampling3d/split_1:output:123(u_net3d/up_sampling3d/split_1:output:123(u_net3d/up_sampling3d/split_1:output:124(u_net3d/up_sampling3d/split_1:output:124(u_net3d/up_sampling3d/split_1:output:125(u_net3d/up_sampling3d/split_1:output:125(u_net3d/up_sampling3d/split_1:output:126(u_net3d/up_sampling3d/split_1:output:126(u_net3d/up_sampling3d/split_1:output:127(u_net3d/up_sampling3d/split_1:output:127,u_net3d/up_sampling3d/concat_1/axis:output:0*
N*
T0*,
_output_shapes
:\i
'u_net3d/up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ľ
u_net3d/up_sampling3d/split_2Split0u_net3d/up_sampling3d/split_2/split_dim:output:0'u_net3d/up_sampling3d/concat_1:output:0*
T0*
_output_shapes
:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\*
	num_splite
#u_net3d/up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :˝S
u_net3d/up_sampling3d/concat_2ConcatV2&u_net3d/up_sampling3d/split_2:output:0&u_net3d/up_sampling3d/split_2:output:0&u_net3d/up_sampling3d/split_2:output:1&u_net3d/up_sampling3d/split_2:output:1&u_net3d/up_sampling3d/split_2:output:2&u_net3d/up_sampling3d/split_2:output:2&u_net3d/up_sampling3d/split_2:output:3&u_net3d/up_sampling3d/split_2:output:3&u_net3d/up_sampling3d/split_2:output:4&u_net3d/up_sampling3d/split_2:output:4&u_net3d/up_sampling3d/split_2:output:5&u_net3d/up_sampling3d/split_2:output:5&u_net3d/up_sampling3d/split_2:output:6&u_net3d/up_sampling3d/split_2:output:6&u_net3d/up_sampling3d/split_2:output:7&u_net3d/up_sampling3d/split_2:output:7&u_net3d/up_sampling3d/split_2:output:8&u_net3d/up_sampling3d/split_2:output:8&u_net3d/up_sampling3d/split_2:output:9&u_net3d/up_sampling3d/split_2:output:9'u_net3d/up_sampling3d/split_2:output:10'u_net3d/up_sampling3d/split_2:output:10'u_net3d/up_sampling3d/split_2:output:11'u_net3d/up_sampling3d/split_2:output:11'u_net3d/up_sampling3d/split_2:output:12'u_net3d/up_sampling3d/split_2:output:12'u_net3d/up_sampling3d/split_2:output:13'u_net3d/up_sampling3d/split_2:output:13'u_net3d/up_sampling3d/split_2:output:14'u_net3d/up_sampling3d/split_2:output:14'u_net3d/up_sampling3d/split_2:output:15'u_net3d/up_sampling3d/split_2:output:15'u_net3d/up_sampling3d/split_2:output:16'u_net3d/up_sampling3d/split_2:output:16'u_net3d/up_sampling3d/split_2:output:17'u_net3d/up_sampling3d/split_2:output:17'u_net3d/up_sampling3d/split_2:output:18'u_net3d/up_sampling3d/split_2:output:18'u_net3d/up_sampling3d/split_2:output:19'u_net3d/up_sampling3d/split_2:output:19'u_net3d/up_sampling3d/split_2:output:20'u_net3d/up_sampling3d/split_2:output:20'u_net3d/up_sampling3d/split_2:output:21'u_net3d/up_sampling3d/split_2:output:21'u_net3d/up_sampling3d/split_2:output:22'u_net3d/up_sampling3d/split_2:output:22'u_net3d/up_sampling3d/split_2:output:23'u_net3d/up_sampling3d/split_2:output:23'u_net3d/up_sampling3d/split_2:output:24'u_net3d/up_sampling3d/split_2:output:24'u_net3d/up_sampling3d/split_2:output:25'u_net3d/up_sampling3d/split_2:output:25'u_net3d/up_sampling3d/split_2:output:26'u_net3d/up_sampling3d/split_2:output:26'u_net3d/up_sampling3d/split_2:output:27'u_net3d/up_sampling3d/split_2:output:27'u_net3d/up_sampling3d/split_2:output:28'u_net3d/up_sampling3d/split_2:output:28'u_net3d/up_sampling3d/split_2:output:29'u_net3d/up_sampling3d/split_2:output:29'u_net3d/up_sampling3d/split_2:output:30'u_net3d/up_sampling3d/split_2:output:30'u_net3d/up_sampling3d/split_2:output:31'u_net3d/up_sampling3d/split_2:output:31'u_net3d/up_sampling3d/split_2:output:32'u_net3d/up_sampling3d/split_2:output:32'u_net3d/up_sampling3d/split_2:output:33'u_net3d/up_sampling3d/split_2:output:33'u_net3d/up_sampling3d/split_2:output:34'u_net3d/up_sampling3d/split_2:output:34'u_net3d/up_sampling3d/split_2:output:35'u_net3d/up_sampling3d/split_2:output:35'u_net3d/up_sampling3d/split_2:output:36'u_net3d/up_sampling3d/split_2:output:36'u_net3d/up_sampling3d/split_2:output:37'u_net3d/up_sampling3d/split_2:output:37'u_net3d/up_sampling3d/split_2:output:38'u_net3d/up_sampling3d/split_2:output:38'u_net3d/up_sampling3d/split_2:output:39'u_net3d/up_sampling3d/split_2:output:39'u_net3d/up_sampling3d/split_2:output:40'u_net3d/up_sampling3d/split_2:output:40'u_net3d/up_sampling3d/split_2:output:41'u_net3d/up_sampling3d/split_2:output:41'u_net3d/up_sampling3d/split_2:output:42'u_net3d/up_sampling3d/split_2:output:42'u_net3d/up_sampling3d/split_2:output:43'u_net3d/up_sampling3d/split_2:output:43'u_net3d/up_sampling3d/split_2:output:44'u_net3d/up_sampling3d/split_2:output:44'u_net3d/up_sampling3d/split_2:output:45'u_net3d/up_sampling3d/split_2:output:45'u_net3d/up_sampling3d/split_2:output:46'u_net3d/up_sampling3d/split_2:output:46'u_net3d/up_sampling3d/split_2:output:47'u_net3d/up_sampling3d/split_2:output:47'u_net3d/up_sampling3d/split_2:output:48'u_net3d/up_sampling3d/split_2:output:48'u_net3d/up_sampling3d/split_2:output:49'u_net3d/up_sampling3d/split_2:output:49'u_net3d/up_sampling3d/split_2:output:50'u_net3d/up_sampling3d/split_2:output:50'u_net3d/up_sampling3d/split_2:output:51'u_net3d/up_sampling3d/split_2:output:51'u_net3d/up_sampling3d/split_2:output:52'u_net3d/up_sampling3d/split_2:output:52'u_net3d/up_sampling3d/split_2:output:53'u_net3d/up_sampling3d/split_2:output:53'u_net3d/up_sampling3d/split_2:output:54'u_net3d/up_sampling3d/split_2:output:54'u_net3d/up_sampling3d/split_2:output:55'u_net3d/up_sampling3d/split_2:output:55'u_net3d/up_sampling3d/split_2:output:56'u_net3d/up_sampling3d/split_2:output:56'u_net3d/up_sampling3d/split_2:output:57'u_net3d/up_sampling3d/split_2:output:57'u_net3d/up_sampling3d/split_2:output:58'u_net3d/up_sampling3d/split_2:output:58'u_net3d/up_sampling3d/split_2:output:59'u_net3d/up_sampling3d/split_2:output:59'u_net3d/up_sampling3d/split_2:output:60'u_net3d/up_sampling3d/split_2:output:60'u_net3d/up_sampling3d/split_2:output:61'u_net3d/up_sampling3d/split_2:output:61'u_net3d/up_sampling3d/split_2:output:62'u_net3d/up_sampling3d/split_2:output:62'u_net3d/up_sampling3d/split_2:output:63'u_net3d/up_sampling3d/split_2:output:63'u_net3d/up_sampling3d/split_2:output:64'u_net3d/up_sampling3d/split_2:output:64'u_net3d/up_sampling3d/split_2:output:65'u_net3d/up_sampling3d/split_2:output:65'u_net3d/up_sampling3d/split_2:output:66'u_net3d/up_sampling3d/split_2:output:66'u_net3d/up_sampling3d/split_2:output:67'u_net3d/up_sampling3d/split_2:output:67'u_net3d/up_sampling3d/split_2:output:68'u_net3d/up_sampling3d/split_2:output:68'u_net3d/up_sampling3d/split_2:output:69'u_net3d/up_sampling3d/split_2:output:69'u_net3d/up_sampling3d/split_2:output:70'u_net3d/up_sampling3d/split_2:output:70'u_net3d/up_sampling3d/split_2:output:71'u_net3d/up_sampling3d/split_2:output:71'u_net3d/up_sampling3d/split_2:output:72'u_net3d/up_sampling3d/split_2:output:72'u_net3d/up_sampling3d/split_2:output:73'u_net3d/up_sampling3d/split_2:output:73'u_net3d/up_sampling3d/split_2:output:74'u_net3d/up_sampling3d/split_2:output:74'u_net3d/up_sampling3d/split_2:output:75'u_net3d/up_sampling3d/split_2:output:75'u_net3d/up_sampling3d/split_2:output:76'u_net3d/up_sampling3d/split_2:output:76'u_net3d/up_sampling3d/split_2:output:77'u_net3d/up_sampling3d/split_2:output:77'u_net3d/up_sampling3d/split_2:output:78'u_net3d/up_sampling3d/split_2:output:78'u_net3d/up_sampling3d/split_2:output:79'u_net3d/up_sampling3d/split_2:output:79'u_net3d/up_sampling3d/split_2:output:80'u_net3d/up_sampling3d/split_2:output:80'u_net3d/up_sampling3d/split_2:output:81'u_net3d/up_sampling3d/split_2:output:81'u_net3d/up_sampling3d/split_2:output:82'u_net3d/up_sampling3d/split_2:output:82'u_net3d/up_sampling3d/split_2:output:83'u_net3d/up_sampling3d/split_2:output:83'u_net3d/up_sampling3d/split_2:output:84'u_net3d/up_sampling3d/split_2:output:84'u_net3d/up_sampling3d/split_2:output:85'u_net3d/up_sampling3d/split_2:output:85'u_net3d/up_sampling3d/split_2:output:86'u_net3d/up_sampling3d/split_2:output:86'u_net3d/up_sampling3d/split_2:output:87'u_net3d/up_sampling3d/split_2:output:87'u_net3d/up_sampling3d/split_2:output:88'u_net3d/up_sampling3d/split_2:output:88'u_net3d/up_sampling3d/split_2:output:89'u_net3d/up_sampling3d/split_2:output:89'u_net3d/up_sampling3d/split_2:output:90'u_net3d/up_sampling3d/split_2:output:90'u_net3d/up_sampling3d/split_2:output:91'u_net3d/up_sampling3d/split_2:output:91'u_net3d/up_sampling3d/split_2:output:92'u_net3d/up_sampling3d/split_2:output:92'u_net3d/up_sampling3d/split_2:output:93'u_net3d/up_sampling3d/split_2:output:93'u_net3d/up_sampling3d/split_2:output:94'u_net3d/up_sampling3d/split_2:output:94'u_net3d/up_sampling3d/split_2:output:95'u_net3d/up_sampling3d/split_2:output:95'u_net3d/up_sampling3d/split_2:output:96'u_net3d/up_sampling3d/split_2:output:96'u_net3d/up_sampling3d/split_2:output:97'u_net3d/up_sampling3d/split_2:output:97'u_net3d/up_sampling3d/split_2:output:98'u_net3d/up_sampling3d/split_2:output:98'u_net3d/up_sampling3d/split_2:output:99'u_net3d/up_sampling3d/split_2:output:99(u_net3d/up_sampling3d/split_2:output:100(u_net3d/up_sampling3d/split_2:output:100(u_net3d/up_sampling3d/split_2:output:101(u_net3d/up_sampling3d/split_2:output:101(u_net3d/up_sampling3d/split_2:output:102(u_net3d/up_sampling3d/split_2:output:102(u_net3d/up_sampling3d/split_2:output:103(u_net3d/up_sampling3d/split_2:output:103(u_net3d/up_sampling3d/split_2:output:104(u_net3d/up_sampling3d/split_2:output:104(u_net3d/up_sampling3d/split_2:output:105(u_net3d/up_sampling3d/split_2:output:105(u_net3d/up_sampling3d/split_2:output:106(u_net3d/up_sampling3d/split_2:output:106(u_net3d/up_sampling3d/split_2:output:107(u_net3d/up_sampling3d/split_2:output:107(u_net3d/up_sampling3d/split_2:output:108(u_net3d/up_sampling3d/split_2:output:108(u_net3d/up_sampling3d/split_2:output:109(u_net3d/up_sampling3d/split_2:output:109(u_net3d/up_sampling3d/split_2:output:110(u_net3d/up_sampling3d/split_2:output:110(u_net3d/up_sampling3d/split_2:output:111(u_net3d/up_sampling3d/split_2:output:111(u_net3d/up_sampling3d/split_2:output:112(u_net3d/up_sampling3d/split_2:output:112(u_net3d/up_sampling3d/split_2:output:113(u_net3d/up_sampling3d/split_2:output:113(u_net3d/up_sampling3d/split_2:output:114(u_net3d/up_sampling3d/split_2:output:114(u_net3d/up_sampling3d/split_2:output:115(u_net3d/up_sampling3d/split_2:output:115(u_net3d/up_sampling3d/split_2:output:116(u_net3d/up_sampling3d/split_2:output:116(u_net3d/up_sampling3d/split_2:output:117(u_net3d/up_sampling3d/split_2:output:117(u_net3d/up_sampling3d/split_2:output:118(u_net3d/up_sampling3d/split_2:output:118(u_net3d/up_sampling3d/split_2:output:119(u_net3d/up_sampling3d/split_2:output:119(u_net3d/up_sampling3d/split_2:output:120(u_net3d/up_sampling3d/split_2:output:120(u_net3d/up_sampling3d/split_2:output:121(u_net3d/up_sampling3d/split_2:output:121(u_net3d/up_sampling3d/split_2:output:122(u_net3d/up_sampling3d/split_2:output:122(u_net3d/up_sampling3d/split_2:output:123(u_net3d/up_sampling3d/split_2:output:123(u_net3d/up_sampling3d/split_2:output:124(u_net3d/up_sampling3d/split_2:output:124(u_net3d/up_sampling3d/split_2:output:125(u_net3d/up_sampling3d/split_2:output:125(u_net3d/up_sampling3d/split_2:output:126(u_net3d/up_sampling3d/split_2:output:126(u_net3d/up_sampling3d/split_2:output:127(u_net3d/up_sampling3d/split_2:output:127,u_net3d/up_sampling3d/concat_2/axis:output:0*
N*
T0*,
_output_shapes
:\a
u_net3d/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ę
u_net3d/concatenate/concatConcatV2'u_net3d/up_sampling3d/concat_2:output:0.u_net3d/conv_block3d/LeakyRelu_1:activations:0(u_net3d/concatenate/concat/axis:output:0*
N*
T0*-
_output_shapes
:Á
5u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_1_conv3d_2_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0ô
&u_net3d/conv_block3d_1/conv3d_2/Conv3DConv3D#u_net3d/concatenate/concat:output:0=u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_1_conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ú
'u_net3d/conv_block3d_1/conv3d_2/BiasAddBiasAdd/u_net3d/conv_block3d_1/conv3d_2/Conv3D:output:0>u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@
 u_net3d/conv_block3d_1/LeakyRelu	LeakyRelu0u_net3d/conv_block3d_1/conv3d_2/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=Ŕ
5u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_1_conv3d_3_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0˙
&u_net3d/conv_block3d_1/conv3d_3/Conv3DConv3D.u_net3d/conv_block3d_1/LeakyRelu:activations:0=u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_1_conv3d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ú
'u_net3d/conv_block3d_1/conv3d_3/BiasAddBiasAdd/u_net3d/conv_block3d_1/conv3d_3/Conv3D:output:0>u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@
"u_net3d/conv_block3d_1/LeakyRelu_1	LeakyRelu0u_net3d/conv_block3d_1/conv3d_3/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=Â
6u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_5_conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0
'u_net3d/conv_block3d_5/conv3d_10/Conv3DConv3D0u_net3d/conv_block3d_1/LeakyRelu_1:activations:0>u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:*
paddingSAME*
strides	
´
7u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOpReadVariableOp@u_net3d_conv_block3d_5_conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ý
(u_net3d/conv_block3d_5/conv3d_10/BiasAddBiasAdd0u_net3d/conv_block3d_5/conv3d_10/Conv3D:output:0?u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:
IdentityIdentity1u_net3d/conv_block3d_5/conv3d_10/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:

NoOpNoOp3^u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp2^u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp5^u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp4^u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp8^u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp7^u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 2h
2u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp2u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp2f
1u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp1u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp2l
4u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp4u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp2j
3u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp3u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp5u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp5u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp5u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp5u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp5u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp5u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp5u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp5u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp2r
7u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp7u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp2p
6u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp6u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp:T P
,
_output_shapes
:
 
_user_specified_nameinputs
ď
Č
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132172

inputs,
conv3d_1132148:@
conv3d_1132150:@.
conv3d_1_1132165:@@
conv3d_1_1132167:@
identity˘conv3d/StatefulPartitionedCall˘ conv3d_1/StatefulPartitionedCallţ
conv3d/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_1132148conv3d_1132150*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *L
fGRE
C__inference_conv3d_layer_call_and_return_conditional_losses_1132147
	LeakyRelu	LeakyRelu'conv3d/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_1_1132165conv3d_1_1132167*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_1_layer_call_and_return_conditional_losses_1132164
LeakyRelu_1	LeakyRelu)conv3d_1/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙: : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ň


E__inference_conv3d_9_layer_call_and_return_conditional_losses_1132484

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:˙˙˙˙˙˙˙˙˙@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
Ő=
Ë

D__inference_u_net3d_layer_call_and_return_conditional_losses_1133959
input_12
conv_block3d_1133902:@"
conv_block3d_1133904:@2
conv_block3d_1133906:@@"
conv_block3d_1133908:@4
conv_block3d_2_1133912:@\$
conv_block3d_2_1133914:\4
conv_block3d_2_1133916:\\$
conv_block3d_2_1133918:\5
conv_block3d_4_1133922:\%
conv_block3d_4_1133924:	6
conv_block3d_4_1133926:%
conv_block3d_4_1133928:	5
conv_block3d_3_1133933:Ü\$
conv_block3d_3_1133935:\4
conv_block3d_3_1133937:\\$
conv_block3d_3_1133939:\5
conv_block3d_1_1133944:@$
conv_block3d_1_1133946:@4
conv_block3d_1_1133948:@@$
conv_block3d_1_1133950:@4
conv_block3d_5_1133953:@$
conv_block3d_5_1133955:
identity˘$conv_block3d/StatefulPartitionedCall˘&conv_block3d_1/StatefulPartitionedCall˘&conv_block3d_2/StatefulPartitionedCall˘&conv_block3d_3/StatefulPartitionedCall˘&conv_block3d_4/StatefulPartitionedCall˘&conv_block3d_5/StatefulPartitionedCallÇ
$conv_block3d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv_block3d_1133902conv_block3d_1133904conv_block3d_1133906conv_block3d_1133908*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132234ý
max_pooling3d/PartitionedCallPartitionedCall-conv_block3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_max_pooling3d_layer_call_and_return_conditional_losses_1132939ň
&conv_block3d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling3d/PartitionedCall:output:0conv_block3d_2_1133912conv_block3d_2_1133914conv_block3d_2_1133916conv_block3d_2_1133918*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132394
max_pooling3d_1/PartitionedCallPartitionedCall/conv_block3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1132951ó
&conv_block3d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_1/PartitionedCall:output:0conv_block3d_4_1133922conv_block3d_4_1133924conv_block3d_4_1133926conv_block3d_4_1133928*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132554
up_sampling3d_1/PartitionedCallPartitionedCall/conv_block3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_1133232Ť
concatenate_1/PartitionedCallPartitionedCall(up_sampling3d_1/PartitionedCall:output:0/conv_block3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1133241ň
&conv_block3d_3/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv_block3d_3_1133933conv_block3d_3_1133935conv_block3d_3_1133937conv_block3d_3_1133939*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132874˙
up_sampling3d/PartitionedCallPartitionedCall/conv_block3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_up_sampling3d_layer_call_and_return_conditional_losses_1133533Ł
concatenate/PartitionedCallPartitionedCall&up_sampling3d/PartitionedCall:output:0-conv_block3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1133542đ
&conv_block3d_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv_block3d_1_1133944conv_block3d_1_1133946conv_block3d_1_1133948conv_block3d_1_1133950*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132714Ç
&conv_block3d_5/StatefulPartitionedCallStatefulPartitionedCall/conv_block3d_1/StatefulPartitionedCall:output:0conv_block3d_5_1133953conv_block3d_5_1133955*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133015
IdentityIdentity/conv_block3d_5/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp%^conv_block3d/StatefulPartitionedCall'^conv_block3d_1/StatefulPartitionedCall'^conv_block3d_2/StatefulPartitionedCall'^conv_block3d_3/StatefulPartitionedCall'^conv_block3d_4/StatefulPartitionedCall'^conv_block3d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : 2L
$conv_block3d/StatefulPartitionedCall$conv_block3d/StatefulPartitionedCall2P
&conv_block3d_1/StatefulPartitionedCall&conv_block3d_1/StatefulPartitionedCall2P
&conv_block3d_2/StatefulPartitionedCall&conv_block3d_2/StatefulPartitionedCall2P
&conv_block3d_3/StatefulPartitionedCall&conv_block3d_3/StatefulPartitionedCall2P
&conv_block3d_4/StatefulPartitionedCall&conv_block3d_4/StatefulPartitionedCall2P
&conv_block3d_5/StatefulPartitionedCall&conv_block3d_5/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1

ä
B__inference_model_layer_call_and_return_conditional_losses_1134159

inputs-
u_net3d_1134113:@
u_net3d_1134115:@-
u_net3d_1134117:@@
u_net3d_1134119:@-
u_net3d_1134121:@\
u_net3d_1134123:\-
u_net3d_1134125:\\
u_net3d_1134127:\.
u_net3d_1134129:\
u_net3d_1134131:	/
u_net3d_1134133:
u_net3d_1134135:	.
u_net3d_1134137:Ü\
u_net3d_1134139:\-
u_net3d_1134141:\\
u_net3d_1134143:\.
u_net3d_1134145:@
u_net3d_1134147:@-
u_net3d_1134149:@@
u_net3d_1134151:@-
u_net3d_1134153:@
u_net3d_1134155:
identity˘u_net3d/StatefulPartitionedCallő
u_net3d/StatefulPartitionedCallStatefulPartitionedCallinputsu_net3d_1134113u_net3d_1134115u_net3d_1134117u_net3d_1134119u_net3d_1134121u_net3d_1134123u_net3d_1134125u_net3d_1134127u_net3d_1134129u_net3d_1134131u_net3d_1134133u_net3d_1134135u_net3d_1134137u_net3d_1134139u_net3d_1134141u_net3d_1134143u_net3d_1134145u_net3d_1134147u_net3d_1134149u_net3d_1134151u_net3d_1134153u_net3d_1134155*"
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133743|
IdentityIdentity(u_net3d/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:h
NoOpNoOp ^u_net3d/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 2B
u_net3d/StatefulPartitionedCallu_net3d/StatefulPartitionedCall:T P
,
_output_shapes
:
 
_user_specified_nameinputs

Ş
0__inference_conv_block3d_5_layer_call_fn_1133031
input_1%
unknown:@
	unknown_0:
identity˘StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133015}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
!
_user_specified_name	input_1
Ń


E__inference_conv3d_4_layer_call_and_return_conditional_losses_1137538

inputs<
conv3d_readvariableop_resource:@\-
biasadd_readvariableop_resource:\
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@\*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Ď


C__inference_conv3d_layer_call_and_return_conditional_losses_1132147

inputs<
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ň
É
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132290
input_1,
conv3d_1132277:@
conv3d_1132279:@.
conv3d_1_1132283:@@
conv3d_1_1132285:@
identity˘conv3d/StatefulPartitionedCall˘ conv3d_1/StatefulPartitionedCall˙
conv3d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_1132277conv3d_1132279*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *L
fGRE
C__inference_conv3d_layer_call_and_return_conditional_losses_1132147
	LeakyRelu	LeakyRelu'conv3d/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_1_1132283conv3d_1_1132285*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_1_layer_call_and_return_conditional_losses_1132164
LeakyRelu_1	LeakyRelu)conv3d_1/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙: : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
Ő


E__inference_conv3d_2_layer_call_and_return_conditional_losses_1137614

inputs=
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: ˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ą
Ĺ
%__inference_signature_wrapper_1134410
input_1%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@'
	unknown_3:@\
	unknown_4:\'
	unknown_5:\\
	unknown_6:\(
	unknown_7:\
	unknown_8:	)
	unknown_9:

unknown_10:	)

unknown_11:Ü\

unknown_12:\(

unknown_13:\\

unknown_14:\)

unknown_15:@

unknown_16:@(

unknown_17:@@

unknown_18:@(

unknown_19:@

unknown_20:
identity˘StatefulPartitionedCallŃ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *+
f&R$
"__inference__wrapped_model_1132130t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:
!
_user_specified_name	input_1
Ń


E__inference_conv3d_3_layer_call_and_return_conditional_losses_1137633

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Î


E__inference_conv3d_8_layer_call_and_return_conditional_losses_1137576

inputs=
conv3d_readvariableop_resource:\.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:\*
dtype0
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:˙˙˙˙˙˙˙˙˙@@\: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
 
_user_specified_nameinputs

¤
*__inference_conv3d_2_layer_call_fn_1137604

inputs&
unknown:@
	unknown_0:@
identity˘StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_2_layer_call_and_return_conditional_losses_1132627}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: ˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ń
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132714

inputs/
conv3d_2_1132701:@
conv3d_2_1132703:@.
conv3d_3_1132707:@@
conv3d_3_1132709:@
identity˘ conv3d_2/StatefulPartitionedCall˘ conv3d_3/StatefulPartitionedCall
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_2_1132701conv3d_2_1132703*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_2_layer_call_and_return_conditional_losses_1132627
	LeakyRelu	LeakyRelu)conv3d_2/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_3_1132707conv3d_3_1132709*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_3_layer_call_and_return_conditional_losses_1132644
LeakyRelu_1	LeakyRelu)conv3d_3/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
NoOpNoOp!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙: : : : 2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ń


E__inference_conv3d_7_layer_call_and_return_conditional_losses_1137671

inputs<
conv3d_readvariableop_resource:\\-
biasadd_readvariableop_resource:\
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙\: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs
ć
K
/__inference_up_sampling3d_layer_call_fn_1137003

inputs
identityČ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_up_sampling3d_layer_call_and_return_conditional_losses_1133533n
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙\:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs

Ł
*__inference_conv3d_5_layer_call_fn_1137547

inputs%
unknown:\\
	unknown_0:\
identity˘StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1132324}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙\: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs
	
á
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133040
input_1/
conv3d_10_1133034:@
conv3d_10_1133036:
identity˘!conv3d_10/StatefulPartitionedCall
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_10_1133034conv3d_10_1133036*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1132971
IdentityIdentity*conv3d_10/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙j
NoOpNoOp"^conv3d_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
!
_user_specified_name	input_1

t
H__inference_concatenate_layer_call_and_return_conditional_losses_1137449
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙f
IdentityIdentityconcat:output:0*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙@:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
"
_user_specified_name
inputs/0:_[
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
"
_user_specified_name
inputs/1

¤
*__inference_conv3d_6_layer_call_fn_1137642

inputs&
unknown:Ü\
	unknown_0:\
identity˘StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1132787}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: ˙˙˙˙˙˙˙˙˙Ü: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
 
_user_specified_nameinputs

Ą
(__inference_conv3d_layer_call_fn_1137490

inputs%
unknown:@
	unknown_0:@
identity˘StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *L
fGRE
C__inference_conv3d_layer_call_and_return_conditional_losses_1132147}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ó
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1136854

inputsF
'conv3d_8_conv3d_readvariableop_resource:\7
(conv3d_8_biasadd_readvariableop_resource:	G
'conv3d_9_conv3d_readvariableop_resource:7
(conv3d_9_biasadd_readvariableop_resource:	
identity˘conv3d_8/BiasAdd/ReadVariableOp˘conv3d_8/Conv3D/ReadVariableOp˘conv3d_9/BiasAdd/ReadVariableOp˘conv3d_9/Conv3D/ReadVariableOp
conv3d_8/Conv3D/ReadVariableOpReadVariableOp'conv3d_8_conv3d_readvariableop_resource*+
_output_shapes
:\*
dtype0ą
conv3d_8/Conv3DConv3Dinputs&conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	

conv3d_8/BiasAdd/ReadVariableOpReadVariableOp(conv3d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv3d_8/BiasAddBiasAddconv3d_8/Conv3D:output:0'conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@w
	LeakyRelu	LeakyReluconv3d_8/BiasAdd:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=
conv3d_9/Conv3D/ReadVariableOpReadVariableOp'conv3d_9_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0Â
conv3d_9/Conv3DConv3DLeakyRelu:activations:0&conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	

conv3d_9/BiasAdd/ReadVariableOpReadVariableOp(conv3d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv3d_9/BiasAddBiasAddconv3d_9/Conv3D:output:0'conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@y
LeakyRelu_1	LeakyReluconv3d_9/BiasAdd:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=u
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@Ě
NoOpNoOp ^conv3d_8/BiasAdd/ReadVariableOp^conv3d_8/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙@@\: : : : 2B
conv3d_8/BiasAdd/ReadVariableOpconv3d_8/BiasAdd/ReadVariableOp2@
conv3d_8/Conv3D/ReadVariableOpconv3d_8/Conv3D/ReadVariableOp2B
conv3d_9/BiasAdd/ReadVariableOpconv3d_9/BiasAdd/ReadVariableOp2@
conv3d_9/Conv3D/ReadVariableOpconv3d_9/Conv3D/ReadVariableOp:[ W
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
 
_user_specified_nameinputs
ů
ë
0__inference_conv_block3d_2_layer_call_fn_1136743

inputs%
unknown:@\
	unknown_0:\'
	unknown_1:\\
	unknown_2:\
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132332}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Ů
h
L__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1136998

inputs
identity˝
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize	
*
paddingSAME*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: {
W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ő


E__inference_conv3d_6_layer_call_and_return_conditional_losses_1132787

inputs=
conv3d_readvariableop_resource:Ü\-
biasadd_readvariableop_resource:\
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:Ü\*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: ˙˙˙˙˙˙˙˙˙Ü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
 
_user_specified_nameinputs
ß˛

"__inference__wrapped_model_1132130
input_1^
@model_u_net3d_conv_block3d_conv3d_conv3d_readvariableop_resource:@O
Amodel_u_net3d_conv_block3d_conv3d_biasadd_readvariableop_resource:@`
Bmodel_u_net3d_conv_block3d_conv3d_1_conv3d_readvariableop_resource:@@Q
Cmodel_u_net3d_conv_block3d_conv3d_1_biasadd_readvariableop_resource:@b
Dmodel_u_net3d_conv_block3d_2_conv3d_4_conv3d_readvariableop_resource:@\S
Emodel_u_net3d_conv_block3d_2_conv3d_4_biasadd_readvariableop_resource:\b
Dmodel_u_net3d_conv_block3d_2_conv3d_5_conv3d_readvariableop_resource:\\S
Emodel_u_net3d_conv_block3d_2_conv3d_5_biasadd_readvariableop_resource:\c
Dmodel_u_net3d_conv_block3d_4_conv3d_8_conv3d_readvariableop_resource:\T
Emodel_u_net3d_conv_block3d_4_conv3d_8_biasadd_readvariableop_resource:	d
Dmodel_u_net3d_conv_block3d_4_conv3d_9_conv3d_readvariableop_resource:T
Emodel_u_net3d_conv_block3d_4_conv3d_9_biasadd_readvariableop_resource:	c
Dmodel_u_net3d_conv_block3d_3_conv3d_6_conv3d_readvariableop_resource:Ü\S
Emodel_u_net3d_conv_block3d_3_conv3d_6_biasadd_readvariableop_resource:\b
Dmodel_u_net3d_conv_block3d_3_conv3d_7_conv3d_readvariableop_resource:\\S
Emodel_u_net3d_conv_block3d_3_conv3d_7_biasadd_readvariableop_resource:\c
Dmodel_u_net3d_conv_block3d_1_conv3d_2_conv3d_readvariableop_resource:@S
Emodel_u_net3d_conv_block3d_1_conv3d_2_biasadd_readvariableop_resource:@b
Dmodel_u_net3d_conv_block3d_1_conv3d_3_conv3d_readvariableop_resource:@@S
Emodel_u_net3d_conv_block3d_1_conv3d_3_biasadd_readvariableop_resource:@c
Emodel_u_net3d_conv_block3d_5_conv3d_10_conv3d_readvariableop_resource:@T
Fmodel_u_net3d_conv_block3d_5_conv3d_10_biasadd_readvariableop_resource:
identity˘8model/u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp˘7model/u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp˘:model/u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp˘9model/u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp˘<model/u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp˘;model/u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp˘<model/u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp˘;model/u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp˘<model/u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp˘;model/u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp˘<model/u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp˘;model/u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp˘<model/u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp˘;model/u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp˘<model/u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp˘;model/u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp˘<model/u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp˘;model/u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp˘<model/u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp˘;model/u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp˘=model/u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp˘<model/u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOpÄ
7model/u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOpReadVariableOp@model_u_net3d_conv_block3d_conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0Ü
(model/u_net3d/conv_block3d/conv3d/Conv3DConv3Dinput_1?model/u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
ś
8model/u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOpReadVariableOpAmodel_u_net3d_conv_block3d_conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ŕ
)model/u_net3d/conv_block3d/conv3d/BiasAddBiasAdd1model/u_net3d/conv_block3d/conv3d/Conv3D:output:0@model/u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@Ł
$model/u_net3d/conv_block3d/LeakyRelu	LeakyRelu2model/u_net3d/conv_block3d/conv3d/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=Č
9model/u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOpReadVariableOpBmodel_u_net3d_conv_block3d_conv3d_1_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
*model/u_net3d/conv_block3d/conv3d_1/Conv3DConv3D2model/u_net3d/conv_block3d/LeakyRelu:activations:0Amodel/u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
ş
:model/u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOpReadVariableOpCmodel_u_net3d_conv_block3d_conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ć
+model/u_net3d/conv_block3d/conv3d_1/BiasAddBiasAdd3model/u_net3d/conv_block3d/conv3d_1/Conv3D:output:0Bmodel/u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@§
&model/u_net3d/conv_block3d/LeakyRelu_1	LeakyRelu4model/u_net3d/conv_block3d/conv3d_1/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=Ü
%model/u_net3d/max_pooling3d/MaxPool3D	MaxPool3D4model/u_net3d/conv_block3d/LeakyRelu_1:activations:0*
T0*,
_output_shapes
:@*
ksize	
*
paddingSAME*
strides	
Ě
;model/u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOpReadVariableOpDmodel_u_net3d_conv_block3d_2_conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:@\*
dtype0
,model/u_net3d/conv_block3d_2/conv3d_4/Conv3DConv3D.model/u_net3d/max_pooling3d/MaxPool3D:output:0Cmodel/u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
ž
<model/u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOpReadVariableOpEmodel_u_net3d_conv_block3d_2_conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0ě
-model/u_net3d/conv_block3d_2/conv3d_4/BiasAddBiasAdd5model/u_net3d/conv_block3d_2/conv3d_4/Conv3D:output:0Dmodel/u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\Š
&model/u_net3d/conv_block3d_2/LeakyRelu	LeakyRelu6model/u_net3d/conv_block3d_2/conv3d_4/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=Ě
;model/u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOpReadVariableOpDmodel_u_net3d_conv_block3d_2_conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0
,model/u_net3d/conv_block3d_2/conv3d_5/Conv3DConv3D4model/u_net3d/conv_block3d_2/LeakyRelu:activations:0Cmodel/u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
ž
<model/u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOpReadVariableOpEmodel_u_net3d_conv_block3d_2_conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0ě
-model/u_net3d/conv_block3d_2/conv3d_5/BiasAddBiasAdd5model/u_net3d/conv_block3d_2/conv3d_5/Conv3D:output:0Dmodel/u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\Ť
(model/u_net3d/conv_block3d_2/LeakyRelu_1	LeakyRelu6model/u_net3d/conv_block3d_2/conv3d_5/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=Ţ
'model/u_net3d/max_pooling3d_1/MaxPool3D	MaxPool3D6model/u_net3d/conv_block3d_2/LeakyRelu_1:activations:0*
T0**
_output_shapes
:@@\*
ksize	
*
paddingSAME*
strides	
Í
;model/u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOpReadVariableOpDmodel_u_net3d_conv_block3d_4_conv3d_8_conv3d_readvariableop_resource*+
_output_shapes
:\*
dtype0
,model/u_net3d/conv_block3d_4/conv3d_8/Conv3DConv3D0model/u_net3d/max_pooling3d_1/MaxPool3D:output:0Cmodel/u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@*
paddingSAME*
strides	
ż
<model/u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOpReadVariableOpEmodel_u_net3d_conv_block3d_4_conv3d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ë
-model/u_net3d/conv_block3d_4/conv3d_8/BiasAddBiasAdd5model/u_net3d/conv_block3d_4/conv3d_8/Conv3D:output:0Dmodel/u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@¨
&model/u_net3d/conv_block3d_4/LeakyRelu	LeakyRelu6model/u_net3d/conv_block3d_4/conv3d_8/BiasAdd:output:0*+
_output_shapes
:@@*
alpha%ÍĚĚ=Î
;model/u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOpReadVariableOpDmodel_u_net3d_conv_block3d_4_conv3d_9_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
,model/u_net3d/conv_block3d_4/conv3d_9/Conv3DConv3D4model/u_net3d/conv_block3d_4/LeakyRelu:activations:0Cmodel/u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@*
paddingSAME*
strides	
ż
<model/u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOpReadVariableOpEmodel_u_net3d_conv_block3d_4_conv3d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ë
-model/u_net3d/conv_block3d_4/conv3d_9/BiasAddBiasAdd5model/u_net3d/conv_block3d_4/conv3d_9/Conv3D:output:0Dmodel/u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@Ş
(model/u_net3d/conv_block3d_4/LeakyRelu_1	LeakyRelu6model/u_net3d/conv_block3d_4/conv3d_9/BiasAdd:output:0*+
_output_shapes
:@@*
alpha%ÍĚĚ=o
-model/u_net3d/up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ů
#model/u_net3d/up_sampling3d_1/splitSplit6model/u_net3d/up_sampling3d_1/split/split_dim:output:06model/u_net3d/conv_block3d_4/LeakyRelu_1:activations:0*
T0* 
_output_shapes
:@@:@@:@@:@@:@@:@@*
	num_splitk
)model/u_net3d/up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ë
$model/u_net3d/up_sampling3d_1/concatConcatV2,model/u_net3d/up_sampling3d_1/split:output:0,model/u_net3d/up_sampling3d_1/split:output:0,model/u_net3d/up_sampling3d_1/split:output:1,model/u_net3d/up_sampling3d_1/split:output:1,model/u_net3d/up_sampling3d_1/split:output:2,model/u_net3d/up_sampling3d_1/split:output:2,model/u_net3d/up_sampling3d_1/split:output:3,model/u_net3d/up_sampling3d_1/split:output:3,model/u_net3d/up_sampling3d_1/split:output:4,model/u_net3d/up_sampling3d_1/split:output:4,model/u_net3d/up_sampling3d_1/split:output:5,model/u_net3d/up_sampling3d_1/split:output:52model/u_net3d/up_sampling3d_1/concat/axis:output:0*
N*
T0*+
_output_shapes
:@@q
/model/u_net3d/up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%model/u_net3d/up_sampling3d_1/split_1Split8model/u_net3d/up_sampling3d_1/split_1/split_dim:output:0-model/u_net3d/up_sampling3d_1/concat:output:0*
T0*Ö
_output_shapesĂ
Ŕ:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@*
	num_split@m
+model/u_net3d/up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
&model/u_net3d/up_sampling3d_1/concat_1ConcatV2.model/u_net3d/up_sampling3d_1/split_1:output:0.model/u_net3d/up_sampling3d_1/split_1:output:0.model/u_net3d/up_sampling3d_1/split_1:output:1.model/u_net3d/up_sampling3d_1/split_1:output:1.model/u_net3d/up_sampling3d_1/split_1:output:2.model/u_net3d/up_sampling3d_1/split_1:output:2.model/u_net3d/up_sampling3d_1/split_1:output:3.model/u_net3d/up_sampling3d_1/split_1:output:3.model/u_net3d/up_sampling3d_1/split_1:output:4.model/u_net3d/up_sampling3d_1/split_1:output:4.model/u_net3d/up_sampling3d_1/split_1:output:5.model/u_net3d/up_sampling3d_1/split_1:output:5.model/u_net3d/up_sampling3d_1/split_1:output:6.model/u_net3d/up_sampling3d_1/split_1:output:6.model/u_net3d/up_sampling3d_1/split_1:output:7.model/u_net3d/up_sampling3d_1/split_1:output:7.model/u_net3d/up_sampling3d_1/split_1:output:8.model/u_net3d/up_sampling3d_1/split_1:output:8.model/u_net3d/up_sampling3d_1/split_1:output:9.model/u_net3d/up_sampling3d_1/split_1:output:9/model/u_net3d/up_sampling3d_1/split_1:output:10/model/u_net3d/up_sampling3d_1/split_1:output:10/model/u_net3d/up_sampling3d_1/split_1:output:11/model/u_net3d/up_sampling3d_1/split_1:output:11/model/u_net3d/up_sampling3d_1/split_1:output:12/model/u_net3d/up_sampling3d_1/split_1:output:12/model/u_net3d/up_sampling3d_1/split_1:output:13/model/u_net3d/up_sampling3d_1/split_1:output:13/model/u_net3d/up_sampling3d_1/split_1:output:14/model/u_net3d/up_sampling3d_1/split_1:output:14/model/u_net3d/up_sampling3d_1/split_1:output:15/model/u_net3d/up_sampling3d_1/split_1:output:15/model/u_net3d/up_sampling3d_1/split_1:output:16/model/u_net3d/up_sampling3d_1/split_1:output:16/model/u_net3d/up_sampling3d_1/split_1:output:17/model/u_net3d/up_sampling3d_1/split_1:output:17/model/u_net3d/up_sampling3d_1/split_1:output:18/model/u_net3d/up_sampling3d_1/split_1:output:18/model/u_net3d/up_sampling3d_1/split_1:output:19/model/u_net3d/up_sampling3d_1/split_1:output:19/model/u_net3d/up_sampling3d_1/split_1:output:20/model/u_net3d/up_sampling3d_1/split_1:output:20/model/u_net3d/up_sampling3d_1/split_1:output:21/model/u_net3d/up_sampling3d_1/split_1:output:21/model/u_net3d/up_sampling3d_1/split_1:output:22/model/u_net3d/up_sampling3d_1/split_1:output:22/model/u_net3d/up_sampling3d_1/split_1:output:23/model/u_net3d/up_sampling3d_1/split_1:output:23/model/u_net3d/up_sampling3d_1/split_1:output:24/model/u_net3d/up_sampling3d_1/split_1:output:24/model/u_net3d/up_sampling3d_1/split_1:output:25/model/u_net3d/up_sampling3d_1/split_1:output:25/model/u_net3d/up_sampling3d_1/split_1:output:26/model/u_net3d/up_sampling3d_1/split_1:output:26/model/u_net3d/up_sampling3d_1/split_1:output:27/model/u_net3d/up_sampling3d_1/split_1:output:27/model/u_net3d/up_sampling3d_1/split_1:output:28/model/u_net3d/up_sampling3d_1/split_1:output:28/model/u_net3d/up_sampling3d_1/split_1:output:29/model/u_net3d/up_sampling3d_1/split_1:output:29/model/u_net3d/up_sampling3d_1/split_1:output:30/model/u_net3d/up_sampling3d_1/split_1:output:30/model/u_net3d/up_sampling3d_1/split_1:output:31/model/u_net3d/up_sampling3d_1/split_1:output:31/model/u_net3d/up_sampling3d_1/split_1:output:32/model/u_net3d/up_sampling3d_1/split_1:output:32/model/u_net3d/up_sampling3d_1/split_1:output:33/model/u_net3d/up_sampling3d_1/split_1:output:33/model/u_net3d/up_sampling3d_1/split_1:output:34/model/u_net3d/up_sampling3d_1/split_1:output:34/model/u_net3d/up_sampling3d_1/split_1:output:35/model/u_net3d/up_sampling3d_1/split_1:output:35/model/u_net3d/up_sampling3d_1/split_1:output:36/model/u_net3d/up_sampling3d_1/split_1:output:36/model/u_net3d/up_sampling3d_1/split_1:output:37/model/u_net3d/up_sampling3d_1/split_1:output:37/model/u_net3d/up_sampling3d_1/split_1:output:38/model/u_net3d/up_sampling3d_1/split_1:output:38/model/u_net3d/up_sampling3d_1/split_1:output:39/model/u_net3d/up_sampling3d_1/split_1:output:39/model/u_net3d/up_sampling3d_1/split_1:output:40/model/u_net3d/up_sampling3d_1/split_1:output:40/model/u_net3d/up_sampling3d_1/split_1:output:41/model/u_net3d/up_sampling3d_1/split_1:output:41/model/u_net3d/up_sampling3d_1/split_1:output:42/model/u_net3d/up_sampling3d_1/split_1:output:42/model/u_net3d/up_sampling3d_1/split_1:output:43/model/u_net3d/up_sampling3d_1/split_1:output:43/model/u_net3d/up_sampling3d_1/split_1:output:44/model/u_net3d/up_sampling3d_1/split_1:output:44/model/u_net3d/up_sampling3d_1/split_1:output:45/model/u_net3d/up_sampling3d_1/split_1:output:45/model/u_net3d/up_sampling3d_1/split_1:output:46/model/u_net3d/up_sampling3d_1/split_1:output:46/model/u_net3d/up_sampling3d_1/split_1:output:47/model/u_net3d/up_sampling3d_1/split_1:output:47/model/u_net3d/up_sampling3d_1/split_1:output:48/model/u_net3d/up_sampling3d_1/split_1:output:48/model/u_net3d/up_sampling3d_1/split_1:output:49/model/u_net3d/up_sampling3d_1/split_1:output:49/model/u_net3d/up_sampling3d_1/split_1:output:50/model/u_net3d/up_sampling3d_1/split_1:output:50/model/u_net3d/up_sampling3d_1/split_1:output:51/model/u_net3d/up_sampling3d_1/split_1:output:51/model/u_net3d/up_sampling3d_1/split_1:output:52/model/u_net3d/up_sampling3d_1/split_1:output:52/model/u_net3d/up_sampling3d_1/split_1:output:53/model/u_net3d/up_sampling3d_1/split_1:output:53/model/u_net3d/up_sampling3d_1/split_1:output:54/model/u_net3d/up_sampling3d_1/split_1:output:54/model/u_net3d/up_sampling3d_1/split_1:output:55/model/u_net3d/up_sampling3d_1/split_1:output:55/model/u_net3d/up_sampling3d_1/split_1:output:56/model/u_net3d/up_sampling3d_1/split_1:output:56/model/u_net3d/up_sampling3d_1/split_1:output:57/model/u_net3d/up_sampling3d_1/split_1:output:57/model/u_net3d/up_sampling3d_1/split_1:output:58/model/u_net3d/up_sampling3d_1/split_1:output:58/model/u_net3d/up_sampling3d_1/split_1:output:59/model/u_net3d/up_sampling3d_1/split_1:output:59/model/u_net3d/up_sampling3d_1/split_1:output:60/model/u_net3d/up_sampling3d_1/split_1:output:60/model/u_net3d/up_sampling3d_1/split_1:output:61/model/u_net3d/up_sampling3d_1/split_1:output:61/model/u_net3d/up_sampling3d_1/split_1:output:62/model/u_net3d/up_sampling3d_1/split_1:output:62/model/u_net3d/up_sampling3d_1/split_1:output:63/model/u_net3d/up_sampling3d_1/split_1:output:634model/u_net3d/up_sampling3d_1/concat_1/axis:output:0*
N*
T0*,
_output_shapes
:@q
/model/u_net3d/up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
%model/u_net3d/up_sampling3d_1/split_2Split8model/u_net3d/up_sampling3d_1/split_2/split_dim:output:0/model/u_net3d/up_sampling3d_1/concat_1:output:0*
T0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
	num_split@m
+model/u_net3d/up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
&model/u_net3d/up_sampling3d_1/concat_2ConcatV2.model/u_net3d/up_sampling3d_1/split_2:output:0.model/u_net3d/up_sampling3d_1/split_2:output:0.model/u_net3d/up_sampling3d_1/split_2:output:1.model/u_net3d/up_sampling3d_1/split_2:output:1.model/u_net3d/up_sampling3d_1/split_2:output:2.model/u_net3d/up_sampling3d_1/split_2:output:2.model/u_net3d/up_sampling3d_1/split_2:output:3.model/u_net3d/up_sampling3d_1/split_2:output:3.model/u_net3d/up_sampling3d_1/split_2:output:4.model/u_net3d/up_sampling3d_1/split_2:output:4.model/u_net3d/up_sampling3d_1/split_2:output:5.model/u_net3d/up_sampling3d_1/split_2:output:5.model/u_net3d/up_sampling3d_1/split_2:output:6.model/u_net3d/up_sampling3d_1/split_2:output:6.model/u_net3d/up_sampling3d_1/split_2:output:7.model/u_net3d/up_sampling3d_1/split_2:output:7.model/u_net3d/up_sampling3d_1/split_2:output:8.model/u_net3d/up_sampling3d_1/split_2:output:8.model/u_net3d/up_sampling3d_1/split_2:output:9.model/u_net3d/up_sampling3d_1/split_2:output:9/model/u_net3d/up_sampling3d_1/split_2:output:10/model/u_net3d/up_sampling3d_1/split_2:output:10/model/u_net3d/up_sampling3d_1/split_2:output:11/model/u_net3d/up_sampling3d_1/split_2:output:11/model/u_net3d/up_sampling3d_1/split_2:output:12/model/u_net3d/up_sampling3d_1/split_2:output:12/model/u_net3d/up_sampling3d_1/split_2:output:13/model/u_net3d/up_sampling3d_1/split_2:output:13/model/u_net3d/up_sampling3d_1/split_2:output:14/model/u_net3d/up_sampling3d_1/split_2:output:14/model/u_net3d/up_sampling3d_1/split_2:output:15/model/u_net3d/up_sampling3d_1/split_2:output:15/model/u_net3d/up_sampling3d_1/split_2:output:16/model/u_net3d/up_sampling3d_1/split_2:output:16/model/u_net3d/up_sampling3d_1/split_2:output:17/model/u_net3d/up_sampling3d_1/split_2:output:17/model/u_net3d/up_sampling3d_1/split_2:output:18/model/u_net3d/up_sampling3d_1/split_2:output:18/model/u_net3d/up_sampling3d_1/split_2:output:19/model/u_net3d/up_sampling3d_1/split_2:output:19/model/u_net3d/up_sampling3d_1/split_2:output:20/model/u_net3d/up_sampling3d_1/split_2:output:20/model/u_net3d/up_sampling3d_1/split_2:output:21/model/u_net3d/up_sampling3d_1/split_2:output:21/model/u_net3d/up_sampling3d_1/split_2:output:22/model/u_net3d/up_sampling3d_1/split_2:output:22/model/u_net3d/up_sampling3d_1/split_2:output:23/model/u_net3d/up_sampling3d_1/split_2:output:23/model/u_net3d/up_sampling3d_1/split_2:output:24/model/u_net3d/up_sampling3d_1/split_2:output:24/model/u_net3d/up_sampling3d_1/split_2:output:25/model/u_net3d/up_sampling3d_1/split_2:output:25/model/u_net3d/up_sampling3d_1/split_2:output:26/model/u_net3d/up_sampling3d_1/split_2:output:26/model/u_net3d/up_sampling3d_1/split_2:output:27/model/u_net3d/up_sampling3d_1/split_2:output:27/model/u_net3d/up_sampling3d_1/split_2:output:28/model/u_net3d/up_sampling3d_1/split_2:output:28/model/u_net3d/up_sampling3d_1/split_2:output:29/model/u_net3d/up_sampling3d_1/split_2:output:29/model/u_net3d/up_sampling3d_1/split_2:output:30/model/u_net3d/up_sampling3d_1/split_2:output:30/model/u_net3d/up_sampling3d_1/split_2:output:31/model/u_net3d/up_sampling3d_1/split_2:output:31/model/u_net3d/up_sampling3d_1/split_2:output:32/model/u_net3d/up_sampling3d_1/split_2:output:32/model/u_net3d/up_sampling3d_1/split_2:output:33/model/u_net3d/up_sampling3d_1/split_2:output:33/model/u_net3d/up_sampling3d_1/split_2:output:34/model/u_net3d/up_sampling3d_1/split_2:output:34/model/u_net3d/up_sampling3d_1/split_2:output:35/model/u_net3d/up_sampling3d_1/split_2:output:35/model/u_net3d/up_sampling3d_1/split_2:output:36/model/u_net3d/up_sampling3d_1/split_2:output:36/model/u_net3d/up_sampling3d_1/split_2:output:37/model/u_net3d/up_sampling3d_1/split_2:output:37/model/u_net3d/up_sampling3d_1/split_2:output:38/model/u_net3d/up_sampling3d_1/split_2:output:38/model/u_net3d/up_sampling3d_1/split_2:output:39/model/u_net3d/up_sampling3d_1/split_2:output:39/model/u_net3d/up_sampling3d_1/split_2:output:40/model/u_net3d/up_sampling3d_1/split_2:output:40/model/u_net3d/up_sampling3d_1/split_2:output:41/model/u_net3d/up_sampling3d_1/split_2:output:41/model/u_net3d/up_sampling3d_1/split_2:output:42/model/u_net3d/up_sampling3d_1/split_2:output:42/model/u_net3d/up_sampling3d_1/split_2:output:43/model/u_net3d/up_sampling3d_1/split_2:output:43/model/u_net3d/up_sampling3d_1/split_2:output:44/model/u_net3d/up_sampling3d_1/split_2:output:44/model/u_net3d/up_sampling3d_1/split_2:output:45/model/u_net3d/up_sampling3d_1/split_2:output:45/model/u_net3d/up_sampling3d_1/split_2:output:46/model/u_net3d/up_sampling3d_1/split_2:output:46/model/u_net3d/up_sampling3d_1/split_2:output:47/model/u_net3d/up_sampling3d_1/split_2:output:47/model/u_net3d/up_sampling3d_1/split_2:output:48/model/u_net3d/up_sampling3d_1/split_2:output:48/model/u_net3d/up_sampling3d_1/split_2:output:49/model/u_net3d/up_sampling3d_1/split_2:output:49/model/u_net3d/up_sampling3d_1/split_2:output:50/model/u_net3d/up_sampling3d_1/split_2:output:50/model/u_net3d/up_sampling3d_1/split_2:output:51/model/u_net3d/up_sampling3d_1/split_2:output:51/model/u_net3d/up_sampling3d_1/split_2:output:52/model/u_net3d/up_sampling3d_1/split_2:output:52/model/u_net3d/up_sampling3d_1/split_2:output:53/model/u_net3d/up_sampling3d_1/split_2:output:53/model/u_net3d/up_sampling3d_1/split_2:output:54/model/u_net3d/up_sampling3d_1/split_2:output:54/model/u_net3d/up_sampling3d_1/split_2:output:55/model/u_net3d/up_sampling3d_1/split_2:output:55/model/u_net3d/up_sampling3d_1/split_2:output:56/model/u_net3d/up_sampling3d_1/split_2:output:56/model/u_net3d/up_sampling3d_1/split_2:output:57/model/u_net3d/up_sampling3d_1/split_2:output:57/model/u_net3d/up_sampling3d_1/split_2:output:58/model/u_net3d/up_sampling3d_1/split_2:output:58/model/u_net3d/up_sampling3d_1/split_2:output:59/model/u_net3d/up_sampling3d_1/split_2:output:59/model/u_net3d/up_sampling3d_1/split_2:output:60/model/u_net3d/up_sampling3d_1/split_2:output:60/model/u_net3d/up_sampling3d_1/split_2:output:61/model/u_net3d/up_sampling3d_1/split_2:output:61/model/u_net3d/up_sampling3d_1/split_2:output:62/model/u_net3d/up_sampling3d_1/split_2:output:62/model/u_net3d/up_sampling3d_1/split_2:output:63/model/u_net3d/up_sampling3d_1/split_2:output:634model/u_net3d/up_sampling3d_1/concat_2/axis:output:0*
N*
T0*-
_output_shapes
:i
'model/u_net3d/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
"model/u_net3d/concatenate_1/concatConcatV2/model/u_net3d/up_sampling3d_1/concat_2:output:06model/u_net3d/conv_block3d_2/LeakyRelu_1:activations:00model/u_net3d/concatenate_1/concat/axis:output:0*
N*
T0*-
_output_shapes
:ÜÍ
;model/u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOpReadVariableOpDmodel_u_net3d_conv_block3d_3_conv3d_6_conv3d_readvariableop_resource*+
_output_shapes
:Ü\*
dtype0
,model/u_net3d/conv_block3d_3/conv3d_6/Conv3DConv3D+model/u_net3d/concatenate_1/concat:output:0Cmodel/u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
ž
<model/u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOpReadVariableOpEmodel_u_net3d_conv_block3d_3_conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0ě
-model/u_net3d/conv_block3d_3/conv3d_6/BiasAddBiasAdd5model/u_net3d/conv_block3d_3/conv3d_6/Conv3D:output:0Dmodel/u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\Š
&model/u_net3d/conv_block3d_3/LeakyRelu	LeakyRelu6model/u_net3d/conv_block3d_3/conv3d_6/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=Ě
;model/u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOpReadVariableOpDmodel_u_net3d_conv_block3d_3_conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0
,model/u_net3d/conv_block3d_3/conv3d_7/Conv3DConv3D4model/u_net3d/conv_block3d_3/LeakyRelu:activations:0Cmodel/u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
ž
<model/u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOpReadVariableOpEmodel_u_net3d_conv_block3d_3_conv3d_7_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0ě
-model/u_net3d/conv_block3d_3/conv3d_7/BiasAddBiasAdd5model/u_net3d/conv_block3d_3/conv3d_7/Conv3D:output:0Dmodel/u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\Ť
(model/u_net3d/conv_block3d_3/LeakyRelu_1	LeakyRelu6model/u_net3d/conv_block3d_3/conv3d_7/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=m
+model/u_net3d/up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ë
!model/u_net3d/up_sampling3d/splitSplit4model/u_net3d/up_sampling3d/split/split_dim:output:06model/u_net3d/conv_block3d_3/LeakyRelu_1:activations:0*
T0*ś
_output_shapesŁ
 :\:\:\:\:\:\:\:\:\:\:\:\*
	num_spliti
'model/u_net3d/up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ä	
"model/u_net3d/up_sampling3d/concatConcatV2*model/u_net3d/up_sampling3d/split:output:0*model/u_net3d/up_sampling3d/split:output:0*model/u_net3d/up_sampling3d/split:output:1*model/u_net3d/up_sampling3d/split:output:1*model/u_net3d/up_sampling3d/split:output:2*model/u_net3d/up_sampling3d/split:output:2*model/u_net3d/up_sampling3d/split:output:3*model/u_net3d/up_sampling3d/split:output:3*model/u_net3d/up_sampling3d/split:output:4*model/u_net3d/up_sampling3d/split:output:4*model/u_net3d/up_sampling3d/split:output:5*model/u_net3d/up_sampling3d/split:output:5*model/u_net3d/up_sampling3d/split:output:6*model/u_net3d/up_sampling3d/split:output:6*model/u_net3d/up_sampling3d/split:output:7*model/u_net3d/up_sampling3d/split:output:7*model/u_net3d/up_sampling3d/split:output:8*model/u_net3d/up_sampling3d/split:output:8*model/u_net3d/up_sampling3d/split:output:9*model/u_net3d/up_sampling3d/split:output:9+model/u_net3d/up_sampling3d/split:output:10+model/u_net3d/up_sampling3d/split:output:10+model/u_net3d/up_sampling3d/split:output:11+model/u_net3d/up_sampling3d/split:output:110model/u_net3d/up_sampling3d/concat/axis:output:0*
N*
T0*,
_output_shapes
:\o
-model/u_net3d/up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
#model/u_net3d/up_sampling3d/split_1Split6model/u_net3d/up_sampling3d/split_1/split_dim:output:0+model/u_net3d/up_sampling3d/concat:output:0*
T0*
_output_shapes
:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\*
	num_splitk
)model/u_net3d/up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :É_
$model/u_net3d/up_sampling3d/concat_1ConcatV2,model/u_net3d/up_sampling3d/split_1:output:0,model/u_net3d/up_sampling3d/split_1:output:0,model/u_net3d/up_sampling3d/split_1:output:1,model/u_net3d/up_sampling3d/split_1:output:1,model/u_net3d/up_sampling3d/split_1:output:2,model/u_net3d/up_sampling3d/split_1:output:2,model/u_net3d/up_sampling3d/split_1:output:3,model/u_net3d/up_sampling3d/split_1:output:3,model/u_net3d/up_sampling3d/split_1:output:4,model/u_net3d/up_sampling3d/split_1:output:4,model/u_net3d/up_sampling3d/split_1:output:5,model/u_net3d/up_sampling3d/split_1:output:5,model/u_net3d/up_sampling3d/split_1:output:6,model/u_net3d/up_sampling3d/split_1:output:6,model/u_net3d/up_sampling3d/split_1:output:7,model/u_net3d/up_sampling3d/split_1:output:7,model/u_net3d/up_sampling3d/split_1:output:8,model/u_net3d/up_sampling3d/split_1:output:8,model/u_net3d/up_sampling3d/split_1:output:9,model/u_net3d/up_sampling3d/split_1:output:9-model/u_net3d/up_sampling3d/split_1:output:10-model/u_net3d/up_sampling3d/split_1:output:10-model/u_net3d/up_sampling3d/split_1:output:11-model/u_net3d/up_sampling3d/split_1:output:11-model/u_net3d/up_sampling3d/split_1:output:12-model/u_net3d/up_sampling3d/split_1:output:12-model/u_net3d/up_sampling3d/split_1:output:13-model/u_net3d/up_sampling3d/split_1:output:13-model/u_net3d/up_sampling3d/split_1:output:14-model/u_net3d/up_sampling3d/split_1:output:14-model/u_net3d/up_sampling3d/split_1:output:15-model/u_net3d/up_sampling3d/split_1:output:15-model/u_net3d/up_sampling3d/split_1:output:16-model/u_net3d/up_sampling3d/split_1:output:16-model/u_net3d/up_sampling3d/split_1:output:17-model/u_net3d/up_sampling3d/split_1:output:17-model/u_net3d/up_sampling3d/split_1:output:18-model/u_net3d/up_sampling3d/split_1:output:18-model/u_net3d/up_sampling3d/split_1:output:19-model/u_net3d/up_sampling3d/split_1:output:19-model/u_net3d/up_sampling3d/split_1:output:20-model/u_net3d/up_sampling3d/split_1:output:20-model/u_net3d/up_sampling3d/split_1:output:21-model/u_net3d/up_sampling3d/split_1:output:21-model/u_net3d/up_sampling3d/split_1:output:22-model/u_net3d/up_sampling3d/split_1:output:22-model/u_net3d/up_sampling3d/split_1:output:23-model/u_net3d/up_sampling3d/split_1:output:23-model/u_net3d/up_sampling3d/split_1:output:24-model/u_net3d/up_sampling3d/split_1:output:24-model/u_net3d/up_sampling3d/split_1:output:25-model/u_net3d/up_sampling3d/split_1:output:25-model/u_net3d/up_sampling3d/split_1:output:26-model/u_net3d/up_sampling3d/split_1:output:26-model/u_net3d/up_sampling3d/split_1:output:27-model/u_net3d/up_sampling3d/split_1:output:27-model/u_net3d/up_sampling3d/split_1:output:28-model/u_net3d/up_sampling3d/split_1:output:28-model/u_net3d/up_sampling3d/split_1:output:29-model/u_net3d/up_sampling3d/split_1:output:29-model/u_net3d/up_sampling3d/split_1:output:30-model/u_net3d/up_sampling3d/split_1:output:30-model/u_net3d/up_sampling3d/split_1:output:31-model/u_net3d/up_sampling3d/split_1:output:31-model/u_net3d/up_sampling3d/split_1:output:32-model/u_net3d/up_sampling3d/split_1:output:32-model/u_net3d/up_sampling3d/split_1:output:33-model/u_net3d/up_sampling3d/split_1:output:33-model/u_net3d/up_sampling3d/split_1:output:34-model/u_net3d/up_sampling3d/split_1:output:34-model/u_net3d/up_sampling3d/split_1:output:35-model/u_net3d/up_sampling3d/split_1:output:35-model/u_net3d/up_sampling3d/split_1:output:36-model/u_net3d/up_sampling3d/split_1:output:36-model/u_net3d/up_sampling3d/split_1:output:37-model/u_net3d/up_sampling3d/split_1:output:37-model/u_net3d/up_sampling3d/split_1:output:38-model/u_net3d/up_sampling3d/split_1:output:38-model/u_net3d/up_sampling3d/split_1:output:39-model/u_net3d/up_sampling3d/split_1:output:39-model/u_net3d/up_sampling3d/split_1:output:40-model/u_net3d/up_sampling3d/split_1:output:40-model/u_net3d/up_sampling3d/split_1:output:41-model/u_net3d/up_sampling3d/split_1:output:41-model/u_net3d/up_sampling3d/split_1:output:42-model/u_net3d/up_sampling3d/split_1:output:42-model/u_net3d/up_sampling3d/split_1:output:43-model/u_net3d/up_sampling3d/split_1:output:43-model/u_net3d/up_sampling3d/split_1:output:44-model/u_net3d/up_sampling3d/split_1:output:44-model/u_net3d/up_sampling3d/split_1:output:45-model/u_net3d/up_sampling3d/split_1:output:45-model/u_net3d/up_sampling3d/split_1:output:46-model/u_net3d/up_sampling3d/split_1:output:46-model/u_net3d/up_sampling3d/split_1:output:47-model/u_net3d/up_sampling3d/split_1:output:47-model/u_net3d/up_sampling3d/split_1:output:48-model/u_net3d/up_sampling3d/split_1:output:48-model/u_net3d/up_sampling3d/split_1:output:49-model/u_net3d/up_sampling3d/split_1:output:49-model/u_net3d/up_sampling3d/split_1:output:50-model/u_net3d/up_sampling3d/split_1:output:50-model/u_net3d/up_sampling3d/split_1:output:51-model/u_net3d/up_sampling3d/split_1:output:51-model/u_net3d/up_sampling3d/split_1:output:52-model/u_net3d/up_sampling3d/split_1:output:52-model/u_net3d/up_sampling3d/split_1:output:53-model/u_net3d/up_sampling3d/split_1:output:53-model/u_net3d/up_sampling3d/split_1:output:54-model/u_net3d/up_sampling3d/split_1:output:54-model/u_net3d/up_sampling3d/split_1:output:55-model/u_net3d/up_sampling3d/split_1:output:55-model/u_net3d/up_sampling3d/split_1:output:56-model/u_net3d/up_sampling3d/split_1:output:56-model/u_net3d/up_sampling3d/split_1:output:57-model/u_net3d/up_sampling3d/split_1:output:57-model/u_net3d/up_sampling3d/split_1:output:58-model/u_net3d/up_sampling3d/split_1:output:58-model/u_net3d/up_sampling3d/split_1:output:59-model/u_net3d/up_sampling3d/split_1:output:59-model/u_net3d/up_sampling3d/split_1:output:60-model/u_net3d/up_sampling3d/split_1:output:60-model/u_net3d/up_sampling3d/split_1:output:61-model/u_net3d/up_sampling3d/split_1:output:61-model/u_net3d/up_sampling3d/split_1:output:62-model/u_net3d/up_sampling3d/split_1:output:62-model/u_net3d/up_sampling3d/split_1:output:63-model/u_net3d/up_sampling3d/split_1:output:63-model/u_net3d/up_sampling3d/split_1:output:64-model/u_net3d/up_sampling3d/split_1:output:64-model/u_net3d/up_sampling3d/split_1:output:65-model/u_net3d/up_sampling3d/split_1:output:65-model/u_net3d/up_sampling3d/split_1:output:66-model/u_net3d/up_sampling3d/split_1:output:66-model/u_net3d/up_sampling3d/split_1:output:67-model/u_net3d/up_sampling3d/split_1:output:67-model/u_net3d/up_sampling3d/split_1:output:68-model/u_net3d/up_sampling3d/split_1:output:68-model/u_net3d/up_sampling3d/split_1:output:69-model/u_net3d/up_sampling3d/split_1:output:69-model/u_net3d/up_sampling3d/split_1:output:70-model/u_net3d/up_sampling3d/split_1:output:70-model/u_net3d/up_sampling3d/split_1:output:71-model/u_net3d/up_sampling3d/split_1:output:71-model/u_net3d/up_sampling3d/split_1:output:72-model/u_net3d/up_sampling3d/split_1:output:72-model/u_net3d/up_sampling3d/split_1:output:73-model/u_net3d/up_sampling3d/split_1:output:73-model/u_net3d/up_sampling3d/split_1:output:74-model/u_net3d/up_sampling3d/split_1:output:74-model/u_net3d/up_sampling3d/split_1:output:75-model/u_net3d/up_sampling3d/split_1:output:75-model/u_net3d/up_sampling3d/split_1:output:76-model/u_net3d/up_sampling3d/split_1:output:76-model/u_net3d/up_sampling3d/split_1:output:77-model/u_net3d/up_sampling3d/split_1:output:77-model/u_net3d/up_sampling3d/split_1:output:78-model/u_net3d/up_sampling3d/split_1:output:78-model/u_net3d/up_sampling3d/split_1:output:79-model/u_net3d/up_sampling3d/split_1:output:79-model/u_net3d/up_sampling3d/split_1:output:80-model/u_net3d/up_sampling3d/split_1:output:80-model/u_net3d/up_sampling3d/split_1:output:81-model/u_net3d/up_sampling3d/split_1:output:81-model/u_net3d/up_sampling3d/split_1:output:82-model/u_net3d/up_sampling3d/split_1:output:82-model/u_net3d/up_sampling3d/split_1:output:83-model/u_net3d/up_sampling3d/split_1:output:83-model/u_net3d/up_sampling3d/split_1:output:84-model/u_net3d/up_sampling3d/split_1:output:84-model/u_net3d/up_sampling3d/split_1:output:85-model/u_net3d/up_sampling3d/split_1:output:85-model/u_net3d/up_sampling3d/split_1:output:86-model/u_net3d/up_sampling3d/split_1:output:86-model/u_net3d/up_sampling3d/split_1:output:87-model/u_net3d/up_sampling3d/split_1:output:87-model/u_net3d/up_sampling3d/split_1:output:88-model/u_net3d/up_sampling3d/split_1:output:88-model/u_net3d/up_sampling3d/split_1:output:89-model/u_net3d/up_sampling3d/split_1:output:89-model/u_net3d/up_sampling3d/split_1:output:90-model/u_net3d/up_sampling3d/split_1:output:90-model/u_net3d/up_sampling3d/split_1:output:91-model/u_net3d/up_sampling3d/split_1:output:91-model/u_net3d/up_sampling3d/split_1:output:92-model/u_net3d/up_sampling3d/split_1:output:92-model/u_net3d/up_sampling3d/split_1:output:93-model/u_net3d/up_sampling3d/split_1:output:93-model/u_net3d/up_sampling3d/split_1:output:94-model/u_net3d/up_sampling3d/split_1:output:94-model/u_net3d/up_sampling3d/split_1:output:95-model/u_net3d/up_sampling3d/split_1:output:95-model/u_net3d/up_sampling3d/split_1:output:96-model/u_net3d/up_sampling3d/split_1:output:96-model/u_net3d/up_sampling3d/split_1:output:97-model/u_net3d/up_sampling3d/split_1:output:97-model/u_net3d/up_sampling3d/split_1:output:98-model/u_net3d/up_sampling3d/split_1:output:98-model/u_net3d/up_sampling3d/split_1:output:99-model/u_net3d/up_sampling3d/split_1:output:99.model/u_net3d/up_sampling3d/split_1:output:100.model/u_net3d/up_sampling3d/split_1:output:100.model/u_net3d/up_sampling3d/split_1:output:101.model/u_net3d/up_sampling3d/split_1:output:101.model/u_net3d/up_sampling3d/split_1:output:102.model/u_net3d/up_sampling3d/split_1:output:102.model/u_net3d/up_sampling3d/split_1:output:103.model/u_net3d/up_sampling3d/split_1:output:103.model/u_net3d/up_sampling3d/split_1:output:104.model/u_net3d/up_sampling3d/split_1:output:104.model/u_net3d/up_sampling3d/split_1:output:105.model/u_net3d/up_sampling3d/split_1:output:105.model/u_net3d/up_sampling3d/split_1:output:106.model/u_net3d/up_sampling3d/split_1:output:106.model/u_net3d/up_sampling3d/split_1:output:107.model/u_net3d/up_sampling3d/split_1:output:107.model/u_net3d/up_sampling3d/split_1:output:108.model/u_net3d/up_sampling3d/split_1:output:108.model/u_net3d/up_sampling3d/split_1:output:109.model/u_net3d/up_sampling3d/split_1:output:109.model/u_net3d/up_sampling3d/split_1:output:110.model/u_net3d/up_sampling3d/split_1:output:110.model/u_net3d/up_sampling3d/split_1:output:111.model/u_net3d/up_sampling3d/split_1:output:111.model/u_net3d/up_sampling3d/split_1:output:112.model/u_net3d/up_sampling3d/split_1:output:112.model/u_net3d/up_sampling3d/split_1:output:113.model/u_net3d/up_sampling3d/split_1:output:113.model/u_net3d/up_sampling3d/split_1:output:114.model/u_net3d/up_sampling3d/split_1:output:114.model/u_net3d/up_sampling3d/split_1:output:115.model/u_net3d/up_sampling3d/split_1:output:115.model/u_net3d/up_sampling3d/split_1:output:116.model/u_net3d/up_sampling3d/split_1:output:116.model/u_net3d/up_sampling3d/split_1:output:117.model/u_net3d/up_sampling3d/split_1:output:117.model/u_net3d/up_sampling3d/split_1:output:118.model/u_net3d/up_sampling3d/split_1:output:118.model/u_net3d/up_sampling3d/split_1:output:119.model/u_net3d/up_sampling3d/split_1:output:119.model/u_net3d/up_sampling3d/split_1:output:120.model/u_net3d/up_sampling3d/split_1:output:120.model/u_net3d/up_sampling3d/split_1:output:121.model/u_net3d/up_sampling3d/split_1:output:121.model/u_net3d/up_sampling3d/split_1:output:122.model/u_net3d/up_sampling3d/split_1:output:122.model/u_net3d/up_sampling3d/split_1:output:123.model/u_net3d/up_sampling3d/split_1:output:123.model/u_net3d/up_sampling3d/split_1:output:124.model/u_net3d/up_sampling3d/split_1:output:124.model/u_net3d/up_sampling3d/split_1:output:125.model/u_net3d/up_sampling3d/split_1:output:125.model/u_net3d/up_sampling3d/split_1:output:126.model/u_net3d/up_sampling3d/split_1:output:126.model/u_net3d/up_sampling3d/split_1:output:127.model/u_net3d/up_sampling3d/split_1:output:1272model/u_net3d/up_sampling3d/concat_1/axis:output:0*
N*
T0*,
_output_shapes
:\o
-model/u_net3d/up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ç
#model/u_net3d/up_sampling3d/split_2Split6model/u_net3d/up_sampling3d/split_2/split_dim:output:0-model/u_net3d/up_sampling3d/concat_1:output:0*
T0*
_output_shapes
:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\*
	num_splitk
)model/u_net3d/up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :É_
$model/u_net3d/up_sampling3d/concat_2ConcatV2,model/u_net3d/up_sampling3d/split_2:output:0,model/u_net3d/up_sampling3d/split_2:output:0,model/u_net3d/up_sampling3d/split_2:output:1,model/u_net3d/up_sampling3d/split_2:output:1,model/u_net3d/up_sampling3d/split_2:output:2,model/u_net3d/up_sampling3d/split_2:output:2,model/u_net3d/up_sampling3d/split_2:output:3,model/u_net3d/up_sampling3d/split_2:output:3,model/u_net3d/up_sampling3d/split_2:output:4,model/u_net3d/up_sampling3d/split_2:output:4,model/u_net3d/up_sampling3d/split_2:output:5,model/u_net3d/up_sampling3d/split_2:output:5,model/u_net3d/up_sampling3d/split_2:output:6,model/u_net3d/up_sampling3d/split_2:output:6,model/u_net3d/up_sampling3d/split_2:output:7,model/u_net3d/up_sampling3d/split_2:output:7,model/u_net3d/up_sampling3d/split_2:output:8,model/u_net3d/up_sampling3d/split_2:output:8,model/u_net3d/up_sampling3d/split_2:output:9,model/u_net3d/up_sampling3d/split_2:output:9-model/u_net3d/up_sampling3d/split_2:output:10-model/u_net3d/up_sampling3d/split_2:output:10-model/u_net3d/up_sampling3d/split_2:output:11-model/u_net3d/up_sampling3d/split_2:output:11-model/u_net3d/up_sampling3d/split_2:output:12-model/u_net3d/up_sampling3d/split_2:output:12-model/u_net3d/up_sampling3d/split_2:output:13-model/u_net3d/up_sampling3d/split_2:output:13-model/u_net3d/up_sampling3d/split_2:output:14-model/u_net3d/up_sampling3d/split_2:output:14-model/u_net3d/up_sampling3d/split_2:output:15-model/u_net3d/up_sampling3d/split_2:output:15-model/u_net3d/up_sampling3d/split_2:output:16-model/u_net3d/up_sampling3d/split_2:output:16-model/u_net3d/up_sampling3d/split_2:output:17-model/u_net3d/up_sampling3d/split_2:output:17-model/u_net3d/up_sampling3d/split_2:output:18-model/u_net3d/up_sampling3d/split_2:output:18-model/u_net3d/up_sampling3d/split_2:output:19-model/u_net3d/up_sampling3d/split_2:output:19-model/u_net3d/up_sampling3d/split_2:output:20-model/u_net3d/up_sampling3d/split_2:output:20-model/u_net3d/up_sampling3d/split_2:output:21-model/u_net3d/up_sampling3d/split_2:output:21-model/u_net3d/up_sampling3d/split_2:output:22-model/u_net3d/up_sampling3d/split_2:output:22-model/u_net3d/up_sampling3d/split_2:output:23-model/u_net3d/up_sampling3d/split_2:output:23-model/u_net3d/up_sampling3d/split_2:output:24-model/u_net3d/up_sampling3d/split_2:output:24-model/u_net3d/up_sampling3d/split_2:output:25-model/u_net3d/up_sampling3d/split_2:output:25-model/u_net3d/up_sampling3d/split_2:output:26-model/u_net3d/up_sampling3d/split_2:output:26-model/u_net3d/up_sampling3d/split_2:output:27-model/u_net3d/up_sampling3d/split_2:output:27-model/u_net3d/up_sampling3d/split_2:output:28-model/u_net3d/up_sampling3d/split_2:output:28-model/u_net3d/up_sampling3d/split_2:output:29-model/u_net3d/up_sampling3d/split_2:output:29-model/u_net3d/up_sampling3d/split_2:output:30-model/u_net3d/up_sampling3d/split_2:output:30-model/u_net3d/up_sampling3d/split_2:output:31-model/u_net3d/up_sampling3d/split_2:output:31-model/u_net3d/up_sampling3d/split_2:output:32-model/u_net3d/up_sampling3d/split_2:output:32-model/u_net3d/up_sampling3d/split_2:output:33-model/u_net3d/up_sampling3d/split_2:output:33-model/u_net3d/up_sampling3d/split_2:output:34-model/u_net3d/up_sampling3d/split_2:output:34-model/u_net3d/up_sampling3d/split_2:output:35-model/u_net3d/up_sampling3d/split_2:output:35-model/u_net3d/up_sampling3d/split_2:output:36-model/u_net3d/up_sampling3d/split_2:output:36-model/u_net3d/up_sampling3d/split_2:output:37-model/u_net3d/up_sampling3d/split_2:output:37-model/u_net3d/up_sampling3d/split_2:output:38-model/u_net3d/up_sampling3d/split_2:output:38-model/u_net3d/up_sampling3d/split_2:output:39-model/u_net3d/up_sampling3d/split_2:output:39-model/u_net3d/up_sampling3d/split_2:output:40-model/u_net3d/up_sampling3d/split_2:output:40-model/u_net3d/up_sampling3d/split_2:output:41-model/u_net3d/up_sampling3d/split_2:output:41-model/u_net3d/up_sampling3d/split_2:output:42-model/u_net3d/up_sampling3d/split_2:output:42-model/u_net3d/up_sampling3d/split_2:output:43-model/u_net3d/up_sampling3d/split_2:output:43-model/u_net3d/up_sampling3d/split_2:output:44-model/u_net3d/up_sampling3d/split_2:output:44-model/u_net3d/up_sampling3d/split_2:output:45-model/u_net3d/up_sampling3d/split_2:output:45-model/u_net3d/up_sampling3d/split_2:output:46-model/u_net3d/up_sampling3d/split_2:output:46-model/u_net3d/up_sampling3d/split_2:output:47-model/u_net3d/up_sampling3d/split_2:output:47-model/u_net3d/up_sampling3d/split_2:output:48-model/u_net3d/up_sampling3d/split_2:output:48-model/u_net3d/up_sampling3d/split_2:output:49-model/u_net3d/up_sampling3d/split_2:output:49-model/u_net3d/up_sampling3d/split_2:output:50-model/u_net3d/up_sampling3d/split_2:output:50-model/u_net3d/up_sampling3d/split_2:output:51-model/u_net3d/up_sampling3d/split_2:output:51-model/u_net3d/up_sampling3d/split_2:output:52-model/u_net3d/up_sampling3d/split_2:output:52-model/u_net3d/up_sampling3d/split_2:output:53-model/u_net3d/up_sampling3d/split_2:output:53-model/u_net3d/up_sampling3d/split_2:output:54-model/u_net3d/up_sampling3d/split_2:output:54-model/u_net3d/up_sampling3d/split_2:output:55-model/u_net3d/up_sampling3d/split_2:output:55-model/u_net3d/up_sampling3d/split_2:output:56-model/u_net3d/up_sampling3d/split_2:output:56-model/u_net3d/up_sampling3d/split_2:output:57-model/u_net3d/up_sampling3d/split_2:output:57-model/u_net3d/up_sampling3d/split_2:output:58-model/u_net3d/up_sampling3d/split_2:output:58-model/u_net3d/up_sampling3d/split_2:output:59-model/u_net3d/up_sampling3d/split_2:output:59-model/u_net3d/up_sampling3d/split_2:output:60-model/u_net3d/up_sampling3d/split_2:output:60-model/u_net3d/up_sampling3d/split_2:output:61-model/u_net3d/up_sampling3d/split_2:output:61-model/u_net3d/up_sampling3d/split_2:output:62-model/u_net3d/up_sampling3d/split_2:output:62-model/u_net3d/up_sampling3d/split_2:output:63-model/u_net3d/up_sampling3d/split_2:output:63-model/u_net3d/up_sampling3d/split_2:output:64-model/u_net3d/up_sampling3d/split_2:output:64-model/u_net3d/up_sampling3d/split_2:output:65-model/u_net3d/up_sampling3d/split_2:output:65-model/u_net3d/up_sampling3d/split_2:output:66-model/u_net3d/up_sampling3d/split_2:output:66-model/u_net3d/up_sampling3d/split_2:output:67-model/u_net3d/up_sampling3d/split_2:output:67-model/u_net3d/up_sampling3d/split_2:output:68-model/u_net3d/up_sampling3d/split_2:output:68-model/u_net3d/up_sampling3d/split_2:output:69-model/u_net3d/up_sampling3d/split_2:output:69-model/u_net3d/up_sampling3d/split_2:output:70-model/u_net3d/up_sampling3d/split_2:output:70-model/u_net3d/up_sampling3d/split_2:output:71-model/u_net3d/up_sampling3d/split_2:output:71-model/u_net3d/up_sampling3d/split_2:output:72-model/u_net3d/up_sampling3d/split_2:output:72-model/u_net3d/up_sampling3d/split_2:output:73-model/u_net3d/up_sampling3d/split_2:output:73-model/u_net3d/up_sampling3d/split_2:output:74-model/u_net3d/up_sampling3d/split_2:output:74-model/u_net3d/up_sampling3d/split_2:output:75-model/u_net3d/up_sampling3d/split_2:output:75-model/u_net3d/up_sampling3d/split_2:output:76-model/u_net3d/up_sampling3d/split_2:output:76-model/u_net3d/up_sampling3d/split_2:output:77-model/u_net3d/up_sampling3d/split_2:output:77-model/u_net3d/up_sampling3d/split_2:output:78-model/u_net3d/up_sampling3d/split_2:output:78-model/u_net3d/up_sampling3d/split_2:output:79-model/u_net3d/up_sampling3d/split_2:output:79-model/u_net3d/up_sampling3d/split_2:output:80-model/u_net3d/up_sampling3d/split_2:output:80-model/u_net3d/up_sampling3d/split_2:output:81-model/u_net3d/up_sampling3d/split_2:output:81-model/u_net3d/up_sampling3d/split_2:output:82-model/u_net3d/up_sampling3d/split_2:output:82-model/u_net3d/up_sampling3d/split_2:output:83-model/u_net3d/up_sampling3d/split_2:output:83-model/u_net3d/up_sampling3d/split_2:output:84-model/u_net3d/up_sampling3d/split_2:output:84-model/u_net3d/up_sampling3d/split_2:output:85-model/u_net3d/up_sampling3d/split_2:output:85-model/u_net3d/up_sampling3d/split_2:output:86-model/u_net3d/up_sampling3d/split_2:output:86-model/u_net3d/up_sampling3d/split_2:output:87-model/u_net3d/up_sampling3d/split_2:output:87-model/u_net3d/up_sampling3d/split_2:output:88-model/u_net3d/up_sampling3d/split_2:output:88-model/u_net3d/up_sampling3d/split_2:output:89-model/u_net3d/up_sampling3d/split_2:output:89-model/u_net3d/up_sampling3d/split_2:output:90-model/u_net3d/up_sampling3d/split_2:output:90-model/u_net3d/up_sampling3d/split_2:output:91-model/u_net3d/up_sampling3d/split_2:output:91-model/u_net3d/up_sampling3d/split_2:output:92-model/u_net3d/up_sampling3d/split_2:output:92-model/u_net3d/up_sampling3d/split_2:output:93-model/u_net3d/up_sampling3d/split_2:output:93-model/u_net3d/up_sampling3d/split_2:output:94-model/u_net3d/up_sampling3d/split_2:output:94-model/u_net3d/up_sampling3d/split_2:output:95-model/u_net3d/up_sampling3d/split_2:output:95-model/u_net3d/up_sampling3d/split_2:output:96-model/u_net3d/up_sampling3d/split_2:output:96-model/u_net3d/up_sampling3d/split_2:output:97-model/u_net3d/up_sampling3d/split_2:output:97-model/u_net3d/up_sampling3d/split_2:output:98-model/u_net3d/up_sampling3d/split_2:output:98-model/u_net3d/up_sampling3d/split_2:output:99-model/u_net3d/up_sampling3d/split_2:output:99.model/u_net3d/up_sampling3d/split_2:output:100.model/u_net3d/up_sampling3d/split_2:output:100.model/u_net3d/up_sampling3d/split_2:output:101.model/u_net3d/up_sampling3d/split_2:output:101.model/u_net3d/up_sampling3d/split_2:output:102.model/u_net3d/up_sampling3d/split_2:output:102.model/u_net3d/up_sampling3d/split_2:output:103.model/u_net3d/up_sampling3d/split_2:output:103.model/u_net3d/up_sampling3d/split_2:output:104.model/u_net3d/up_sampling3d/split_2:output:104.model/u_net3d/up_sampling3d/split_2:output:105.model/u_net3d/up_sampling3d/split_2:output:105.model/u_net3d/up_sampling3d/split_2:output:106.model/u_net3d/up_sampling3d/split_2:output:106.model/u_net3d/up_sampling3d/split_2:output:107.model/u_net3d/up_sampling3d/split_2:output:107.model/u_net3d/up_sampling3d/split_2:output:108.model/u_net3d/up_sampling3d/split_2:output:108.model/u_net3d/up_sampling3d/split_2:output:109.model/u_net3d/up_sampling3d/split_2:output:109.model/u_net3d/up_sampling3d/split_2:output:110.model/u_net3d/up_sampling3d/split_2:output:110.model/u_net3d/up_sampling3d/split_2:output:111.model/u_net3d/up_sampling3d/split_2:output:111.model/u_net3d/up_sampling3d/split_2:output:112.model/u_net3d/up_sampling3d/split_2:output:112.model/u_net3d/up_sampling3d/split_2:output:113.model/u_net3d/up_sampling3d/split_2:output:113.model/u_net3d/up_sampling3d/split_2:output:114.model/u_net3d/up_sampling3d/split_2:output:114.model/u_net3d/up_sampling3d/split_2:output:115.model/u_net3d/up_sampling3d/split_2:output:115.model/u_net3d/up_sampling3d/split_2:output:116.model/u_net3d/up_sampling3d/split_2:output:116.model/u_net3d/up_sampling3d/split_2:output:117.model/u_net3d/up_sampling3d/split_2:output:117.model/u_net3d/up_sampling3d/split_2:output:118.model/u_net3d/up_sampling3d/split_2:output:118.model/u_net3d/up_sampling3d/split_2:output:119.model/u_net3d/up_sampling3d/split_2:output:119.model/u_net3d/up_sampling3d/split_2:output:120.model/u_net3d/up_sampling3d/split_2:output:120.model/u_net3d/up_sampling3d/split_2:output:121.model/u_net3d/up_sampling3d/split_2:output:121.model/u_net3d/up_sampling3d/split_2:output:122.model/u_net3d/up_sampling3d/split_2:output:122.model/u_net3d/up_sampling3d/split_2:output:123.model/u_net3d/up_sampling3d/split_2:output:123.model/u_net3d/up_sampling3d/split_2:output:124.model/u_net3d/up_sampling3d/split_2:output:124.model/u_net3d/up_sampling3d/split_2:output:125.model/u_net3d/up_sampling3d/split_2:output:125.model/u_net3d/up_sampling3d/split_2:output:126.model/u_net3d/up_sampling3d/split_2:output:126.model/u_net3d/up_sampling3d/split_2:output:127.model/u_net3d/up_sampling3d/split_2:output:1272model/u_net3d/up_sampling3d/concat_2/axis:output:0*
N*
T0*,
_output_shapes
:\g
%model/u_net3d/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
 model/u_net3d/concatenate/concatConcatV2-model/u_net3d/up_sampling3d/concat_2:output:04model/u_net3d/conv_block3d/LeakyRelu_1:activations:0.model/u_net3d/concatenate/concat/axis:output:0*
N*
T0*-
_output_shapes
:Í
;model/u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOpReadVariableOpDmodel_u_net3d_conv_block3d_1_conv3d_2_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0
,model/u_net3d/conv_block3d_1/conv3d_2/Conv3DConv3D)model/u_net3d/concatenate/concat:output:0Cmodel/u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
ž
<model/u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOpReadVariableOpEmodel_u_net3d_conv_block3d_1_conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ě
-model/u_net3d/conv_block3d_1/conv3d_2/BiasAddBiasAdd5model/u_net3d/conv_block3d_1/conv3d_2/Conv3D:output:0Dmodel/u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@Š
&model/u_net3d/conv_block3d_1/LeakyRelu	LeakyRelu6model/u_net3d/conv_block3d_1/conv3d_2/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=Ě
;model/u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOpReadVariableOpDmodel_u_net3d_conv_block3d_1_conv3d_3_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0
,model/u_net3d/conv_block3d_1/conv3d_3/Conv3DConv3D4model/u_net3d/conv_block3d_1/LeakyRelu:activations:0Cmodel/u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
ž
<model/u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOpReadVariableOpEmodel_u_net3d_conv_block3d_1_conv3d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ě
-model/u_net3d/conv_block3d_1/conv3d_3/BiasAddBiasAdd5model/u_net3d/conv_block3d_1/conv3d_3/Conv3D:output:0Dmodel/u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@Ť
(model/u_net3d/conv_block3d_1/LeakyRelu_1	LeakyRelu6model/u_net3d/conv_block3d_1/conv3d_3/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=Î
<model/u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOpReadVariableOpEmodel_u_net3d_conv_block3d_5_conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0
-model/u_net3d/conv_block3d_5/conv3d_10/Conv3DConv3D6model/u_net3d/conv_block3d_1/LeakyRelu_1:activations:0Dmodel/u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:*
paddingSAME*
strides	
Ŕ
=model/u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOpReadVariableOpFmodel_u_net3d_conv_block3d_5_conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ď
.model/u_net3d/conv_block3d_5/conv3d_10/BiasAddBiasAdd6model/u_net3d/conv_block3d_5/conv3d_10/Conv3D:output:0Emodel/u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:
IdentityIdentity7model/u_net3d/conv_block3d_5/conv3d_10/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:
NoOpNoOp9^model/u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp8^model/u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp;^model/u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp:^model/u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp=^model/u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp<^model/u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp=^model/u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp<^model/u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp=^model/u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp<^model/u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp=^model/u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp<^model/u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp=^model/u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp<^model/u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp=^model/u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp<^model/u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp=^model/u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp<^model/u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp=^model/u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp<^model/u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp>^model/u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp=^model/u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 2t
8model/u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp8model/u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp2r
7model/u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp7model/u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp2x
:model/u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp:model/u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp2v
9model/u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp9model/u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp2|
<model/u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp<model/u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp2z
;model/u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp;model/u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp2|
<model/u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp<model/u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp2z
;model/u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp;model/u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp2|
<model/u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp<model/u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp2z
;model/u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp;model/u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp2|
<model/u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp<model/u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp2z
;model/u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp;model/u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp2|
<model/u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp<model/u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp2z
;model/u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp;model/u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp2|
<model/u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp<model/u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp2z
;model/u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp;model/u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp2|
<model/u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp<model/u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp2z
;model/u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp;model/u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp2|
<model/u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp<model/u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp2z
;model/u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp;model/u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp2~
=model/u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp=model/u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp2|
<model/u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp<model/u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp:U Q
,
_output_shapes
:
!
_user_specified_name	input_1
§
Ű*
 __inference__traced_save_1137925
file_prefixA
=savev2_u_net3d_conv_block3d_conv3d_kernel_read_readvariableop?
;savev2_u_net3d_conv_block3d_conv3d_bias_read_readvariableopC
?savev2_u_net3d_conv_block3d_conv3d_1_kernel_read_readvariableopA
=savev2_u_net3d_conv_block3d_conv3d_1_bias_read_readvariableopE
Asavev2_u_net3d_conv_block3d_2_conv3d_4_kernel_read_readvariableopC
?savev2_u_net3d_conv_block3d_2_conv3d_4_bias_read_readvariableopE
Asavev2_u_net3d_conv_block3d_2_conv3d_5_kernel_read_readvariableopC
?savev2_u_net3d_conv_block3d_2_conv3d_5_bias_read_readvariableopE
Asavev2_u_net3d_conv_block3d_4_conv3d_8_kernel_read_readvariableopC
?savev2_u_net3d_conv_block3d_4_conv3d_8_bias_read_readvariableopE
Asavev2_u_net3d_conv_block3d_4_conv3d_9_kernel_read_readvariableopC
?savev2_u_net3d_conv_block3d_4_conv3d_9_bias_read_readvariableopE
Asavev2_u_net3d_conv_block3d_1_conv3d_2_kernel_read_readvariableopC
?savev2_u_net3d_conv_block3d_1_conv3d_2_bias_read_readvariableopE
Asavev2_u_net3d_conv_block3d_1_conv3d_3_kernel_read_readvariableopC
?savev2_u_net3d_conv_block3d_1_conv3d_3_bias_read_readvariableopE
Asavev2_u_net3d_conv_block3d_3_conv3d_6_kernel_read_readvariableopC
?savev2_u_net3d_conv_block3d_3_conv3d_6_bias_read_readvariableopE
Asavev2_u_net3d_conv_block3d_3_conv3d_7_kernel_read_readvariableopC
?savev2_u_net3d_conv_block3d_3_conv3d_7_bias_read_readvariableopF
Bsavev2_u_net3d_conv_block3d_5_conv3d_10_kernel_read_readvariableopD
@savev2_u_net3d_conv_block3d_5_conv3d_10_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopH
Dsavev2_adam_u_net3d_conv_block3d_conv3d_kernel_m_read_readvariableopF
Bsavev2_adam_u_net3d_conv_block3d_conv3d_bias_m_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_conv3d_1_kernel_m_read_readvariableopH
Dsavev2_adam_u_net3d_conv_block3d_conv3d_1_bias_m_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_2_conv3d_4_kernel_m_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_2_conv3d_4_bias_m_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_2_conv3d_5_kernel_m_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_2_conv3d_5_bias_m_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_4_conv3d_8_kernel_m_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_4_conv3d_8_bias_m_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_4_conv3d_9_kernel_m_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_4_conv3d_9_bias_m_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_1_conv3d_2_kernel_m_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_1_conv3d_2_bias_m_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_1_conv3d_3_kernel_m_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_1_conv3d_3_bias_m_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_3_conv3d_6_kernel_m_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_3_conv3d_6_bias_m_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_3_conv3d_7_kernel_m_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_3_conv3d_7_bias_m_read_readvariableopM
Isavev2_adam_u_net3d_conv_block3d_5_conv3d_10_kernel_m_read_readvariableopK
Gsavev2_adam_u_net3d_conv_block3d_5_conv3d_10_bias_m_read_readvariableopH
Dsavev2_adam_u_net3d_conv_block3d_conv3d_kernel_v_read_readvariableopF
Bsavev2_adam_u_net3d_conv_block3d_conv3d_bias_v_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_conv3d_1_kernel_v_read_readvariableopH
Dsavev2_adam_u_net3d_conv_block3d_conv3d_1_bias_v_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_2_conv3d_4_kernel_v_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_2_conv3d_4_bias_v_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_2_conv3d_5_kernel_v_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_2_conv3d_5_bias_v_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_4_conv3d_8_kernel_v_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_4_conv3d_8_bias_v_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_4_conv3d_9_kernel_v_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_4_conv3d_9_bias_v_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_1_conv3d_2_kernel_v_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_1_conv3d_2_bias_v_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_1_conv3d_3_kernel_v_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_1_conv3d_3_bias_v_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_3_conv3d_6_kernel_v_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_3_conv3d_6_bias_v_read_readvariableopL
Hsavev2_adam_u_net3d_conv_block3d_3_conv3d_7_kernel_v_read_readvariableopJ
Fsavev2_adam_u_net3d_conv_block3d_3_conv3d_7_bias_v_read_readvariableopM
Isavev2_adam_u_net3d_conv_block3d_5_conv3d_10_kernel_v_read_readvariableopK
Gsavev2_adam_u_net3d_conv_block3d_5_conv3d_10_bias_v_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ÷#
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:N*
dtype0* #
value#B#NB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*ą
value§B¤NB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ˇ)
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0=savev2_u_net3d_conv_block3d_conv3d_kernel_read_readvariableop;savev2_u_net3d_conv_block3d_conv3d_bias_read_readvariableop?savev2_u_net3d_conv_block3d_conv3d_1_kernel_read_readvariableop=savev2_u_net3d_conv_block3d_conv3d_1_bias_read_readvariableopAsavev2_u_net3d_conv_block3d_2_conv3d_4_kernel_read_readvariableop?savev2_u_net3d_conv_block3d_2_conv3d_4_bias_read_readvariableopAsavev2_u_net3d_conv_block3d_2_conv3d_5_kernel_read_readvariableop?savev2_u_net3d_conv_block3d_2_conv3d_5_bias_read_readvariableopAsavev2_u_net3d_conv_block3d_4_conv3d_8_kernel_read_readvariableop?savev2_u_net3d_conv_block3d_4_conv3d_8_bias_read_readvariableopAsavev2_u_net3d_conv_block3d_4_conv3d_9_kernel_read_readvariableop?savev2_u_net3d_conv_block3d_4_conv3d_9_bias_read_readvariableopAsavev2_u_net3d_conv_block3d_1_conv3d_2_kernel_read_readvariableop?savev2_u_net3d_conv_block3d_1_conv3d_2_bias_read_readvariableopAsavev2_u_net3d_conv_block3d_1_conv3d_3_kernel_read_readvariableop?savev2_u_net3d_conv_block3d_1_conv3d_3_bias_read_readvariableopAsavev2_u_net3d_conv_block3d_3_conv3d_6_kernel_read_readvariableop?savev2_u_net3d_conv_block3d_3_conv3d_6_bias_read_readvariableopAsavev2_u_net3d_conv_block3d_3_conv3d_7_kernel_read_readvariableop?savev2_u_net3d_conv_block3d_3_conv3d_7_bias_read_readvariableopBsavev2_u_net3d_conv_block3d_5_conv3d_10_kernel_read_readvariableop@savev2_u_net3d_conv_block3d_5_conv3d_10_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopDsavev2_adam_u_net3d_conv_block3d_conv3d_kernel_m_read_readvariableopBsavev2_adam_u_net3d_conv_block3d_conv3d_bias_m_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_conv3d_1_kernel_m_read_readvariableopDsavev2_adam_u_net3d_conv_block3d_conv3d_1_bias_m_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_2_conv3d_4_kernel_m_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_2_conv3d_4_bias_m_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_2_conv3d_5_kernel_m_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_2_conv3d_5_bias_m_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_4_conv3d_8_kernel_m_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_4_conv3d_8_bias_m_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_4_conv3d_9_kernel_m_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_4_conv3d_9_bias_m_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_1_conv3d_2_kernel_m_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_1_conv3d_2_bias_m_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_1_conv3d_3_kernel_m_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_1_conv3d_3_bias_m_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_3_conv3d_6_kernel_m_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_3_conv3d_6_bias_m_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_3_conv3d_7_kernel_m_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_3_conv3d_7_bias_m_read_readvariableopIsavev2_adam_u_net3d_conv_block3d_5_conv3d_10_kernel_m_read_readvariableopGsavev2_adam_u_net3d_conv_block3d_5_conv3d_10_bias_m_read_readvariableopDsavev2_adam_u_net3d_conv_block3d_conv3d_kernel_v_read_readvariableopBsavev2_adam_u_net3d_conv_block3d_conv3d_bias_v_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_conv3d_1_kernel_v_read_readvariableopDsavev2_adam_u_net3d_conv_block3d_conv3d_1_bias_v_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_2_conv3d_4_kernel_v_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_2_conv3d_4_bias_v_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_2_conv3d_5_kernel_v_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_2_conv3d_5_bias_v_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_4_conv3d_8_kernel_v_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_4_conv3d_8_bias_v_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_4_conv3d_9_kernel_v_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_4_conv3d_9_bias_v_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_1_conv3d_2_kernel_v_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_1_conv3d_2_bias_v_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_1_conv3d_3_kernel_v_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_1_conv3d_3_bias_v_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_3_conv3d_6_kernel_v_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_3_conv3d_6_bias_v_read_readvariableopHsavev2_adam_u_net3d_conv_block3d_3_conv3d_7_kernel_v_read_readvariableopFsavev2_adam_u_net3d_conv_block3d_3_conv3d_7_bias_v_read_readvariableopIsavev2_adam_u_net3d_conv_block3d_5_conv3d_10_kernel_v_read_readvariableopGsavev2_adam_u_net3d_conv_block3d_5_conv3d_10_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *\
dtypesR
P2N	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ŕ
_input_shapesÎ
Ë: :@:@:@@:@:@\:\:\\:\:\::::@:@:@@:@:Ü\:\:\\:\:@:: : : : : : : : : : : :@:@:@@:@:@\:\:\\:\:\::::@:@:@@:@:Ü\:\:\\:\:@::@:@:@@:@:@\:\:\\:\:\::::@:@:@@:@:Ü\:\:\\:\:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:@: 

_output_shapes
:@:0,
*
_output_shapes
:@@: 

_output_shapes
:@:0,
*
_output_shapes
:@\: 

_output_shapes
:\:0,
*
_output_shapes
:\\: 

_output_shapes
:\:1	-
+
_output_shapes
:\:!


_output_shapes	
::2.
,
_output_shapes
::!

_output_shapes	
::1-
+
_output_shapes
:@: 

_output_shapes
:@:0,
*
_output_shapes
:@@: 

_output_shapes
:@:1-
+
_output_shapes
:Ü\: 

_output_shapes
:\:0,
*
_output_shapes
:\\: 

_output_shapes
:\:0,
*
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :0",
*
_output_shapes
:@: #

_output_shapes
:@:0$,
*
_output_shapes
:@@: %

_output_shapes
:@:0&,
*
_output_shapes
:@\: '

_output_shapes
:\:0(,
*
_output_shapes
:\\: )

_output_shapes
:\:1*-
+
_output_shapes
:\:!+

_output_shapes	
::2,.
,
_output_shapes
::!-

_output_shapes	
::1.-
+
_output_shapes
:@: /

_output_shapes
:@:00,
*
_output_shapes
:@@: 1

_output_shapes
:@:12-
+
_output_shapes
:Ü\: 3

_output_shapes
:\:04,
*
_output_shapes
:\\: 5

_output_shapes
:\:06,
*
_output_shapes
:@: 7

_output_shapes
::08,
*
_output_shapes
:@: 9

_output_shapes
:@:0:,
*
_output_shapes
:@@: ;

_output_shapes
:@:0<,
*
_output_shapes
:@\: =

_output_shapes
:\:0>,
*
_output_shapes
:\\: ?

_output_shapes
:\:1@-
+
_output_shapes
:\:!A

_output_shapes	
::2B.
,
_output_shapes
::!C

_output_shapes	
::1D-
+
_output_shapes
:@: E

_output_shapes
:@:0F,
*
_output_shapes
:@@: G

_output_shapes
:@:1H-
+
_output_shapes
:Ü\: I

_output_shapes
:\:0J,
*
_output_shapes
:\\: K

_output_shapes
:\:0L,
*
_output_shapes
:@: M

_output_shapes
::N

_output_shapes
: 
č
Č
)__inference_u_net3d_layer_call_fn_1135618

inputs%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@'
	unknown_3:@\
	unknown_4:\'
	unknown_5:\\
	unknown_6:\(
	unknown_7:\
	unknown_8:	)
	unknown_9:

unknown_10:	)

unknown_11:Ü\

unknown_12:\(

unknown_13:\\

unknown_14:\)

unknown_15:@

unknown_16:@(

unknown_17:@@

unknown_18:@(

unknown_19:@

unknown_20:
identity˘StatefulPartitionedCallű
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133743}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
	
á
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133049
input_1/
conv3d_10_1133043:@
conv3d_10_1133045:
identity˘!conv3d_10/StatefulPartitionedCall
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_10_1133043conv3d_10_1133045*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1132971
IdentityIdentity*conv3d_10/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙j
NoOpNoOp"^conv3d_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
!
_user_specified_name	input_1

î
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1136792

inputsE
'conv3d_4_conv3d_readvariableop_resource:@\6
(conv3d_4_biasadd_readvariableop_resource:\E
'conv3d_5_conv3d_readvariableop_resource:\\6
(conv3d_5_biasadd_readvariableop_resource:\
identity˘conv3d_4/BiasAdd/ReadVariableOp˘conv3d_4/Conv3D/ReadVariableOp˘conv3d_5/BiasAdd/ReadVariableOp˘conv3d_5/Conv3D/ReadVariableOp
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:@\*
dtype0˛
conv3d_4/Conv3DConv3Dinputs&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	

conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\x
	LeakyRelu	LeakyReluconv3d_4/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0Ă
conv3d_5/Conv3DConv3DLeakyRelu:activations:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	

conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\z
LeakyRelu_1	LeakyReluconv3d_5/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\Ě
NoOpNoOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙@: : : : 2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

Ś
*__inference_conv3d_9_layer_call_fn_1137585

inputs'
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallě
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1132484|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:˙˙˙˙˙˙˙˙˙@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
ü
ě
0__inference_conv_block3d_1_layer_call_fn_1136867

inputs&
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132652}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ń


E__inference_conv3d_7_layer_call_and_return_conditional_losses_1132804

inputs<
conv3d_readvariableop_resource:\\-
biasadd_readvariableop_resource:\
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙\: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs
Ň


F__inference_conv3d_10_layer_call_and_return_conditional_losses_1132971

inputs<
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ř
đ
0__inference_conv_block3d_4_layer_call_fn_1136818

inputs&
unknown:\
	unknown_0:	)
	unknown_1:
	unknown_2:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132554|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙@@\: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
 
_user_specified_nameinputs

Ł
*__inference_conv3d_7_layer_call_fn_1137661

inputs%
unknown:\\
	unknown_0:\
identity˘StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1132804}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙\: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs

ĺ
B__inference_model_layer_call_and_return_conditional_losses_1134353
input_1-
u_net3d_1134307:@
u_net3d_1134309:@-
u_net3d_1134311:@@
u_net3d_1134313:@-
u_net3d_1134315:@\
u_net3d_1134317:\-
u_net3d_1134319:\\
u_net3d_1134321:\.
u_net3d_1134323:\
u_net3d_1134325:	/
u_net3d_1134327:
u_net3d_1134329:	.
u_net3d_1134331:Ü\
u_net3d_1134333:\-
u_net3d_1134335:\\
u_net3d_1134337:\.
u_net3d_1134339:@
u_net3d_1134341:@-
u_net3d_1134343:@@
u_net3d_1134345:@-
u_net3d_1134347:@
u_net3d_1134349:
identity˘u_net3d/StatefulPartitionedCallö
u_net3d/StatefulPartitionedCallStatefulPartitionedCallinput_1u_net3d_1134307u_net3d_1134309u_net3d_1134311u_net3d_1134313u_net3d_1134315u_net3d_1134317u_net3d_1134319u_net3d_1134321u_net3d_1134323u_net3d_1134325u_net3d_1134327u_net3d_1134329u_net3d_1134331u_net3d_1134333u_net3d_1134335u_net3d_1134337u_net3d_1134339u_net3d_1134341u_net3d_1134343u_net3d_1134345u_net3d_1134347u_net3d_1134349*"
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133743|
IdentityIdentity(u_net3d/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:h
NoOpNoOp ^u_net3d/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 2B
u_net3d/StatefulPartitionedCallu_net3d/StatefulPartitionedCall:U Q
,
_output_shapes
:
!
_user_specified_name	input_1
˙
í
0__inference_conv_block3d_3_layer_call_fn_1132823
input_1&
unknown:Ü\
	unknown_0:\'
	unknown_1:\\
	unknown_2:\
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132812}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙Ü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
!
_user_specified_name	input_1
Ń


E__inference_conv3d_3_layer_call_and_return_conditional_losses_1132644

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Î


E__inference_conv3d_8_layer_call_and_return_conditional_losses_1132467

inputs=
conv3d_readvariableop_resource:\.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:\*
dtype0
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:˙˙˙˙˙˙˙˙˙@@\: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
 
_user_specified_nameinputs

t
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1133241

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Üf
IdentityIdentityconcat:output:0*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: ˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙\:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:]Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs
Ú
Ŕ
D__inference_u_net3d_layer_call_and_return_conditional_losses_1136630

inputsP
2conv_block3d_conv3d_conv3d_readvariableop_resource:@A
3conv_block3d_conv3d_biasadd_readvariableop_resource:@R
4conv_block3d_conv3d_1_conv3d_readvariableop_resource:@@C
5conv_block3d_conv3d_1_biasadd_readvariableop_resource:@T
6conv_block3d_2_conv3d_4_conv3d_readvariableop_resource:@\E
7conv_block3d_2_conv3d_4_biasadd_readvariableop_resource:\T
6conv_block3d_2_conv3d_5_conv3d_readvariableop_resource:\\E
7conv_block3d_2_conv3d_5_biasadd_readvariableop_resource:\U
6conv_block3d_4_conv3d_8_conv3d_readvariableop_resource:\F
7conv_block3d_4_conv3d_8_biasadd_readvariableop_resource:	V
6conv_block3d_4_conv3d_9_conv3d_readvariableop_resource:F
7conv_block3d_4_conv3d_9_biasadd_readvariableop_resource:	U
6conv_block3d_3_conv3d_6_conv3d_readvariableop_resource:Ü\E
7conv_block3d_3_conv3d_6_biasadd_readvariableop_resource:\T
6conv_block3d_3_conv3d_7_conv3d_readvariableop_resource:\\E
7conv_block3d_3_conv3d_7_biasadd_readvariableop_resource:\U
6conv_block3d_1_conv3d_2_conv3d_readvariableop_resource:@E
7conv_block3d_1_conv3d_2_biasadd_readvariableop_resource:@T
6conv_block3d_1_conv3d_3_conv3d_readvariableop_resource:@@E
7conv_block3d_1_conv3d_3_biasadd_readvariableop_resource:@U
7conv_block3d_5_conv3d_10_conv3d_readvariableop_resource:@F
8conv_block3d_5_conv3d_10_biasadd_readvariableop_resource:
identity˘*conv_block3d/conv3d/BiasAdd/ReadVariableOp˘)conv_block3d/conv3d/Conv3D/ReadVariableOp˘,conv_block3d/conv3d_1/BiasAdd/ReadVariableOp˘+conv_block3d/conv3d_1/Conv3D/ReadVariableOp˘.conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp˘-conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp˘.conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp˘-conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp˘.conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp˘-conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp˘.conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp˘-conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp˘.conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp˘-conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp˘.conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp˘-conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp˘.conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp˘-conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp˘.conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp˘-conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp˘/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp˘.conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp¨
)conv_block3d/conv3d/Conv3D/ReadVariableOpReadVariableOp2conv_block3d_conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0Č
conv_block3d/conv3d/Conv3DConv3Dinputs1conv_block3d/conv3d/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

*conv_block3d/conv3d/BiasAdd/ReadVariableOpReadVariableOp3conv_block3d_conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ż
conv_block3d/conv3d/BiasAddBiasAdd#conv_block3d/conv3d/Conv3D:output:02conv_block3d/conv3d/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
conv_block3d/LeakyRelu	LeakyRelu$conv_block3d/conv3d/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=Ź
+conv_block3d/conv3d_1/Conv3D/ReadVariableOpReadVariableOp4conv_block3d_conv3d_1_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ę
conv_block3d/conv3d_1/Conv3DConv3D$conv_block3d/LeakyRelu:activations:03conv_block3d/conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

,conv_block3d/conv3d_1/BiasAdd/ReadVariableOpReadVariableOp5conv_block3d_conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ĺ
conv_block3d/conv3d_1/BiasAddBiasAdd%conv_block3d/conv3d_1/Conv3D:output:04conv_block3d/conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
conv_block3d/LeakyRelu_1	LeakyRelu&conv_block3d/conv3d_1/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=É
max_pooling3d/MaxPool3D	MaxPool3D&conv_block3d/LeakyRelu_1:activations:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
ksize	
*
paddingSAME*
strides	
°
-conv_block3d_2/conv3d_4/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_2_conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:@\*
dtype0ę
conv_block3d_2/conv3d_4/Conv3DConv3D max_pooling3d/MaxPool3D:output:05conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
˘
.conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_2_conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ë
conv_block3d_2/conv3d_4/BiasAddBiasAdd'conv_block3d_2/conv3d_4/Conv3D:output:06conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
conv_block3d_2/LeakyRelu	LeakyRelu(conv_block3d_2/conv3d_4/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=°
-conv_block3d_2/conv3d_5/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_2_conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0đ
conv_block3d_2/conv3d_5/Conv3DConv3D&conv_block3d_2/LeakyRelu:activations:05conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
˘
.conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_2_conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ë
conv_block3d_2/conv3d_5/BiasAddBiasAdd'conv_block3d_2/conv3d_5/Conv3D:output:06conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
conv_block3d_2/LeakyRelu_1	LeakyRelu(conv_block3d_2/conv3d_5/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=Ë
max_pooling3d_1/MaxPool3D	MaxPool3D(conv_block3d_2/LeakyRelu_1:activations:0*
T0*3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\*
ksize	
*
paddingSAME*
strides	
ą
-conv_block3d_4/conv3d_8/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_4_conv3d_8_conv3d_readvariableop_resource*+
_output_shapes
:\*
dtype0ë
conv_block3d_4/conv3d_8/Conv3DConv3D"max_pooling3d_1/MaxPool3D:output:05conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	
Ł
.conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_4_conv3d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ę
conv_block3d_4/conv3d_8/BiasAddBiasAdd'conv_block3d_4/conv3d_8/Conv3D:output:06conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
conv_block3d_4/LeakyRelu	LeakyRelu(conv_block3d_4/conv3d_8/BiasAdd:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=˛
-conv_block3d_4/conv3d_9/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_4_conv3d_9_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ď
conv_block3d_4/conv3d_9/Conv3DConv3D&conv_block3d_4/LeakyRelu:activations:05conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	
Ł
.conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_4_conv3d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ę
conv_block3d_4/conv3d_9/BiasAddBiasAdd'conv_block3d_4/conv3d_9/Conv3D:output:06conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
conv_block3d_4/LeakyRelu_1	LeakyRelu(conv_block3d_4/conv3d_9/BiasAdd:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=a
up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĺ
up_sampling3d_1/splitSplit(up_sampling3d_1/split/split_dim:output:0(conv_block3d_4/LeakyRelu_1:activations:0*
T0*Ö
_output_shapesĂ
Ŕ:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@*
	num_split]
up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
up_sampling3d_1/concatConcatV2up_sampling3d_1/split:output:0up_sampling3d_1/split:output:0up_sampling3d_1/split:output:1up_sampling3d_1/split:output:1up_sampling3d_1/split:output:2up_sampling3d_1/split:output:2up_sampling3d_1/split:output:3up_sampling3d_1/split:output:3up_sampling3d_1/split:output:4up_sampling3d_1/split:output:4up_sampling3d_1/split:output:5up_sampling3d_1/split:output:5$up_sampling3d_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@c
!up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
up_sampling3d_1/split_1Split*up_sampling3d_1/split_1/split_dim:output:0up_sampling3d_1/concat:output:0*
T0*
_output_shapes
:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@*
	num_split@_
up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :$
up_sampling3d_1/concat_1ConcatV2 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:6 up_sampling3d_1/split_1:output:6 up_sampling3d_1/split_1:output:7 up_sampling3d_1/split_1:output:7 up_sampling3d_1/split_1:output:8 up_sampling3d_1/split_1:output:8 up_sampling3d_1/split_1:output:9 up_sampling3d_1/split_1:output:9!up_sampling3d_1/split_1:output:10!up_sampling3d_1/split_1:output:10!up_sampling3d_1/split_1:output:11!up_sampling3d_1/split_1:output:11!up_sampling3d_1/split_1:output:12!up_sampling3d_1/split_1:output:12!up_sampling3d_1/split_1:output:13!up_sampling3d_1/split_1:output:13!up_sampling3d_1/split_1:output:14!up_sampling3d_1/split_1:output:14!up_sampling3d_1/split_1:output:15!up_sampling3d_1/split_1:output:15!up_sampling3d_1/split_1:output:16!up_sampling3d_1/split_1:output:16!up_sampling3d_1/split_1:output:17!up_sampling3d_1/split_1:output:17!up_sampling3d_1/split_1:output:18!up_sampling3d_1/split_1:output:18!up_sampling3d_1/split_1:output:19!up_sampling3d_1/split_1:output:19!up_sampling3d_1/split_1:output:20!up_sampling3d_1/split_1:output:20!up_sampling3d_1/split_1:output:21!up_sampling3d_1/split_1:output:21!up_sampling3d_1/split_1:output:22!up_sampling3d_1/split_1:output:22!up_sampling3d_1/split_1:output:23!up_sampling3d_1/split_1:output:23!up_sampling3d_1/split_1:output:24!up_sampling3d_1/split_1:output:24!up_sampling3d_1/split_1:output:25!up_sampling3d_1/split_1:output:25!up_sampling3d_1/split_1:output:26!up_sampling3d_1/split_1:output:26!up_sampling3d_1/split_1:output:27!up_sampling3d_1/split_1:output:27!up_sampling3d_1/split_1:output:28!up_sampling3d_1/split_1:output:28!up_sampling3d_1/split_1:output:29!up_sampling3d_1/split_1:output:29!up_sampling3d_1/split_1:output:30!up_sampling3d_1/split_1:output:30!up_sampling3d_1/split_1:output:31!up_sampling3d_1/split_1:output:31!up_sampling3d_1/split_1:output:32!up_sampling3d_1/split_1:output:32!up_sampling3d_1/split_1:output:33!up_sampling3d_1/split_1:output:33!up_sampling3d_1/split_1:output:34!up_sampling3d_1/split_1:output:34!up_sampling3d_1/split_1:output:35!up_sampling3d_1/split_1:output:35!up_sampling3d_1/split_1:output:36!up_sampling3d_1/split_1:output:36!up_sampling3d_1/split_1:output:37!up_sampling3d_1/split_1:output:37!up_sampling3d_1/split_1:output:38!up_sampling3d_1/split_1:output:38!up_sampling3d_1/split_1:output:39!up_sampling3d_1/split_1:output:39!up_sampling3d_1/split_1:output:40!up_sampling3d_1/split_1:output:40!up_sampling3d_1/split_1:output:41!up_sampling3d_1/split_1:output:41!up_sampling3d_1/split_1:output:42!up_sampling3d_1/split_1:output:42!up_sampling3d_1/split_1:output:43!up_sampling3d_1/split_1:output:43!up_sampling3d_1/split_1:output:44!up_sampling3d_1/split_1:output:44!up_sampling3d_1/split_1:output:45!up_sampling3d_1/split_1:output:45!up_sampling3d_1/split_1:output:46!up_sampling3d_1/split_1:output:46!up_sampling3d_1/split_1:output:47!up_sampling3d_1/split_1:output:47!up_sampling3d_1/split_1:output:48!up_sampling3d_1/split_1:output:48!up_sampling3d_1/split_1:output:49!up_sampling3d_1/split_1:output:49!up_sampling3d_1/split_1:output:50!up_sampling3d_1/split_1:output:50!up_sampling3d_1/split_1:output:51!up_sampling3d_1/split_1:output:51!up_sampling3d_1/split_1:output:52!up_sampling3d_1/split_1:output:52!up_sampling3d_1/split_1:output:53!up_sampling3d_1/split_1:output:53!up_sampling3d_1/split_1:output:54!up_sampling3d_1/split_1:output:54!up_sampling3d_1/split_1:output:55!up_sampling3d_1/split_1:output:55!up_sampling3d_1/split_1:output:56!up_sampling3d_1/split_1:output:56!up_sampling3d_1/split_1:output:57!up_sampling3d_1/split_1:output:57!up_sampling3d_1/split_1:output:58!up_sampling3d_1/split_1:output:58!up_sampling3d_1/split_1:output:59!up_sampling3d_1/split_1:output:59!up_sampling3d_1/split_1:output:60!up_sampling3d_1/split_1:output:60!up_sampling3d_1/split_1:output:61!up_sampling3d_1/split_1:output:61!up_sampling3d_1/split_1:output:62!up_sampling3d_1/split_1:output:62!up_sampling3d_1/split_1:output:63!up_sampling3d_1/split_1:output:63&up_sampling3d_1/concat_1/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@c
!up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :â
up_sampling3d_1/split_2Split*up_sampling3d_1/split_2/split_dim:output:0!up_sampling3d_1/concat_1:output:0*
T0*Ö
_output_shapesĂ
Ŕ:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split@_
up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :$
up_sampling3d_1/concat_2ConcatV2 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:6 up_sampling3d_1/split_2:output:6 up_sampling3d_1/split_2:output:7 up_sampling3d_1/split_2:output:7 up_sampling3d_1/split_2:output:8 up_sampling3d_1/split_2:output:8 up_sampling3d_1/split_2:output:9 up_sampling3d_1/split_2:output:9!up_sampling3d_1/split_2:output:10!up_sampling3d_1/split_2:output:10!up_sampling3d_1/split_2:output:11!up_sampling3d_1/split_2:output:11!up_sampling3d_1/split_2:output:12!up_sampling3d_1/split_2:output:12!up_sampling3d_1/split_2:output:13!up_sampling3d_1/split_2:output:13!up_sampling3d_1/split_2:output:14!up_sampling3d_1/split_2:output:14!up_sampling3d_1/split_2:output:15!up_sampling3d_1/split_2:output:15!up_sampling3d_1/split_2:output:16!up_sampling3d_1/split_2:output:16!up_sampling3d_1/split_2:output:17!up_sampling3d_1/split_2:output:17!up_sampling3d_1/split_2:output:18!up_sampling3d_1/split_2:output:18!up_sampling3d_1/split_2:output:19!up_sampling3d_1/split_2:output:19!up_sampling3d_1/split_2:output:20!up_sampling3d_1/split_2:output:20!up_sampling3d_1/split_2:output:21!up_sampling3d_1/split_2:output:21!up_sampling3d_1/split_2:output:22!up_sampling3d_1/split_2:output:22!up_sampling3d_1/split_2:output:23!up_sampling3d_1/split_2:output:23!up_sampling3d_1/split_2:output:24!up_sampling3d_1/split_2:output:24!up_sampling3d_1/split_2:output:25!up_sampling3d_1/split_2:output:25!up_sampling3d_1/split_2:output:26!up_sampling3d_1/split_2:output:26!up_sampling3d_1/split_2:output:27!up_sampling3d_1/split_2:output:27!up_sampling3d_1/split_2:output:28!up_sampling3d_1/split_2:output:28!up_sampling3d_1/split_2:output:29!up_sampling3d_1/split_2:output:29!up_sampling3d_1/split_2:output:30!up_sampling3d_1/split_2:output:30!up_sampling3d_1/split_2:output:31!up_sampling3d_1/split_2:output:31!up_sampling3d_1/split_2:output:32!up_sampling3d_1/split_2:output:32!up_sampling3d_1/split_2:output:33!up_sampling3d_1/split_2:output:33!up_sampling3d_1/split_2:output:34!up_sampling3d_1/split_2:output:34!up_sampling3d_1/split_2:output:35!up_sampling3d_1/split_2:output:35!up_sampling3d_1/split_2:output:36!up_sampling3d_1/split_2:output:36!up_sampling3d_1/split_2:output:37!up_sampling3d_1/split_2:output:37!up_sampling3d_1/split_2:output:38!up_sampling3d_1/split_2:output:38!up_sampling3d_1/split_2:output:39!up_sampling3d_1/split_2:output:39!up_sampling3d_1/split_2:output:40!up_sampling3d_1/split_2:output:40!up_sampling3d_1/split_2:output:41!up_sampling3d_1/split_2:output:41!up_sampling3d_1/split_2:output:42!up_sampling3d_1/split_2:output:42!up_sampling3d_1/split_2:output:43!up_sampling3d_1/split_2:output:43!up_sampling3d_1/split_2:output:44!up_sampling3d_1/split_2:output:44!up_sampling3d_1/split_2:output:45!up_sampling3d_1/split_2:output:45!up_sampling3d_1/split_2:output:46!up_sampling3d_1/split_2:output:46!up_sampling3d_1/split_2:output:47!up_sampling3d_1/split_2:output:47!up_sampling3d_1/split_2:output:48!up_sampling3d_1/split_2:output:48!up_sampling3d_1/split_2:output:49!up_sampling3d_1/split_2:output:49!up_sampling3d_1/split_2:output:50!up_sampling3d_1/split_2:output:50!up_sampling3d_1/split_2:output:51!up_sampling3d_1/split_2:output:51!up_sampling3d_1/split_2:output:52!up_sampling3d_1/split_2:output:52!up_sampling3d_1/split_2:output:53!up_sampling3d_1/split_2:output:53!up_sampling3d_1/split_2:output:54!up_sampling3d_1/split_2:output:54!up_sampling3d_1/split_2:output:55!up_sampling3d_1/split_2:output:55!up_sampling3d_1/split_2:output:56!up_sampling3d_1/split_2:output:56!up_sampling3d_1/split_2:output:57!up_sampling3d_1/split_2:output:57!up_sampling3d_1/split_2:output:58!up_sampling3d_1/split_2:output:58!up_sampling3d_1/split_2:output:59!up_sampling3d_1/split_2:output:59!up_sampling3d_1/split_2:output:60!up_sampling3d_1/split_2:output:60!up_sampling3d_1/split_2:output:61!up_sampling3d_1/split_2:output:61!up_sampling3d_1/split_2:output:62!up_sampling3d_1/split_2:output:62!up_sampling3d_1/split_2:output:63!up_sampling3d_1/split_2:output:63&up_sampling3d_1/concat_2/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ű
concatenate_1/concatConcatV2!up_sampling3d_1/concat_2:output:0(conv_block3d_2/LeakyRelu_1:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Üą
-conv_block3d_3/conv3d_6/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_3_conv3d_6_conv3d_readvariableop_resource*+
_output_shapes
:Ü\*
dtype0ç
conv_block3d_3/conv3d_6/Conv3DConv3Dconcatenate_1/concat:output:05conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
˘
.conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_3_conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ë
conv_block3d_3/conv3d_6/BiasAddBiasAdd'conv_block3d_3/conv3d_6/Conv3D:output:06conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
conv_block3d_3/LeakyRelu	LeakyRelu(conv_block3d_3/conv3d_6/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=°
-conv_block3d_3/conv3d_7/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_3_conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0đ
conv_block3d_3/conv3d_7/Conv3DConv3D&conv_block3d_3/LeakyRelu:activations:05conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
˘
.conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_3_conv3d_7_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ë
conv_block3d_3/conv3d_7/BiasAddBiasAdd'conv_block3d_3/conv3d_7/Conv3D:output:06conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
conv_block3d_3/LeakyRelu_1	LeakyRelu(conv_block3d_3/conv3d_7/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=_
up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :­
up_sampling3d/splitSplit&up_sampling3d/split/split_dim:output:0(conv_block3d_3/LeakyRelu_1:activations:0*
T0*˘
_output_shapes
:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_split[
up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :á
up_sampling3d/concatConcatV2up_sampling3d/split:output:0up_sampling3d/split:output:0up_sampling3d/split:output:1up_sampling3d/split:output:1up_sampling3d/split:output:2up_sampling3d/split:output:2up_sampling3d/split:output:3up_sampling3d/split:output:3up_sampling3d/split:output:4up_sampling3d/split:output:4up_sampling3d/split:output:5up_sampling3d/split:output:5up_sampling3d/split:output:6up_sampling3d/split:output:6up_sampling3d/split:output:7up_sampling3d/split:output:7up_sampling3d/split:output:8up_sampling3d/split:output:8up_sampling3d/split:output:9up_sampling3d/split:output:9up_sampling3d/split:output:10up_sampling3d/split:output:10up_sampling3d/split:output:11up_sampling3d/split:output:11"up_sampling3d/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\a
up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :!
up_sampling3d/split_1Split(up_sampling3d/split_1/split_dim:output:0up_sampling3d/concat:output:0*
T0* 
_output_shapes 
 :˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_split]
up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :śC
up_sampling3d/concat_1ConcatV2up_sampling3d/split_1:output:0up_sampling3d/split_1:output:0up_sampling3d/split_1:output:1up_sampling3d/split_1:output:1up_sampling3d/split_1:output:2up_sampling3d/split_1:output:2up_sampling3d/split_1:output:3up_sampling3d/split_1:output:3up_sampling3d/split_1:output:4up_sampling3d/split_1:output:4up_sampling3d/split_1:output:5up_sampling3d/split_1:output:5up_sampling3d/split_1:output:6up_sampling3d/split_1:output:6up_sampling3d/split_1:output:7up_sampling3d/split_1:output:7up_sampling3d/split_1:output:8up_sampling3d/split_1:output:8up_sampling3d/split_1:output:9up_sampling3d/split_1:output:9up_sampling3d/split_1:output:10up_sampling3d/split_1:output:10up_sampling3d/split_1:output:11up_sampling3d/split_1:output:11up_sampling3d/split_1:output:12up_sampling3d/split_1:output:12up_sampling3d/split_1:output:13up_sampling3d/split_1:output:13up_sampling3d/split_1:output:14up_sampling3d/split_1:output:14up_sampling3d/split_1:output:15up_sampling3d/split_1:output:15up_sampling3d/split_1:output:16up_sampling3d/split_1:output:16up_sampling3d/split_1:output:17up_sampling3d/split_1:output:17up_sampling3d/split_1:output:18up_sampling3d/split_1:output:18up_sampling3d/split_1:output:19up_sampling3d/split_1:output:19up_sampling3d/split_1:output:20up_sampling3d/split_1:output:20up_sampling3d/split_1:output:21up_sampling3d/split_1:output:21up_sampling3d/split_1:output:22up_sampling3d/split_1:output:22up_sampling3d/split_1:output:23up_sampling3d/split_1:output:23up_sampling3d/split_1:output:24up_sampling3d/split_1:output:24up_sampling3d/split_1:output:25up_sampling3d/split_1:output:25up_sampling3d/split_1:output:26up_sampling3d/split_1:output:26up_sampling3d/split_1:output:27up_sampling3d/split_1:output:27up_sampling3d/split_1:output:28up_sampling3d/split_1:output:28up_sampling3d/split_1:output:29up_sampling3d/split_1:output:29up_sampling3d/split_1:output:30up_sampling3d/split_1:output:30up_sampling3d/split_1:output:31up_sampling3d/split_1:output:31up_sampling3d/split_1:output:32up_sampling3d/split_1:output:32up_sampling3d/split_1:output:33up_sampling3d/split_1:output:33up_sampling3d/split_1:output:34up_sampling3d/split_1:output:34up_sampling3d/split_1:output:35up_sampling3d/split_1:output:35up_sampling3d/split_1:output:36up_sampling3d/split_1:output:36up_sampling3d/split_1:output:37up_sampling3d/split_1:output:37up_sampling3d/split_1:output:38up_sampling3d/split_1:output:38up_sampling3d/split_1:output:39up_sampling3d/split_1:output:39up_sampling3d/split_1:output:40up_sampling3d/split_1:output:40up_sampling3d/split_1:output:41up_sampling3d/split_1:output:41up_sampling3d/split_1:output:42up_sampling3d/split_1:output:42up_sampling3d/split_1:output:43up_sampling3d/split_1:output:43up_sampling3d/split_1:output:44up_sampling3d/split_1:output:44up_sampling3d/split_1:output:45up_sampling3d/split_1:output:45up_sampling3d/split_1:output:46up_sampling3d/split_1:output:46up_sampling3d/split_1:output:47up_sampling3d/split_1:output:47up_sampling3d/split_1:output:48up_sampling3d/split_1:output:48up_sampling3d/split_1:output:49up_sampling3d/split_1:output:49up_sampling3d/split_1:output:50up_sampling3d/split_1:output:50up_sampling3d/split_1:output:51up_sampling3d/split_1:output:51up_sampling3d/split_1:output:52up_sampling3d/split_1:output:52up_sampling3d/split_1:output:53up_sampling3d/split_1:output:53up_sampling3d/split_1:output:54up_sampling3d/split_1:output:54up_sampling3d/split_1:output:55up_sampling3d/split_1:output:55up_sampling3d/split_1:output:56up_sampling3d/split_1:output:56up_sampling3d/split_1:output:57up_sampling3d/split_1:output:57up_sampling3d/split_1:output:58up_sampling3d/split_1:output:58up_sampling3d/split_1:output:59up_sampling3d/split_1:output:59up_sampling3d/split_1:output:60up_sampling3d/split_1:output:60up_sampling3d/split_1:output:61up_sampling3d/split_1:output:61up_sampling3d/split_1:output:62up_sampling3d/split_1:output:62up_sampling3d/split_1:output:63up_sampling3d/split_1:output:63up_sampling3d/split_1:output:64up_sampling3d/split_1:output:64up_sampling3d/split_1:output:65up_sampling3d/split_1:output:65up_sampling3d/split_1:output:66up_sampling3d/split_1:output:66up_sampling3d/split_1:output:67up_sampling3d/split_1:output:67up_sampling3d/split_1:output:68up_sampling3d/split_1:output:68up_sampling3d/split_1:output:69up_sampling3d/split_1:output:69up_sampling3d/split_1:output:70up_sampling3d/split_1:output:70up_sampling3d/split_1:output:71up_sampling3d/split_1:output:71up_sampling3d/split_1:output:72up_sampling3d/split_1:output:72up_sampling3d/split_1:output:73up_sampling3d/split_1:output:73up_sampling3d/split_1:output:74up_sampling3d/split_1:output:74up_sampling3d/split_1:output:75up_sampling3d/split_1:output:75up_sampling3d/split_1:output:76up_sampling3d/split_1:output:76up_sampling3d/split_1:output:77up_sampling3d/split_1:output:77up_sampling3d/split_1:output:78up_sampling3d/split_1:output:78up_sampling3d/split_1:output:79up_sampling3d/split_1:output:79up_sampling3d/split_1:output:80up_sampling3d/split_1:output:80up_sampling3d/split_1:output:81up_sampling3d/split_1:output:81up_sampling3d/split_1:output:82up_sampling3d/split_1:output:82up_sampling3d/split_1:output:83up_sampling3d/split_1:output:83up_sampling3d/split_1:output:84up_sampling3d/split_1:output:84up_sampling3d/split_1:output:85up_sampling3d/split_1:output:85up_sampling3d/split_1:output:86up_sampling3d/split_1:output:86up_sampling3d/split_1:output:87up_sampling3d/split_1:output:87up_sampling3d/split_1:output:88up_sampling3d/split_1:output:88up_sampling3d/split_1:output:89up_sampling3d/split_1:output:89up_sampling3d/split_1:output:90up_sampling3d/split_1:output:90up_sampling3d/split_1:output:91up_sampling3d/split_1:output:91up_sampling3d/split_1:output:92up_sampling3d/split_1:output:92up_sampling3d/split_1:output:93up_sampling3d/split_1:output:93up_sampling3d/split_1:output:94up_sampling3d/split_1:output:94up_sampling3d/split_1:output:95up_sampling3d/split_1:output:95up_sampling3d/split_1:output:96up_sampling3d/split_1:output:96up_sampling3d/split_1:output:97up_sampling3d/split_1:output:97up_sampling3d/split_1:output:98up_sampling3d/split_1:output:98up_sampling3d/split_1:output:99up_sampling3d/split_1:output:99 up_sampling3d/split_1:output:100 up_sampling3d/split_1:output:100 up_sampling3d/split_1:output:101 up_sampling3d/split_1:output:101 up_sampling3d/split_1:output:102 up_sampling3d/split_1:output:102 up_sampling3d/split_1:output:103 up_sampling3d/split_1:output:103 up_sampling3d/split_1:output:104 up_sampling3d/split_1:output:104 up_sampling3d/split_1:output:105 up_sampling3d/split_1:output:105 up_sampling3d/split_1:output:106 up_sampling3d/split_1:output:106 up_sampling3d/split_1:output:107 up_sampling3d/split_1:output:107 up_sampling3d/split_1:output:108 up_sampling3d/split_1:output:108 up_sampling3d/split_1:output:109 up_sampling3d/split_1:output:109 up_sampling3d/split_1:output:110 up_sampling3d/split_1:output:110 up_sampling3d/split_1:output:111 up_sampling3d/split_1:output:111 up_sampling3d/split_1:output:112 up_sampling3d/split_1:output:112 up_sampling3d/split_1:output:113 up_sampling3d/split_1:output:113 up_sampling3d/split_1:output:114 up_sampling3d/split_1:output:114 up_sampling3d/split_1:output:115 up_sampling3d/split_1:output:115 up_sampling3d/split_1:output:116 up_sampling3d/split_1:output:116 up_sampling3d/split_1:output:117 up_sampling3d/split_1:output:117 up_sampling3d/split_1:output:118 up_sampling3d/split_1:output:118 up_sampling3d/split_1:output:119 up_sampling3d/split_1:output:119 up_sampling3d/split_1:output:120 up_sampling3d/split_1:output:120 up_sampling3d/split_1:output:121 up_sampling3d/split_1:output:121 up_sampling3d/split_1:output:122 up_sampling3d/split_1:output:122 up_sampling3d/split_1:output:123 up_sampling3d/split_1:output:123 up_sampling3d/split_1:output:124 up_sampling3d/split_1:output:124 up_sampling3d/split_1:output:125 up_sampling3d/split_1:output:125 up_sampling3d/split_1:output:126 up_sampling3d/split_1:output:126 up_sampling3d/split_1:output:127 up_sampling3d/split_1:output:127$up_sampling3d/concat_1/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\a
up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :!
up_sampling3d/split_2Split(up_sampling3d/split_2/split_dim:output:0up_sampling3d/concat_1:output:0*
T0* 
_output_shapes 
 :˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_split]
up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :śC
up_sampling3d/concat_2ConcatV2up_sampling3d/split_2:output:0up_sampling3d/split_2:output:0up_sampling3d/split_2:output:1up_sampling3d/split_2:output:1up_sampling3d/split_2:output:2up_sampling3d/split_2:output:2up_sampling3d/split_2:output:3up_sampling3d/split_2:output:3up_sampling3d/split_2:output:4up_sampling3d/split_2:output:4up_sampling3d/split_2:output:5up_sampling3d/split_2:output:5up_sampling3d/split_2:output:6up_sampling3d/split_2:output:6up_sampling3d/split_2:output:7up_sampling3d/split_2:output:7up_sampling3d/split_2:output:8up_sampling3d/split_2:output:8up_sampling3d/split_2:output:9up_sampling3d/split_2:output:9up_sampling3d/split_2:output:10up_sampling3d/split_2:output:10up_sampling3d/split_2:output:11up_sampling3d/split_2:output:11up_sampling3d/split_2:output:12up_sampling3d/split_2:output:12up_sampling3d/split_2:output:13up_sampling3d/split_2:output:13up_sampling3d/split_2:output:14up_sampling3d/split_2:output:14up_sampling3d/split_2:output:15up_sampling3d/split_2:output:15up_sampling3d/split_2:output:16up_sampling3d/split_2:output:16up_sampling3d/split_2:output:17up_sampling3d/split_2:output:17up_sampling3d/split_2:output:18up_sampling3d/split_2:output:18up_sampling3d/split_2:output:19up_sampling3d/split_2:output:19up_sampling3d/split_2:output:20up_sampling3d/split_2:output:20up_sampling3d/split_2:output:21up_sampling3d/split_2:output:21up_sampling3d/split_2:output:22up_sampling3d/split_2:output:22up_sampling3d/split_2:output:23up_sampling3d/split_2:output:23up_sampling3d/split_2:output:24up_sampling3d/split_2:output:24up_sampling3d/split_2:output:25up_sampling3d/split_2:output:25up_sampling3d/split_2:output:26up_sampling3d/split_2:output:26up_sampling3d/split_2:output:27up_sampling3d/split_2:output:27up_sampling3d/split_2:output:28up_sampling3d/split_2:output:28up_sampling3d/split_2:output:29up_sampling3d/split_2:output:29up_sampling3d/split_2:output:30up_sampling3d/split_2:output:30up_sampling3d/split_2:output:31up_sampling3d/split_2:output:31up_sampling3d/split_2:output:32up_sampling3d/split_2:output:32up_sampling3d/split_2:output:33up_sampling3d/split_2:output:33up_sampling3d/split_2:output:34up_sampling3d/split_2:output:34up_sampling3d/split_2:output:35up_sampling3d/split_2:output:35up_sampling3d/split_2:output:36up_sampling3d/split_2:output:36up_sampling3d/split_2:output:37up_sampling3d/split_2:output:37up_sampling3d/split_2:output:38up_sampling3d/split_2:output:38up_sampling3d/split_2:output:39up_sampling3d/split_2:output:39up_sampling3d/split_2:output:40up_sampling3d/split_2:output:40up_sampling3d/split_2:output:41up_sampling3d/split_2:output:41up_sampling3d/split_2:output:42up_sampling3d/split_2:output:42up_sampling3d/split_2:output:43up_sampling3d/split_2:output:43up_sampling3d/split_2:output:44up_sampling3d/split_2:output:44up_sampling3d/split_2:output:45up_sampling3d/split_2:output:45up_sampling3d/split_2:output:46up_sampling3d/split_2:output:46up_sampling3d/split_2:output:47up_sampling3d/split_2:output:47up_sampling3d/split_2:output:48up_sampling3d/split_2:output:48up_sampling3d/split_2:output:49up_sampling3d/split_2:output:49up_sampling3d/split_2:output:50up_sampling3d/split_2:output:50up_sampling3d/split_2:output:51up_sampling3d/split_2:output:51up_sampling3d/split_2:output:52up_sampling3d/split_2:output:52up_sampling3d/split_2:output:53up_sampling3d/split_2:output:53up_sampling3d/split_2:output:54up_sampling3d/split_2:output:54up_sampling3d/split_2:output:55up_sampling3d/split_2:output:55up_sampling3d/split_2:output:56up_sampling3d/split_2:output:56up_sampling3d/split_2:output:57up_sampling3d/split_2:output:57up_sampling3d/split_2:output:58up_sampling3d/split_2:output:58up_sampling3d/split_2:output:59up_sampling3d/split_2:output:59up_sampling3d/split_2:output:60up_sampling3d/split_2:output:60up_sampling3d/split_2:output:61up_sampling3d/split_2:output:61up_sampling3d/split_2:output:62up_sampling3d/split_2:output:62up_sampling3d/split_2:output:63up_sampling3d/split_2:output:63up_sampling3d/split_2:output:64up_sampling3d/split_2:output:64up_sampling3d/split_2:output:65up_sampling3d/split_2:output:65up_sampling3d/split_2:output:66up_sampling3d/split_2:output:66up_sampling3d/split_2:output:67up_sampling3d/split_2:output:67up_sampling3d/split_2:output:68up_sampling3d/split_2:output:68up_sampling3d/split_2:output:69up_sampling3d/split_2:output:69up_sampling3d/split_2:output:70up_sampling3d/split_2:output:70up_sampling3d/split_2:output:71up_sampling3d/split_2:output:71up_sampling3d/split_2:output:72up_sampling3d/split_2:output:72up_sampling3d/split_2:output:73up_sampling3d/split_2:output:73up_sampling3d/split_2:output:74up_sampling3d/split_2:output:74up_sampling3d/split_2:output:75up_sampling3d/split_2:output:75up_sampling3d/split_2:output:76up_sampling3d/split_2:output:76up_sampling3d/split_2:output:77up_sampling3d/split_2:output:77up_sampling3d/split_2:output:78up_sampling3d/split_2:output:78up_sampling3d/split_2:output:79up_sampling3d/split_2:output:79up_sampling3d/split_2:output:80up_sampling3d/split_2:output:80up_sampling3d/split_2:output:81up_sampling3d/split_2:output:81up_sampling3d/split_2:output:82up_sampling3d/split_2:output:82up_sampling3d/split_2:output:83up_sampling3d/split_2:output:83up_sampling3d/split_2:output:84up_sampling3d/split_2:output:84up_sampling3d/split_2:output:85up_sampling3d/split_2:output:85up_sampling3d/split_2:output:86up_sampling3d/split_2:output:86up_sampling3d/split_2:output:87up_sampling3d/split_2:output:87up_sampling3d/split_2:output:88up_sampling3d/split_2:output:88up_sampling3d/split_2:output:89up_sampling3d/split_2:output:89up_sampling3d/split_2:output:90up_sampling3d/split_2:output:90up_sampling3d/split_2:output:91up_sampling3d/split_2:output:91up_sampling3d/split_2:output:92up_sampling3d/split_2:output:92up_sampling3d/split_2:output:93up_sampling3d/split_2:output:93up_sampling3d/split_2:output:94up_sampling3d/split_2:output:94up_sampling3d/split_2:output:95up_sampling3d/split_2:output:95up_sampling3d/split_2:output:96up_sampling3d/split_2:output:96up_sampling3d/split_2:output:97up_sampling3d/split_2:output:97up_sampling3d/split_2:output:98up_sampling3d/split_2:output:98up_sampling3d/split_2:output:99up_sampling3d/split_2:output:99 up_sampling3d/split_2:output:100 up_sampling3d/split_2:output:100 up_sampling3d/split_2:output:101 up_sampling3d/split_2:output:101 up_sampling3d/split_2:output:102 up_sampling3d/split_2:output:102 up_sampling3d/split_2:output:103 up_sampling3d/split_2:output:103 up_sampling3d/split_2:output:104 up_sampling3d/split_2:output:104 up_sampling3d/split_2:output:105 up_sampling3d/split_2:output:105 up_sampling3d/split_2:output:106 up_sampling3d/split_2:output:106 up_sampling3d/split_2:output:107 up_sampling3d/split_2:output:107 up_sampling3d/split_2:output:108 up_sampling3d/split_2:output:108 up_sampling3d/split_2:output:109 up_sampling3d/split_2:output:109 up_sampling3d/split_2:output:110 up_sampling3d/split_2:output:110 up_sampling3d/split_2:output:111 up_sampling3d/split_2:output:111 up_sampling3d/split_2:output:112 up_sampling3d/split_2:output:112 up_sampling3d/split_2:output:113 up_sampling3d/split_2:output:113 up_sampling3d/split_2:output:114 up_sampling3d/split_2:output:114 up_sampling3d/split_2:output:115 up_sampling3d/split_2:output:115 up_sampling3d/split_2:output:116 up_sampling3d/split_2:output:116 up_sampling3d/split_2:output:117 up_sampling3d/split_2:output:117 up_sampling3d/split_2:output:118 up_sampling3d/split_2:output:118 up_sampling3d/split_2:output:119 up_sampling3d/split_2:output:119 up_sampling3d/split_2:output:120 up_sampling3d/split_2:output:120 up_sampling3d/split_2:output:121 up_sampling3d/split_2:output:121 up_sampling3d/split_2:output:122 up_sampling3d/split_2:output:122 up_sampling3d/split_2:output:123 up_sampling3d/split_2:output:123 up_sampling3d/split_2:output:124 up_sampling3d/split_2:output:124 up_sampling3d/split_2:output:125 up_sampling3d/split_2:output:125 up_sampling3d/split_2:output:126 up_sampling3d/split_2:output:126 up_sampling3d/split_2:output:127 up_sampling3d/split_2:output:127$up_sampling3d/concat_2/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ó
concatenate/concatConcatV2up_sampling3d/concat_2:output:0&conv_block3d/LeakyRelu_1:activations:0 concatenate/concat/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙ą
-conv_block3d_1/conv3d_2/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_1_conv3d_2_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0ĺ
conv_block3d_1/conv3d_2/Conv3DConv3Dconcatenate/concat:output:05conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
˘
.conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_1_conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ë
conv_block3d_1/conv3d_2/BiasAddBiasAdd'conv_block3d_1/conv3d_2/Conv3D:output:06conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
conv_block3d_1/LeakyRelu	LeakyRelu(conv_block3d_1/conv3d_2/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=°
-conv_block3d_1/conv3d_3/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_1_conv3d_3_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0đ
conv_block3d_1/conv3d_3/Conv3DConv3D&conv_block3d_1/LeakyRelu:activations:05conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
˘
.conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_1_conv3d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ë
conv_block3d_1/conv3d_3/BiasAddBiasAdd'conv_block3d_1/conv3d_3/Conv3D:output:06conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
conv_block3d_1/LeakyRelu_1	LeakyRelu(conv_block3d_1/conv3d_3/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=˛
.conv_block3d_5/conv3d_10/Conv3D/ReadVariableOpReadVariableOp7conv_block3d_5_conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0ô
conv_block3d_5/conv3d_10/Conv3DConv3D(conv_block3d_1/LeakyRelu_1:activations:06conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides	
¤
/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOpReadVariableOp8conv_block3d_5_conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Î
 conv_block3d_5/conv3d_10/BiasAddBiasAdd(conv_block3d_5/conv3d_10/Conv3D:output:07conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
IdentityIdentity)conv_block3d_5/conv3d_10/BiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙ç
NoOpNoOp+^conv_block3d/conv3d/BiasAdd/ReadVariableOp*^conv_block3d/conv3d/Conv3D/ReadVariableOp-^conv_block3d/conv3d_1/BiasAdd/ReadVariableOp,^conv_block3d/conv3d_1/Conv3D/ReadVariableOp/^conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp.^conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp/^conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp.^conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp/^conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp.^conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp/^conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp.^conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp/^conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp.^conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp/^conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp.^conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp/^conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp.^conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp/^conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp.^conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp0^conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp/^conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : 2X
*conv_block3d/conv3d/BiasAdd/ReadVariableOp*conv_block3d/conv3d/BiasAdd/ReadVariableOp2V
)conv_block3d/conv3d/Conv3D/ReadVariableOp)conv_block3d/conv3d/Conv3D/ReadVariableOp2\
,conv_block3d/conv3d_1/BiasAdd/ReadVariableOp,conv_block3d/conv3d_1/BiasAdd/ReadVariableOp2Z
+conv_block3d/conv3d_1/Conv3D/ReadVariableOp+conv_block3d/conv3d_1/Conv3D/ReadVariableOp2`
.conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp.conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp2^
-conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp-conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp2`
.conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp.conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp2^
-conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp-conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp2`
.conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp.conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp2^
-conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp-conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp2`
.conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp.conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp2^
-conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp-conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp2`
.conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp.conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp2^
-conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp-conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp2`
.conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp.conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp2^
-conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp-conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp2`
.conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp.conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp2^
-conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp-conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp2`
.conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp.conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp2^
-conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp-conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp2b
/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp2`
.conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp.conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ę
M
1__inference_up_sampling3d_1_layer_call_fn_1137289

inputs
identityË
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_1133232o
IdentityIdentityPartitionedCall:output:0*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙@@:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
ď
K
/__inference_max_pooling3d_layer_call_fn_1136983

inputs
identityę
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_max_pooling3d_layer_call_and_return_conditional_losses_1132939
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: {
W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ł
*__inference_conv3d_4_layer_call_fn_1137528

inputs%
unknown:@\
	unknown_0:\
identity˘StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1132307}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
˙
í
0__inference_conv_block3d_1_layer_call_fn_1132663
input_1&
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132652}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1

Ň
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132914
input_1/
conv3d_6_1132901:Ü\
conv3d_6_1132903:\.
conv3d_7_1132907:\\
conv3d_7_1132909:\
identity˘ conv3d_6/StatefulPartitionedCall˘ conv3d_7/StatefulPartitionedCall
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_6_1132901conv3d_6_1132903*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1132787
	LeakyRelu	LeakyRelu)conv3d_6/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_7_1132907conv3d_7_1132909*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1132804
LeakyRelu_1	LeakyRelu)conv3d_7/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
NoOpNoOp!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙Ü: : : : 2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall:_ [
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
!
_user_specified_name	input_1
Ń


E__inference_conv3d_1_layer_call_and_return_conditional_losses_1137519

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ű
ń
0__inference_conv_block3d_4_layer_call_fn_1132503
input_1&
unknown:\
	unknown_0:	)
	unknown_1:
	unknown_2:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132492|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙@@\: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
!
_user_specified_name	input_1

Ş
0__inference_conv_block3d_5_layer_call_fn_1132985
input_1%
unknown:@
	unknown_0:
identity˘StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1132978}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
!
_user_specified_name	input_1
ř
ę
.__inference_conv_block3d_layer_call_fn_1132258
input_1%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132234}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1

Ň
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132930
input_1/
conv3d_6_1132917:Ü\
conv3d_6_1132919:\.
conv3d_7_1132923:\\
conv3d_7_1132925:\
identity˘ conv3d_6/StatefulPartitionedCall˘ conv3d_7/StatefulPartitionedCall
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_6_1132917conv3d_6_1132919*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1132787
	LeakyRelu	LeakyRelu)conv3d_6/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_7_1132923conv3d_7_1132925*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1132804
LeakyRelu_1	LeakyRelu)conv3d_7/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
NoOpNoOp!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙Ü: : : : 2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall:_ [
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
!
_user_specified_name	input_1

Ő
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132492

inputs/
conv3d_8_1132468:\
conv3d_8_1132470:	0
conv3d_9_1132485:
conv3d_9_1132487:	
identity˘ conv3d_8/StatefulPartitionedCall˘ conv3d_9/StatefulPartitionedCall
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_8_1132468conv3d_8_1132470*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1132467
	LeakyRelu	LeakyRelu)conv3d_8/StatefulPartitionedCall:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_9_1132485conv3d_9_1132487*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1132484
LeakyRelu_1	LeakyRelu)conv3d_9/StatefulPartitionedCall:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=u
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
NoOpNoOp!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙@@\: : : : 2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:[ W
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
 
_user_specified_nameinputs
ë
É
)__inference_u_net3d_layer_call_fn_1133606
input_1%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@'
	unknown_3:@\
	unknown_4:\'
	unknown_5:\\
	unknown_6:\(
	unknown_7:\
	unknown_8:	)
	unknown_9:

unknown_10:	)

unknown_11:Ü\

unknown_12:\(

unknown_13:\\

unknown_14:\)

unknown_15:@

unknown_16:@(

unknown_17:@@

unknown_18:@(

unknown_19:@

unknown_20:
identity˘StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133559}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
ü
ě
0__inference_conv_block3d_2_layer_call_fn_1132343
input_1%
unknown:@\
	unknown_0:\'
	unknown_1:\\
	unknown_2:\
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132332}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
!
_user_specified_name	input_1

Š
0__inference_conv_block3d_5_layer_call_fn_1136648

inputs%
unknown:@
	unknown_0:
identity˘StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133015}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

Ö
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132610
input_1/
conv3d_8_1132597:\
conv3d_8_1132599:	0
conv3d_9_1132603:
conv3d_9_1132605:	
identity˘ conv3d_8/StatefulPartitionedCall˘ conv3d_9/StatefulPartitionedCall
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_8_1132597conv3d_8_1132599*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1132467
	LeakyRelu	LeakyRelu)conv3d_8/StatefulPartitionedCall:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_9_1132603conv3d_9_1132605*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1132484
LeakyRelu_1	LeakyRelu)conv3d_9/StatefulPartitionedCall:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=u
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
NoOpNoOp!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙@@\: : : : 2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:\ X
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
!
_user_specified_name	input_1
Ŕ
Ć
'__inference_model_layer_call_fn_1134459

inputs%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@'
	unknown_3:@\
	unknown_4:\'
	unknown_5:\\
	unknown_6:\(
	unknown_7:\
	unknown_8:	)
	unknown_9:

unknown_10:	)

unknown_11:Ü\

unknown_12:\(

unknown_13:\\

unknown_14:\)

unknown_15:@

unknown_16:@(

unknown_17:@@

unknown_18:@(

unknown_19:@

unknown_20:
identity˘StatefulPartitionedCallđ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1134012t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:
 
_user_specified_nameinputs

Ń
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132874

inputs/
conv3d_6_1132861:Ü\
conv3d_6_1132863:\.
conv3d_7_1132867:\\
conv3d_7_1132869:\
identity˘ conv3d_6/StatefulPartitionedCall˘ conv3d_7/StatefulPartitionedCall
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_6_1132861conv3d_6_1132863*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1132787
	LeakyRelu	LeakyRelu)conv3d_6/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_7_1132867conv3d_7_1132869*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1132804
LeakyRelu_1	LeakyRelu)conv3d_7/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
NoOpNoOp!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙Ü: : : : 2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
 
_user_specified_nameinputs
ü
ě
0__inference_conv_block3d_2_layer_call_fn_1132418
input_1%
unknown:@\
	unknown_0:\'
	unknown_1:\\
	unknown_2:\
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132394}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
!
_user_specified_name	input_1
ő
é
.__inference_conv_block3d_layer_call_fn_1136681

inputs%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132172}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ą
°
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1136658

inputsF
(conv3d_10_conv3d_readvariableop_resource:@7
)conv3d_10_biasadd_readvariableop_resource:
identity˘ conv3d_10/BiasAdd/ReadVariableOp˘conv3d_10/Conv3D/ReadVariableOp
conv3d_10/Conv3D/ReadVariableOpReadVariableOp(conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0´
conv3d_10/Conv3DConv3Dinputs'conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides	

 conv3d_10/BiasAdd/ReadVariableOpReadVariableOp)conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ą
conv3d_10/BiasAddBiasAddconv3d_10/Conv3D:output:0(conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙w
IdentityIdentityconv3d_10/BiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
NoOpNoOp!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 2D
 conv3d_10/BiasAdd/ReadVariableOp conv3d_10/BiasAdd/ReadVariableOp2B
conv3d_10/Conv3D/ReadVariableOpconv3d_10/Conv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
č
Č
)__inference_u_net3d_layer_call_fn_1135569

inputs%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@'
	unknown_3:@\
	unknown_4:\'
	unknown_5:\\
	unknown_6:\(
	unknown_7:\
	unknown_8:	)
	unknown_9:

unknown_10:	)

unknown_11:Ü\

unknown_12:\(

unknown_13:\\

unknown_14:\)

unknown_15:@

unknown_16:@(

unknown_17:@@

unknown_18:@(

unknown_19:@

unknown_20:
identity˘StatefulPartitionedCallű
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133559}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙
í
0__inference_conv_block3d_3_layer_call_fn_1132898
input_1&
unknown:Ü\
	unknown_0:\'
	unknown_1:\\
	unknown_2:\
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132874}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙Ü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
!
_user_specified_name	input_1
Ď


C__inference_conv3d_layer_call_and_return_conditional_losses_1137500

inputs<
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

î
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1136774

inputsE
'conv3d_4_conv3d_readvariableop_resource:@\6
(conv3d_4_biasadd_readvariableop_resource:\E
'conv3d_5_conv3d_readvariableop_resource:\\6
(conv3d_5_biasadd_readvariableop_resource:\
identity˘conv3d_4/BiasAdd/ReadVariableOp˘conv3d_4/Conv3D/ReadVariableOp˘conv3d_5/BiasAdd/ReadVariableOp˘conv3d_5/Conv3D/ReadVariableOp
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:@\*
dtype0˛
conv3d_4/Conv3DConv3Dinputs&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	

conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\x
	LeakyRelu	LeakyReluconv3d_4/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0Ă
conv3d_5/Conv3DConv3DLeakyRelu:activations:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	

conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\z
LeakyRelu_1	LeakyReluconv3d_5/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\Ě
NoOpNoOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙@: : : : 2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

ĺ
B__inference_model_layer_call_and_return_conditional_losses_1134304
input_1-
u_net3d_1134258:@
u_net3d_1134260:@-
u_net3d_1134262:@@
u_net3d_1134264:@-
u_net3d_1134266:@\
u_net3d_1134268:\-
u_net3d_1134270:\\
u_net3d_1134272:\.
u_net3d_1134274:\
u_net3d_1134276:	/
u_net3d_1134278:
u_net3d_1134280:	.
u_net3d_1134282:Ü\
u_net3d_1134284:\-
u_net3d_1134286:\\
u_net3d_1134288:\.
u_net3d_1134290:@
u_net3d_1134292:@-
u_net3d_1134294:@@
u_net3d_1134296:@-
u_net3d_1134298:@
u_net3d_1134300:
identity˘u_net3d/StatefulPartitionedCallö
u_net3d/StatefulPartitionedCallStatefulPartitionedCallinput_1u_net3d_1134258u_net3d_1134260u_net3d_1134262u_net3d_1134264u_net3d_1134266u_net3d_1134268u_net3d_1134270u_net3d_1134272u_net3d_1134274u_net3d_1134276u_net3d_1134278u_net3d_1134280u_net3d_1134282u_net3d_1134284u_net3d_1134286u_net3d_1134288u_net3d_1134290u_net3d_1134292u_net3d_1134294u_net3d_1134296u_net3d_1134298u_net3d_1134300*"
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133559|
IdentityIdentity(u_net3d/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:h
NoOpNoOp ^u_net3d/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 2B
u_net3d/StatefulPartitionedCallu_net3d/StatefulPartitionedCall:U Q
,
_output_shapes
:
!
_user_specified_name	input_1
	
ŕ
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133015

inputs/
conv3d_10_1133009:@
conv3d_10_1133011:
identity˘!conv3d_10/StatefulPartitionedCall
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_10_1133009conv3d_10_1133011*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1132971
IdentityIdentity*conv3d_10/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙j
NoOpNoOp"^conv3d_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ď
Č
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132234

inputs,
conv3d_1132221:@
conv3d_1132223:@.
conv3d_1_1132227:@@
conv3d_1_1132229:@
identity˘conv3d/StatefulPartitionedCall˘ conv3d_1/StatefulPartitionedCallţ
conv3d/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_1132221conv3d_1132223*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *L
fGRE
C__inference_conv3d_layer_call_and_return_conditional_losses_1132147
	LeakyRelu	LeakyRelu'conv3d/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_1_1132227conv3d_1_1132229*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_1_layer_call_and_return_conditional_losses_1132164
LeakyRelu_1	LeakyRelu)conv3d_1/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙: : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ň
É
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132274
input_1,
conv3d_1132261:@
conv3d_1132263:@.
conv3d_1_1132267:@@
conv3d_1_1132269:@
identity˘conv3d/StatefulPartitionedCall˘ conv3d_1/StatefulPartitionedCall˙
conv3d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_1132261conv3d_1132263*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *L
fGRE
C__inference_conv3d_layer_call_and_return_conditional_losses_1132147
	LeakyRelu	LeakyRelu'conv3d/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_1_1132267conv3d_1_1132269*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_1_layer_call_and_return_conditional_losses_1132164
LeakyRelu_1	LeakyRelu)conv3d_1/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙: : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
Ŕ
Ć
'__inference_model_layer_call_fn_1134508

inputs%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@'
	unknown_3:@\
	unknown_4:\'
	unknown_5:\\
	unknown_6:\(
	unknown_7:\
	unknown_8:	)
	unknown_9:

unknown_10:	)

unknown_11:Ü\

unknown_12:\(

unknown_13:\\

unknown_14:\)

unknown_15:@

unknown_16:@(

unknown_17:@@

unknown_18:@(

unknown_19:@

unknown_20:
identity˘StatefulPartitionedCallđ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1134159t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:
 
_user_specified_nameinputs
Ă
Ç
'__inference_model_layer_call_fn_1134255
input_1%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@'
	unknown_3:@\
	unknown_4:\'
	unknown_5:\\
	unknown_6:\(
	unknown_7:\
	unknown_8:	)
	unknown_9:

unknown_10:	)

unknown_11:Ü\

unknown_12:\(

unknown_13:\\

unknown_14:\)

unknown_15:@

unknown_16:@(

unknown_17:@@

unknown_18:@(

unknown_19:@

unknown_20:
identity˘StatefulPartitionedCallń
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1134159t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:
!
_user_specified_name	input_1

Đ
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132332

inputs.
conv3d_4_1132308:@\
conv3d_4_1132310:\.
conv3d_5_1132325:\\
conv3d_5_1132327:\
identity˘ conv3d_4/StatefulPartitionedCall˘ conv3d_5/StatefulPartitionedCall
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_4_1132308conv3d_4_1132310*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1132307
	LeakyRelu	LeakyRelu)conv3d_4/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_5_1132325conv3d_5_1132327*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1132324
LeakyRelu_1	LeakyRelu)conv3d_5/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
NoOpNoOp!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙@: : : : 2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Ă
Ç
'__inference_model_layer_call_fn_1134059
input_1%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@'
	unknown_3:@\
	unknown_4:\'
	unknown_5:\\
	unknown_6:\(
	unknown_7:\
	unknown_8:	)
	unknown_9:

unknown_10:	)

unknown_11:Ü\

unknown_12:\(

unknown_13:\\

unknown_14:\)

unknown_15:@

unknown_16:@(

unknown_17:@@

unknown_18:@(

unknown_19:@

unknown_20:
identity˘StatefulPartitionedCallń
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1134012t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:
!
_user_specified_name	input_1

ó
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1136836

inputsF
'conv3d_8_conv3d_readvariableop_resource:\7
(conv3d_8_biasadd_readvariableop_resource:	G
'conv3d_9_conv3d_readvariableop_resource:7
(conv3d_9_biasadd_readvariableop_resource:	
identity˘conv3d_8/BiasAdd/ReadVariableOp˘conv3d_8/Conv3D/ReadVariableOp˘conv3d_9/BiasAdd/ReadVariableOp˘conv3d_9/Conv3D/ReadVariableOp
conv3d_8/Conv3D/ReadVariableOpReadVariableOp'conv3d_8_conv3d_readvariableop_resource*+
_output_shapes
:\*
dtype0ą
conv3d_8/Conv3DConv3Dinputs&conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	

conv3d_8/BiasAdd/ReadVariableOpReadVariableOp(conv3d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv3d_8/BiasAddBiasAddconv3d_8/Conv3D:output:0'conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@w
	LeakyRelu	LeakyReluconv3d_8/BiasAdd:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=
conv3d_9/Conv3D/ReadVariableOpReadVariableOp'conv3d_9_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0Â
conv3d_9/Conv3DConv3DLeakyRelu:activations:0&conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	

conv3d_9/BiasAdd/ReadVariableOpReadVariableOp(conv3d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv3d_9/BiasAddBiasAddconv3d_9/Conv3D:output:0'conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@y
LeakyRelu_1	LeakyReluconv3d_9/BiasAdd:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=u
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@Ě
NoOpNoOp ^conv3d_8/BiasAdd/ReadVariableOp^conv3d_8/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙@@\: : : : 2B
conv3d_8/BiasAdd/ReadVariableOpconv3d_8/BiasAdd/ReadVariableOp2@
conv3d_8/Conv3D/ReadVariableOpconv3d_8/Conv3D/ReadVariableOp2B
conv3d_9/BiasAdd/ReadVariableOpconv3d_9/BiasAdd/ReadVariableOp2@
conv3d_9/Conv3D/ReadVariableOpconv3d_9/Conv3D/ReadVariableOp:[ W
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
 
_user_specified_nameinputs
	
ŕ
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1132978

inputs/
conv3d_10_1132972:@
conv3d_10_1132974:
identity˘!conv3d_10/StatefulPartitionedCall
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_10_1132972conv3d_10_1132974*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1132971
IdentityIdentity*conv3d_10/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙j
NoOpNoOp"^conv3d_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Ń


E__inference_conv3d_5_layer_call_and_return_conditional_losses_1137557

inputs<
conv3d_readvariableop_resource:\\-
biasadd_readvariableop_resource:\
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙\: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs

ď
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1136978

inputsF
'conv3d_6_conv3d_readvariableop_resource:Ü\6
(conv3d_6_biasadd_readvariableop_resource:\E
'conv3d_7_conv3d_readvariableop_resource:\\6
(conv3d_7_biasadd_readvariableop_resource:\
identity˘conv3d_6/BiasAdd/ReadVariableOp˘conv3d_6/Conv3D/ReadVariableOp˘conv3d_7/BiasAdd/ReadVariableOp˘conv3d_7/Conv3D/ReadVariableOp
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource*+
_output_shapes
:Ü\*
dtype0˛
conv3d_6/Conv3DConv3Dinputs&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	

conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\x
	LeakyRelu	LeakyReluconv3d_6/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
conv3d_7/Conv3D/ReadVariableOpReadVariableOp'conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0Ă
conv3d_7/Conv3DConv3DLeakyRelu:activations:0&conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	

conv3d_7/BiasAdd/ReadVariableOpReadVariableOp(conv3d_7_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
conv3d_7/BiasAddBiasAddconv3d_7/Conv3D:output:0'conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\z
LeakyRelu_1	LeakyReluconv3d_7/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\Ě
NoOpNoOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp ^conv3d_7/BiasAdd/ReadVariableOp^conv3d_7/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙Ü: : : : 2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2B
conv3d_7/BiasAdd/ReadVariableOpconv3d_7/BiasAdd/ReadVariableOp2@
conv3d_7/Conv3D/ReadVariableOpconv3d_7/Conv3D/ReadVariableOp:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
 
_user_specified_nameinputs
Ť
f
J__inference_up_sampling3d_layer_call_and_return_conditional_losses_1137284

inputs
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ď
splitSplitsplit/split_dim:output:0inputs*
T0*˘
_output_shapes
:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_splitM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ő
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11concat/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ń 
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0* 
_output_shapes 
 :˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_splitO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :'
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9split_1:output:10split_1:output:10split_1:output:11split_1:output:11split_1:output:12split_1:output:12split_1:output:13split_1:output:13split_1:output:14split_1:output:14split_1:output:15split_1:output:15split_1:output:16split_1:output:16split_1:output:17split_1:output:17split_1:output:18split_1:output:18split_1:output:19split_1:output:19split_1:output:20split_1:output:20split_1:output:21split_1:output:21split_1:output:22split_1:output:22split_1:output:23split_1:output:23split_1:output:24split_1:output:24split_1:output:25split_1:output:25split_1:output:26split_1:output:26split_1:output:27split_1:output:27split_1:output:28split_1:output:28split_1:output:29split_1:output:29split_1:output:30split_1:output:30split_1:output:31split_1:output:31split_1:output:32split_1:output:32split_1:output:33split_1:output:33split_1:output:34split_1:output:34split_1:output:35split_1:output:35split_1:output:36split_1:output:36split_1:output:37split_1:output:37split_1:output:38split_1:output:38split_1:output:39split_1:output:39split_1:output:40split_1:output:40split_1:output:41split_1:output:41split_1:output:42split_1:output:42split_1:output:43split_1:output:43split_1:output:44split_1:output:44split_1:output:45split_1:output:45split_1:output:46split_1:output:46split_1:output:47split_1:output:47split_1:output:48split_1:output:48split_1:output:49split_1:output:49split_1:output:50split_1:output:50split_1:output:51split_1:output:51split_1:output:52split_1:output:52split_1:output:53split_1:output:53split_1:output:54split_1:output:54split_1:output:55split_1:output:55split_1:output:56split_1:output:56split_1:output:57split_1:output:57split_1:output:58split_1:output:58split_1:output:59split_1:output:59split_1:output:60split_1:output:60split_1:output:61split_1:output:61split_1:output:62split_1:output:62split_1:output:63split_1:output:63split_1:output:64split_1:output:64split_1:output:65split_1:output:65split_1:output:66split_1:output:66split_1:output:67split_1:output:67split_1:output:68split_1:output:68split_1:output:69split_1:output:69split_1:output:70split_1:output:70split_1:output:71split_1:output:71split_1:output:72split_1:output:72split_1:output:73split_1:output:73split_1:output:74split_1:output:74split_1:output:75split_1:output:75split_1:output:76split_1:output:76split_1:output:77split_1:output:77split_1:output:78split_1:output:78split_1:output:79split_1:output:79split_1:output:80split_1:output:80split_1:output:81split_1:output:81split_1:output:82split_1:output:82split_1:output:83split_1:output:83split_1:output:84split_1:output:84split_1:output:85split_1:output:85split_1:output:86split_1:output:86split_1:output:87split_1:output:87split_1:output:88split_1:output:88split_1:output:89split_1:output:89split_1:output:90split_1:output:90split_1:output:91split_1:output:91split_1:output:92split_1:output:92split_1:output:93split_1:output:93split_1:output:94split_1:output:94split_1:output:95split_1:output:95split_1:output:96split_1:output:96split_1:output:97split_1:output:97split_1:output:98split_1:output:98split_1:output:99split_1:output:99split_1:output:100split_1:output:100split_1:output:101split_1:output:101split_1:output:102split_1:output:102split_1:output:103split_1:output:103split_1:output:104split_1:output:104split_1:output:105split_1:output:105split_1:output:106split_1:output:106split_1:output:107split_1:output:107split_1:output:108split_1:output:108split_1:output:109split_1:output:109split_1:output:110split_1:output:110split_1:output:111split_1:output:111split_1:output:112split_1:output:112split_1:output:113split_1:output:113split_1:output:114split_1:output:114split_1:output:115split_1:output:115split_1:output:116split_1:output:116split_1:output:117split_1:output:117split_1:output:118split_1:output:118split_1:output:119split_1:output:119split_1:output:120split_1:output:120split_1:output:121split_1:output:121split_1:output:122split_1:output:122split_1:output:123split_1:output:123split_1:output:124split_1:output:124split_1:output:125split_1:output:125split_1:output:126split_1:output:126split_1:output:127split_1:output:127concat_1/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó 
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0* 
_output_shapes 
 :˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_splitO
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :'
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9split_2:output:10split_2:output:10split_2:output:11split_2:output:11split_2:output:12split_2:output:12split_2:output:13split_2:output:13split_2:output:14split_2:output:14split_2:output:15split_2:output:15split_2:output:16split_2:output:16split_2:output:17split_2:output:17split_2:output:18split_2:output:18split_2:output:19split_2:output:19split_2:output:20split_2:output:20split_2:output:21split_2:output:21split_2:output:22split_2:output:22split_2:output:23split_2:output:23split_2:output:24split_2:output:24split_2:output:25split_2:output:25split_2:output:26split_2:output:26split_2:output:27split_2:output:27split_2:output:28split_2:output:28split_2:output:29split_2:output:29split_2:output:30split_2:output:30split_2:output:31split_2:output:31split_2:output:32split_2:output:32split_2:output:33split_2:output:33split_2:output:34split_2:output:34split_2:output:35split_2:output:35split_2:output:36split_2:output:36split_2:output:37split_2:output:37split_2:output:38split_2:output:38split_2:output:39split_2:output:39split_2:output:40split_2:output:40split_2:output:41split_2:output:41split_2:output:42split_2:output:42split_2:output:43split_2:output:43split_2:output:44split_2:output:44split_2:output:45split_2:output:45split_2:output:46split_2:output:46split_2:output:47split_2:output:47split_2:output:48split_2:output:48split_2:output:49split_2:output:49split_2:output:50split_2:output:50split_2:output:51split_2:output:51split_2:output:52split_2:output:52split_2:output:53split_2:output:53split_2:output:54split_2:output:54split_2:output:55split_2:output:55split_2:output:56split_2:output:56split_2:output:57split_2:output:57split_2:output:58split_2:output:58split_2:output:59split_2:output:59split_2:output:60split_2:output:60split_2:output:61split_2:output:61split_2:output:62split_2:output:62split_2:output:63split_2:output:63split_2:output:64split_2:output:64split_2:output:65split_2:output:65split_2:output:66split_2:output:66split_2:output:67split_2:output:67split_2:output:68split_2:output:68split_2:output:69split_2:output:69split_2:output:70split_2:output:70split_2:output:71split_2:output:71split_2:output:72split_2:output:72split_2:output:73split_2:output:73split_2:output:74split_2:output:74split_2:output:75split_2:output:75split_2:output:76split_2:output:76split_2:output:77split_2:output:77split_2:output:78split_2:output:78split_2:output:79split_2:output:79split_2:output:80split_2:output:80split_2:output:81split_2:output:81split_2:output:82split_2:output:82split_2:output:83split_2:output:83split_2:output:84split_2:output:84split_2:output:85split_2:output:85split_2:output:86split_2:output:86split_2:output:87split_2:output:87split_2:output:88split_2:output:88split_2:output:89split_2:output:89split_2:output:90split_2:output:90split_2:output:91split_2:output:91split_2:output:92split_2:output:92split_2:output:93split_2:output:93split_2:output:94split_2:output:94split_2:output:95split_2:output:95split_2:output:96split_2:output:96split_2:output:97split_2:output:97split_2:output:98split_2:output:98split_2:output:99split_2:output:99split_2:output:100split_2:output:100split_2:output:101split_2:output:101split_2:output:102split_2:output:102split_2:output:103split_2:output:103split_2:output:104split_2:output:104split_2:output:105split_2:output:105split_2:output:106split_2:output:106split_2:output:107split_2:output:107split_2:output:108split_2:output:108split_2:output:109split_2:output:109split_2:output:110split_2:output:110split_2:output:111split_2:output:111split_2:output:112split_2:output:112split_2:output:113split_2:output:113split_2:output:114split_2:output:114split_2:output:115split_2:output:115split_2:output:116split_2:output:116split_2:output:117split_2:output:117split_2:output:118split_2:output:118split_2:output:119split_2:output:119split_2:output:120split_2:output:120split_2:output:121split_2:output:121split_2:output:122split_2:output:122split_2:output:123split_2:output:123split_2:output:124split_2:output:124split_2:output:125split_2:output:125split_2:output:126split_2:output:126split_2:output:127split_2:output:127concat_2/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\g
IdentityIdentityconcat_2:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙\:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs
Ň=
Ę

D__inference_u_net3d_layer_call_and_return_conditional_losses_1133559

inputs2
conv_block3d_1133056:@"
conv_block3d_1133058:@2
conv_block3d_1133060:@@"
conv_block3d_1133062:@4
conv_block3d_2_1133066:@\$
conv_block3d_2_1133068:\4
conv_block3d_2_1133070:\\$
conv_block3d_2_1133072:\5
conv_block3d_4_1133076:\%
conv_block3d_4_1133078:	6
conv_block3d_4_1133080:%
conv_block3d_4_1133082:	5
conv_block3d_3_1133243:Ü\$
conv_block3d_3_1133245:\4
conv_block3d_3_1133247:\\$
conv_block3d_3_1133249:\5
conv_block3d_1_1133544:@$
conv_block3d_1_1133546:@4
conv_block3d_1_1133548:@@$
conv_block3d_1_1133550:@4
conv_block3d_5_1133553:@$
conv_block3d_5_1133555:
identity˘$conv_block3d/StatefulPartitionedCall˘&conv_block3d_1/StatefulPartitionedCall˘&conv_block3d_2/StatefulPartitionedCall˘&conv_block3d_3/StatefulPartitionedCall˘&conv_block3d_4/StatefulPartitionedCall˘&conv_block3d_5/StatefulPartitionedCallĆ
$conv_block3d/StatefulPartitionedCallStatefulPartitionedCallinputsconv_block3d_1133056conv_block3d_1133058conv_block3d_1133060conv_block3d_1133062*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132172ý
max_pooling3d/PartitionedCallPartitionedCall-conv_block3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_max_pooling3d_layer_call_and_return_conditional_losses_1132939ň
&conv_block3d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling3d/PartitionedCall:output:0conv_block3d_2_1133066conv_block3d_2_1133068conv_block3d_2_1133070conv_block3d_2_1133072*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132332
max_pooling3d_1/PartitionedCallPartitionedCall/conv_block3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1132951ó
&conv_block3d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_1/PartitionedCall:output:0conv_block3d_4_1133076conv_block3d_4_1133078conv_block3d_4_1133080conv_block3d_4_1133082*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132492
up_sampling3d_1/PartitionedCallPartitionedCall/conv_block3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_1133232Ť
concatenate_1/PartitionedCallPartitionedCall(up_sampling3d_1/PartitionedCall:output:0/conv_block3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1133241ň
&conv_block3d_3/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv_block3d_3_1133243conv_block3d_3_1133245conv_block3d_3_1133247conv_block3d_3_1133249*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132812˙
up_sampling3d/PartitionedCallPartitionedCall/conv_block3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_up_sampling3d_layer_call_and_return_conditional_losses_1133533Ł
concatenate/PartitionedCallPartitionedCall&up_sampling3d/PartitionedCall:output:0-conv_block3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1133542đ
&conv_block3d_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv_block3d_1_1133544conv_block3d_1_1133546conv_block3d_1_1133548conv_block3d_1_1133550*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132652Ç
&conv_block3d_5/StatefulPartitionedCallStatefulPartitionedCall/conv_block3d_1/StatefulPartitionedCall:output:0conv_block3d_5_1133553conv_block3d_5_1133555*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1132978
IdentityIdentity/conv_block3d_5/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp%^conv_block3d/StatefulPartitionedCall'^conv_block3d_1/StatefulPartitionedCall'^conv_block3d_2/StatefulPartitionedCall'^conv_block3d_3/StatefulPartitionedCall'^conv_block3d_4/StatefulPartitionedCall'^conv_block3d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : 2L
$conv_block3d/StatefulPartitionedCall$conv_block3d/StatefulPartitionedCall2P
&conv_block3d_1/StatefulPartitionedCall&conv_block3d_1/StatefulPartitionedCall2P
&conv_block3d_2/StatefulPartitionedCall&conv_block3d_2/StatefulPartitionedCall2P
&conv_block3d_3/StatefulPartitionedCall&conv_block3d_3/StatefulPartitionedCall2P
&conv_block3d_4/StatefulPartitionedCall&conv_block3d_4/StatefulPartitionedCall2P
&conv_block3d_5/StatefulPartitionedCall&conv_block3d_5/StatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ú
Ŕ
D__inference_u_net3d_layer_call_and_return_conditional_losses_1136124

inputsP
2conv_block3d_conv3d_conv3d_readvariableop_resource:@A
3conv_block3d_conv3d_biasadd_readvariableop_resource:@R
4conv_block3d_conv3d_1_conv3d_readvariableop_resource:@@C
5conv_block3d_conv3d_1_biasadd_readvariableop_resource:@T
6conv_block3d_2_conv3d_4_conv3d_readvariableop_resource:@\E
7conv_block3d_2_conv3d_4_biasadd_readvariableop_resource:\T
6conv_block3d_2_conv3d_5_conv3d_readvariableop_resource:\\E
7conv_block3d_2_conv3d_5_biasadd_readvariableop_resource:\U
6conv_block3d_4_conv3d_8_conv3d_readvariableop_resource:\F
7conv_block3d_4_conv3d_8_biasadd_readvariableop_resource:	V
6conv_block3d_4_conv3d_9_conv3d_readvariableop_resource:F
7conv_block3d_4_conv3d_9_biasadd_readvariableop_resource:	U
6conv_block3d_3_conv3d_6_conv3d_readvariableop_resource:Ü\E
7conv_block3d_3_conv3d_6_biasadd_readvariableop_resource:\T
6conv_block3d_3_conv3d_7_conv3d_readvariableop_resource:\\E
7conv_block3d_3_conv3d_7_biasadd_readvariableop_resource:\U
6conv_block3d_1_conv3d_2_conv3d_readvariableop_resource:@E
7conv_block3d_1_conv3d_2_biasadd_readvariableop_resource:@T
6conv_block3d_1_conv3d_3_conv3d_readvariableop_resource:@@E
7conv_block3d_1_conv3d_3_biasadd_readvariableop_resource:@U
7conv_block3d_5_conv3d_10_conv3d_readvariableop_resource:@F
8conv_block3d_5_conv3d_10_biasadd_readvariableop_resource:
identity˘*conv_block3d/conv3d/BiasAdd/ReadVariableOp˘)conv_block3d/conv3d/Conv3D/ReadVariableOp˘,conv_block3d/conv3d_1/BiasAdd/ReadVariableOp˘+conv_block3d/conv3d_1/Conv3D/ReadVariableOp˘.conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp˘-conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp˘.conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp˘-conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp˘.conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp˘-conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp˘.conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp˘-conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp˘.conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp˘-conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp˘.conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp˘-conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp˘.conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp˘-conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp˘.conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp˘-conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp˘/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp˘.conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp¨
)conv_block3d/conv3d/Conv3D/ReadVariableOpReadVariableOp2conv_block3d_conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0Č
conv_block3d/conv3d/Conv3DConv3Dinputs1conv_block3d/conv3d/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

*conv_block3d/conv3d/BiasAdd/ReadVariableOpReadVariableOp3conv_block3d_conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ż
conv_block3d/conv3d/BiasAddBiasAdd#conv_block3d/conv3d/Conv3D:output:02conv_block3d/conv3d/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
conv_block3d/LeakyRelu	LeakyRelu$conv_block3d/conv3d/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=Ź
+conv_block3d/conv3d_1/Conv3D/ReadVariableOpReadVariableOp4conv_block3d_conv3d_1_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ę
conv_block3d/conv3d_1/Conv3DConv3D$conv_block3d/LeakyRelu:activations:03conv_block3d/conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

,conv_block3d/conv3d_1/BiasAdd/ReadVariableOpReadVariableOp5conv_block3d_conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ĺ
conv_block3d/conv3d_1/BiasAddBiasAdd%conv_block3d/conv3d_1/Conv3D:output:04conv_block3d/conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
conv_block3d/LeakyRelu_1	LeakyRelu&conv_block3d/conv3d_1/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=É
max_pooling3d/MaxPool3D	MaxPool3D&conv_block3d/LeakyRelu_1:activations:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
ksize	
*
paddingSAME*
strides	
°
-conv_block3d_2/conv3d_4/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_2_conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:@\*
dtype0ę
conv_block3d_2/conv3d_4/Conv3DConv3D max_pooling3d/MaxPool3D:output:05conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
˘
.conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_2_conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ë
conv_block3d_2/conv3d_4/BiasAddBiasAdd'conv_block3d_2/conv3d_4/Conv3D:output:06conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
conv_block3d_2/LeakyRelu	LeakyRelu(conv_block3d_2/conv3d_4/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=°
-conv_block3d_2/conv3d_5/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_2_conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0đ
conv_block3d_2/conv3d_5/Conv3DConv3D&conv_block3d_2/LeakyRelu:activations:05conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
˘
.conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_2_conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ë
conv_block3d_2/conv3d_5/BiasAddBiasAdd'conv_block3d_2/conv3d_5/Conv3D:output:06conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
conv_block3d_2/LeakyRelu_1	LeakyRelu(conv_block3d_2/conv3d_5/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=Ë
max_pooling3d_1/MaxPool3D	MaxPool3D(conv_block3d_2/LeakyRelu_1:activations:0*
T0*3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\*
ksize	
*
paddingSAME*
strides	
ą
-conv_block3d_4/conv3d_8/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_4_conv3d_8_conv3d_readvariableop_resource*+
_output_shapes
:\*
dtype0ë
conv_block3d_4/conv3d_8/Conv3DConv3D"max_pooling3d_1/MaxPool3D:output:05conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	
Ł
.conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_4_conv3d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ę
conv_block3d_4/conv3d_8/BiasAddBiasAdd'conv_block3d_4/conv3d_8/Conv3D:output:06conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
conv_block3d_4/LeakyRelu	LeakyRelu(conv_block3d_4/conv3d_8/BiasAdd:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=˛
-conv_block3d_4/conv3d_9/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_4_conv3d_9_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ď
conv_block3d_4/conv3d_9/Conv3DConv3D&conv_block3d_4/LeakyRelu:activations:05conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	
Ł
.conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_4_conv3d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ę
conv_block3d_4/conv3d_9/BiasAddBiasAdd'conv_block3d_4/conv3d_9/Conv3D:output:06conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
conv_block3d_4/LeakyRelu_1	LeakyRelu(conv_block3d_4/conv3d_9/BiasAdd:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=a
up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ĺ
up_sampling3d_1/splitSplit(up_sampling3d_1/split/split_dim:output:0(conv_block3d_4/LeakyRelu_1:activations:0*
T0*Ö
_output_shapesĂ
Ŕ:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@*
	num_split]
up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
up_sampling3d_1/concatConcatV2up_sampling3d_1/split:output:0up_sampling3d_1/split:output:0up_sampling3d_1/split:output:1up_sampling3d_1/split:output:1up_sampling3d_1/split:output:2up_sampling3d_1/split:output:2up_sampling3d_1/split:output:3up_sampling3d_1/split:output:3up_sampling3d_1/split:output:4up_sampling3d_1/split:output:4up_sampling3d_1/split:output:5up_sampling3d_1/split:output:5$up_sampling3d_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@c
!up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
up_sampling3d_1/split_1Split*up_sampling3d_1/split_1/split_dim:output:0up_sampling3d_1/concat:output:0*
T0*
_output_shapes
:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@*
	num_split@_
up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :$
up_sampling3d_1/concat_1ConcatV2 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:6 up_sampling3d_1/split_1:output:6 up_sampling3d_1/split_1:output:7 up_sampling3d_1/split_1:output:7 up_sampling3d_1/split_1:output:8 up_sampling3d_1/split_1:output:8 up_sampling3d_1/split_1:output:9 up_sampling3d_1/split_1:output:9!up_sampling3d_1/split_1:output:10!up_sampling3d_1/split_1:output:10!up_sampling3d_1/split_1:output:11!up_sampling3d_1/split_1:output:11!up_sampling3d_1/split_1:output:12!up_sampling3d_1/split_1:output:12!up_sampling3d_1/split_1:output:13!up_sampling3d_1/split_1:output:13!up_sampling3d_1/split_1:output:14!up_sampling3d_1/split_1:output:14!up_sampling3d_1/split_1:output:15!up_sampling3d_1/split_1:output:15!up_sampling3d_1/split_1:output:16!up_sampling3d_1/split_1:output:16!up_sampling3d_1/split_1:output:17!up_sampling3d_1/split_1:output:17!up_sampling3d_1/split_1:output:18!up_sampling3d_1/split_1:output:18!up_sampling3d_1/split_1:output:19!up_sampling3d_1/split_1:output:19!up_sampling3d_1/split_1:output:20!up_sampling3d_1/split_1:output:20!up_sampling3d_1/split_1:output:21!up_sampling3d_1/split_1:output:21!up_sampling3d_1/split_1:output:22!up_sampling3d_1/split_1:output:22!up_sampling3d_1/split_1:output:23!up_sampling3d_1/split_1:output:23!up_sampling3d_1/split_1:output:24!up_sampling3d_1/split_1:output:24!up_sampling3d_1/split_1:output:25!up_sampling3d_1/split_1:output:25!up_sampling3d_1/split_1:output:26!up_sampling3d_1/split_1:output:26!up_sampling3d_1/split_1:output:27!up_sampling3d_1/split_1:output:27!up_sampling3d_1/split_1:output:28!up_sampling3d_1/split_1:output:28!up_sampling3d_1/split_1:output:29!up_sampling3d_1/split_1:output:29!up_sampling3d_1/split_1:output:30!up_sampling3d_1/split_1:output:30!up_sampling3d_1/split_1:output:31!up_sampling3d_1/split_1:output:31!up_sampling3d_1/split_1:output:32!up_sampling3d_1/split_1:output:32!up_sampling3d_1/split_1:output:33!up_sampling3d_1/split_1:output:33!up_sampling3d_1/split_1:output:34!up_sampling3d_1/split_1:output:34!up_sampling3d_1/split_1:output:35!up_sampling3d_1/split_1:output:35!up_sampling3d_1/split_1:output:36!up_sampling3d_1/split_1:output:36!up_sampling3d_1/split_1:output:37!up_sampling3d_1/split_1:output:37!up_sampling3d_1/split_1:output:38!up_sampling3d_1/split_1:output:38!up_sampling3d_1/split_1:output:39!up_sampling3d_1/split_1:output:39!up_sampling3d_1/split_1:output:40!up_sampling3d_1/split_1:output:40!up_sampling3d_1/split_1:output:41!up_sampling3d_1/split_1:output:41!up_sampling3d_1/split_1:output:42!up_sampling3d_1/split_1:output:42!up_sampling3d_1/split_1:output:43!up_sampling3d_1/split_1:output:43!up_sampling3d_1/split_1:output:44!up_sampling3d_1/split_1:output:44!up_sampling3d_1/split_1:output:45!up_sampling3d_1/split_1:output:45!up_sampling3d_1/split_1:output:46!up_sampling3d_1/split_1:output:46!up_sampling3d_1/split_1:output:47!up_sampling3d_1/split_1:output:47!up_sampling3d_1/split_1:output:48!up_sampling3d_1/split_1:output:48!up_sampling3d_1/split_1:output:49!up_sampling3d_1/split_1:output:49!up_sampling3d_1/split_1:output:50!up_sampling3d_1/split_1:output:50!up_sampling3d_1/split_1:output:51!up_sampling3d_1/split_1:output:51!up_sampling3d_1/split_1:output:52!up_sampling3d_1/split_1:output:52!up_sampling3d_1/split_1:output:53!up_sampling3d_1/split_1:output:53!up_sampling3d_1/split_1:output:54!up_sampling3d_1/split_1:output:54!up_sampling3d_1/split_1:output:55!up_sampling3d_1/split_1:output:55!up_sampling3d_1/split_1:output:56!up_sampling3d_1/split_1:output:56!up_sampling3d_1/split_1:output:57!up_sampling3d_1/split_1:output:57!up_sampling3d_1/split_1:output:58!up_sampling3d_1/split_1:output:58!up_sampling3d_1/split_1:output:59!up_sampling3d_1/split_1:output:59!up_sampling3d_1/split_1:output:60!up_sampling3d_1/split_1:output:60!up_sampling3d_1/split_1:output:61!up_sampling3d_1/split_1:output:61!up_sampling3d_1/split_1:output:62!up_sampling3d_1/split_1:output:62!up_sampling3d_1/split_1:output:63!up_sampling3d_1/split_1:output:63&up_sampling3d_1/concat_1/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@c
!up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :â
up_sampling3d_1/split_2Split*up_sampling3d_1/split_2/split_dim:output:0!up_sampling3d_1/concat_1:output:0*
T0*Ö
_output_shapesĂ
Ŕ:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split@_
up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :$
up_sampling3d_1/concat_2ConcatV2 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:6 up_sampling3d_1/split_2:output:6 up_sampling3d_1/split_2:output:7 up_sampling3d_1/split_2:output:7 up_sampling3d_1/split_2:output:8 up_sampling3d_1/split_2:output:8 up_sampling3d_1/split_2:output:9 up_sampling3d_1/split_2:output:9!up_sampling3d_1/split_2:output:10!up_sampling3d_1/split_2:output:10!up_sampling3d_1/split_2:output:11!up_sampling3d_1/split_2:output:11!up_sampling3d_1/split_2:output:12!up_sampling3d_1/split_2:output:12!up_sampling3d_1/split_2:output:13!up_sampling3d_1/split_2:output:13!up_sampling3d_1/split_2:output:14!up_sampling3d_1/split_2:output:14!up_sampling3d_1/split_2:output:15!up_sampling3d_1/split_2:output:15!up_sampling3d_1/split_2:output:16!up_sampling3d_1/split_2:output:16!up_sampling3d_1/split_2:output:17!up_sampling3d_1/split_2:output:17!up_sampling3d_1/split_2:output:18!up_sampling3d_1/split_2:output:18!up_sampling3d_1/split_2:output:19!up_sampling3d_1/split_2:output:19!up_sampling3d_1/split_2:output:20!up_sampling3d_1/split_2:output:20!up_sampling3d_1/split_2:output:21!up_sampling3d_1/split_2:output:21!up_sampling3d_1/split_2:output:22!up_sampling3d_1/split_2:output:22!up_sampling3d_1/split_2:output:23!up_sampling3d_1/split_2:output:23!up_sampling3d_1/split_2:output:24!up_sampling3d_1/split_2:output:24!up_sampling3d_1/split_2:output:25!up_sampling3d_1/split_2:output:25!up_sampling3d_1/split_2:output:26!up_sampling3d_1/split_2:output:26!up_sampling3d_1/split_2:output:27!up_sampling3d_1/split_2:output:27!up_sampling3d_1/split_2:output:28!up_sampling3d_1/split_2:output:28!up_sampling3d_1/split_2:output:29!up_sampling3d_1/split_2:output:29!up_sampling3d_1/split_2:output:30!up_sampling3d_1/split_2:output:30!up_sampling3d_1/split_2:output:31!up_sampling3d_1/split_2:output:31!up_sampling3d_1/split_2:output:32!up_sampling3d_1/split_2:output:32!up_sampling3d_1/split_2:output:33!up_sampling3d_1/split_2:output:33!up_sampling3d_1/split_2:output:34!up_sampling3d_1/split_2:output:34!up_sampling3d_1/split_2:output:35!up_sampling3d_1/split_2:output:35!up_sampling3d_1/split_2:output:36!up_sampling3d_1/split_2:output:36!up_sampling3d_1/split_2:output:37!up_sampling3d_1/split_2:output:37!up_sampling3d_1/split_2:output:38!up_sampling3d_1/split_2:output:38!up_sampling3d_1/split_2:output:39!up_sampling3d_1/split_2:output:39!up_sampling3d_1/split_2:output:40!up_sampling3d_1/split_2:output:40!up_sampling3d_1/split_2:output:41!up_sampling3d_1/split_2:output:41!up_sampling3d_1/split_2:output:42!up_sampling3d_1/split_2:output:42!up_sampling3d_1/split_2:output:43!up_sampling3d_1/split_2:output:43!up_sampling3d_1/split_2:output:44!up_sampling3d_1/split_2:output:44!up_sampling3d_1/split_2:output:45!up_sampling3d_1/split_2:output:45!up_sampling3d_1/split_2:output:46!up_sampling3d_1/split_2:output:46!up_sampling3d_1/split_2:output:47!up_sampling3d_1/split_2:output:47!up_sampling3d_1/split_2:output:48!up_sampling3d_1/split_2:output:48!up_sampling3d_1/split_2:output:49!up_sampling3d_1/split_2:output:49!up_sampling3d_1/split_2:output:50!up_sampling3d_1/split_2:output:50!up_sampling3d_1/split_2:output:51!up_sampling3d_1/split_2:output:51!up_sampling3d_1/split_2:output:52!up_sampling3d_1/split_2:output:52!up_sampling3d_1/split_2:output:53!up_sampling3d_1/split_2:output:53!up_sampling3d_1/split_2:output:54!up_sampling3d_1/split_2:output:54!up_sampling3d_1/split_2:output:55!up_sampling3d_1/split_2:output:55!up_sampling3d_1/split_2:output:56!up_sampling3d_1/split_2:output:56!up_sampling3d_1/split_2:output:57!up_sampling3d_1/split_2:output:57!up_sampling3d_1/split_2:output:58!up_sampling3d_1/split_2:output:58!up_sampling3d_1/split_2:output:59!up_sampling3d_1/split_2:output:59!up_sampling3d_1/split_2:output:60!up_sampling3d_1/split_2:output:60!up_sampling3d_1/split_2:output:61!up_sampling3d_1/split_2:output:61!up_sampling3d_1/split_2:output:62!up_sampling3d_1/split_2:output:62!up_sampling3d_1/split_2:output:63!up_sampling3d_1/split_2:output:63&up_sampling3d_1/concat_2/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ű
concatenate_1/concatConcatV2!up_sampling3d_1/concat_2:output:0(conv_block3d_2/LeakyRelu_1:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Üą
-conv_block3d_3/conv3d_6/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_3_conv3d_6_conv3d_readvariableop_resource*+
_output_shapes
:Ü\*
dtype0ç
conv_block3d_3/conv3d_6/Conv3DConv3Dconcatenate_1/concat:output:05conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
˘
.conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_3_conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ë
conv_block3d_3/conv3d_6/BiasAddBiasAdd'conv_block3d_3/conv3d_6/Conv3D:output:06conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
conv_block3d_3/LeakyRelu	LeakyRelu(conv_block3d_3/conv3d_6/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=°
-conv_block3d_3/conv3d_7/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_3_conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0đ
conv_block3d_3/conv3d_7/Conv3DConv3D&conv_block3d_3/LeakyRelu:activations:05conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
˘
.conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_3_conv3d_7_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ë
conv_block3d_3/conv3d_7/BiasAddBiasAdd'conv_block3d_3/conv3d_7/Conv3D:output:06conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
conv_block3d_3/LeakyRelu_1	LeakyRelu(conv_block3d_3/conv3d_7/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=_
up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :­
up_sampling3d/splitSplit&up_sampling3d/split/split_dim:output:0(conv_block3d_3/LeakyRelu_1:activations:0*
T0*˘
_output_shapes
:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_split[
up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :á
up_sampling3d/concatConcatV2up_sampling3d/split:output:0up_sampling3d/split:output:0up_sampling3d/split:output:1up_sampling3d/split:output:1up_sampling3d/split:output:2up_sampling3d/split:output:2up_sampling3d/split:output:3up_sampling3d/split:output:3up_sampling3d/split:output:4up_sampling3d/split:output:4up_sampling3d/split:output:5up_sampling3d/split:output:5up_sampling3d/split:output:6up_sampling3d/split:output:6up_sampling3d/split:output:7up_sampling3d/split:output:7up_sampling3d/split:output:8up_sampling3d/split:output:8up_sampling3d/split:output:9up_sampling3d/split:output:9up_sampling3d/split:output:10up_sampling3d/split:output:10up_sampling3d/split:output:11up_sampling3d/split:output:11"up_sampling3d/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\a
up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :!
up_sampling3d/split_1Split(up_sampling3d/split_1/split_dim:output:0up_sampling3d/concat:output:0*
T0* 
_output_shapes 
 :˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_split]
up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :śC
up_sampling3d/concat_1ConcatV2up_sampling3d/split_1:output:0up_sampling3d/split_1:output:0up_sampling3d/split_1:output:1up_sampling3d/split_1:output:1up_sampling3d/split_1:output:2up_sampling3d/split_1:output:2up_sampling3d/split_1:output:3up_sampling3d/split_1:output:3up_sampling3d/split_1:output:4up_sampling3d/split_1:output:4up_sampling3d/split_1:output:5up_sampling3d/split_1:output:5up_sampling3d/split_1:output:6up_sampling3d/split_1:output:6up_sampling3d/split_1:output:7up_sampling3d/split_1:output:7up_sampling3d/split_1:output:8up_sampling3d/split_1:output:8up_sampling3d/split_1:output:9up_sampling3d/split_1:output:9up_sampling3d/split_1:output:10up_sampling3d/split_1:output:10up_sampling3d/split_1:output:11up_sampling3d/split_1:output:11up_sampling3d/split_1:output:12up_sampling3d/split_1:output:12up_sampling3d/split_1:output:13up_sampling3d/split_1:output:13up_sampling3d/split_1:output:14up_sampling3d/split_1:output:14up_sampling3d/split_1:output:15up_sampling3d/split_1:output:15up_sampling3d/split_1:output:16up_sampling3d/split_1:output:16up_sampling3d/split_1:output:17up_sampling3d/split_1:output:17up_sampling3d/split_1:output:18up_sampling3d/split_1:output:18up_sampling3d/split_1:output:19up_sampling3d/split_1:output:19up_sampling3d/split_1:output:20up_sampling3d/split_1:output:20up_sampling3d/split_1:output:21up_sampling3d/split_1:output:21up_sampling3d/split_1:output:22up_sampling3d/split_1:output:22up_sampling3d/split_1:output:23up_sampling3d/split_1:output:23up_sampling3d/split_1:output:24up_sampling3d/split_1:output:24up_sampling3d/split_1:output:25up_sampling3d/split_1:output:25up_sampling3d/split_1:output:26up_sampling3d/split_1:output:26up_sampling3d/split_1:output:27up_sampling3d/split_1:output:27up_sampling3d/split_1:output:28up_sampling3d/split_1:output:28up_sampling3d/split_1:output:29up_sampling3d/split_1:output:29up_sampling3d/split_1:output:30up_sampling3d/split_1:output:30up_sampling3d/split_1:output:31up_sampling3d/split_1:output:31up_sampling3d/split_1:output:32up_sampling3d/split_1:output:32up_sampling3d/split_1:output:33up_sampling3d/split_1:output:33up_sampling3d/split_1:output:34up_sampling3d/split_1:output:34up_sampling3d/split_1:output:35up_sampling3d/split_1:output:35up_sampling3d/split_1:output:36up_sampling3d/split_1:output:36up_sampling3d/split_1:output:37up_sampling3d/split_1:output:37up_sampling3d/split_1:output:38up_sampling3d/split_1:output:38up_sampling3d/split_1:output:39up_sampling3d/split_1:output:39up_sampling3d/split_1:output:40up_sampling3d/split_1:output:40up_sampling3d/split_1:output:41up_sampling3d/split_1:output:41up_sampling3d/split_1:output:42up_sampling3d/split_1:output:42up_sampling3d/split_1:output:43up_sampling3d/split_1:output:43up_sampling3d/split_1:output:44up_sampling3d/split_1:output:44up_sampling3d/split_1:output:45up_sampling3d/split_1:output:45up_sampling3d/split_1:output:46up_sampling3d/split_1:output:46up_sampling3d/split_1:output:47up_sampling3d/split_1:output:47up_sampling3d/split_1:output:48up_sampling3d/split_1:output:48up_sampling3d/split_1:output:49up_sampling3d/split_1:output:49up_sampling3d/split_1:output:50up_sampling3d/split_1:output:50up_sampling3d/split_1:output:51up_sampling3d/split_1:output:51up_sampling3d/split_1:output:52up_sampling3d/split_1:output:52up_sampling3d/split_1:output:53up_sampling3d/split_1:output:53up_sampling3d/split_1:output:54up_sampling3d/split_1:output:54up_sampling3d/split_1:output:55up_sampling3d/split_1:output:55up_sampling3d/split_1:output:56up_sampling3d/split_1:output:56up_sampling3d/split_1:output:57up_sampling3d/split_1:output:57up_sampling3d/split_1:output:58up_sampling3d/split_1:output:58up_sampling3d/split_1:output:59up_sampling3d/split_1:output:59up_sampling3d/split_1:output:60up_sampling3d/split_1:output:60up_sampling3d/split_1:output:61up_sampling3d/split_1:output:61up_sampling3d/split_1:output:62up_sampling3d/split_1:output:62up_sampling3d/split_1:output:63up_sampling3d/split_1:output:63up_sampling3d/split_1:output:64up_sampling3d/split_1:output:64up_sampling3d/split_1:output:65up_sampling3d/split_1:output:65up_sampling3d/split_1:output:66up_sampling3d/split_1:output:66up_sampling3d/split_1:output:67up_sampling3d/split_1:output:67up_sampling3d/split_1:output:68up_sampling3d/split_1:output:68up_sampling3d/split_1:output:69up_sampling3d/split_1:output:69up_sampling3d/split_1:output:70up_sampling3d/split_1:output:70up_sampling3d/split_1:output:71up_sampling3d/split_1:output:71up_sampling3d/split_1:output:72up_sampling3d/split_1:output:72up_sampling3d/split_1:output:73up_sampling3d/split_1:output:73up_sampling3d/split_1:output:74up_sampling3d/split_1:output:74up_sampling3d/split_1:output:75up_sampling3d/split_1:output:75up_sampling3d/split_1:output:76up_sampling3d/split_1:output:76up_sampling3d/split_1:output:77up_sampling3d/split_1:output:77up_sampling3d/split_1:output:78up_sampling3d/split_1:output:78up_sampling3d/split_1:output:79up_sampling3d/split_1:output:79up_sampling3d/split_1:output:80up_sampling3d/split_1:output:80up_sampling3d/split_1:output:81up_sampling3d/split_1:output:81up_sampling3d/split_1:output:82up_sampling3d/split_1:output:82up_sampling3d/split_1:output:83up_sampling3d/split_1:output:83up_sampling3d/split_1:output:84up_sampling3d/split_1:output:84up_sampling3d/split_1:output:85up_sampling3d/split_1:output:85up_sampling3d/split_1:output:86up_sampling3d/split_1:output:86up_sampling3d/split_1:output:87up_sampling3d/split_1:output:87up_sampling3d/split_1:output:88up_sampling3d/split_1:output:88up_sampling3d/split_1:output:89up_sampling3d/split_1:output:89up_sampling3d/split_1:output:90up_sampling3d/split_1:output:90up_sampling3d/split_1:output:91up_sampling3d/split_1:output:91up_sampling3d/split_1:output:92up_sampling3d/split_1:output:92up_sampling3d/split_1:output:93up_sampling3d/split_1:output:93up_sampling3d/split_1:output:94up_sampling3d/split_1:output:94up_sampling3d/split_1:output:95up_sampling3d/split_1:output:95up_sampling3d/split_1:output:96up_sampling3d/split_1:output:96up_sampling3d/split_1:output:97up_sampling3d/split_1:output:97up_sampling3d/split_1:output:98up_sampling3d/split_1:output:98up_sampling3d/split_1:output:99up_sampling3d/split_1:output:99 up_sampling3d/split_1:output:100 up_sampling3d/split_1:output:100 up_sampling3d/split_1:output:101 up_sampling3d/split_1:output:101 up_sampling3d/split_1:output:102 up_sampling3d/split_1:output:102 up_sampling3d/split_1:output:103 up_sampling3d/split_1:output:103 up_sampling3d/split_1:output:104 up_sampling3d/split_1:output:104 up_sampling3d/split_1:output:105 up_sampling3d/split_1:output:105 up_sampling3d/split_1:output:106 up_sampling3d/split_1:output:106 up_sampling3d/split_1:output:107 up_sampling3d/split_1:output:107 up_sampling3d/split_1:output:108 up_sampling3d/split_1:output:108 up_sampling3d/split_1:output:109 up_sampling3d/split_1:output:109 up_sampling3d/split_1:output:110 up_sampling3d/split_1:output:110 up_sampling3d/split_1:output:111 up_sampling3d/split_1:output:111 up_sampling3d/split_1:output:112 up_sampling3d/split_1:output:112 up_sampling3d/split_1:output:113 up_sampling3d/split_1:output:113 up_sampling3d/split_1:output:114 up_sampling3d/split_1:output:114 up_sampling3d/split_1:output:115 up_sampling3d/split_1:output:115 up_sampling3d/split_1:output:116 up_sampling3d/split_1:output:116 up_sampling3d/split_1:output:117 up_sampling3d/split_1:output:117 up_sampling3d/split_1:output:118 up_sampling3d/split_1:output:118 up_sampling3d/split_1:output:119 up_sampling3d/split_1:output:119 up_sampling3d/split_1:output:120 up_sampling3d/split_1:output:120 up_sampling3d/split_1:output:121 up_sampling3d/split_1:output:121 up_sampling3d/split_1:output:122 up_sampling3d/split_1:output:122 up_sampling3d/split_1:output:123 up_sampling3d/split_1:output:123 up_sampling3d/split_1:output:124 up_sampling3d/split_1:output:124 up_sampling3d/split_1:output:125 up_sampling3d/split_1:output:125 up_sampling3d/split_1:output:126 up_sampling3d/split_1:output:126 up_sampling3d/split_1:output:127 up_sampling3d/split_1:output:127$up_sampling3d/concat_1/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\a
up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :!
up_sampling3d/split_2Split(up_sampling3d/split_2/split_dim:output:0up_sampling3d/concat_1:output:0*
T0* 
_output_shapes 
 :˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_split]
up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :śC
up_sampling3d/concat_2ConcatV2up_sampling3d/split_2:output:0up_sampling3d/split_2:output:0up_sampling3d/split_2:output:1up_sampling3d/split_2:output:1up_sampling3d/split_2:output:2up_sampling3d/split_2:output:2up_sampling3d/split_2:output:3up_sampling3d/split_2:output:3up_sampling3d/split_2:output:4up_sampling3d/split_2:output:4up_sampling3d/split_2:output:5up_sampling3d/split_2:output:5up_sampling3d/split_2:output:6up_sampling3d/split_2:output:6up_sampling3d/split_2:output:7up_sampling3d/split_2:output:7up_sampling3d/split_2:output:8up_sampling3d/split_2:output:8up_sampling3d/split_2:output:9up_sampling3d/split_2:output:9up_sampling3d/split_2:output:10up_sampling3d/split_2:output:10up_sampling3d/split_2:output:11up_sampling3d/split_2:output:11up_sampling3d/split_2:output:12up_sampling3d/split_2:output:12up_sampling3d/split_2:output:13up_sampling3d/split_2:output:13up_sampling3d/split_2:output:14up_sampling3d/split_2:output:14up_sampling3d/split_2:output:15up_sampling3d/split_2:output:15up_sampling3d/split_2:output:16up_sampling3d/split_2:output:16up_sampling3d/split_2:output:17up_sampling3d/split_2:output:17up_sampling3d/split_2:output:18up_sampling3d/split_2:output:18up_sampling3d/split_2:output:19up_sampling3d/split_2:output:19up_sampling3d/split_2:output:20up_sampling3d/split_2:output:20up_sampling3d/split_2:output:21up_sampling3d/split_2:output:21up_sampling3d/split_2:output:22up_sampling3d/split_2:output:22up_sampling3d/split_2:output:23up_sampling3d/split_2:output:23up_sampling3d/split_2:output:24up_sampling3d/split_2:output:24up_sampling3d/split_2:output:25up_sampling3d/split_2:output:25up_sampling3d/split_2:output:26up_sampling3d/split_2:output:26up_sampling3d/split_2:output:27up_sampling3d/split_2:output:27up_sampling3d/split_2:output:28up_sampling3d/split_2:output:28up_sampling3d/split_2:output:29up_sampling3d/split_2:output:29up_sampling3d/split_2:output:30up_sampling3d/split_2:output:30up_sampling3d/split_2:output:31up_sampling3d/split_2:output:31up_sampling3d/split_2:output:32up_sampling3d/split_2:output:32up_sampling3d/split_2:output:33up_sampling3d/split_2:output:33up_sampling3d/split_2:output:34up_sampling3d/split_2:output:34up_sampling3d/split_2:output:35up_sampling3d/split_2:output:35up_sampling3d/split_2:output:36up_sampling3d/split_2:output:36up_sampling3d/split_2:output:37up_sampling3d/split_2:output:37up_sampling3d/split_2:output:38up_sampling3d/split_2:output:38up_sampling3d/split_2:output:39up_sampling3d/split_2:output:39up_sampling3d/split_2:output:40up_sampling3d/split_2:output:40up_sampling3d/split_2:output:41up_sampling3d/split_2:output:41up_sampling3d/split_2:output:42up_sampling3d/split_2:output:42up_sampling3d/split_2:output:43up_sampling3d/split_2:output:43up_sampling3d/split_2:output:44up_sampling3d/split_2:output:44up_sampling3d/split_2:output:45up_sampling3d/split_2:output:45up_sampling3d/split_2:output:46up_sampling3d/split_2:output:46up_sampling3d/split_2:output:47up_sampling3d/split_2:output:47up_sampling3d/split_2:output:48up_sampling3d/split_2:output:48up_sampling3d/split_2:output:49up_sampling3d/split_2:output:49up_sampling3d/split_2:output:50up_sampling3d/split_2:output:50up_sampling3d/split_2:output:51up_sampling3d/split_2:output:51up_sampling3d/split_2:output:52up_sampling3d/split_2:output:52up_sampling3d/split_2:output:53up_sampling3d/split_2:output:53up_sampling3d/split_2:output:54up_sampling3d/split_2:output:54up_sampling3d/split_2:output:55up_sampling3d/split_2:output:55up_sampling3d/split_2:output:56up_sampling3d/split_2:output:56up_sampling3d/split_2:output:57up_sampling3d/split_2:output:57up_sampling3d/split_2:output:58up_sampling3d/split_2:output:58up_sampling3d/split_2:output:59up_sampling3d/split_2:output:59up_sampling3d/split_2:output:60up_sampling3d/split_2:output:60up_sampling3d/split_2:output:61up_sampling3d/split_2:output:61up_sampling3d/split_2:output:62up_sampling3d/split_2:output:62up_sampling3d/split_2:output:63up_sampling3d/split_2:output:63up_sampling3d/split_2:output:64up_sampling3d/split_2:output:64up_sampling3d/split_2:output:65up_sampling3d/split_2:output:65up_sampling3d/split_2:output:66up_sampling3d/split_2:output:66up_sampling3d/split_2:output:67up_sampling3d/split_2:output:67up_sampling3d/split_2:output:68up_sampling3d/split_2:output:68up_sampling3d/split_2:output:69up_sampling3d/split_2:output:69up_sampling3d/split_2:output:70up_sampling3d/split_2:output:70up_sampling3d/split_2:output:71up_sampling3d/split_2:output:71up_sampling3d/split_2:output:72up_sampling3d/split_2:output:72up_sampling3d/split_2:output:73up_sampling3d/split_2:output:73up_sampling3d/split_2:output:74up_sampling3d/split_2:output:74up_sampling3d/split_2:output:75up_sampling3d/split_2:output:75up_sampling3d/split_2:output:76up_sampling3d/split_2:output:76up_sampling3d/split_2:output:77up_sampling3d/split_2:output:77up_sampling3d/split_2:output:78up_sampling3d/split_2:output:78up_sampling3d/split_2:output:79up_sampling3d/split_2:output:79up_sampling3d/split_2:output:80up_sampling3d/split_2:output:80up_sampling3d/split_2:output:81up_sampling3d/split_2:output:81up_sampling3d/split_2:output:82up_sampling3d/split_2:output:82up_sampling3d/split_2:output:83up_sampling3d/split_2:output:83up_sampling3d/split_2:output:84up_sampling3d/split_2:output:84up_sampling3d/split_2:output:85up_sampling3d/split_2:output:85up_sampling3d/split_2:output:86up_sampling3d/split_2:output:86up_sampling3d/split_2:output:87up_sampling3d/split_2:output:87up_sampling3d/split_2:output:88up_sampling3d/split_2:output:88up_sampling3d/split_2:output:89up_sampling3d/split_2:output:89up_sampling3d/split_2:output:90up_sampling3d/split_2:output:90up_sampling3d/split_2:output:91up_sampling3d/split_2:output:91up_sampling3d/split_2:output:92up_sampling3d/split_2:output:92up_sampling3d/split_2:output:93up_sampling3d/split_2:output:93up_sampling3d/split_2:output:94up_sampling3d/split_2:output:94up_sampling3d/split_2:output:95up_sampling3d/split_2:output:95up_sampling3d/split_2:output:96up_sampling3d/split_2:output:96up_sampling3d/split_2:output:97up_sampling3d/split_2:output:97up_sampling3d/split_2:output:98up_sampling3d/split_2:output:98up_sampling3d/split_2:output:99up_sampling3d/split_2:output:99 up_sampling3d/split_2:output:100 up_sampling3d/split_2:output:100 up_sampling3d/split_2:output:101 up_sampling3d/split_2:output:101 up_sampling3d/split_2:output:102 up_sampling3d/split_2:output:102 up_sampling3d/split_2:output:103 up_sampling3d/split_2:output:103 up_sampling3d/split_2:output:104 up_sampling3d/split_2:output:104 up_sampling3d/split_2:output:105 up_sampling3d/split_2:output:105 up_sampling3d/split_2:output:106 up_sampling3d/split_2:output:106 up_sampling3d/split_2:output:107 up_sampling3d/split_2:output:107 up_sampling3d/split_2:output:108 up_sampling3d/split_2:output:108 up_sampling3d/split_2:output:109 up_sampling3d/split_2:output:109 up_sampling3d/split_2:output:110 up_sampling3d/split_2:output:110 up_sampling3d/split_2:output:111 up_sampling3d/split_2:output:111 up_sampling3d/split_2:output:112 up_sampling3d/split_2:output:112 up_sampling3d/split_2:output:113 up_sampling3d/split_2:output:113 up_sampling3d/split_2:output:114 up_sampling3d/split_2:output:114 up_sampling3d/split_2:output:115 up_sampling3d/split_2:output:115 up_sampling3d/split_2:output:116 up_sampling3d/split_2:output:116 up_sampling3d/split_2:output:117 up_sampling3d/split_2:output:117 up_sampling3d/split_2:output:118 up_sampling3d/split_2:output:118 up_sampling3d/split_2:output:119 up_sampling3d/split_2:output:119 up_sampling3d/split_2:output:120 up_sampling3d/split_2:output:120 up_sampling3d/split_2:output:121 up_sampling3d/split_2:output:121 up_sampling3d/split_2:output:122 up_sampling3d/split_2:output:122 up_sampling3d/split_2:output:123 up_sampling3d/split_2:output:123 up_sampling3d/split_2:output:124 up_sampling3d/split_2:output:124 up_sampling3d/split_2:output:125 up_sampling3d/split_2:output:125 up_sampling3d/split_2:output:126 up_sampling3d/split_2:output:126 up_sampling3d/split_2:output:127 up_sampling3d/split_2:output:127$up_sampling3d/concat_2/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ó
concatenate/concatConcatV2up_sampling3d/concat_2:output:0&conv_block3d/LeakyRelu_1:activations:0 concatenate/concat/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙ą
-conv_block3d_1/conv3d_2/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_1_conv3d_2_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0ĺ
conv_block3d_1/conv3d_2/Conv3DConv3Dconcatenate/concat:output:05conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
˘
.conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_1_conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ë
conv_block3d_1/conv3d_2/BiasAddBiasAdd'conv_block3d_1/conv3d_2/Conv3D:output:06conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
conv_block3d_1/LeakyRelu	LeakyRelu(conv_block3d_1/conv3d_2/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=°
-conv_block3d_1/conv3d_3/Conv3D/ReadVariableOpReadVariableOp6conv_block3d_1_conv3d_3_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0đ
conv_block3d_1/conv3d_3/Conv3DConv3D&conv_block3d_1/LeakyRelu:activations:05conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
˘
.conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOpReadVariableOp7conv_block3d_1_conv3d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ë
conv_block3d_1/conv3d_3/BiasAddBiasAdd'conv_block3d_1/conv3d_3/Conv3D:output:06conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
conv_block3d_1/LeakyRelu_1	LeakyRelu(conv_block3d_1/conv3d_3/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=˛
.conv_block3d_5/conv3d_10/Conv3D/ReadVariableOpReadVariableOp7conv_block3d_5_conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0ô
conv_block3d_5/conv3d_10/Conv3DConv3D(conv_block3d_1/LeakyRelu_1:activations:06conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides	
¤
/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOpReadVariableOp8conv_block3d_5_conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Î
 conv_block3d_5/conv3d_10/BiasAddBiasAdd(conv_block3d_5/conv3d_10/Conv3D:output:07conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
IdentityIdentity)conv_block3d_5/conv3d_10/BiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙ç
NoOpNoOp+^conv_block3d/conv3d/BiasAdd/ReadVariableOp*^conv_block3d/conv3d/Conv3D/ReadVariableOp-^conv_block3d/conv3d_1/BiasAdd/ReadVariableOp,^conv_block3d/conv3d_1/Conv3D/ReadVariableOp/^conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp.^conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp/^conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp.^conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp/^conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp.^conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp/^conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp.^conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp/^conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp.^conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp/^conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp.^conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp/^conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp.^conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp/^conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp.^conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp0^conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp/^conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : 2X
*conv_block3d/conv3d/BiasAdd/ReadVariableOp*conv_block3d/conv3d/BiasAdd/ReadVariableOp2V
)conv_block3d/conv3d/Conv3D/ReadVariableOp)conv_block3d/conv3d/Conv3D/ReadVariableOp2\
,conv_block3d/conv3d_1/BiasAdd/ReadVariableOp,conv_block3d/conv3d_1/BiasAdd/ReadVariableOp2Z
+conv_block3d/conv3d_1/Conv3D/ReadVariableOp+conv_block3d/conv3d_1/Conv3D/ReadVariableOp2`
.conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp.conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp2^
-conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp-conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp2`
.conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp.conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp2^
-conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp-conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp2`
.conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp.conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp2^
-conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp-conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp2`
.conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp.conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp2^
-conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp-conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp2`
.conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp.conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp2^
-conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp-conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp2`
.conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp.conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp2^
-conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp-conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp2`
.conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp.conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp2^
-conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp-conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp2`
.conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp.conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp2^
-conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp-conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp2b
/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp2`
.conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp.conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ęU
h
L__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_1133232

inputs
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ł
splitSplitsplit/split_dim:output:0inputs*
T0*Ö
_output_shapesĂ
Ŕ:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@*
	num_splitM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :°
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5concat/axis:output:0*
N*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :đ
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*
_output_shapes
:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@*
	num_split@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :â
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9split_1:output:10split_1:output:10split_1:output:11split_1:output:11split_1:output:12split_1:output:12split_1:output:13split_1:output:13split_1:output:14split_1:output:14split_1:output:15split_1:output:15split_1:output:16split_1:output:16split_1:output:17split_1:output:17split_1:output:18split_1:output:18split_1:output:19split_1:output:19split_1:output:20split_1:output:20split_1:output:21split_1:output:21split_1:output:22split_1:output:22split_1:output:23split_1:output:23split_1:output:24split_1:output:24split_1:output:25split_1:output:25split_1:output:26split_1:output:26split_1:output:27split_1:output:27split_1:output:28split_1:output:28split_1:output:29split_1:output:29split_1:output:30split_1:output:30split_1:output:31split_1:output:31split_1:output:32split_1:output:32split_1:output:33split_1:output:33split_1:output:34split_1:output:34split_1:output:35split_1:output:35split_1:output:36split_1:output:36split_1:output:37split_1:output:37split_1:output:38split_1:output:38split_1:output:39split_1:output:39split_1:output:40split_1:output:40split_1:output:41split_1:output:41split_1:output:42split_1:output:42split_1:output:43split_1:output:43split_1:output:44split_1:output:44split_1:output:45split_1:output:45split_1:output:46split_1:output:46split_1:output:47split_1:output:47split_1:output:48split_1:output:48split_1:output:49split_1:output:49split_1:output:50split_1:output:50split_1:output:51split_1:output:51split_1:output:52split_1:output:52split_1:output:53split_1:output:53split_1:output:54split_1:output:54split_1:output:55split_1:output:55split_1:output:56split_1:output:56split_1:output:57split_1:output:57split_1:output:58split_1:output:58split_1:output:59split_1:output:59split_1:output:60split_1:output:60split_1:output:61split_1:output:61split_1:output:62split_1:output:62split_1:output:63split_1:output:63concat_1/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˛
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*Ö
_output_shapesĂ
Ŕ:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split@O
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :ă
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9split_2:output:10split_2:output:10split_2:output:11split_2:output:11split_2:output:12split_2:output:12split_2:output:13split_2:output:13split_2:output:14split_2:output:14split_2:output:15split_2:output:15split_2:output:16split_2:output:16split_2:output:17split_2:output:17split_2:output:18split_2:output:18split_2:output:19split_2:output:19split_2:output:20split_2:output:20split_2:output:21split_2:output:21split_2:output:22split_2:output:22split_2:output:23split_2:output:23split_2:output:24split_2:output:24split_2:output:25split_2:output:25split_2:output:26split_2:output:26split_2:output:27split_2:output:27split_2:output:28split_2:output:28split_2:output:29split_2:output:29split_2:output:30split_2:output:30split_2:output:31split_2:output:31split_2:output:32split_2:output:32split_2:output:33split_2:output:33split_2:output:34split_2:output:34split_2:output:35split_2:output:35split_2:output:36split_2:output:36split_2:output:37split_2:output:37split_2:output:38split_2:output:38split_2:output:39split_2:output:39split_2:output:40split_2:output:40split_2:output:41split_2:output:41split_2:output:42split_2:output:42split_2:output:43split_2:output:43split_2:output:44split_2:output:44split_2:output:45split_2:output:45split_2:output:46split_2:output:46split_2:output:47split_2:output:47split_2:output:48split_2:output:48split_2:output:49split_2:output:49split_2:output:50split_2:output:50split_2:output:51split_2:output:51split_2:output:52split_2:output:52split_2:output:53split_2:output:53split_2:output:54split_2:output:54split_2:output:55split_2:output:55split_2:output:56split_2:output:56split_2:output:57split_2:output:57split_2:output:58split_2:output:58split_2:output:59split_2:output:59split_2:output:60split_2:output:60split_2:output:61split_2:output:61split_2:output:62split_2:output:62split_2:output:63split_2:output:63concat_2/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙h
IdentityIdentityconcat_2:output:0*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙@@:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
Ń


E__inference_conv3d_1_layer_call_and_return_conditional_losses_1132164

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

Š
0__inference_conv_block3d_5_layer_call_fn_1136639

inputs%
unknown:@
	unknown_0:
identity˘StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1132978}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

Ń
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132652

inputs/
conv3d_2_1132628:@
conv3d_2_1132630:@.
conv3d_3_1132645:@@
conv3d_3_1132647:@
identity˘ conv3d_2/StatefulPartitionedCall˘ conv3d_3/StatefulPartitionedCall
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_2_1132628conv3d_2_1132630*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_2_layer_call_and_return_conditional_losses_1132627
	LeakyRelu	LeakyRelu)conv3d_2/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_3_1132645conv3d_3_1132647*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_3_layer_call_and_return_conditional_losses_1132644
LeakyRelu_1	LeakyRelu)conv3d_3/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
NoOpNoOp!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙: : : : 2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë
ä
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1136730

inputsC
%conv3d_conv3d_readvariableop_resource:@4
&conv3d_biasadd_readvariableop_resource:@E
'conv3d_1_conv3d_readvariableop_resource:@@6
(conv3d_1_biasadd_readvariableop_resource:@
identity˘conv3d/BiasAdd/ReadVariableOp˘conv3d/Conv3D/ReadVariableOp˘conv3d_1/BiasAdd/ReadVariableOp˘conv3d_1/Conv3D/ReadVariableOp
conv3d/Conv3D/ReadVariableOpReadVariableOp%conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0Ž
conv3d/Conv3DConv3Dinputs$conv3d/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

conv3d/BiasAdd/ReadVariableOpReadVariableOp&conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv3d/BiasAddBiasAddconv3d/Conv3D:output:0%conv3d/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@v
	LeakyRelu	LeakyReluconv3d/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
conv3d_1/Conv3D/ReadVariableOpReadVariableOp'conv3d_1_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Ă
conv3d_1/Conv3DConv3DLeakyRelu:activations:0&conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

conv3d_1/BiasAdd/ReadVariableOpReadVariableOp(conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv3d_1/BiasAddBiasAddconv3d_1/Conv3D:output:0'conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@z
LeakyRelu_1	LeakyReluconv3d_1/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@Č
NoOpNoOp^conv3d/BiasAdd/ReadVariableOp^conv3d/Conv3D/ReadVariableOp ^conv3d_1/BiasAdd/ReadVariableOp^conv3d_1/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙: : : : 2>
conv3d/BiasAdd/ReadVariableOpconv3d/BiasAdd/ReadVariableOp2<
conv3d/Conv3D/ReadVariableOpconv3d/Conv3D/ReadVariableOp2B
conv3d_1/BiasAdd/ReadVariableOpconv3d_1/BiasAdd/ReadVariableOp2@
conv3d_1/Conv3D/ReadVariableOpconv3d_1/Conv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ď
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1136960

inputsF
'conv3d_6_conv3d_readvariableop_resource:Ü\6
(conv3d_6_biasadd_readvariableop_resource:\E
'conv3d_7_conv3d_readvariableop_resource:\\6
(conv3d_7_biasadd_readvariableop_resource:\
identity˘conv3d_6/BiasAdd/ReadVariableOp˘conv3d_6/Conv3D/ReadVariableOp˘conv3d_7/BiasAdd/ReadVariableOp˘conv3d_7/Conv3D/ReadVariableOp
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource*+
_output_shapes
:Ü\*
dtype0˛
conv3d_6/Conv3DConv3Dinputs&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	

conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\x
	LeakyRelu	LeakyReluconv3d_6/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
conv3d_7/Conv3D/ReadVariableOpReadVariableOp'conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0Ă
conv3d_7/Conv3DConv3DLeakyRelu:activations:0&conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	

conv3d_7/BiasAdd/ReadVariableOpReadVariableOp(conv3d_7_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
conv3d_7/BiasAddBiasAddconv3d_7/Conv3D:output:0'conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\z
LeakyRelu_1	LeakyReluconv3d_7/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\Ě
NoOpNoOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp ^conv3d_7/BiasAdd/ReadVariableOp^conv3d_7/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙Ü: : : : 2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2B
conv3d_7/BiasAdd/ReadVariableOpconv3d_7/BiasAdd/ReadVariableOp2@
conv3d_7/Conv3D/ReadVariableOpconv3d_7/Conv3D/ReadVariableOp:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
 
_user_specified_nameinputs
ű
ń
0__inference_conv_block3d_4_layer_call_fn_1132578
input_1&
unknown:\
	unknown_0:	)
	unknown_1:
	unknown_2:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132554|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙@@\: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
!
_user_specified_name	input_1
Ň


F__inference_conv3d_10_layer_call_and_return_conditional_losses_1137481

inputs<
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ë
ä
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1136712

inputsC
%conv3d_conv3d_readvariableop_resource:@4
&conv3d_biasadd_readvariableop_resource:@E
'conv3d_1_conv3d_readvariableop_resource:@@6
(conv3d_1_biasadd_readvariableop_resource:@
identity˘conv3d/BiasAdd/ReadVariableOp˘conv3d/Conv3D/ReadVariableOp˘conv3d_1/BiasAdd/ReadVariableOp˘conv3d_1/Conv3D/ReadVariableOp
conv3d/Conv3D/ReadVariableOpReadVariableOp%conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0Ž
conv3d/Conv3DConv3Dinputs$conv3d/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

conv3d/BiasAdd/ReadVariableOpReadVariableOp&conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv3d/BiasAddBiasAddconv3d/Conv3D:output:0%conv3d/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@v
	LeakyRelu	LeakyReluconv3d/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
conv3d_1/Conv3D/ReadVariableOpReadVariableOp'conv3d_1_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Ă
conv3d_1/Conv3DConv3DLeakyRelu:activations:0&conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

conv3d_1/BiasAdd/ReadVariableOpReadVariableOp(conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv3d_1/BiasAddBiasAddconv3d_1/Conv3D:output:0'conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@z
LeakyRelu_1	LeakyReluconv3d_1/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@Č
NoOpNoOp^conv3d/BiasAdd/ReadVariableOp^conv3d/Conv3D/ReadVariableOp ^conv3d_1/BiasAdd/ReadVariableOp^conv3d_1/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙: : : : 2>
conv3d/BiasAdd/ReadVariableOpconv3d/BiasAdd/ReadVariableOp2<
conv3d/Conv3D/ReadVariableOpconv3d/Conv3D/ReadVariableOp2B
conv3d_1/BiasAdd/ReadVariableOpconv3d_1/BiasAdd/ReadVariableOp2@
conv3d_1/Conv3D/ReadVariableOpconv3d_1/Conv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ő


E__inference_conv3d_6_layer_call_and_return_conditional_losses_1137652

inputs=
conv3d_readvariableop_resource:Ü\-
biasadd_readvariableop_resource:\
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:Ü\*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: ˙˙˙˙˙˙˙˙˙Ü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
 
_user_specified_nameinputs

Ł
*__inference_conv3d_1_layer_call_fn_1137509

inputs%
unknown:@@
	unknown_0:@
identity˘StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_1_layer_call_and_return_conditional_losses_1132164}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ó
M
1__inference_max_pooling3d_1_layer_call_fn_1136993

inputs
identityě
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1132951
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: {
W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ü
ě
0__inference_conv_block3d_3_layer_call_fn_1136929

inputs&
unknown:Ü\
	unknown_0:\'
	unknown_1:\\
	unknown_2:\
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132812}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙Ü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
 
_user_specified_nameinputs
´˙

B__inference_model_layer_call_and_return_conditional_losses_1135014

inputsX
:u_net3d_conv_block3d_conv3d_conv3d_readvariableop_resource:@I
;u_net3d_conv_block3d_conv3d_biasadd_readvariableop_resource:@Z
<u_net3d_conv_block3d_conv3d_1_conv3d_readvariableop_resource:@@K
=u_net3d_conv_block3d_conv3d_1_biasadd_readvariableop_resource:@\
>u_net3d_conv_block3d_2_conv3d_4_conv3d_readvariableop_resource:@\M
?u_net3d_conv_block3d_2_conv3d_4_biasadd_readvariableop_resource:\\
>u_net3d_conv_block3d_2_conv3d_5_conv3d_readvariableop_resource:\\M
?u_net3d_conv_block3d_2_conv3d_5_biasadd_readvariableop_resource:\]
>u_net3d_conv_block3d_4_conv3d_8_conv3d_readvariableop_resource:\N
?u_net3d_conv_block3d_4_conv3d_8_biasadd_readvariableop_resource:	^
>u_net3d_conv_block3d_4_conv3d_9_conv3d_readvariableop_resource:N
?u_net3d_conv_block3d_4_conv3d_9_biasadd_readvariableop_resource:	]
>u_net3d_conv_block3d_3_conv3d_6_conv3d_readvariableop_resource:Ü\M
?u_net3d_conv_block3d_3_conv3d_6_biasadd_readvariableop_resource:\\
>u_net3d_conv_block3d_3_conv3d_7_conv3d_readvariableop_resource:\\M
?u_net3d_conv_block3d_3_conv3d_7_biasadd_readvariableop_resource:\]
>u_net3d_conv_block3d_1_conv3d_2_conv3d_readvariableop_resource:@M
?u_net3d_conv_block3d_1_conv3d_2_biasadd_readvariableop_resource:@\
>u_net3d_conv_block3d_1_conv3d_3_conv3d_readvariableop_resource:@@M
?u_net3d_conv_block3d_1_conv3d_3_biasadd_readvariableop_resource:@]
?u_net3d_conv_block3d_5_conv3d_10_conv3d_readvariableop_resource:@N
@u_net3d_conv_block3d_5_conv3d_10_biasadd_readvariableop_resource:
identity˘2u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp˘1u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp˘4u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp˘3u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp˘6u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp˘5u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp˘7u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp˘6u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp¸
1u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOpReadVariableOp:u_net3d_conv_block3d_conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0Ď
"u_net3d/conv_block3d/conv3d/Conv3DConv3Dinputs9u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
Ş
2u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOpReadVariableOp;u_net3d_conv_block3d_conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Î
#u_net3d/conv_block3d/conv3d/BiasAddBiasAdd+u_net3d/conv_block3d/conv3d/Conv3D:output:0:u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@
u_net3d/conv_block3d/LeakyRelu	LeakyRelu,u_net3d/conv_block3d/conv3d/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=ź
3u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOpReadVariableOp<u_net3d_conv_block3d_conv3d_1_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0ů
$u_net3d/conv_block3d/conv3d_1/Conv3DConv3D,u_net3d/conv_block3d/LeakyRelu:activations:0;u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
Ž
4u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOpReadVariableOp=u_net3d_conv_block3d_conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ô
%u_net3d/conv_block3d/conv3d_1/BiasAddBiasAdd-u_net3d/conv_block3d/conv3d_1/Conv3D:output:0<u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@
 u_net3d/conv_block3d/LeakyRelu_1	LeakyRelu.u_net3d/conv_block3d/conv3d_1/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=Đ
u_net3d/max_pooling3d/MaxPool3D	MaxPool3D.u_net3d/conv_block3d/LeakyRelu_1:activations:0*
T0*,
_output_shapes
:@*
ksize	
*
paddingSAME*
strides	
Ŕ
5u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_2_conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:@\*
dtype0ů
&u_net3d/conv_block3d_2/conv3d_4/Conv3DConv3D(u_net3d/max_pooling3d/MaxPool3D:output:0=u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_2_conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ú
'u_net3d/conv_block3d_2/conv3d_4/BiasAddBiasAdd/u_net3d/conv_block3d_2/conv3d_4/Conv3D:output:0>u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\
 u_net3d/conv_block3d_2/LeakyRelu	LeakyRelu0u_net3d/conv_block3d_2/conv3d_4/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=Ŕ
5u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_2_conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0˙
&u_net3d/conv_block3d_2/conv3d_5/Conv3DConv3D.u_net3d/conv_block3d_2/LeakyRelu:activations:0=u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_2_conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ú
'u_net3d/conv_block3d_2/conv3d_5/BiasAddBiasAdd/u_net3d/conv_block3d_2/conv3d_5/Conv3D:output:0>u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\
"u_net3d/conv_block3d_2/LeakyRelu_1	LeakyRelu0u_net3d/conv_block3d_2/conv3d_5/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=Ň
!u_net3d/max_pooling3d_1/MaxPool3D	MaxPool3D0u_net3d/conv_block3d_2/LeakyRelu_1:activations:0*
T0**
_output_shapes
:@@\*
ksize	
*
paddingSAME*
strides	
Á
5u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_4_conv3d_8_conv3d_readvariableop_resource*+
_output_shapes
:\*
dtype0ú
&u_net3d/conv_block3d_4/conv3d_8/Conv3DConv3D*u_net3d/max_pooling3d_1/MaxPool3D:output:0=u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@*
paddingSAME*
strides	
ł
6u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_4_conv3d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ů
'u_net3d/conv_block3d_4/conv3d_8/BiasAddBiasAdd/u_net3d/conv_block3d_4/conv3d_8/Conv3D:output:0>u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@
 u_net3d/conv_block3d_4/LeakyRelu	LeakyRelu0u_net3d/conv_block3d_4/conv3d_8/BiasAdd:output:0*+
_output_shapes
:@@*
alpha%ÍĚĚ=Â
5u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_4_conv3d_9_conv3d_readvariableop_resource*,
_output_shapes
:*
dtype0ţ
&u_net3d/conv_block3d_4/conv3d_9/Conv3DConv3D.u_net3d/conv_block3d_4/LeakyRelu:activations:0=u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@*
paddingSAME*
strides	
ł
6u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_4_conv3d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ů
'u_net3d/conv_block3d_4/conv3d_9/BiasAddBiasAdd/u_net3d/conv_block3d_4/conv3d_9/Conv3D:output:0>u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:@@
"u_net3d/conv_block3d_4/LeakyRelu_1	LeakyRelu0u_net3d/conv_block3d_4/conv3d_9/BiasAdd:output:0*+
_output_shapes
:@@*
alpha%ÍĚĚ=i
'u_net3d/up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ç
u_net3d/up_sampling3d_1/splitSplit0u_net3d/up_sampling3d_1/split/split_dim:output:00u_net3d/conv_block3d_4/LeakyRelu_1:activations:0*
T0* 
_output_shapes
:@@:@@:@@:@@:@@:@@*
	num_splite
#u_net3d/up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :÷
u_net3d/up_sampling3d_1/concatConcatV2&u_net3d/up_sampling3d_1/split:output:0&u_net3d/up_sampling3d_1/split:output:0&u_net3d/up_sampling3d_1/split:output:1&u_net3d/up_sampling3d_1/split:output:1&u_net3d/up_sampling3d_1/split:output:2&u_net3d/up_sampling3d_1/split:output:2&u_net3d/up_sampling3d_1/split:output:3&u_net3d/up_sampling3d_1/split:output:3&u_net3d/up_sampling3d_1/split:output:4&u_net3d/up_sampling3d_1/split:output:4&u_net3d/up_sampling3d_1/split:output:5&u_net3d/up_sampling3d_1/split:output:5,u_net3d/up_sampling3d_1/concat/axis:output:0*
N*
T0*+
_output_shapes
:@@k
)u_net3d/up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ř
u_net3d/up_sampling3d_1/split_1Split2u_net3d/up_sampling3d_1/split_1/split_dim:output:0'u_net3d/up_sampling3d_1/concat:output:0*
T0*Ö
_output_shapesĂ
Ŕ:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@:@*
	num_split@g
%u_net3d/up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :,
 u_net3d/up_sampling3d_1/concat_1ConcatV2(u_net3d/up_sampling3d_1/split_1:output:0(u_net3d/up_sampling3d_1/split_1:output:0(u_net3d/up_sampling3d_1/split_1:output:1(u_net3d/up_sampling3d_1/split_1:output:1(u_net3d/up_sampling3d_1/split_1:output:2(u_net3d/up_sampling3d_1/split_1:output:2(u_net3d/up_sampling3d_1/split_1:output:3(u_net3d/up_sampling3d_1/split_1:output:3(u_net3d/up_sampling3d_1/split_1:output:4(u_net3d/up_sampling3d_1/split_1:output:4(u_net3d/up_sampling3d_1/split_1:output:5(u_net3d/up_sampling3d_1/split_1:output:5(u_net3d/up_sampling3d_1/split_1:output:6(u_net3d/up_sampling3d_1/split_1:output:6(u_net3d/up_sampling3d_1/split_1:output:7(u_net3d/up_sampling3d_1/split_1:output:7(u_net3d/up_sampling3d_1/split_1:output:8(u_net3d/up_sampling3d_1/split_1:output:8(u_net3d/up_sampling3d_1/split_1:output:9(u_net3d/up_sampling3d_1/split_1:output:9)u_net3d/up_sampling3d_1/split_1:output:10)u_net3d/up_sampling3d_1/split_1:output:10)u_net3d/up_sampling3d_1/split_1:output:11)u_net3d/up_sampling3d_1/split_1:output:11)u_net3d/up_sampling3d_1/split_1:output:12)u_net3d/up_sampling3d_1/split_1:output:12)u_net3d/up_sampling3d_1/split_1:output:13)u_net3d/up_sampling3d_1/split_1:output:13)u_net3d/up_sampling3d_1/split_1:output:14)u_net3d/up_sampling3d_1/split_1:output:14)u_net3d/up_sampling3d_1/split_1:output:15)u_net3d/up_sampling3d_1/split_1:output:15)u_net3d/up_sampling3d_1/split_1:output:16)u_net3d/up_sampling3d_1/split_1:output:16)u_net3d/up_sampling3d_1/split_1:output:17)u_net3d/up_sampling3d_1/split_1:output:17)u_net3d/up_sampling3d_1/split_1:output:18)u_net3d/up_sampling3d_1/split_1:output:18)u_net3d/up_sampling3d_1/split_1:output:19)u_net3d/up_sampling3d_1/split_1:output:19)u_net3d/up_sampling3d_1/split_1:output:20)u_net3d/up_sampling3d_1/split_1:output:20)u_net3d/up_sampling3d_1/split_1:output:21)u_net3d/up_sampling3d_1/split_1:output:21)u_net3d/up_sampling3d_1/split_1:output:22)u_net3d/up_sampling3d_1/split_1:output:22)u_net3d/up_sampling3d_1/split_1:output:23)u_net3d/up_sampling3d_1/split_1:output:23)u_net3d/up_sampling3d_1/split_1:output:24)u_net3d/up_sampling3d_1/split_1:output:24)u_net3d/up_sampling3d_1/split_1:output:25)u_net3d/up_sampling3d_1/split_1:output:25)u_net3d/up_sampling3d_1/split_1:output:26)u_net3d/up_sampling3d_1/split_1:output:26)u_net3d/up_sampling3d_1/split_1:output:27)u_net3d/up_sampling3d_1/split_1:output:27)u_net3d/up_sampling3d_1/split_1:output:28)u_net3d/up_sampling3d_1/split_1:output:28)u_net3d/up_sampling3d_1/split_1:output:29)u_net3d/up_sampling3d_1/split_1:output:29)u_net3d/up_sampling3d_1/split_1:output:30)u_net3d/up_sampling3d_1/split_1:output:30)u_net3d/up_sampling3d_1/split_1:output:31)u_net3d/up_sampling3d_1/split_1:output:31)u_net3d/up_sampling3d_1/split_1:output:32)u_net3d/up_sampling3d_1/split_1:output:32)u_net3d/up_sampling3d_1/split_1:output:33)u_net3d/up_sampling3d_1/split_1:output:33)u_net3d/up_sampling3d_1/split_1:output:34)u_net3d/up_sampling3d_1/split_1:output:34)u_net3d/up_sampling3d_1/split_1:output:35)u_net3d/up_sampling3d_1/split_1:output:35)u_net3d/up_sampling3d_1/split_1:output:36)u_net3d/up_sampling3d_1/split_1:output:36)u_net3d/up_sampling3d_1/split_1:output:37)u_net3d/up_sampling3d_1/split_1:output:37)u_net3d/up_sampling3d_1/split_1:output:38)u_net3d/up_sampling3d_1/split_1:output:38)u_net3d/up_sampling3d_1/split_1:output:39)u_net3d/up_sampling3d_1/split_1:output:39)u_net3d/up_sampling3d_1/split_1:output:40)u_net3d/up_sampling3d_1/split_1:output:40)u_net3d/up_sampling3d_1/split_1:output:41)u_net3d/up_sampling3d_1/split_1:output:41)u_net3d/up_sampling3d_1/split_1:output:42)u_net3d/up_sampling3d_1/split_1:output:42)u_net3d/up_sampling3d_1/split_1:output:43)u_net3d/up_sampling3d_1/split_1:output:43)u_net3d/up_sampling3d_1/split_1:output:44)u_net3d/up_sampling3d_1/split_1:output:44)u_net3d/up_sampling3d_1/split_1:output:45)u_net3d/up_sampling3d_1/split_1:output:45)u_net3d/up_sampling3d_1/split_1:output:46)u_net3d/up_sampling3d_1/split_1:output:46)u_net3d/up_sampling3d_1/split_1:output:47)u_net3d/up_sampling3d_1/split_1:output:47)u_net3d/up_sampling3d_1/split_1:output:48)u_net3d/up_sampling3d_1/split_1:output:48)u_net3d/up_sampling3d_1/split_1:output:49)u_net3d/up_sampling3d_1/split_1:output:49)u_net3d/up_sampling3d_1/split_1:output:50)u_net3d/up_sampling3d_1/split_1:output:50)u_net3d/up_sampling3d_1/split_1:output:51)u_net3d/up_sampling3d_1/split_1:output:51)u_net3d/up_sampling3d_1/split_1:output:52)u_net3d/up_sampling3d_1/split_1:output:52)u_net3d/up_sampling3d_1/split_1:output:53)u_net3d/up_sampling3d_1/split_1:output:53)u_net3d/up_sampling3d_1/split_1:output:54)u_net3d/up_sampling3d_1/split_1:output:54)u_net3d/up_sampling3d_1/split_1:output:55)u_net3d/up_sampling3d_1/split_1:output:55)u_net3d/up_sampling3d_1/split_1:output:56)u_net3d/up_sampling3d_1/split_1:output:56)u_net3d/up_sampling3d_1/split_1:output:57)u_net3d/up_sampling3d_1/split_1:output:57)u_net3d/up_sampling3d_1/split_1:output:58)u_net3d/up_sampling3d_1/split_1:output:58)u_net3d/up_sampling3d_1/split_1:output:59)u_net3d/up_sampling3d_1/split_1:output:59)u_net3d/up_sampling3d_1/split_1:output:60)u_net3d/up_sampling3d_1/split_1:output:60)u_net3d/up_sampling3d_1/split_1:output:61)u_net3d/up_sampling3d_1/split_1:output:61)u_net3d/up_sampling3d_1/split_1:output:62)u_net3d/up_sampling3d_1/split_1:output:62)u_net3d/up_sampling3d_1/split_1:output:63)u_net3d/up_sampling3d_1/split_1:output:63.u_net3d/up_sampling3d_1/concat_1/axis:output:0*
N*
T0*,
_output_shapes
:@k
)u_net3d/up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
u_net3d/up_sampling3d_1/split_2Split2u_net3d/up_sampling3d_1/split_2/split_dim:output:0)u_net3d/up_sampling3d_1/concat_1:output:0*
T0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
	num_split@g
%u_net3d/up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :,
 u_net3d/up_sampling3d_1/concat_2ConcatV2(u_net3d/up_sampling3d_1/split_2:output:0(u_net3d/up_sampling3d_1/split_2:output:0(u_net3d/up_sampling3d_1/split_2:output:1(u_net3d/up_sampling3d_1/split_2:output:1(u_net3d/up_sampling3d_1/split_2:output:2(u_net3d/up_sampling3d_1/split_2:output:2(u_net3d/up_sampling3d_1/split_2:output:3(u_net3d/up_sampling3d_1/split_2:output:3(u_net3d/up_sampling3d_1/split_2:output:4(u_net3d/up_sampling3d_1/split_2:output:4(u_net3d/up_sampling3d_1/split_2:output:5(u_net3d/up_sampling3d_1/split_2:output:5(u_net3d/up_sampling3d_1/split_2:output:6(u_net3d/up_sampling3d_1/split_2:output:6(u_net3d/up_sampling3d_1/split_2:output:7(u_net3d/up_sampling3d_1/split_2:output:7(u_net3d/up_sampling3d_1/split_2:output:8(u_net3d/up_sampling3d_1/split_2:output:8(u_net3d/up_sampling3d_1/split_2:output:9(u_net3d/up_sampling3d_1/split_2:output:9)u_net3d/up_sampling3d_1/split_2:output:10)u_net3d/up_sampling3d_1/split_2:output:10)u_net3d/up_sampling3d_1/split_2:output:11)u_net3d/up_sampling3d_1/split_2:output:11)u_net3d/up_sampling3d_1/split_2:output:12)u_net3d/up_sampling3d_1/split_2:output:12)u_net3d/up_sampling3d_1/split_2:output:13)u_net3d/up_sampling3d_1/split_2:output:13)u_net3d/up_sampling3d_1/split_2:output:14)u_net3d/up_sampling3d_1/split_2:output:14)u_net3d/up_sampling3d_1/split_2:output:15)u_net3d/up_sampling3d_1/split_2:output:15)u_net3d/up_sampling3d_1/split_2:output:16)u_net3d/up_sampling3d_1/split_2:output:16)u_net3d/up_sampling3d_1/split_2:output:17)u_net3d/up_sampling3d_1/split_2:output:17)u_net3d/up_sampling3d_1/split_2:output:18)u_net3d/up_sampling3d_1/split_2:output:18)u_net3d/up_sampling3d_1/split_2:output:19)u_net3d/up_sampling3d_1/split_2:output:19)u_net3d/up_sampling3d_1/split_2:output:20)u_net3d/up_sampling3d_1/split_2:output:20)u_net3d/up_sampling3d_1/split_2:output:21)u_net3d/up_sampling3d_1/split_2:output:21)u_net3d/up_sampling3d_1/split_2:output:22)u_net3d/up_sampling3d_1/split_2:output:22)u_net3d/up_sampling3d_1/split_2:output:23)u_net3d/up_sampling3d_1/split_2:output:23)u_net3d/up_sampling3d_1/split_2:output:24)u_net3d/up_sampling3d_1/split_2:output:24)u_net3d/up_sampling3d_1/split_2:output:25)u_net3d/up_sampling3d_1/split_2:output:25)u_net3d/up_sampling3d_1/split_2:output:26)u_net3d/up_sampling3d_1/split_2:output:26)u_net3d/up_sampling3d_1/split_2:output:27)u_net3d/up_sampling3d_1/split_2:output:27)u_net3d/up_sampling3d_1/split_2:output:28)u_net3d/up_sampling3d_1/split_2:output:28)u_net3d/up_sampling3d_1/split_2:output:29)u_net3d/up_sampling3d_1/split_2:output:29)u_net3d/up_sampling3d_1/split_2:output:30)u_net3d/up_sampling3d_1/split_2:output:30)u_net3d/up_sampling3d_1/split_2:output:31)u_net3d/up_sampling3d_1/split_2:output:31)u_net3d/up_sampling3d_1/split_2:output:32)u_net3d/up_sampling3d_1/split_2:output:32)u_net3d/up_sampling3d_1/split_2:output:33)u_net3d/up_sampling3d_1/split_2:output:33)u_net3d/up_sampling3d_1/split_2:output:34)u_net3d/up_sampling3d_1/split_2:output:34)u_net3d/up_sampling3d_1/split_2:output:35)u_net3d/up_sampling3d_1/split_2:output:35)u_net3d/up_sampling3d_1/split_2:output:36)u_net3d/up_sampling3d_1/split_2:output:36)u_net3d/up_sampling3d_1/split_2:output:37)u_net3d/up_sampling3d_1/split_2:output:37)u_net3d/up_sampling3d_1/split_2:output:38)u_net3d/up_sampling3d_1/split_2:output:38)u_net3d/up_sampling3d_1/split_2:output:39)u_net3d/up_sampling3d_1/split_2:output:39)u_net3d/up_sampling3d_1/split_2:output:40)u_net3d/up_sampling3d_1/split_2:output:40)u_net3d/up_sampling3d_1/split_2:output:41)u_net3d/up_sampling3d_1/split_2:output:41)u_net3d/up_sampling3d_1/split_2:output:42)u_net3d/up_sampling3d_1/split_2:output:42)u_net3d/up_sampling3d_1/split_2:output:43)u_net3d/up_sampling3d_1/split_2:output:43)u_net3d/up_sampling3d_1/split_2:output:44)u_net3d/up_sampling3d_1/split_2:output:44)u_net3d/up_sampling3d_1/split_2:output:45)u_net3d/up_sampling3d_1/split_2:output:45)u_net3d/up_sampling3d_1/split_2:output:46)u_net3d/up_sampling3d_1/split_2:output:46)u_net3d/up_sampling3d_1/split_2:output:47)u_net3d/up_sampling3d_1/split_2:output:47)u_net3d/up_sampling3d_1/split_2:output:48)u_net3d/up_sampling3d_1/split_2:output:48)u_net3d/up_sampling3d_1/split_2:output:49)u_net3d/up_sampling3d_1/split_2:output:49)u_net3d/up_sampling3d_1/split_2:output:50)u_net3d/up_sampling3d_1/split_2:output:50)u_net3d/up_sampling3d_1/split_2:output:51)u_net3d/up_sampling3d_1/split_2:output:51)u_net3d/up_sampling3d_1/split_2:output:52)u_net3d/up_sampling3d_1/split_2:output:52)u_net3d/up_sampling3d_1/split_2:output:53)u_net3d/up_sampling3d_1/split_2:output:53)u_net3d/up_sampling3d_1/split_2:output:54)u_net3d/up_sampling3d_1/split_2:output:54)u_net3d/up_sampling3d_1/split_2:output:55)u_net3d/up_sampling3d_1/split_2:output:55)u_net3d/up_sampling3d_1/split_2:output:56)u_net3d/up_sampling3d_1/split_2:output:56)u_net3d/up_sampling3d_1/split_2:output:57)u_net3d/up_sampling3d_1/split_2:output:57)u_net3d/up_sampling3d_1/split_2:output:58)u_net3d/up_sampling3d_1/split_2:output:58)u_net3d/up_sampling3d_1/split_2:output:59)u_net3d/up_sampling3d_1/split_2:output:59)u_net3d/up_sampling3d_1/split_2:output:60)u_net3d/up_sampling3d_1/split_2:output:60)u_net3d/up_sampling3d_1/split_2:output:61)u_net3d/up_sampling3d_1/split_2:output:61)u_net3d/up_sampling3d_1/split_2:output:62)u_net3d/up_sampling3d_1/split_2:output:62)u_net3d/up_sampling3d_1/split_2:output:63)u_net3d/up_sampling3d_1/split_2:output:63.u_net3d/up_sampling3d_1/concat_2/axis:output:0*
N*
T0*-
_output_shapes
:c
!u_net3d/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ň
u_net3d/concatenate_1/concatConcatV2)u_net3d/up_sampling3d_1/concat_2:output:00u_net3d/conv_block3d_2/LeakyRelu_1:activations:0*u_net3d/concatenate_1/concat/axis:output:0*
N*
T0*-
_output_shapes
:ÜÁ
5u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_3_conv3d_6_conv3d_readvariableop_resource*+
_output_shapes
:Ü\*
dtype0ö
&u_net3d/conv_block3d_3/conv3d_6/Conv3DConv3D%u_net3d/concatenate_1/concat:output:0=u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_3_conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ú
'u_net3d/conv_block3d_3/conv3d_6/BiasAddBiasAdd/u_net3d/conv_block3d_3/conv3d_6/Conv3D:output:0>u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\
 u_net3d/conv_block3d_3/LeakyRelu	LeakyRelu0u_net3d/conv_block3d_3/conv3d_6/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=Ŕ
5u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_3_conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:\\*
dtype0˙
&u_net3d/conv_block3d_3/conv3d_7/Conv3DConv3D.u_net3d/conv_block3d_3/LeakyRelu:activations:0=u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:\*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_3_conv3d_7_biasadd_readvariableop_resource*
_output_shapes
:\*
dtype0Ú
'u_net3d/conv_block3d_3/conv3d_7/BiasAddBiasAdd/u_net3d/conv_block3d_3/conv3d_7/Conv3D:output:0>u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:\
"u_net3d/conv_block3d_3/LeakyRelu_1	LeakyRelu0u_net3d/conv_block3d_3/conv3d_7/BiasAdd:output:0*,
_output_shapes
:\*
alpha%ÍĚĚ=g
%u_net3d/up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ů
u_net3d/up_sampling3d/splitSplit.u_net3d/up_sampling3d/split/split_dim:output:00u_net3d/conv_block3d_3/LeakyRelu_1:activations:0*
T0*ś
_output_shapesŁ
 :\:\:\:\:\:\:\:\:\:\:\:\*
	num_splitc
!u_net3d/up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¨
u_net3d/up_sampling3d/concatConcatV2$u_net3d/up_sampling3d/split:output:0$u_net3d/up_sampling3d/split:output:0$u_net3d/up_sampling3d/split:output:1$u_net3d/up_sampling3d/split:output:1$u_net3d/up_sampling3d/split:output:2$u_net3d/up_sampling3d/split:output:2$u_net3d/up_sampling3d/split:output:3$u_net3d/up_sampling3d/split:output:3$u_net3d/up_sampling3d/split:output:4$u_net3d/up_sampling3d/split:output:4$u_net3d/up_sampling3d/split:output:5$u_net3d/up_sampling3d/split:output:5$u_net3d/up_sampling3d/split:output:6$u_net3d/up_sampling3d/split:output:6$u_net3d/up_sampling3d/split:output:7$u_net3d/up_sampling3d/split:output:7$u_net3d/up_sampling3d/split:output:8$u_net3d/up_sampling3d/split:output:8$u_net3d/up_sampling3d/split:output:9$u_net3d/up_sampling3d/split:output:9%u_net3d/up_sampling3d/split:output:10%u_net3d/up_sampling3d/split:output:10%u_net3d/up_sampling3d/split:output:11%u_net3d/up_sampling3d/split:output:11*u_net3d/up_sampling3d/concat/axis:output:0*
N*
T0*,
_output_shapes
:\i
'u_net3d/up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ł
u_net3d/up_sampling3d/split_1Split0u_net3d/up_sampling3d/split_1/split_dim:output:0%u_net3d/up_sampling3d/concat:output:0*
T0*
_output_shapes
:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\*
	num_splite
#u_net3d/up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :˝S
u_net3d/up_sampling3d/concat_1ConcatV2&u_net3d/up_sampling3d/split_1:output:0&u_net3d/up_sampling3d/split_1:output:0&u_net3d/up_sampling3d/split_1:output:1&u_net3d/up_sampling3d/split_1:output:1&u_net3d/up_sampling3d/split_1:output:2&u_net3d/up_sampling3d/split_1:output:2&u_net3d/up_sampling3d/split_1:output:3&u_net3d/up_sampling3d/split_1:output:3&u_net3d/up_sampling3d/split_1:output:4&u_net3d/up_sampling3d/split_1:output:4&u_net3d/up_sampling3d/split_1:output:5&u_net3d/up_sampling3d/split_1:output:5&u_net3d/up_sampling3d/split_1:output:6&u_net3d/up_sampling3d/split_1:output:6&u_net3d/up_sampling3d/split_1:output:7&u_net3d/up_sampling3d/split_1:output:7&u_net3d/up_sampling3d/split_1:output:8&u_net3d/up_sampling3d/split_1:output:8&u_net3d/up_sampling3d/split_1:output:9&u_net3d/up_sampling3d/split_1:output:9'u_net3d/up_sampling3d/split_1:output:10'u_net3d/up_sampling3d/split_1:output:10'u_net3d/up_sampling3d/split_1:output:11'u_net3d/up_sampling3d/split_1:output:11'u_net3d/up_sampling3d/split_1:output:12'u_net3d/up_sampling3d/split_1:output:12'u_net3d/up_sampling3d/split_1:output:13'u_net3d/up_sampling3d/split_1:output:13'u_net3d/up_sampling3d/split_1:output:14'u_net3d/up_sampling3d/split_1:output:14'u_net3d/up_sampling3d/split_1:output:15'u_net3d/up_sampling3d/split_1:output:15'u_net3d/up_sampling3d/split_1:output:16'u_net3d/up_sampling3d/split_1:output:16'u_net3d/up_sampling3d/split_1:output:17'u_net3d/up_sampling3d/split_1:output:17'u_net3d/up_sampling3d/split_1:output:18'u_net3d/up_sampling3d/split_1:output:18'u_net3d/up_sampling3d/split_1:output:19'u_net3d/up_sampling3d/split_1:output:19'u_net3d/up_sampling3d/split_1:output:20'u_net3d/up_sampling3d/split_1:output:20'u_net3d/up_sampling3d/split_1:output:21'u_net3d/up_sampling3d/split_1:output:21'u_net3d/up_sampling3d/split_1:output:22'u_net3d/up_sampling3d/split_1:output:22'u_net3d/up_sampling3d/split_1:output:23'u_net3d/up_sampling3d/split_1:output:23'u_net3d/up_sampling3d/split_1:output:24'u_net3d/up_sampling3d/split_1:output:24'u_net3d/up_sampling3d/split_1:output:25'u_net3d/up_sampling3d/split_1:output:25'u_net3d/up_sampling3d/split_1:output:26'u_net3d/up_sampling3d/split_1:output:26'u_net3d/up_sampling3d/split_1:output:27'u_net3d/up_sampling3d/split_1:output:27'u_net3d/up_sampling3d/split_1:output:28'u_net3d/up_sampling3d/split_1:output:28'u_net3d/up_sampling3d/split_1:output:29'u_net3d/up_sampling3d/split_1:output:29'u_net3d/up_sampling3d/split_1:output:30'u_net3d/up_sampling3d/split_1:output:30'u_net3d/up_sampling3d/split_1:output:31'u_net3d/up_sampling3d/split_1:output:31'u_net3d/up_sampling3d/split_1:output:32'u_net3d/up_sampling3d/split_1:output:32'u_net3d/up_sampling3d/split_1:output:33'u_net3d/up_sampling3d/split_1:output:33'u_net3d/up_sampling3d/split_1:output:34'u_net3d/up_sampling3d/split_1:output:34'u_net3d/up_sampling3d/split_1:output:35'u_net3d/up_sampling3d/split_1:output:35'u_net3d/up_sampling3d/split_1:output:36'u_net3d/up_sampling3d/split_1:output:36'u_net3d/up_sampling3d/split_1:output:37'u_net3d/up_sampling3d/split_1:output:37'u_net3d/up_sampling3d/split_1:output:38'u_net3d/up_sampling3d/split_1:output:38'u_net3d/up_sampling3d/split_1:output:39'u_net3d/up_sampling3d/split_1:output:39'u_net3d/up_sampling3d/split_1:output:40'u_net3d/up_sampling3d/split_1:output:40'u_net3d/up_sampling3d/split_1:output:41'u_net3d/up_sampling3d/split_1:output:41'u_net3d/up_sampling3d/split_1:output:42'u_net3d/up_sampling3d/split_1:output:42'u_net3d/up_sampling3d/split_1:output:43'u_net3d/up_sampling3d/split_1:output:43'u_net3d/up_sampling3d/split_1:output:44'u_net3d/up_sampling3d/split_1:output:44'u_net3d/up_sampling3d/split_1:output:45'u_net3d/up_sampling3d/split_1:output:45'u_net3d/up_sampling3d/split_1:output:46'u_net3d/up_sampling3d/split_1:output:46'u_net3d/up_sampling3d/split_1:output:47'u_net3d/up_sampling3d/split_1:output:47'u_net3d/up_sampling3d/split_1:output:48'u_net3d/up_sampling3d/split_1:output:48'u_net3d/up_sampling3d/split_1:output:49'u_net3d/up_sampling3d/split_1:output:49'u_net3d/up_sampling3d/split_1:output:50'u_net3d/up_sampling3d/split_1:output:50'u_net3d/up_sampling3d/split_1:output:51'u_net3d/up_sampling3d/split_1:output:51'u_net3d/up_sampling3d/split_1:output:52'u_net3d/up_sampling3d/split_1:output:52'u_net3d/up_sampling3d/split_1:output:53'u_net3d/up_sampling3d/split_1:output:53'u_net3d/up_sampling3d/split_1:output:54'u_net3d/up_sampling3d/split_1:output:54'u_net3d/up_sampling3d/split_1:output:55'u_net3d/up_sampling3d/split_1:output:55'u_net3d/up_sampling3d/split_1:output:56'u_net3d/up_sampling3d/split_1:output:56'u_net3d/up_sampling3d/split_1:output:57'u_net3d/up_sampling3d/split_1:output:57'u_net3d/up_sampling3d/split_1:output:58'u_net3d/up_sampling3d/split_1:output:58'u_net3d/up_sampling3d/split_1:output:59'u_net3d/up_sampling3d/split_1:output:59'u_net3d/up_sampling3d/split_1:output:60'u_net3d/up_sampling3d/split_1:output:60'u_net3d/up_sampling3d/split_1:output:61'u_net3d/up_sampling3d/split_1:output:61'u_net3d/up_sampling3d/split_1:output:62'u_net3d/up_sampling3d/split_1:output:62'u_net3d/up_sampling3d/split_1:output:63'u_net3d/up_sampling3d/split_1:output:63'u_net3d/up_sampling3d/split_1:output:64'u_net3d/up_sampling3d/split_1:output:64'u_net3d/up_sampling3d/split_1:output:65'u_net3d/up_sampling3d/split_1:output:65'u_net3d/up_sampling3d/split_1:output:66'u_net3d/up_sampling3d/split_1:output:66'u_net3d/up_sampling3d/split_1:output:67'u_net3d/up_sampling3d/split_1:output:67'u_net3d/up_sampling3d/split_1:output:68'u_net3d/up_sampling3d/split_1:output:68'u_net3d/up_sampling3d/split_1:output:69'u_net3d/up_sampling3d/split_1:output:69'u_net3d/up_sampling3d/split_1:output:70'u_net3d/up_sampling3d/split_1:output:70'u_net3d/up_sampling3d/split_1:output:71'u_net3d/up_sampling3d/split_1:output:71'u_net3d/up_sampling3d/split_1:output:72'u_net3d/up_sampling3d/split_1:output:72'u_net3d/up_sampling3d/split_1:output:73'u_net3d/up_sampling3d/split_1:output:73'u_net3d/up_sampling3d/split_1:output:74'u_net3d/up_sampling3d/split_1:output:74'u_net3d/up_sampling3d/split_1:output:75'u_net3d/up_sampling3d/split_1:output:75'u_net3d/up_sampling3d/split_1:output:76'u_net3d/up_sampling3d/split_1:output:76'u_net3d/up_sampling3d/split_1:output:77'u_net3d/up_sampling3d/split_1:output:77'u_net3d/up_sampling3d/split_1:output:78'u_net3d/up_sampling3d/split_1:output:78'u_net3d/up_sampling3d/split_1:output:79'u_net3d/up_sampling3d/split_1:output:79'u_net3d/up_sampling3d/split_1:output:80'u_net3d/up_sampling3d/split_1:output:80'u_net3d/up_sampling3d/split_1:output:81'u_net3d/up_sampling3d/split_1:output:81'u_net3d/up_sampling3d/split_1:output:82'u_net3d/up_sampling3d/split_1:output:82'u_net3d/up_sampling3d/split_1:output:83'u_net3d/up_sampling3d/split_1:output:83'u_net3d/up_sampling3d/split_1:output:84'u_net3d/up_sampling3d/split_1:output:84'u_net3d/up_sampling3d/split_1:output:85'u_net3d/up_sampling3d/split_1:output:85'u_net3d/up_sampling3d/split_1:output:86'u_net3d/up_sampling3d/split_1:output:86'u_net3d/up_sampling3d/split_1:output:87'u_net3d/up_sampling3d/split_1:output:87'u_net3d/up_sampling3d/split_1:output:88'u_net3d/up_sampling3d/split_1:output:88'u_net3d/up_sampling3d/split_1:output:89'u_net3d/up_sampling3d/split_1:output:89'u_net3d/up_sampling3d/split_1:output:90'u_net3d/up_sampling3d/split_1:output:90'u_net3d/up_sampling3d/split_1:output:91'u_net3d/up_sampling3d/split_1:output:91'u_net3d/up_sampling3d/split_1:output:92'u_net3d/up_sampling3d/split_1:output:92'u_net3d/up_sampling3d/split_1:output:93'u_net3d/up_sampling3d/split_1:output:93'u_net3d/up_sampling3d/split_1:output:94'u_net3d/up_sampling3d/split_1:output:94'u_net3d/up_sampling3d/split_1:output:95'u_net3d/up_sampling3d/split_1:output:95'u_net3d/up_sampling3d/split_1:output:96'u_net3d/up_sampling3d/split_1:output:96'u_net3d/up_sampling3d/split_1:output:97'u_net3d/up_sampling3d/split_1:output:97'u_net3d/up_sampling3d/split_1:output:98'u_net3d/up_sampling3d/split_1:output:98'u_net3d/up_sampling3d/split_1:output:99'u_net3d/up_sampling3d/split_1:output:99(u_net3d/up_sampling3d/split_1:output:100(u_net3d/up_sampling3d/split_1:output:100(u_net3d/up_sampling3d/split_1:output:101(u_net3d/up_sampling3d/split_1:output:101(u_net3d/up_sampling3d/split_1:output:102(u_net3d/up_sampling3d/split_1:output:102(u_net3d/up_sampling3d/split_1:output:103(u_net3d/up_sampling3d/split_1:output:103(u_net3d/up_sampling3d/split_1:output:104(u_net3d/up_sampling3d/split_1:output:104(u_net3d/up_sampling3d/split_1:output:105(u_net3d/up_sampling3d/split_1:output:105(u_net3d/up_sampling3d/split_1:output:106(u_net3d/up_sampling3d/split_1:output:106(u_net3d/up_sampling3d/split_1:output:107(u_net3d/up_sampling3d/split_1:output:107(u_net3d/up_sampling3d/split_1:output:108(u_net3d/up_sampling3d/split_1:output:108(u_net3d/up_sampling3d/split_1:output:109(u_net3d/up_sampling3d/split_1:output:109(u_net3d/up_sampling3d/split_1:output:110(u_net3d/up_sampling3d/split_1:output:110(u_net3d/up_sampling3d/split_1:output:111(u_net3d/up_sampling3d/split_1:output:111(u_net3d/up_sampling3d/split_1:output:112(u_net3d/up_sampling3d/split_1:output:112(u_net3d/up_sampling3d/split_1:output:113(u_net3d/up_sampling3d/split_1:output:113(u_net3d/up_sampling3d/split_1:output:114(u_net3d/up_sampling3d/split_1:output:114(u_net3d/up_sampling3d/split_1:output:115(u_net3d/up_sampling3d/split_1:output:115(u_net3d/up_sampling3d/split_1:output:116(u_net3d/up_sampling3d/split_1:output:116(u_net3d/up_sampling3d/split_1:output:117(u_net3d/up_sampling3d/split_1:output:117(u_net3d/up_sampling3d/split_1:output:118(u_net3d/up_sampling3d/split_1:output:118(u_net3d/up_sampling3d/split_1:output:119(u_net3d/up_sampling3d/split_1:output:119(u_net3d/up_sampling3d/split_1:output:120(u_net3d/up_sampling3d/split_1:output:120(u_net3d/up_sampling3d/split_1:output:121(u_net3d/up_sampling3d/split_1:output:121(u_net3d/up_sampling3d/split_1:output:122(u_net3d/up_sampling3d/split_1:output:122(u_net3d/up_sampling3d/split_1:output:123(u_net3d/up_sampling3d/split_1:output:123(u_net3d/up_sampling3d/split_1:output:124(u_net3d/up_sampling3d/split_1:output:124(u_net3d/up_sampling3d/split_1:output:125(u_net3d/up_sampling3d/split_1:output:125(u_net3d/up_sampling3d/split_1:output:126(u_net3d/up_sampling3d/split_1:output:126(u_net3d/up_sampling3d/split_1:output:127(u_net3d/up_sampling3d/split_1:output:127,u_net3d/up_sampling3d/concat_1/axis:output:0*
N*
T0*,
_output_shapes
:\i
'u_net3d/up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ľ
u_net3d/up_sampling3d/split_2Split0u_net3d/up_sampling3d/split_2/split_dim:output:0'u_net3d/up_sampling3d/concat_1:output:0*
T0*
_output_shapes
:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\:\*
	num_splite
#u_net3d/up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :˝S
u_net3d/up_sampling3d/concat_2ConcatV2&u_net3d/up_sampling3d/split_2:output:0&u_net3d/up_sampling3d/split_2:output:0&u_net3d/up_sampling3d/split_2:output:1&u_net3d/up_sampling3d/split_2:output:1&u_net3d/up_sampling3d/split_2:output:2&u_net3d/up_sampling3d/split_2:output:2&u_net3d/up_sampling3d/split_2:output:3&u_net3d/up_sampling3d/split_2:output:3&u_net3d/up_sampling3d/split_2:output:4&u_net3d/up_sampling3d/split_2:output:4&u_net3d/up_sampling3d/split_2:output:5&u_net3d/up_sampling3d/split_2:output:5&u_net3d/up_sampling3d/split_2:output:6&u_net3d/up_sampling3d/split_2:output:6&u_net3d/up_sampling3d/split_2:output:7&u_net3d/up_sampling3d/split_2:output:7&u_net3d/up_sampling3d/split_2:output:8&u_net3d/up_sampling3d/split_2:output:8&u_net3d/up_sampling3d/split_2:output:9&u_net3d/up_sampling3d/split_2:output:9'u_net3d/up_sampling3d/split_2:output:10'u_net3d/up_sampling3d/split_2:output:10'u_net3d/up_sampling3d/split_2:output:11'u_net3d/up_sampling3d/split_2:output:11'u_net3d/up_sampling3d/split_2:output:12'u_net3d/up_sampling3d/split_2:output:12'u_net3d/up_sampling3d/split_2:output:13'u_net3d/up_sampling3d/split_2:output:13'u_net3d/up_sampling3d/split_2:output:14'u_net3d/up_sampling3d/split_2:output:14'u_net3d/up_sampling3d/split_2:output:15'u_net3d/up_sampling3d/split_2:output:15'u_net3d/up_sampling3d/split_2:output:16'u_net3d/up_sampling3d/split_2:output:16'u_net3d/up_sampling3d/split_2:output:17'u_net3d/up_sampling3d/split_2:output:17'u_net3d/up_sampling3d/split_2:output:18'u_net3d/up_sampling3d/split_2:output:18'u_net3d/up_sampling3d/split_2:output:19'u_net3d/up_sampling3d/split_2:output:19'u_net3d/up_sampling3d/split_2:output:20'u_net3d/up_sampling3d/split_2:output:20'u_net3d/up_sampling3d/split_2:output:21'u_net3d/up_sampling3d/split_2:output:21'u_net3d/up_sampling3d/split_2:output:22'u_net3d/up_sampling3d/split_2:output:22'u_net3d/up_sampling3d/split_2:output:23'u_net3d/up_sampling3d/split_2:output:23'u_net3d/up_sampling3d/split_2:output:24'u_net3d/up_sampling3d/split_2:output:24'u_net3d/up_sampling3d/split_2:output:25'u_net3d/up_sampling3d/split_2:output:25'u_net3d/up_sampling3d/split_2:output:26'u_net3d/up_sampling3d/split_2:output:26'u_net3d/up_sampling3d/split_2:output:27'u_net3d/up_sampling3d/split_2:output:27'u_net3d/up_sampling3d/split_2:output:28'u_net3d/up_sampling3d/split_2:output:28'u_net3d/up_sampling3d/split_2:output:29'u_net3d/up_sampling3d/split_2:output:29'u_net3d/up_sampling3d/split_2:output:30'u_net3d/up_sampling3d/split_2:output:30'u_net3d/up_sampling3d/split_2:output:31'u_net3d/up_sampling3d/split_2:output:31'u_net3d/up_sampling3d/split_2:output:32'u_net3d/up_sampling3d/split_2:output:32'u_net3d/up_sampling3d/split_2:output:33'u_net3d/up_sampling3d/split_2:output:33'u_net3d/up_sampling3d/split_2:output:34'u_net3d/up_sampling3d/split_2:output:34'u_net3d/up_sampling3d/split_2:output:35'u_net3d/up_sampling3d/split_2:output:35'u_net3d/up_sampling3d/split_2:output:36'u_net3d/up_sampling3d/split_2:output:36'u_net3d/up_sampling3d/split_2:output:37'u_net3d/up_sampling3d/split_2:output:37'u_net3d/up_sampling3d/split_2:output:38'u_net3d/up_sampling3d/split_2:output:38'u_net3d/up_sampling3d/split_2:output:39'u_net3d/up_sampling3d/split_2:output:39'u_net3d/up_sampling3d/split_2:output:40'u_net3d/up_sampling3d/split_2:output:40'u_net3d/up_sampling3d/split_2:output:41'u_net3d/up_sampling3d/split_2:output:41'u_net3d/up_sampling3d/split_2:output:42'u_net3d/up_sampling3d/split_2:output:42'u_net3d/up_sampling3d/split_2:output:43'u_net3d/up_sampling3d/split_2:output:43'u_net3d/up_sampling3d/split_2:output:44'u_net3d/up_sampling3d/split_2:output:44'u_net3d/up_sampling3d/split_2:output:45'u_net3d/up_sampling3d/split_2:output:45'u_net3d/up_sampling3d/split_2:output:46'u_net3d/up_sampling3d/split_2:output:46'u_net3d/up_sampling3d/split_2:output:47'u_net3d/up_sampling3d/split_2:output:47'u_net3d/up_sampling3d/split_2:output:48'u_net3d/up_sampling3d/split_2:output:48'u_net3d/up_sampling3d/split_2:output:49'u_net3d/up_sampling3d/split_2:output:49'u_net3d/up_sampling3d/split_2:output:50'u_net3d/up_sampling3d/split_2:output:50'u_net3d/up_sampling3d/split_2:output:51'u_net3d/up_sampling3d/split_2:output:51'u_net3d/up_sampling3d/split_2:output:52'u_net3d/up_sampling3d/split_2:output:52'u_net3d/up_sampling3d/split_2:output:53'u_net3d/up_sampling3d/split_2:output:53'u_net3d/up_sampling3d/split_2:output:54'u_net3d/up_sampling3d/split_2:output:54'u_net3d/up_sampling3d/split_2:output:55'u_net3d/up_sampling3d/split_2:output:55'u_net3d/up_sampling3d/split_2:output:56'u_net3d/up_sampling3d/split_2:output:56'u_net3d/up_sampling3d/split_2:output:57'u_net3d/up_sampling3d/split_2:output:57'u_net3d/up_sampling3d/split_2:output:58'u_net3d/up_sampling3d/split_2:output:58'u_net3d/up_sampling3d/split_2:output:59'u_net3d/up_sampling3d/split_2:output:59'u_net3d/up_sampling3d/split_2:output:60'u_net3d/up_sampling3d/split_2:output:60'u_net3d/up_sampling3d/split_2:output:61'u_net3d/up_sampling3d/split_2:output:61'u_net3d/up_sampling3d/split_2:output:62'u_net3d/up_sampling3d/split_2:output:62'u_net3d/up_sampling3d/split_2:output:63'u_net3d/up_sampling3d/split_2:output:63'u_net3d/up_sampling3d/split_2:output:64'u_net3d/up_sampling3d/split_2:output:64'u_net3d/up_sampling3d/split_2:output:65'u_net3d/up_sampling3d/split_2:output:65'u_net3d/up_sampling3d/split_2:output:66'u_net3d/up_sampling3d/split_2:output:66'u_net3d/up_sampling3d/split_2:output:67'u_net3d/up_sampling3d/split_2:output:67'u_net3d/up_sampling3d/split_2:output:68'u_net3d/up_sampling3d/split_2:output:68'u_net3d/up_sampling3d/split_2:output:69'u_net3d/up_sampling3d/split_2:output:69'u_net3d/up_sampling3d/split_2:output:70'u_net3d/up_sampling3d/split_2:output:70'u_net3d/up_sampling3d/split_2:output:71'u_net3d/up_sampling3d/split_2:output:71'u_net3d/up_sampling3d/split_2:output:72'u_net3d/up_sampling3d/split_2:output:72'u_net3d/up_sampling3d/split_2:output:73'u_net3d/up_sampling3d/split_2:output:73'u_net3d/up_sampling3d/split_2:output:74'u_net3d/up_sampling3d/split_2:output:74'u_net3d/up_sampling3d/split_2:output:75'u_net3d/up_sampling3d/split_2:output:75'u_net3d/up_sampling3d/split_2:output:76'u_net3d/up_sampling3d/split_2:output:76'u_net3d/up_sampling3d/split_2:output:77'u_net3d/up_sampling3d/split_2:output:77'u_net3d/up_sampling3d/split_2:output:78'u_net3d/up_sampling3d/split_2:output:78'u_net3d/up_sampling3d/split_2:output:79'u_net3d/up_sampling3d/split_2:output:79'u_net3d/up_sampling3d/split_2:output:80'u_net3d/up_sampling3d/split_2:output:80'u_net3d/up_sampling3d/split_2:output:81'u_net3d/up_sampling3d/split_2:output:81'u_net3d/up_sampling3d/split_2:output:82'u_net3d/up_sampling3d/split_2:output:82'u_net3d/up_sampling3d/split_2:output:83'u_net3d/up_sampling3d/split_2:output:83'u_net3d/up_sampling3d/split_2:output:84'u_net3d/up_sampling3d/split_2:output:84'u_net3d/up_sampling3d/split_2:output:85'u_net3d/up_sampling3d/split_2:output:85'u_net3d/up_sampling3d/split_2:output:86'u_net3d/up_sampling3d/split_2:output:86'u_net3d/up_sampling3d/split_2:output:87'u_net3d/up_sampling3d/split_2:output:87'u_net3d/up_sampling3d/split_2:output:88'u_net3d/up_sampling3d/split_2:output:88'u_net3d/up_sampling3d/split_2:output:89'u_net3d/up_sampling3d/split_2:output:89'u_net3d/up_sampling3d/split_2:output:90'u_net3d/up_sampling3d/split_2:output:90'u_net3d/up_sampling3d/split_2:output:91'u_net3d/up_sampling3d/split_2:output:91'u_net3d/up_sampling3d/split_2:output:92'u_net3d/up_sampling3d/split_2:output:92'u_net3d/up_sampling3d/split_2:output:93'u_net3d/up_sampling3d/split_2:output:93'u_net3d/up_sampling3d/split_2:output:94'u_net3d/up_sampling3d/split_2:output:94'u_net3d/up_sampling3d/split_2:output:95'u_net3d/up_sampling3d/split_2:output:95'u_net3d/up_sampling3d/split_2:output:96'u_net3d/up_sampling3d/split_2:output:96'u_net3d/up_sampling3d/split_2:output:97'u_net3d/up_sampling3d/split_2:output:97'u_net3d/up_sampling3d/split_2:output:98'u_net3d/up_sampling3d/split_2:output:98'u_net3d/up_sampling3d/split_2:output:99'u_net3d/up_sampling3d/split_2:output:99(u_net3d/up_sampling3d/split_2:output:100(u_net3d/up_sampling3d/split_2:output:100(u_net3d/up_sampling3d/split_2:output:101(u_net3d/up_sampling3d/split_2:output:101(u_net3d/up_sampling3d/split_2:output:102(u_net3d/up_sampling3d/split_2:output:102(u_net3d/up_sampling3d/split_2:output:103(u_net3d/up_sampling3d/split_2:output:103(u_net3d/up_sampling3d/split_2:output:104(u_net3d/up_sampling3d/split_2:output:104(u_net3d/up_sampling3d/split_2:output:105(u_net3d/up_sampling3d/split_2:output:105(u_net3d/up_sampling3d/split_2:output:106(u_net3d/up_sampling3d/split_2:output:106(u_net3d/up_sampling3d/split_2:output:107(u_net3d/up_sampling3d/split_2:output:107(u_net3d/up_sampling3d/split_2:output:108(u_net3d/up_sampling3d/split_2:output:108(u_net3d/up_sampling3d/split_2:output:109(u_net3d/up_sampling3d/split_2:output:109(u_net3d/up_sampling3d/split_2:output:110(u_net3d/up_sampling3d/split_2:output:110(u_net3d/up_sampling3d/split_2:output:111(u_net3d/up_sampling3d/split_2:output:111(u_net3d/up_sampling3d/split_2:output:112(u_net3d/up_sampling3d/split_2:output:112(u_net3d/up_sampling3d/split_2:output:113(u_net3d/up_sampling3d/split_2:output:113(u_net3d/up_sampling3d/split_2:output:114(u_net3d/up_sampling3d/split_2:output:114(u_net3d/up_sampling3d/split_2:output:115(u_net3d/up_sampling3d/split_2:output:115(u_net3d/up_sampling3d/split_2:output:116(u_net3d/up_sampling3d/split_2:output:116(u_net3d/up_sampling3d/split_2:output:117(u_net3d/up_sampling3d/split_2:output:117(u_net3d/up_sampling3d/split_2:output:118(u_net3d/up_sampling3d/split_2:output:118(u_net3d/up_sampling3d/split_2:output:119(u_net3d/up_sampling3d/split_2:output:119(u_net3d/up_sampling3d/split_2:output:120(u_net3d/up_sampling3d/split_2:output:120(u_net3d/up_sampling3d/split_2:output:121(u_net3d/up_sampling3d/split_2:output:121(u_net3d/up_sampling3d/split_2:output:122(u_net3d/up_sampling3d/split_2:output:122(u_net3d/up_sampling3d/split_2:output:123(u_net3d/up_sampling3d/split_2:output:123(u_net3d/up_sampling3d/split_2:output:124(u_net3d/up_sampling3d/split_2:output:124(u_net3d/up_sampling3d/split_2:output:125(u_net3d/up_sampling3d/split_2:output:125(u_net3d/up_sampling3d/split_2:output:126(u_net3d/up_sampling3d/split_2:output:126(u_net3d/up_sampling3d/split_2:output:127(u_net3d/up_sampling3d/split_2:output:127,u_net3d/up_sampling3d/concat_2/axis:output:0*
N*
T0*,
_output_shapes
:\a
u_net3d/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ę
u_net3d/concatenate/concatConcatV2'u_net3d/up_sampling3d/concat_2:output:0.u_net3d/conv_block3d/LeakyRelu_1:activations:0(u_net3d/concatenate/concat/axis:output:0*
N*
T0*-
_output_shapes
:Á
5u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_1_conv3d_2_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0ô
&u_net3d/conv_block3d_1/conv3d_2/Conv3DConv3D#u_net3d/concatenate/concat:output:0=u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_1_conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ú
'u_net3d/conv_block3d_1/conv3d_2/BiasAddBiasAdd/u_net3d/conv_block3d_1/conv3d_2/Conv3D:output:0>u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@
 u_net3d/conv_block3d_1/LeakyRelu	LeakyRelu0u_net3d/conv_block3d_1/conv3d_2/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=Ŕ
5u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOpReadVariableOp>u_net3d_conv_block3d_1_conv3d_3_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0˙
&u_net3d/conv_block3d_1/conv3d_3/Conv3DConv3D.u_net3d/conv_block3d_1/LeakyRelu:activations:0=u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:@*
paddingSAME*
strides	
˛
6u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_1_conv3d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ú
'u_net3d/conv_block3d_1/conv3d_3/BiasAddBiasAdd/u_net3d/conv_block3d_1/conv3d_3/Conv3D:output:0>u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:@
"u_net3d/conv_block3d_1/LeakyRelu_1	LeakyRelu0u_net3d/conv_block3d_1/conv3d_3/BiasAdd:output:0*,
_output_shapes
:@*
alpha%ÍĚĚ=Â
6u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOpReadVariableOp?u_net3d_conv_block3d_5_conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0
'u_net3d/conv_block3d_5/conv3d_10/Conv3DConv3D0u_net3d/conv_block3d_1/LeakyRelu_1:activations:0>u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*,
_output_shapes
:*
paddingSAME*
strides	
´
7u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOpReadVariableOp@u_net3d_conv_block3d_5_conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ý
(u_net3d/conv_block3d_5/conv3d_10/BiasAddBiasAdd0u_net3d/conv_block3d_5/conv3d_10/Conv3D:output:0?u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:
IdentityIdentity1u_net3d/conv_block3d_5/conv3d_10/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:

NoOpNoOp3^u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp2^u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp5^u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp4^u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp7^u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp6^u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp8^u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp7^u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 2h
2u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp2u_net3d/conv_block3d/conv3d/BiasAdd/ReadVariableOp2f
1u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp1u_net3d/conv_block3d/conv3d/Conv3D/ReadVariableOp2l
4u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp4u_net3d/conv_block3d/conv3d_1/BiasAdd/ReadVariableOp2j
3u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp3u_net3d/conv_block3d/conv3d_1/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_1/conv3d_2/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp5u_net3d/conv_block3d_1/conv3d_2/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_1/conv3d_3/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp5u_net3d/conv_block3d_1/conv3d_3/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_2/conv3d_4/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp5u_net3d/conv_block3d_2/conv3d_4/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_2/conv3d_5/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp5u_net3d/conv_block3d_2/conv3d_5/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_3/conv3d_6/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp5u_net3d/conv_block3d_3/conv3d_6/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_3/conv3d_7/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp5u_net3d/conv_block3d_3/conv3d_7/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_4/conv3d_8/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp5u_net3d/conv_block3d_4/conv3d_8/Conv3D/ReadVariableOp2p
6u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp6u_net3d/conv_block3d_4/conv3d_9/BiasAdd/ReadVariableOp2n
5u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp5u_net3d/conv_block3d_4/conv3d_9/Conv3D/ReadVariableOp2r
7u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp7u_net3d/conv_block3d_5/conv3d_10/BiasAdd/ReadVariableOp2p
6u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp6u_net3d/conv_block3d_5/conv3d_10/Conv3D/ReadVariableOp:T P
,
_output_shapes
:
 
_user_specified_nameinputs

ä
B__inference_model_layer_call_and_return_conditional_losses_1134012

inputs-
u_net3d_1133966:@
u_net3d_1133968:@-
u_net3d_1133970:@@
u_net3d_1133972:@-
u_net3d_1133974:@\
u_net3d_1133976:\-
u_net3d_1133978:\\
u_net3d_1133980:\.
u_net3d_1133982:\
u_net3d_1133984:	/
u_net3d_1133986:
u_net3d_1133988:	.
u_net3d_1133990:Ü\
u_net3d_1133992:\-
u_net3d_1133994:\\
u_net3d_1133996:\.
u_net3d_1133998:@
u_net3d_1134000:@-
u_net3d_1134002:@@
u_net3d_1134004:@-
u_net3d_1134006:@
u_net3d_1134008:
identity˘u_net3d/StatefulPartitionedCallő
u_net3d/StatefulPartitionedCallStatefulPartitionedCallinputsu_net3d_1133966u_net3d_1133968u_net3d_1133970u_net3d_1133972u_net3d_1133974u_net3d_1133976u_net3d_1133978u_net3d_1133980u_net3d_1133982u_net3d_1133984u_net3d_1133986u_net3d_1133988u_net3d_1133990u_net3d_1133992u_net3d_1133994u_net3d_1133996u_net3d_1133998u_net3d_1134000u_net3d_1134002u_net3d_1134004u_net3d_1134006u_net3d_1134008*"
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133559|
IdentityIdentity(u_net3d/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:h
NoOpNoOp ^u_net3d/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:: : : : : : : : : : : : : : : : : : : : : : 2B
u_net3d/StatefulPartitionedCallu_net3d/StatefulPartitionedCall:T P
,
_output_shapes
:
 
_user_specified_nameinputs
ęU
h
L__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_1137436

inputs
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ł
splitSplitsplit/split_dim:output:0inputs*
T0*Ö
_output_shapesĂ
Ŕ:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@:˙˙˙˙˙˙˙˙˙@@*
	num_splitM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :°
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5concat/axis:output:0*
N*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :đ
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*
_output_shapes
:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@*
	num_split@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :â
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9split_1:output:10split_1:output:10split_1:output:11split_1:output:11split_1:output:12split_1:output:12split_1:output:13split_1:output:13split_1:output:14split_1:output:14split_1:output:15split_1:output:15split_1:output:16split_1:output:16split_1:output:17split_1:output:17split_1:output:18split_1:output:18split_1:output:19split_1:output:19split_1:output:20split_1:output:20split_1:output:21split_1:output:21split_1:output:22split_1:output:22split_1:output:23split_1:output:23split_1:output:24split_1:output:24split_1:output:25split_1:output:25split_1:output:26split_1:output:26split_1:output:27split_1:output:27split_1:output:28split_1:output:28split_1:output:29split_1:output:29split_1:output:30split_1:output:30split_1:output:31split_1:output:31split_1:output:32split_1:output:32split_1:output:33split_1:output:33split_1:output:34split_1:output:34split_1:output:35split_1:output:35split_1:output:36split_1:output:36split_1:output:37split_1:output:37split_1:output:38split_1:output:38split_1:output:39split_1:output:39split_1:output:40split_1:output:40split_1:output:41split_1:output:41split_1:output:42split_1:output:42split_1:output:43split_1:output:43split_1:output:44split_1:output:44split_1:output:45split_1:output:45split_1:output:46split_1:output:46split_1:output:47split_1:output:47split_1:output:48split_1:output:48split_1:output:49split_1:output:49split_1:output:50split_1:output:50split_1:output:51split_1:output:51split_1:output:52split_1:output:52split_1:output:53split_1:output:53split_1:output:54split_1:output:54split_1:output:55split_1:output:55split_1:output:56split_1:output:56split_1:output:57split_1:output:57split_1:output:58split_1:output:58split_1:output:59split_1:output:59split_1:output:60split_1:output:60split_1:output:61split_1:output:61split_1:output:62split_1:output:62split_1:output:63split_1:output:63concat_1/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :˛
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*Ö
_output_shapesĂ
Ŕ:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split@O
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :ă
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9split_2:output:10split_2:output:10split_2:output:11split_2:output:11split_2:output:12split_2:output:12split_2:output:13split_2:output:13split_2:output:14split_2:output:14split_2:output:15split_2:output:15split_2:output:16split_2:output:16split_2:output:17split_2:output:17split_2:output:18split_2:output:18split_2:output:19split_2:output:19split_2:output:20split_2:output:20split_2:output:21split_2:output:21split_2:output:22split_2:output:22split_2:output:23split_2:output:23split_2:output:24split_2:output:24split_2:output:25split_2:output:25split_2:output:26split_2:output:26split_2:output:27split_2:output:27split_2:output:28split_2:output:28split_2:output:29split_2:output:29split_2:output:30split_2:output:30split_2:output:31split_2:output:31split_2:output:32split_2:output:32split_2:output:33split_2:output:33split_2:output:34split_2:output:34split_2:output:35split_2:output:35split_2:output:36split_2:output:36split_2:output:37split_2:output:37split_2:output:38split_2:output:38split_2:output:39split_2:output:39split_2:output:40split_2:output:40split_2:output:41split_2:output:41split_2:output:42split_2:output:42split_2:output:43split_2:output:43split_2:output:44split_2:output:44split_2:output:45split_2:output:45split_2:output:46split_2:output:46split_2:output:47split_2:output:47split_2:output:48split_2:output:48split_2:output:49split_2:output:49split_2:output:50split_2:output:50split_2:output:51split_2:output:51split_2:output:52split_2:output:52split_2:output:53split_2:output:53split_2:output:54split_2:output:54split_2:output:55split_2:output:55split_2:output:56split_2:output:56split_2:output:57split_2:output:57split_2:output:58split_2:output:58split_2:output:59split_2:output:59split_2:output:60split_2:output:60split_2:output:61split_2:output:61split_2:output:62split_2:output:62split_2:output:63split_2:output:63concat_2/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙h
IdentityIdentityconcat_2:output:0*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙@@:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs

Ö
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132594
input_1/
conv3d_8_1132581:\
conv3d_8_1132583:	0
conv3d_9_1132587:
conv3d_9_1132589:	
identity˘ conv3d_8/StatefulPartitionedCall˘ conv3d_9/StatefulPartitionedCall
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_8_1132581conv3d_8_1132583*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1132467
	LeakyRelu	LeakyRelu)conv3d_8/StatefulPartitionedCall:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_9_1132587conv3d_9_1132589*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1132484
LeakyRelu_1	LeakyRelu)conv3d_9/StatefulPartitionedCall:output:0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
alpha%ÍĚĚ=u
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
NoOpNoOp!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙@@\: : : : 2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:\ X
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
!
_user_specified_name	input_1
Ů
h
L__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1132951

inputs
identity˝
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize	
*
paddingSAME*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: {
W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ŃÂ
=
#__inference__traced_restore_1138166
file_prefixQ
3assignvariableop_u_net3d_conv_block3d_conv3d_kernel:@A
3assignvariableop_1_u_net3d_conv_block3d_conv3d_bias:@U
7assignvariableop_2_u_net3d_conv_block3d_conv3d_1_kernel:@@C
5assignvariableop_3_u_net3d_conv_block3d_conv3d_1_bias:@W
9assignvariableop_4_u_net3d_conv_block3d_2_conv3d_4_kernel:@\E
7assignvariableop_5_u_net3d_conv_block3d_2_conv3d_4_bias:\W
9assignvariableop_6_u_net3d_conv_block3d_2_conv3d_5_kernel:\\E
7assignvariableop_7_u_net3d_conv_block3d_2_conv3d_5_bias:\X
9assignvariableop_8_u_net3d_conv_block3d_4_conv3d_8_kernel:\F
7assignvariableop_9_u_net3d_conv_block3d_4_conv3d_8_bias:	Z
:assignvariableop_10_u_net3d_conv_block3d_4_conv3d_9_kernel:G
8assignvariableop_11_u_net3d_conv_block3d_4_conv3d_9_bias:	Y
:assignvariableop_12_u_net3d_conv_block3d_1_conv3d_2_kernel:@F
8assignvariableop_13_u_net3d_conv_block3d_1_conv3d_2_bias:@X
:assignvariableop_14_u_net3d_conv_block3d_1_conv3d_3_kernel:@@F
8assignvariableop_15_u_net3d_conv_block3d_1_conv3d_3_bias:@Y
:assignvariableop_16_u_net3d_conv_block3d_3_conv3d_6_kernel:Ü\F
8assignvariableop_17_u_net3d_conv_block3d_3_conv3d_6_bias:\X
:assignvariableop_18_u_net3d_conv_block3d_3_conv3d_7_kernel:\\F
8assignvariableop_19_u_net3d_conv_block3d_3_conv3d_7_bias:\Y
;assignvariableop_20_u_net3d_conv_block3d_5_conv3d_10_kernel:@G
9assignvariableop_21_u_net3d_conv_block3d_5_conv3d_10_bias:'
assignvariableop_22_adam_iter:	 )
assignvariableop_23_adam_beta_1: )
assignvariableop_24_adam_beta_2: (
assignvariableop_25_adam_decay: 0
&assignvariableop_26_adam_learning_rate: %
assignvariableop_27_total_2: %
assignvariableop_28_count_2: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: #
assignvariableop_31_total: #
assignvariableop_32_count: [
=assignvariableop_33_adam_u_net3d_conv_block3d_conv3d_kernel_m:@I
;assignvariableop_34_adam_u_net3d_conv_block3d_conv3d_bias_m:@]
?assignvariableop_35_adam_u_net3d_conv_block3d_conv3d_1_kernel_m:@@K
=assignvariableop_36_adam_u_net3d_conv_block3d_conv3d_1_bias_m:@_
Aassignvariableop_37_adam_u_net3d_conv_block3d_2_conv3d_4_kernel_m:@\M
?assignvariableop_38_adam_u_net3d_conv_block3d_2_conv3d_4_bias_m:\_
Aassignvariableop_39_adam_u_net3d_conv_block3d_2_conv3d_5_kernel_m:\\M
?assignvariableop_40_adam_u_net3d_conv_block3d_2_conv3d_5_bias_m:\`
Aassignvariableop_41_adam_u_net3d_conv_block3d_4_conv3d_8_kernel_m:\N
?assignvariableop_42_adam_u_net3d_conv_block3d_4_conv3d_8_bias_m:	a
Aassignvariableop_43_adam_u_net3d_conv_block3d_4_conv3d_9_kernel_m:N
?assignvariableop_44_adam_u_net3d_conv_block3d_4_conv3d_9_bias_m:	`
Aassignvariableop_45_adam_u_net3d_conv_block3d_1_conv3d_2_kernel_m:@M
?assignvariableop_46_adam_u_net3d_conv_block3d_1_conv3d_2_bias_m:@_
Aassignvariableop_47_adam_u_net3d_conv_block3d_1_conv3d_3_kernel_m:@@M
?assignvariableop_48_adam_u_net3d_conv_block3d_1_conv3d_3_bias_m:@`
Aassignvariableop_49_adam_u_net3d_conv_block3d_3_conv3d_6_kernel_m:Ü\M
?assignvariableop_50_adam_u_net3d_conv_block3d_3_conv3d_6_bias_m:\_
Aassignvariableop_51_adam_u_net3d_conv_block3d_3_conv3d_7_kernel_m:\\M
?assignvariableop_52_adam_u_net3d_conv_block3d_3_conv3d_7_bias_m:\`
Bassignvariableop_53_adam_u_net3d_conv_block3d_5_conv3d_10_kernel_m:@N
@assignvariableop_54_adam_u_net3d_conv_block3d_5_conv3d_10_bias_m:[
=assignvariableop_55_adam_u_net3d_conv_block3d_conv3d_kernel_v:@I
;assignvariableop_56_adam_u_net3d_conv_block3d_conv3d_bias_v:@]
?assignvariableop_57_adam_u_net3d_conv_block3d_conv3d_1_kernel_v:@@K
=assignvariableop_58_adam_u_net3d_conv_block3d_conv3d_1_bias_v:@_
Aassignvariableop_59_adam_u_net3d_conv_block3d_2_conv3d_4_kernel_v:@\M
?assignvariableop_60_adam_u_net3d_conv_block3d_2_conv3d_4_bias_v:\_
Aassignvariableop_61_adam_u_net3d_conv_block3d_2_conv3d_5_kernel_v:\\M
?assignvariableop_62_adam_u_net3d_conv_block3d_2_conv3d_5_bias_v:\`
Aassignvariableop_63_adam_u_net3d_conv_block3d_4_conv3d_8_kernel_v:\N
?assignvariableop_64_adam_u_net3d_conv_block3d_4_conv3d_8_bias_v:	a
Aassignvariableop_65_adam_u_net3d_conv_block3d_4_conv3d_9_kernel_v:N
?assignvariableop_66_adam_u_net3d_conv_block3d_4_conv3d_9_bias_v:	`
Aassignvariableop_67_adam_u_net3d_conv_block3d_1_conv3d_2_kernel_v:@M
?assignvariableop_68_adam_u_net3d_conv_block3d_1_conv3d_2_bias_v:@_
Aassignvariableop_69_adam_u_net3d_conv_block3d_1_conv3d_3_kernel_v:@@M
?assignvariableop_70_adam_u_net3d_conv_block3d_1_conv3d_3_bias_v:@`
Aassignvariableop_71_adam_u_net3d_conv_block3d_3_conv3d_6_kernel_v:Ü\M
?assignvariableop_72_adam_u_net3d_conv_block3d_3_conv3d_6_bias_v:\_
Aassignvariableop_73_adam_u_net3d_conv_block3d_3_conv3d_7_kernel_v:\\M
?assignvariableop_74_adam_u_net3d_conv_block3d_3_conv3d_7_bias_v:\`
Bassignvariableop_75_adam_u_net3d_conv_block3d_5_conv3d_10_kernel_v:@N
@assignvariableop_76_adam_u_net3d_conv_block3d_5_conv3d_10_bias_v:
identity_78˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_39˘AssignVariableOp_4˘AssignVariableOp_40˘AssignVariableOp_41˘AssignVariableOp_42˘AssignVariableOp_43˘AssignVariableOp_44˘AssignVariableOp_45˘AssignVariableOp_46˘AssignVariableOp_47˘AssignVariableOp_48˘AssignVariableOp_49˘AssignVariableOp_5˘AssignVariableOp_50˘AssignVariableOp_51˘AssignVariableOp_52˘AssignVariableOp_53˘AssignVariableOp_54˘AssignVariableOp_55˘AssignVariableOp_56˘AssignVariableOp_57˘AssignVariableOp_58˘AssignVariableOp_59˘AssignVariableOp_6˘AssignVariableOp_60˘AssignVariableOp_61˘AssignVariableOp_62˘AssignVariableOp_63˘AssignVariableOp_64˘AssignVariableOp_65˘AssignVariableOp_66˘AssignVariableOp_67˘AssignVariableOp_68˘AssignVariableOp_69˘AssignVariableOp_7˘AssignVariableOp_70˘AssignVariableOp_71˘AssignVariableOp_72˘AssignVariableOp_73˘AssignVariableOp_74˘AssignVariableOp_75˘AssignVariableOp_76˘AssignVariableOp_8˘AssignVariableOp_9ú#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:N*
dtype0* #
value#B#NB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*ą
value§B¤NB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B §
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Î
_output_shapesť
¸::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*\
dtypesR
P2N	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp3assignvariableop_u_net3d_conv_block3d_conv3d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:˘
AssignVariableOp_1AssignVariableOp3assignvariableop_1_u_net3d_conv_block3d_conv3d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_2AssignVariableOp7assignvariableop_2_u_net3d_conv_block3d_conv3d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_3AssignVariableOp5assignvariableop_3_u_net3d_conv_block3d_conv3d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_4AssignVariableOp9assignvariableop_4_u_net3d_conv_block3d_2_conv3d_4_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_5AssignVariableOp7assignvariableop_5_u_net3d_conv_block3d_2_conv3d_4_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_6AssignVariableOp9assignvariableop_6_u_net3d_conv_block3d_2_conv3d_5_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_7AssignVariableOp7assignvariableop_7_u_net3d_conv_block3d_2_conv3d_5_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_8AssignVariableOp9assignvariableop_8_u_net3d_conv_block3d_4_conv3d_8_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_9AssignVariableOp7assignvariableop_9_u_net3d_conv_block3d_4_conv3d_8_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ť
AssignVariableOp_10AssignVariableOp:assignvariableop_10_u_net3d_conv_block3d_4_conv3d_9_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Š
AssignVariableOp_11AssignVariableOp8assignvariableop_11_u_net3d_conv_block3d_4_conv3d_9_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ť
AssignVariableOp_12AssignVariableOp:assignvariableop_12_u_net3d_conv_block3d_1_conv3d_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Š
AssignVariableOp_13AssignVariableOp8assignvariableop_13_u_net3d_conv_block3d_1_conv3d_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ť
AssignVariableOp_14AssignVariableOp:assignvariableop_14_u_net3d_conv_block3d_1_conv3d_3_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Š
AssignVariableOp_15AssignVariableOp8assignvariableop_15_u_net3d_conv_block3d_1_conv3d_3_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ť
AssignVariableOp_16AssignVariableOp:assignvariableop_16_u_net3d_conv_block3d_3_conv3d_6_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Š
AssignVariableOp_17AssignVariableOp8assignvariableop_17_u_net3d_conv_block3d_3_conv3d_6_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ť
AssignVariableOp_18AssignVariableOp:assignvariableop_18_u_net3d_conv_block3d_3_conv3d_7_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Š
AssignVariableOp_19AssignVariableOp8assignvariableop_19_u_net3d_conv_block3d_3_conv3d_7_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ź
AssignVariableOp_20AssignVariableOp;assignvariableop_20_u_net3d_conv_block3d_5_conv3d_10_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ş
AssignVariableOp_21AssignVariableOp9assignvariableop_21_u_net3d_conv_block3d_5_conv3d_10_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_beta_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_beta_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_decayIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_learning_rateIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_2Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ž
AssignVariableOp_33AssignVariableOp=assignvariableop_33_adam_u_net3d_conv_block3d_conv3d_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ź
AssignVariableOp_34AssignVariableOp;assignvariableop_34_adam_u_net3d_conv_block3d_conv3d_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_35AssignVariableOp?assignvariableop_35_adam_u_net3d_conv_block3d_conv3d_1_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ž
AssignVariableOp_36AssignVariableOp=assignvariableop_36_adam_u_net3d_conv_block3d_conv3d_1_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_37AssignVariableOpAassignvariableop_37_adam_u_net3d_conv_block3d_2_conv3d_4_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_38AssignVariableOp?assignvariableop_38_adam_u_net3d_conv_block3d_2_conv3d_4_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_39AssignVariableOpAassignvariableop_39_adam_u_net3d_conv_block3d_2_conv3d_5_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_40AssignVariableOp?assignvariableop_40_adam_u_net3d_conv_block3d_2_conv3d_5_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_41AssignVariableOpAassignvariableop_41_adam_u_net3d_conv_block3d_4_conv3d_8_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_42AssignVariableOp?assignvariableop_42_adam_u_net3d_conv_block3d_4_conv3d_8_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_43AssignVariableOpAassignvariableop_43_adam_u_net3d_conv_block3d_4_conv3d_9_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_44AssignVariableOp?assignvariableop_44_adam_u_net3d_conv_block3d_4_conv3d_9_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_45AssignVariableOpAassignvariableop_45_adam_u_net3d_conv_block3d_1_conv3d_2_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_46AssignVariableOp?assignvariableop_46_adam_u_net3d_conv_block3d_1_conv3d_2_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_47AssignVariableOpAassignvariableop_47_adam_u_net3d_conv_block3d_1_conv3d_3_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_48AssignVariableOp?assignvariableop_48_adam_u_net3d_conv_block3d_1_conv3d_3_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_49AssignVariableOpAassignvariableop_49_adam_u_net3d_conv_block3d_3_conv3d_6_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_50AssignVariableOp?assignvariableop_50_adam_u_net3d_conv_block3d_3_conv3d_6_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_51AssignVariableOpAassignvariableop_51_adam_u_net3d_conv_block3d_3_conv3d_7_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_52AssignVariableOp?assignvariableop_52_adam_u_net3d_conv_block3d_3_conv3d_7_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:ł
AssignVariableOp_53AssignVariableOpBassignvariableop_53_adam_u_net3d_conv_block3d_5_conv3d_10_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:ą
AssignVariableOp_54AssignVariableOp@assignvariableop_54_adam_u_net3d_conv_block3d_5_conv3d_10_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ž
AssignVariableOp_55AssignVariableOp=assignvariableop_55_adam_u_net3d_conv_block3d_conv3d_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ź
AssignVariableOp_56AssignVariableOp;assignvariableop_56_adam_u_net3d_conv_block3d_conv3d_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_57AssignVariableOp?assignvariableop_57_adam_u_net3d_conv_block3d_conv3d_1_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ž
AssignVariableOp_58AssignVariableOp=assignvariableop_58_adam_u_net3d_conv_block3d_conv3d_1_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_59AssignVariableOpAassignvariableop_59_adam_u_net3d_conv_block3d_2_conv3d_4_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_60AssignVariableOp?assignvariableop_60_adam_u_net3d_conv_block3d_2_conv3d_4_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_61AssignVariableOpAassignvariableop_61_adam_u_net3d_conv_block3d_2_conv3d_5_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_62AssignVariableOp?assignvariableop_62_adam_u_net3d_conv_block3d_2_conv3d_5_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_63AssignVariableOpAassignvariableop_63_adam_u_net3d_conv_block3d_4_conv3d_8_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_64AssignVariableOp?assignvariableop_64_adam_u_net3d_conv_block3d_4_conv3d_8_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_65AssignVariableOpAassignvariableop_65_adam_u_net3d_conv_block3d_4_conv3d_9_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_66AssignVariableOp?assignvariableop_66_adam_u_net3d_conv_block3d_4_conv3d_9_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_67AssignVariableOpAassignvariableop_67_adam_u_net3d_conv_block3d_1_conv3d_2_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_68AssignVariableOp?assignvariableop_68_adam_u_net3d_conv_block3d_1_conv3d_2_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_69AssignVariableOpAassignvariableop_69_adam_u_net3d_conv_block3d_1_conv3d_3_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_70AssignVariableOp?assignvariableop_70_adam_u_net3d_conv_block3d_1_conv3d_3_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_71AssignVariableOpAassignvariableop_71_adam_u_net3d_conv_block3d_3_conv3d_6_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_72AssignVariableOp?assignvariableop_72_adam_u_net3d_conv_block3d_3_conv3d_6_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_73AssignVariableOpAassignvariableop_73_adam_u_net3d_conv_block3d_3_conv3d_7_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_74AssignVariableOp?assignvariableop_74_adam_u_net3d_conv_block3d_3_conv3d_7_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:ł
AssignVariableOp_75AssignVariableOpBassignvariableop_75_adam_u_net3d_conv_block3d_5_conv3d_10_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:ą
AssignVariableOp_76AssignVariableOp@assignvariableop_76_adam_u_net3d_conv_block3d_5_conv3d_10_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 í
Identity_77Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_78IdentityIdentity_77:output:0^NoOp_1*
T0*
_output_shapes
: Ú
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_78Identity_78:output:0*ą
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

Ň
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132754
input_1/
conv3d_2_1132741:@
conv3d_2_1132743:@.
conv3d_3_1132747:@@
conv3d_3_1132749:@
identity˘ conv3d_2/StatefulPartitionedCall˘ conv3d_3/StatefulPartitionedCall
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_2_1132741conv3d_2_1132743*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_2_layer_call_and_return_conditional_losses_1132627
	LeakyRelu	LeakyRelu)conv3d_2/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_3_1132747conv3d_3_1132749*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_3_layer_call_and_return_conditional_losses_1132644
LeakyRelu_1	LeakyRelu)conv3d_3/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
NoOpNoOp!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙: : : : 2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall:_ [
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1

Ń
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132434
input_1.
conv3d_4_1132421:@\
conv3d_4_1132423:\.
conv3d_5_1132427:\\
conv3d_5_1132429:\
identity˘ conv3d_4/StatefulPartitionedCall˘ conv3d_5/StatefulPartitionedCall
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_4_1132421conv3d_4_1132423*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1132307
	LeakyRelu	LeakyRelu)conv3d_4/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_5_1132427conv3d_5_1132429*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1132324
LeakyRelu_1	LeakyRelu)conv3d_5/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
NoOpNoOp!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙@: : : : 2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
!
_user_specified_name	input_1

¤
+__inference_conv3d_10_layer_call_fn_1137471

inputs%
unknown:@
	unknown_0:
identity˘StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1132971}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
Ň


E__inference_conv3d_9_layer_call_and_return_conditional_losses_1137595

inputs>
conv3d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:*
dtype0
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides	
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:˙˙˙˙˙˙˙˙˙@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
ř
đ
0__inference_conv_block3d_4_layer_call_fn_1136805

inputs&
unknown:\
	unknown_0:	)
	unknown_1:
	unknown_2:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132492|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙@@\: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
 
_user_specified_nameinputs
Ň=
Ę

D__inference_u_net3d_layer_call_and_return_conditional_losses_1133743

inputs2
conv_block3d_1133686:@"
conv_block3d_1133688:@2
conv_block3d_1133690:@@"
conv_block3d_1133692:@4
conv_block3d_2_1133696:@\$
conv_block3d_2_1133698:\4
conv_block3d_2_1133700:\\$
conv_block3d_2_1133702:\5
conv_block3d_4_1133706:\%
conv_block3d_4_1133708:	6
conv_block3d_4_1133710:%
conv_block3d_4_1133712:	5
conv_block3d_3_1133717:Ü\$
conv_block3d_3_1133719:\4
conv_block3d_3_1133721:\\$
conv_block3d_3_1133723:\5
conv_block3d_1_1133728:@$
conv_block3d_1_1133730:@4
conv_block3d_1_1133732:@@$
conv_block3d_1_1133734:@4
conv_block3d_5_1133737:@$
conv_block3d_5_1133739:
identity˘$conv_block3d/StatefulPartitionedCall˘&conv_block3d_1/StatefulPartitionedCall˘&conv_block3d_2/StatefulPartitionedCall˘&conv_block3d_3/StatefulPartitionedCall˘&conv_block3d_4/StatefulPartitionedCall˘&conv_block3d_5/StatefulPartitionedCallĆ
$conv_block3d/StatefulPartitionedCallStatefulPartitionedCallinputsconv_block3d_1133686conv_block3d_1133688conv_block3d_1133690conv_block3d_1133692*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132234ý
max_pooling3d/PartitionedCallPartitionedCall-conv_block3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_max_pooling3d_layer_call_and_return_conditional_losses_1132939ň
&conv_block3d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling3d/PartitionedCall:output:0conv_block3d_2_1133696conv_block3d_2_1133698conv_block3d_2_1133700conv_block3d_2_1133702*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132394
max_pooling3d_1/PartitionedCallPartitionedCall/conv_block3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1132951ó
&conv_block3d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_1/PartitionedCall:output:0conv_block3d_4_1133706conv_block3d_4_1133708conv_block3d_4_1133710conv_block3d_4_1133712*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132554
up_sampling3d_1/PartitionedCallPartitionedCall/conv_block3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_1133232Ť
concatenate_1/PartitionedCallPartitionedCall(up_sampling3d_1/PartitionedCall:output:0/conv_block3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1133241ň
&conv_block3d_3/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv_block3d_3_1133717conv_block3d_3_1133719conv_block3d_3_1133721conv_block3d_3_1133723*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132874˙
up_sampling3d/PartitionedCallPartitionedCall/conv_block3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_up_sampling3d_layer_call_and_return_conditional_losses_1133533Ł
concatenate/PartitionedCallPartitionedCall&up_sampling3d/PartitionedCall:output:0-conv_block3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1133542đ
&conv_block3d_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv_block3d_1_1133728conv_block3d_1_1133730conv_block3d_1_1133732conv_block3d_1_1133734*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132714Ç
&conv_block3d_5/StatefulPartitionedCallStatefulPartitionedCall/conv_block3d_1/StatefulPartitionedCall:output:0conv_block3d_5_1133737conv_block3d_5_1133739*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133015
IdentityIdentity/conv_block3d_5/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp%^conv_block3d/StatefulPartitionedCall'^conv_block3d_1/StatefulPartitionedCall'^conv_block3d_2/StatefulPartitionedCall'^conv_block3d_3/StatefulPartitionedCall'^conv_block3d_4/StatefulPartitionedCall'^conv_block3d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : 2L
$conv_block3d/StatefulPartitionedCall$conv_block3d/StatefulPartitionedCall2P
&conv_block3d_1/StatefulPartitionedCall&conv_block3d_1/StatefulPartitionedCall2P
&conv_block3d_2/StatefulPartitionedCall&conv_block3d_2/StatefulPartitionedCall2P
&conv_block3d_3/StatefulPartitionedCall&conv_block3d_3/StatefulPartitionedCall2P
&conv_block3d_4/StatefulPartitionedCall&conv_block3d_4/StatefulPartitionedCall2P
&conv_block3d_5/StatefulPartitionedCall&conv_block3d_5/StatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

v
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1137462
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Üf
IdentityIdentityconcat:output:0*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: ˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙\:` \
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:_[
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
"
_user_specified_name
inputs/1

Đ
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132394

inputs.
conv3d_4_1132381:@\
conv3d_4_1132383:\.
conv3d_5_1132387:\\
conv3d_5_1132389:\
identity˘ conv3d_4/StatefulPartitionedCall˘ conv3d_5/StatefulPartitionedCall
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_4_1132381conv3d_4_1132383*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1132307
	LeakyRelu	LeakyRelu)conv3d_4/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_5_1132387conv3d_5_1132389*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1132324
LeakyRelu_1	LeakyRelu)conv3d_5/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
NoOpNoOp!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙@: : : : 2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ů
ë
0__inference_conv_block3d_2_layer_call_fn_1136756

inputs%
unknown:@\
	unknown_0:\'
	unknown_1:\\
	unknown_2:\
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132394}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

Ň
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132770
input_1/
conv3d_2_1132757:@
conv3d_2_1132759:@.
conv3d_3_1132763:@@
conv3d_3_1132765:@
identity˘ conv3d_2/StatefulPartitionedCall˘ conv3d_3/StatefulPartitionedCall
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_2_1132757conv3d_2_1132759*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_2_layer_call_and_return_conditional_losses_1132627
	LeakyRelu	LeakyRelu)conv3d_2/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_3_1132763conv3d_3_1132765*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_3_layer_call_and_return_conditional_losses_1132644
LeakyRelu_1	LeakyRelu)conv3d_3/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
NoOpNoOp!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙: : : : 2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall:_ [
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
Ő


E__inference_conv3d_2_layer_call_and_return_conditional_losses_1132627

inputs=
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: ˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˙
í
0__inference_conv_block3d_1_layer_call_fn_1132738
input_1&
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132714}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1

r
H__inference_concatenate_layer_call_and_return_conditional_losses_1133542

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙f
IdentityIdentityconcat:output:0*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙@:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs:]Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ő
é
.__inference_conv_block3d_layer_call_fn_1136694

inputs%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132234}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ť
f
J__inference_up_sampling3d_layer_call_and_return_conditional_losses_1133533

inputs
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ď
splitSplitsplit/split_dim:output:0inputs*
T0*˘
_output_shapes
:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_splitM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ő
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11concat/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ń 
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0* 
_output_shapes 
 :˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_splitO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :'
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9split_1:output:10split_1:output:10split_1:output:11split_1:output:11split_1:output:12split_1:output:12split_1:output:13split_1:output:13split_1:output:14split_1:output:14split_1:output:15split_1:output:15split_1:output:16split_1:output:16split_1:output:17split_1:output:17split_1:output:18split_1:output:18split_1:output:19split_1:output:19split_1:output:20split_1:output:20split_1:output:21split_1:output:21split_1:output:22split_1:output:22split_1:output:23split_1:output:23split_1:output:24split_1:output:24split_1:output:25split_1:output:25split_1:output:26split_1:output:26split_1:output:27split_1:output:27split_1:output:28split_1:output:28split_1:output:29split_1:output:29split_1:output:30split_1:output:30split_1:output:31split_1:output:31split_1:output:32split_1:output:32split_1:output:33split_1:output:33split_1:output:34split_1:output:34split_1:output:35split_1:output:35split_1:output:36split_1:output:36split_1:output:37split_1:output:37split_1:output:38split_1:output:38split_1:output:39split_1:output:39split_1:output:40split_1:output:40split_1:output:41split_1:output:41split_1:output:42split_1:output:42split_1:output:43split_1:output:43split_1:output:44split_1:output:44split_1:output:45split_1:output:45split_1:output:46split_1:output:46split_1:output:47split_1:output:47split_1:output:48split_1:output:48split_1:output:49split_1:output:49split_1:output:50split_1:output:50split_1:output:51split_1:output:51split_1:output:52split_1:output:52split_1:output:53split_1:output:53split_1:output:54split_1:output:54split_1:output:55split_1:output:55split_1:output:56split_1:output:56split_1:output:57split_1:output:57split_1:output:58split_1:output:58split_1:output:59split_1:output:59split_1:output:60split_1:output:60split_1:output:61split_1:output:61split_1:output:62split_1:output:62split_1:output:63split_1:output:63split_1:output:64split_1:output:64split_1:output:65split_1:output:65split_1:output:66split_1:output:66split_1:output:67split_1:output:67split_1:output:68split_1:output:68split_1:output:69split_1:output:69split_1:output:70split_1:output:70split_1:output:71split_1:output:71split_1:output:72split_1:output:72split_1:output:73split_1:output:73split_1:output:74split_1:output:74split_1:output:75split_1:output:75split_1:output:76split_1:output:76split_1:output:77split_1:output:77split_1:output:78split_1:output:78split_1:output:79split_1:output:79split_1:output:80split_1:output:80split_1:output:81split_1:output:81split_1:output:82split_1:output:82split_1:output:83split_1:output:83split_1:output:84split_1:output:84split_1:output:85split_1:output:85split_1:output:86split_1:output:86split_1:output:87split_1:output:87split_1:output:88split_1:output:88split_1:output:89split_1:output:89split_1:output:90split_1:output:90split_1:output:91split_1:output:91split_1:output:92split_1:output:92split_1:output:93split_1:output:93split_1:output:94split_1:output:94split_1:output:95split_1:output:95split_1:output:96split_1:output:96split_1:output:97split_1:output:97split_1:output:98split_1:output:98split_1:output:99split_1:output:99split_1:output:100split_1:output:100split_1:output:101split_1:output:101split_1:output:102split_1:output:102split_1:output:103split_1:output:103split_1:output:104split_1:output:104split_1:output:105split_1:output:105split_1:output:106split_1:output:106split_1:output:107split_1:output:107split_1:output:108split_1:output:108split_1:output:109split_1:output:109split_1:output:110split_1:output:110split_1:output:111split_1:output:111split_1:output:112split_1:output:112split_1:output:113split_1:output:113split_1:output:114split_1:output:114split_1:output:115split_1:output:115split_1:output:116split_1:output:116split_1:output:117split_1:output:117split_1:output:118split_1:output:118split_1:output:119split_1:output:119split_1:output:120split_1:output:120split_1:output:121split_1:output:121split_1:output:122split_1:output:122split_1:output:123split_1:output:123split_1:output:124split_1:output:124split_1:output:125split_1:output:125split_1:output:126split_1:output:126split_1:output:127split_1:output:127concat_1/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó 
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0* 
_output_shapes 
 :˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\:˙˙˙˙˙˙˙˙˙\*
	num_splitO
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :'
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9split_2:output:10split_2:output:10split_2:output:11split_2:output:11split_2:output:12split_2:output:12split_2:output:13split_2:output:13split_2:output:14split_2:output:14split_2:output:15split_2:output:15split_2:output:16split_2:output:16split_2:output:17split_2:output:17split_2:output:18split_2:output:18split_2:output:19split_2:output:19split_2:output:20split_2:output:20split_2:output:21split_2:output:21split_2:output:22split_2:output:22split_2:output:23split_2:output:23split_2:output:24split_2:output:24split_2:output:25split_2:output:25split_2:output:26split_2:output:26split_2:output:27split_2:output:27split_2:output:28split_2:output:28split_2:output:29split_2:output:29split_2:output:30split_2:output:30split_2:output:31split_2:output:31split_2:output:32split_2:output:32split_2:output:33split_2:output:33split_2:output:34split_2:output:34split_2:output:35split_2:output:35split_2:output:36split_2:output:36split_2:output:37split_2:output:37split_2:output:38split_2:output:38split_2:output:39split_2:output:39split_2:output:40split_2:output:40split_2:output:41split_2:output:41split_2:output:42split_2:output:42split_2:output:43split_2:output:43split_2:output:44split_2:output:44split_2:output:45split_2:output:45split_2:output:46split_2:output:46split_2:output:47split_2:output:47split_2:output:48split_2:output:48split_2:output:49split_2:output:49split_2:output:50split_2:output:50split_2:output:51split_2:output:51split_2:output:52split_2:output:52split_2:output:53split_2:output:53split_2:output:54split_2:output:54split_2:output:55split_2:output:55split_2:output:56split_2:output:56split_2:output:57split_2:output:57split_2:output:58split_2:output:58split_2:output:59split_2:output:59split_2:output:60split_2:output:60split_2:output:61split_2:output:61split_2:output:62split_2:output:62split_2:output:63split_2:output:63split_2:output:64split_2:output:64split_2:output:65split_2:output:65split_2:output:66split_2:output:66split_2:output:67split_2:output:67split_2:output:68split_2:output:68split_2:output:69split_2:output:69split_2:output:70split_2:output:70split_2:output:71split_2:output:71split_2:output:72split_2:output:72split_2:output:73split_2:output:73split_2:output:74split_2:output:74split_2:output:75split_2:output:75split_2:output:76split_2:output:76split_2:output:77split_2:output:77split_2:output:78split_2:output:78split_2:output:79split_2:output:79split_2:output:80split_2:output:80split_2:output:81split_2:output:81split_2:output:82split_2:output:82split_2:output:83split_2:output:83split_2:output:84split_2:output:84split_2:output:85split_2:output:85split_2:output:86split_2:output:86split_2:output:87split_2:output:87split_2:output:88split_2:output:88split_2:output:89split_2:output:89split_2:output:90split_2:output:90split_2:output:91split_2:output:91split_2:output:92split_2:output:92split_2:output:93split_2:output:93split_2:output:94split_2:output:94split_2:output:95split_2:output:95split_2:output:96split_2:output:96split_2:output:97split_2:output:97split_2:output:98split_2:output:98split_2:output:99split_2:output:99split_2:output:100split_2:output:100split_2:output:101split_2:output:101split_2:output:102split_2:output:102split_2:output:103split_2:output:103split_2:output:104split_2:output:104split_2:output:105split_2:output:105split_2:output:106split_2:output:106split_2:output:107split_2:output:107split_2:output:108split_2:output:108split_2:output:109split_2:output:109split_2:output:110split_2:output:110split_2:output:111split_2:output:111split_2:output:112split_2:output:112split_2:output:113split_2:output:113split_2:output:114split_2:output:114split_2:output:115split_2:output:115split_2:output:116split_2:output:116split_2:output:117split_2:output:117split_2:output:118split_2:output:118split_2:output:119split_2:output:119split_2:output:120split_2:output:120split_2:output:121split_2:output:121split_2:output:122split_2:output:122split_2:output:123split_2:output:123split_2:output:124split_2:output:124split_2:output:125split_2:output:125split_2:output:126split_2:output:126split_2:output:127split_2:output:127concat_2/axis:output:0*
N*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\g
IdentityIdentityconcat_2:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙\:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
 
_user_specified_nameinputs
×
f
J__inference_max_pooling3d_layer_call_and_return_conditional_losses_1132939

inputs
identity˝
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize	
*
paddingSAME*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: {
W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ń
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132812

inputs/
conv3d_6_1132788:Ü\
conv3d_6_1132790:\.
conv3d_7_1132805:\\
conv3d_7_1132807:\
identity˘ conv3d_6/StatefulPartitionedCall˘ conv3d_7/StatefulPartitionedCall
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_6_1132788conv3d_6_1132790*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1132787
	LeakyRelu	LeakyRelu)conv3d_6/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_7_1132805conv3d_7_1132807*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1132804
LeakyRelu_1	LeakyRelu)conv3d_7/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
NoOpNoOp!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙Ü: : : : 2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
 
_user_specified_nameinputs

ď
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1136898

inputsF
'conv3d_2_conv3d_readvariableop_resource:@6
(conv3d_2_biasadd_readvariableop_resource:@E
'conv3d_3_conv3d_readvariableop_resource:@@6
(conv3d_3_biasadd_readvariableop_resource:@
identity˘conv3d_2/BiasAdd/ReadVariableOp˘conv3d_2/Conv3D/ReadVariableOp˘conv3d_3/BiasAdd/ReadVariableOp˘conv3d_3/Conv3D/ReadVariableOp
conv3d_2/Conv3D/ReadVariableOpReadVariableOp'conv3d_2_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0˛
conv3d_2/Conv3DConv3Dinputs&conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

conv3d_2/BiasAdd/ReadVariableOpReadVariableOp(conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv3d_2/BiasAddBiasAddconv3d_2/Conv3D:output:0'conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@x
	LeakyRelu	LeakyReluconv3d_2/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Ă
conv3d_3/Conv3DConv3DLeakyRelu:activations:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@z
LeakyRelu_1	LeakyReluconv3d_3/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@Ě
NoOpNoOp ^conv3d_2/BiasAdd/ReadVariableOp^conv3d_2/Conv3D/ReadVariableOp ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙: : : : 2B
conv3d_2/BiasAdd/ReadVariableOpconv3d_2/BiasAdd/ReadVariableOp2@
conv3d_2/Conv3D/ReadVariableOpconv3d_2/Conv3D/ReadVariableOp2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ą
°
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1136668

inputsF
(conv3d_10_conv3d_readvariableop_resource:@7
)conv3d_10_biasadd_readvariableop_resource:
identity˘ conv3d_10/BiasAdd/ReadVariableOp˘conv3d_10/Conv3D/ReadVariableOp
conv3d_10/Conv3D/ReadVariableOpReadVariableOp(conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0´
conv3d_10/Conv3DConv3Dinputs'conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides	

 conv3d_10/BiasAdd/ReadVariableOpReadVariableOp)conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ą
conv3d_10/BiasAddBiasAddconv3d_10/Conv3D:output:0(conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙w
IdentityIdentityconv3d_10/BiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
NoOpNoOp!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 2D
 conv3d_10/BiasAdd/ReadVariableOp conv3d_10/BiasAdd/ReadVariableOp2B
conv3d_10/Conv3D/ReadVariableOpconv3d_10/Conv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

Ń
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132450
input_1.
conv3d_4_1132437:@\
conv3d_4_1132439:\.
conv3d_5_1132443:\\
conv3d_5_1132445:\
identity˘ conv3d_4/StatefulPartitionedCall˘ conv3d_5/StatefulPartitionedCall
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_4_1132437conv3d_4_1132439*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1132307
	LeakyRelu	LeakyRelu)conv3d_4/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCallLeakyRelu:activations:0conv3d_5_1132443conv3d_5_1132445*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1132324
LeakyRelu_1	LeakyRelu)conv3d_5/StatefulPartitionedCall:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
NoOpNoOp!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙@: : : : 2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
!
_user_specified_name	input_1
ř
ę
.__inference_conv_block3d_layer_call_fn_1132183
input_1%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132172}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1

Ł
*__inference_conv3d_3_layer_call_fn_1137623

inputs%
unknown:@@
	unknown_0:@
identity˘StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_3_layer_call_and_return_conditional_losses_1132644}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs

Ľ
*__inference_conv3d_8_layer_call_fn_1137566

inputs&
unknown:\
	unknown_0:	
identity˘StatefulPartitionedCallě
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1132467|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:˙˙˙˙˙˙˙˙˙@@\: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\
 
_user_specified_nameinputs
×
f
J__inference_max_pooling3d_layer_call_and_return_conditional_losses_1136988

inputs
identity˝
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize	
*
paddingSAME*
strides	

IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: {
W
_output_shapesE
C:A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ď
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1136916

inputsF
'conv3d_2_conv3d_readvariableop_resource:@6
(conv3d_2_biasadd_readvariableop_resource:@E
'conv3d_3_conv3d_readvariableop_resource:@@6
(conv3d_3_biasadd_readvariableop_resource:@
identity˘conv3d_2/BiasAdd/ReadVariableOp˘conv3d_2/Conv3D/ReadVariableOp˘conv3d_3/BiasAdd/ReadVariableOp˘conv3d_3/Conv3D/ReadVariableOp
conv3d_2/Conv3D/ReadVariableOpReadVariableOp'conv3d_2_conv3d_readvariableop_resource*+
_output_shapes
:@*
dtype0˛
conv3d_2/Conv3DConv3Dinputs&conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

conv3d_2/BiasAdd/ReadVariableOpReadVariableOp(conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv3d_2/BiasAddBiasAddconv3d_2/Conv3D:output:0'conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@x
	LeakyRelu	LeakyReluconv3d_2/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype0Ă
conv3d_3/Conv3DConv3DLeakyRelu:activations:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides	

conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@z
LeakyRelu_1	LeakyReluconv3d_3/BiasAdd:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*
alpha%ÍĚĚ=v
IdentityIdentityLeakyRelu_1:activations:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@Ě
NoOpNoOp ^conv3d_2/BiasAdd/ReadVariableOp^conv3d_2/Conv3D/ReadVariableOp ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙: : : : 2B
conv3d_2/BiasAdd/ReadVariableOpconv3d_2/BiasAdd/ReadVariableOp2@
conv3d_2/Conv3D/ReadVariableOpconv3d_2/Conv3D/ReadVariableOp2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

[
/__inference_concatenate_1_layer_call_fn_1137455
inputs_0
inputs_1
identityÖ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1133241o
IdentityIdentityPartitionedCall:output:0*
T0*6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C: ˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙\:` \
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:_[
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\
"
_user_specified_name
inputs/1
Ő=
Ë

D__inference_u_net3d_layer_call_and_return_conditional_losses_1133899
input_12
conv_block3d_1133842:@"
conv_block3d_1133844:@2
conv_block3d_1133846:@@"
conv_block3d_1133848:@4
conv_block3d_2_1133852:@\$
conv_block3d_2_1133854:\4
conv_block3d_2_1133856:\\$
conv_block3d_2_1133858:\5
conv_block3d_4_1133862:\%
conv_block3d_4_1133864:	6
conv_block3d_4_1133866:%
conv_block3d_4_1133868:	5
conv_block3d_3_1133873:Ü\$
conv_block3d_3_1133875:\4
conv_block3d_3_1133877:\\$
conv_block3d_3_1133879:\5
conv_block3d_1_1133884:@$
conv_block3d_1_1133886:@4
conv_block3d_1_1133888:@@$
conv_block3d_1_1133890:@4
conv_block3d_5_1133893:@$
conv_block3d_5_1133895:
identity˘$conv_block3d/StatefulPartitionedCall˘&conv_block3d_1/StatefulPartitionedCall˘&conv_block3d_2/StatefulPartitionedCall˘&conv_block3d_3/StatefulPartitionedCall˘&conv_block3d_4/StatefulPartitionedCall˘&conv_block3d_5/StatefulPartitionedCallÇ
$conv_block3d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv_block3d_1133842conv_block3d_1133844conv_block3d_1133846conv_block3d_1133848*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132172ý
max_pooling3d/PartitionedCallPartitionedCall-conv_block3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_max_pooling3d_layer_call_and_return_conditional_losses_1132939ň
&conv_block3d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling3d/PartitionedCall:output:0conv_block3d_2_1133852conv_block3d_2_1133854conv_block3d_2_1133856conv_block3d_2_1133858*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132332
max_pooling3d_1/PartitionedCallPartitionedCall/conv_block3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:˙˙˙˙˙˙˙˙˙@@\* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1132951ó
&conv_block3d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_1/PartitionedCall:output:0conv_block3d_4_1133862conv_block3d_4_1133864conv_block3d_4_1133866conv_block3d_4_1133868*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙@@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132492
up_sampling3d_1/PartitionedCallPartitionedCall/conv_block3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_1133232Ť
concatenate_1/PartitionedCallPartitionedCall(up_sampling3d_1/PartitionedCall:output:0/conv_block3d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1133241ň
&conv_block3d_3/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv_block3d_3_1133873conv_block3d_3_1133875conv_block3d_3_1133877conv_block3d_3_1133879*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132812˙
up_sampling3d/PartitionedCallPartitionedCall/conv_block3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *S
fNRL
J__inference_up_sampling3d_layer_call_and_return_conditional_losses_1133533Ł
concatenate/PartitionedCallPartitionedCall&up_sampling3d/PartitionedCall:output:0-conv_block3d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1133542đ
&conv_block3d_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv_block3d_1_1133884conv_block3d_1_1133886conv_block3d_1_1133888conv_block3d_1_1133890*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132652Ç
&conv_block3d_5/StatefulPartitionedCallStatefulPartitionedCall/conv_block3d_1/StatefulPartitionedCall:output:0conv_block3d_5_1133893conv_block3d_5_1133895*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1132978
IdentityIdentity/conv_block3d_5/StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp%^conv_block3d/StatefulPartitionedCall'^conv_block3d_1/StatefulPartitionedCall'^conv_block3d_2/StatefulPartitionedCall'^conv_block3d_3/StatefulPartitionedCall'^conv_block3d_4/StatefulPartitionedCall'^conv_block3d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : 2L
$conv_block3d/StatefulPartitionedCall$conv_block3d/StatefulPartitionedCall2P
&conv_block3d_1/StatefulPartitionedCall&conv_block3d_1/StatefulPartitionedCall2P
&conv_block3d_2/StatefulPartitionedCall&conv_block3d_2/StatefulPartitionedCall2P
&conv_block3d_3/StatefulPartitionedCall&conv_block3d_3/StatefulPartitionedCall2P
&conv_block3d_4/StatefulPartitionedCall&conv_block3d_4/StatefulPartitionedCall2P
&conv_block3d_5/StatefulPartitionedCall&conv_block3d_5/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
ü
ě
0__inference_conv_block3d_1_layer_call_fn_1136880

inputs&
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132714}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ń


E__inference_conv3d_4_layer_call_and_return_conditional_losses_1132307

inputs<
conv3d_readvariableop_resource:@\-
biasadd_readvariableop_resource:\
identity˘BiasAdd/ReadVariableOp˘Conv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@\*
dtype0 
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:\*
dtype0
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\m
IdentityIdentityBiasAdd:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙@
 
_user_specified_nameinputs
ü
ě
0__inference_conv_block3d_3_layer_call_fn_1136942

inputs&
unknown:Ü\
	unknown_0:\'
	unknown_1:\\
	unknown_2:\
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132874}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙\`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: ˙˙˙˙˙˙˙˙˙Ü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
6
_output_shapes$
": ˙˙˙˙˙˙˙˙˙Ü
 
_user_specified_nameinputs
ë
É
)__inference_u_net3d_layer_call_fn_1133839
input_1%
unknown:@
	unknown_0:@'
	unknown_1:@@
	unknown_2:@'
	unknown_3:@\
	unknown_4:\'
	unknown_5:\\
	unknown_6:\(
	unknown_7:\
	unknown_8:	)
	unknown_9:

unknown_10:	)

unknown_11:Ü\

unknown_12:\(

unknown_13:\\

unknown_14:\)

unknown_15:@

unknown_16:@(

unknown_17:@@

unknown_18:@(

unknown_19:@

unknown_20:
identity˘StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133743}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1"ľ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*´
serving_default 
@
input_15
serving_default_input_1:0@
u_net3d5
StatefulPartitionedCall:0tensorflow/serving/predict:Ň

layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_filters
_dwt_kwargs
_enc_blocks
_dec_blocks

_pools
_upsamps
_concats

_out_block"
_tf_keras_model
Ć
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11
&12
'13
(14
)15
*16
+17
,18
-19
.20
/21"
trackable_list_wrapper
Ć
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11
&12
'13
(14
)15
*16
+17
,18
-19
.20
/21"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ń
5trace_0
6trace_1
7trace_2
8trace_32ć
'__inference_model_layer_call_fn_1134059
'__inference_model_layer_call_fn_1134459
'__inference_model_layer_call_fn_1134508
'__inference_model_layer_call_fn_1134255ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z5trace_0z6trace_1z7trace_2z8trace_3
˝
9trace_0
:trace_1
;trace_2
<trace_32Ň
B__inference_model_layer_call_and_return_conditional_losses_1135014
B__inference_model_layer_call_and_return_conditional_losses_1135520
B__inference_model_layer_call_and_return_conditional_losses_1134304
B__inference_model_layer_call_and_return_conditional_losses_1134353ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z9trace_0z:trace_1z;trace_2z<trace_3
ÍBĘ
"__inference__wrapped_model_1132130input_1"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 

=iter

>beta_1

?beta_2
	@decay
Alearning_ratemémęmëměmímî mď!mđ"mń#mň$mó%mô&mő'mö(m÷)mř*mů+mú,mű-mü.mý/mţv˙vvvvv v!v"v#v$v%v&v'v(v)v*v+v,v-v.v/v"
	optimizer
,
Bserving_default"
signature_map
Ć
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11
&12
'13
(14
)15
*16
+17
,18
-19
.20
/21"
trackable_list_wrapper
Ć
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11
&12
'13
(14
)15
*16
+17
,18
-19
.20
/21"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Í
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32â
)__inference_u_net3d_layer_call_fn_1133606
)__inference_u_net3d_layer_call_fn_1135569
)__inference_u_net3d_layer_call_fn_1135618
)__inference_u_net3d_layer_call_fn_1133839ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
š
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32Î
D__inference_u_net3d_layer_call_and_return_conditional_losses_1136124
D__inference_u_net3d_layer_call_and_return_conditional_losses_1136630
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133899
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133959ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
P0
Q1
R2"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
Ú
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
a_filters

b_convs

c_norms
d	_dropouts"
_tf_keras_model
@:>@2"u_net3d/conv_block3d/conv3d/kernel
.:,@2 u_net3d/conv_block3d/conv3d/bias
B:@@@2$u_net3d/conv_block3d/conv3d_1/kernel
0:.@2"u_net3d/conv_block3d/conv3d_1/bias
D:B@\2&u_net3d/conv_block3d_2/conv3d_4/kernel
2:0\2$u_net3d/conv_block3d_2/conv3d_4/bias
D:B\\2&u_net3d/conv_block3d_2/conv3d_5/kernel
2:0\2$u_net3d/conv_block3d_2/conv3d_5/bias
E:C\2&u_net3d/conv_block3d_4/conv3d_8/kernel
3:12$u_net3d/conv_block3d_4/conv3d_8/bias
F:D2&u_net3d/conv_block3d_4/conv3d_9/kernel
3:12$u_net3d/conv_block3d_4/conv3d_9/bias
E:C@2&u_net3d/conv_block3d_1/conv3d_2/kernel
2:0@2$u_net3d/conv_block3d_1/conv3d_2/bias
D:B@@2&u_net3d/conv_block3d_1/conv3d_3/kernel
2:0@2$u_net3d/conv_block3d_1/conv3d_3/bias
E:CÜ\2&u_net3d/conv_block3d_3/conv3d_6/kernel
2:0\2$u_net3d/conv_block3d_3/conv3d_6/bias
D:B\\2&u_net3d/conv_block3d_3/conv3d_7/kernel
2:0\2$u_net3d/conv_block3d_3/conv3d_7/bias
E:C@2'u_net3d/conv_block3d_5/conv3d_10/kernel
3:12%u_net3d/conv_block3d_5/conv3d_10/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
5
e0
f1
g2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ůBö
'__inference_model_layer_call_fn_1134059input_1"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
řBő
'__inference_model_layer_call_fn_1134459inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
řBő
'__inference_model_layer_call_fn_1134508inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
'__inference_model_layer_call_fn_1134255input_1"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
B__inference_model_layer_call_and_return_conditional_losses_1135014inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
B__inference_model_layer_call_and_return_conditional_losses_1135520inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
B__inference_model_layer_call_and_return_conditional_losses_1134304input_1"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
B__inference_model_layer_call_and_return_conditional_losses_1134353input_1"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ĚBÉ
%__inference_signature_wrapper_1134410input_1"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
v
P0
Q1
R2
S3
T4
U5
V6
W7
X8
Y9
Z10
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ďBě
)__inference_u_net3d_layer_call_fn_1133606input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
îBë
)__inference_u_net3d_layer_call_fn_1135569inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
îBë
)__inference_u_net3d_layer_call_fn_1135618inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ďBě
)__inference_u_net3d_layer_call_fn_1133839input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_u_net3d_layer_call_and_return_conditional_losses_1136124inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_u_net3d_layer_call_and_return_conditional_losses_1136630inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133899input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133959input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ú
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses
n_filters

o_convs

p_norms
q	_dropouts"
_tf_keras_model
Ú
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses
x_filters

y_convs

z_norms
{	_dropouts"
_tf_keras_model
ŕ
|	variables
}trainable_variables
~regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_filters
_convs
_norms
	_dropouts"
_tf_keras_model
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_filters
_convs
_norms
	_dropouts"
_tf_keras_model
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_filters
_convs
_norms
	_dropouts"
_tf_keras_model
Ť
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ť
 	variables
Ątrainable_variables
˘regularization_losses
Ł	keras_api
¤__call__
+Ľ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ť
Ś	variables
§trainable_variables
¨regularization_losses
Š	keras_api
Ş__call__
+Ť&call_and_return_all_conditional_losses"
_tf_keras_layer
Ť
Ź	variables
­trainable_variables
Žregularization_losses
Ż	keras_api
°__call__
+ą&call_and_return_all_conditional_losses"
_tf_keras_layer
Ť
˛	variables
łtrainable_variables
´regularization_losses
ľ	keras_api
ś__call__
+ˇ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ť
¸	variables
štrainable_variables
şregularization_losses
ť	keras_api
ź__call__
+˝&call_and_return_all_conditional_losses"
_tf_keras_layer
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
žnon_trainable_variables
żlayers
Ŕmetrics
 Álayer_regularization_losses
Âlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
ń
Ătrace_0
Ätrace_1
Ĺtrace_2
Ćtrace_32ţ
0__inference_conv_block3d_5_layer_call_fn_1132985
0__inference_conv_block3d_5_layer_call_fn_1136639
0__inference_conv_block3d_5_layer_call_fn_1136648
0__inference_conv_block3d_5_layer_call_fn_1133031ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĂtrace_0zÄtrace_1zĹtrace_2zĆtrace_3
Ý
Çtrace_0
Čtrace_1
Étrace_2
Ętrace_32ę
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1136658
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1136668
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133040
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133049ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÇtrace_0zČtrace_1zÉtrace_2zĘtrace_3
 "
trackable_list_wrapper
(
Ë0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
R
Ě	variables
Í	keras_api

Îtotal

Ďcount"
_tf_keras_metric
c
Đ	variables
Ń	keras_api

Ňtotal

Ócount
Ô
_fn_kwargs"
_tf_keras_metric
c
Ő	variables
Ö	keras_api

×total

Řcount
Ů
_fn_kwargs"
_tf_keras_metric
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Únon_trainable_variables
Űlayers
Ümetrics
 Ýlayer_regularization_losses
Ţlayer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
é
ßtrace_0
ŕtrace_1
átrace_2
âtrace_32ö
.__inference_conv_block3d_layer_call_fn_1132183
.__inference_conv_block3d_layer_call_fn_1136681
.__inference_conv_block3d_layer_call_fn_1136694
.__inference_conv_block3d_layer_call_fn_1132258ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zßtrace_0zŕtrace_1zátrace_2zâtrace_3
Ő
ătrace_0
ätrace_1
ĺtrace_2
ćtrace_32â
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1136712
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1136730
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132274
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132290ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zătrace_0zätrace_1zĺtrace_2zćtrace_3
 "
trackable_list_wrapper
0
ç0
č1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
 2
!3"
trackable_list_wrapper
<
0
1
 2
!3"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
énon_trainable_variables
ęlayers
ëmetrics
 ělayer_regularization_losses
ílayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
ń
îtrace_0
ďtrace_1
đtrace_2
ńtrace_32ţ
0__inference_conv_block3d_2_layer_call_fn_1132343
0__inference_conv_block3d_2_layer_call_fn_1136743
0__inference_conv_block3d_2_layer_call_fn_1136756
0__inference_conv_block3d_2_layer_call_fn_1132418ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zîtrace_0zďtrace_1zđtrace_2zńtrace_3
Ý
ňtrace_0
ótrace_1
ôtrace_2
őtrace_32ę
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1136774
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1136792
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132434
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132450ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zňtrace_0zótrace_1zôtrace_2zőtrace_3
 "
trackable_list_wrapper
0
ö0
÷1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
"0
#1
$2
%3"
trackable_list_wrapper
<
"0
#1
$2
%3"
trackable_list_wrapper
 "
trackable_list_wrapper
ľ
řnon_trainable_variables
ůlayers
úmetrics
 űlayer_regularization_losses
ülayer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ń
ýtrace_0
ţtrace_1
˙trace_2
trace_32ţ
0__inference_conv_block3d_4_layer_call_fn_1132503
0__inference_conv_block3d_4_layer_call_fn_1136805
0__inference_conv_block3d_4_layer_call_fn_1136818
0__inference_conv_block3d_4_layer_call_fn_1132578ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zýtrace_0zţtrace_1z˙trace_2ztrace_3
Ý
trace_0
trace_1
trace_2
trace_32ę
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1136836
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1136854
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132594
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132610ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1ztrace_2ztrace_3
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
&0
'1
(2
)3"
trackable_list_wrapper
<
&0
'1
(2
)3"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ń
trace_0
trace_1
trace_2
trace_32ţ
0__inference_conv_block3d_1_layer_call_fn_1132663
0__inference_conv_block3d_1_layer_call_fn_1136867
0__inference_conv_block3d_1_layer_call_fn_1136880
0__inference_conv_block3d_1_layer_call_fn_1132738ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1ztrace_2ztrace_3
Ý
trace_0
trace_1
trace_2
trace_32ę
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1136898
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1136916
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132754
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132770ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1ztrace_2ztrace_3
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
*0
+1
,2
-3"
trackable_list_wrapper
<
*0
+1
,2
-3"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ń
trace_0
trace_1
trace_2
trace_32ţ
0__inference_conv_block3d_3_layer_call_fn_1132823
0__inference_conv_block3d_3_layer_call_fn_1136929
0__inference_conv_block3d_3_layer_call_fn_1136942
0__inference_conv_block3d_3_layer_call_fn_1132898ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1ztrace_2ztrace_3
Ý
trace_0
 trace_1
Ątrace_2
˘trace_32ę
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1136960
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1136978
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132914
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132930ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0z trace_1zĄtrace_2z˘trace_3
 "
trackable_list_wrapper
0
Ł0
¤1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ľnon_trainable_variables
Ślayers
§metrics
 ¨layer_regularization_losses
Šlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ő
Ştrace_02Ö
/__inference_max_pooling3d_layer_call_fn_1136983˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŞtrace_0

Ťtrace_02ń
J__inference_max_pooling3d_layer_call_and_return_conditional_losses_1136988˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŤtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Źnon_trainable_variables
­layers
Žmetrics
 Żlayer_regularization_losses
°layer_metrics
 	variables
Ątrainable_variables
˘regularization_losses
¤__call__
+Ľ&call_and_return_all_conditional_losses
'Ľ"call_and_return_conditional_losses"
_generic_user_object
÷
ątrace_02Ř
1__inference_max_pooling3d_1_layer_call_fn_1136993˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zątrace_0

˛trace_02ó
L__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1136998˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z˛trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
łnon_trainable_variables
´layers
ľmetrics
 ślayer_regularization_losses
ˇlayer_metrics
Ś	variables
§trainable_variables
¨regularization_losses
Ş__call__
+Ť&call_and_return_all_conditional_losses
'Ť"call_and_return_conditional_losses"
_generic_user_object
ő
¸trace_02Ö
/__inference_up_sampling3d_layer_call_fn_1137003˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z¸trace_0

štrace_02ń
J__inference_up_sampling3d_layer_call_and_return_conditional_losses_1137284˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zštrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
şnon_trainable_variables
ťlayers
źmetrics
 ˝layer_regularization_losses
žlayer_metrics
Ź	variables
­trainable_variables
Žregularization_losses
°__call__
+ą&call_and_return_all_conditional_losses
'ą"call_and_return_conditional_losses"
_generic_user_object
÷
żtrace_02Ř
1__inference_up_sampling3d_1_layer_call_fn_1137289˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zżtrace_0

Ŕtrace_02ó
L__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_1137436˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŔtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ánon_trainable_variables
Âlayers
Ămetrics
 Älayer_regularization_losses
Ĺlayer_metrics
˛	variables
łtrainable_variables
´regularization_losses
ś__call__
+ˇ&call_and_return_all_conditional_losses
'ˇ"call_and_return_conditional_losses"
_generic_user_object
ó
Ćtrace_02Ô
-__inference_concatenate_layer_call_fn_1137442˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĆtrace_0

Çtrace_02ď
H__inference_concatenate_layer_call_and_return_conditional_losses_1137449˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÇtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Čnon_trainable_variables
Élayers
Ęmetrics
 Ëlayer_regularization_losses
Ělayer_metrics
¸	variables
štrainable_variables
şregularization_losses
ź__call__
+˝&call_and_return_all_conditional_losses
'˝"call_and_return_conditional_losses"
_generic_user_object
ő
Ítrace_02Ö
/__inference_concatenate_1_layer_call_fn_1137455˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÍtrace_0

Îtrace_02ń
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1137462˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÎtrace_0
 "
trackable_list_wrapper
(
Ë0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
öBó
0__inference_conv_block3d_5_layer_call_fn_1132985input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
0__inference_conv_block3d_5_layer_call_fn_1136639inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
0__inference_conv_block3d_5_layer_call_fn_1136648inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
öBó
0__inference_conv_block3d_5_layer_call_fn_1133031input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1136658inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1136668inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133040input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133049input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ä
Ď	variables
Đtrainable_variables
Ńregularization_losses
Ň	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses

.kernel
/bias
!Ő_jit_compiled_convolution_op"
_tf_keras_layer
0
Î0
Ď1"
trackable_list_wrapper
.
Ě	variables"
_generic_user_object
:  (2total
:  (2count
0
Ň0
Ó1"
trackable_list_wrapper
.
Đ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
×0
Ř1"
trackable_list_wrapper
.
Ő	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
ç0
č1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ôBń
.__inference_conv_block3d_layer_call_fn_1132183input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
óBđ
.__inference_conv_block3d_layer_call_fn_1136681inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
óBđ
.__inference_conv_block3d_layer_call_fn_1136694inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ôBń
.__inference_conv_block3d_layer_call_fn_1132258input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1136712inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1136730inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132274input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132290input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ä
Ö	variables
×trainable_variables
Řregularization_losses
Ů	keras_api
Ú__call__
+Ű&call_and_return_all_conditional_losses

kernel
bias
!Ü_jit_compiled_convolution_op"
_tf_keras_layer
ä
Ý	variables
Ţtrainable_variables
ßregularization_losses
ŕ	keras_api
á__call__
+â&call_and_return_all_conditional_losses

kernel
bias
!ă_jit_compiled_convolution_op"
_tf_keras_layer
 "
trackable_list_wrapper
0
ö0
÷1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
öBó
0__inference_conv_block3d_2_layer_call_fn_1132343input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
0__inference_conv_block3d_2_layer_call_fn_1136743inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
0__inference_conv_block3d_2_layer_call_fn_1136756inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
öBó
0__inference_conv_block3d_2_layer_call_fn_1132418input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1136774inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1136792inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132434input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132450input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ä
ä	variables
ĺtrainable_variables
ćregularization_losses
ç	keras_api
č__call__
+é&call_and_return_all_conditional_losses

kernel
bias
!ę_jit_compiled_convolution_op"
_tf_keras_layer
ä
ë	variables
ětrainable_variables
íregularization_losses
î	keras_api
ď__call__
+đ&call_and_return_all_conditional_losses

 kernel
!bias
!ń_jit_compiled_convolution_op"
_tf_keras_layer
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
öBó
0__inference_conv_block3d_4_layer_call_fn_1132503input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
0__inference_conv_block3d_4_layer_call_fn_1136805inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
0__inference_conv_block3d_4_layer_call_fn_1136818inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
öBó
0__inference_conv_block3d_4_layer_call_fn_1132578input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1136836inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1136854inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132594input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132610input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ä
ň	variables
ótrainable_variables
ôregularization_losses
ő	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses

"kernel
#bias
!ř_jit_compiled_convolution_op"
_tf_keras_layer
ä
ů	variables
útrainable_variables
űregularization_losses
ü	keras_api
ý__call__
+ţ&call_and_return_all_conditional_losses

$kernel
%bias
!˙_jit_compiled_convolution_op"
_tf_keras_layer
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
öBó
0__inference_conv_block3d_1_layer_call_fn_1132663input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
0__inference_conv_block3d_1_layer_call_fn_1136867inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
0__inference_conv_block3d_1_layer_call_fn_1136880inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
öBó
0__inference_conv_block3d_1_layer_call_fn_1132738input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1136898inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1136916inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132754input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132770input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

&kernel
'bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

(kernel
)bias
!_jit_compiled_convolution_op"
_tf_keras_layer
 "
trackable_list_wrapper
0
Ł0
¤1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
öBó
0__inference_conv_block3d_3_layer_call_fn_1132823input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
0__inference_conv_block3d_3_layer_call_fn_1136929inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
0__inference_conv_block3d_3_layer_call_fn_1136942inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
öBó
0__inference_conv_block3d_3_layer_call_fn_1132898input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1136960inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1136978inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132914input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132930input_1"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

*kernel
+bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

,kernel
-bias
!_jit_compiled_convolution_op"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ăBŕ
/__inference_max_pooling3d_layer_call_fn_1136983inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ţBű
J__inference_max_pooling3d_layer_call_and_return_conditional_losses_1136988inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ĺBâ
1__inference_max_pooling3d_1_layer_call_fn_1136993inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Bý
L__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1136998inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ăBŕ
/__inference_up_sampling3d_layer_call_fn_1137003inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ţBű
J__inference_up_sampling3d_layer_call_and_return_conditional_losses_1137284inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ĺBâ
1__inference_up_sampling3d_1_layer_call_fn_1137289inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Bý
L__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_1137436inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
íBę
-__inference_concatenate_layer_call_fn_1137442inputs/0inputs/1"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
H__inference_concatenate_layer_call_and_return_conditional_losses_1137449inputs/0inputs/1"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ďBě
/__inference_concatenate_1_layer_call_fn_1137455inputs/0inputs/1"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1137462inputs/0inputs/1"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
Ď	variables
Đtrainable_variables
Ńregularization_losses
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses"
_generic_user_object
ń
Ątrace_02Ň
+__inference_conv3d_10_layer_call_fn_1137471˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĄtrace_0

˘trace_02í
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1137481˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z˘trace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Łnon_trainable_variables
¤layers
Ľmetrics
 Ślayer_regularization_losses
§layer_metrics
Ö	variables
×trainable_variables
Řregularization_losses
Ú__call__
+Ű&call_and_return_all_conditional_losses
'Ű"call_and_return_conditional_losses"
_generic_user_object
î
¨trace_02Ď
(__inference_conv3d_layer_call_fn_1137490˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z¨trace_0

Štrace_02ę
C__inference_conv3d_layer_call_and_return_conditional_losses_1137500˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŠtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Şnon_trainable_variables
Ťlayers
Źmetrics
 ­layer_regularization_losses
Žlayer_metrics
Ý	variables
Ţtrainable_variables
ßregularization_losses
á__call__
+â&call_and_return_all_conditional_losses
'â"call_and_return_conditional_losses"
_generic_user_object
đ
Żtrace_02Ń
*__inference_conv3d_1_layer_call_fn_1137509˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŻtrace_0

°trace_02ě
E__inference_conv3d_1_layer_call_and_return_conditional_losses_1137519˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z°trace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ąnon_trainable_variables
˛layers
łmetrics
 ´layer_regularization_losses
ľlayer_metrics
ä	variables
ĺtrainable_variables
ćregularization_losses
č__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses"
_generic_user_object
đ
śtrace_02Ń
*__inference_conv3d_4_layer_call_fn_1137528˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zśtrace_0

ˇtrace_02ě
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1137538˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zˇtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¸non_trainable_variables
šlayers
şmetrics
 ťlayer_regularization_losses
źlayer_metrics
ë	variables
ětrainable_variables
íregularization_losses
ď__call__
+đ&call_and_return_all_conditional_losses
'đ"call_and_return_conditional_losses"
_generic_user_object
đ
˝trace_02Ń
*__inference_conv3d_5_layer_call_fn_1137547˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z˝trace_0

žtrace_02ě
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1137557˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zžtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
żnon_trainable_variables
Ŕlayers
Ámetrics
 Âlayer_regularization_losses
Ălayer_metrics
ň	variables
ótrainable_variables
ôregularization_losses
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
đ
Ätrace_02Ń
*__inference_conv3d_8_layer_call_fn_1137566˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÄtrace_0

Ĺtrace_02ě
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1137576˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĹtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ćnon_trainable_variables
Çlayers
Čmetrics
 Élayer_regularization_losses
Ęlayer_metrics
ů	variables
útrainable_variables
űregularization_losses
ý__call__
+ţ&call_and_return_all_conditional_losses
'ţ"call_and_return_conditional_losses"
_generic_user_object
đ
Ëtrace_02Ń
*__inference_conv3d_9_layer_call_fn_1137585˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zËtrace_0

Ětrace_02ě
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1137595˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĚtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ínon_trainable_variables
Îlayers
Ďmetrics
 Đlayer_regularization_losses
Ńlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
đ
Ňtrace_02Ń
*__inference_conv3d_2_layer_call_fn_1137604˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŇtrace_0

Ótrace_02ě
E__inference_conv3d_2_layer_call_and_return_conditional_losses_1137614˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÓtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ônon_trainable_variables
Őlayers
Ömetrics
 ×layer_regularization_losses
Řlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
đ
Ůtrace_02Ń
*__inference_conv3d_3_layer_call_fn_1137623˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŮtrace_0

Útrace_02ě
E__inference_conv3d_3_layer_call_and_return_conditional_losses_1137633˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÚtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Űnon_trainable_variables
Ülayers
Ýmetrics
 Ţlayer_regularization_losses
ßlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
đ
ŕtrace_02Ń
*__inference_conv3d_6_layer_call_fn_1137642˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŕtrace_0

átrace_02ě
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1137652˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zátrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ânon_trainable_variables
ălayers
ämetrics
 ĺlayer_regularization_losses
ćlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
đ
çtrace_02Ń
*__inference_conv3d_7_layer_call_fn_1137661˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zçtrace_0

čtrace_02ě
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1137671˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zčtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ßBÜ
+__inference_conv3d_10_layer_call_fn_1137471inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
úB÷
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1137481inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBŮ
(__inference_conv3d_layer_call_fn_1137490inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
÷Bô
C__inference_conv3d_layer_call_and_return_conditional_losses_1137500inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_conv3d_1_layer_call_fn_1137509inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_conv3d_1_layer_call_and_return_conditional_losses_1137519inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_conv3d_4_layer_call_fn_1137528inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1137538inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_conv3d_5_layer_call_fn_1137547inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1137557inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_conv3d_8_layer_call_fn_1137566inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1137576inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_conv3d_9_layer_call_fn_1137585inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1137595inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_conv3d_2_layer_call_fn_1137604inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_conv3d_2_layer_call_and_return_conditional_losses_1137614inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_conv3d_3_layer_call_fn_1137623inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_conv3d_3_layer_call_and_return_conditional_losses_1137633inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_conv3d_6_layer_call_fn_1137642inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1137652inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_conv3d_7_layer_call_fn_1137661inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1137671inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
E:C@2)Adam/u_net3d/conv_block3d/conv3d/kernel/m
3:1@2'Adam/u_net3d/conv_block3d/conv3d/bias/m
G:E@@2+Adam/u_net3d/conv_block3d/conv3d_1/kernel/m
5:3@2)Adam/u_net3d/conv_block3d/conv3d_1/bias/m
I:G@\2-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/m
7:5\2+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/m
I:G\\2-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/m
7:5\2+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/m
J:H\2-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/m
8:62+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/m
K:I2-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/m
8:62+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/m
J:H@2-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/m
7:5@2+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/m
I:G@@2-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/m
7:5@2+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/m
J:HÜ\2-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/m
7:5\2+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/m
I:G\\2-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/m
7:5\2+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/m
J:H@2.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/m
8:62,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/m
E:C@2)Adam/u_net3d/conv_block3d/conv3d/kernel/v
3:1@2'Adam/u_net3d/conv_block3d/conv3d/bias/v
G:E@@2+Adam/u_net3d/conv_block3d/conv3d_1/kernel/v
5:3@2)Adam/u_net3d/conv_block3d/conv3d_1/bias/v
I:G@\2-Adam/u_net3d/conv_block3d_2/conv3d_4/kernel/v
7:5\2+Adam/u_net3d/conv_block3d_2/conv3d_4/bias/v
I:G\\2-Adam/u_net3d/conv_block3d_2/conv3d_5/kernel/v
7:5\2+Adam/u_net3d/conv_block3d_2/conv3d_5/bias/v
J:H\2-Adam/u_net3d/conv_block3d_4/conv3d_8/kernel/v
8:62+Adam/u_net3d/conv_block3d_4/conv3d_8/bias/v
K:I2-Adam/u_net3d/conv_block3d_4/conv3d_9/kernel/v
8:62+Adam/u_net3d/conv_block3d_4/conv3d_9/bias/v
J:H@2-Adam/u_net3d/conv_block3d_1/conv3d_2/kernel/v
7:5@2+Adam/u_net3d/conv_block3d_1/conv3d_2/bias/v
I:G@@2-Adam/u_net3d/conv_block3d_1/conv3d_3/kernel/v
7:5@2+Adam/u_net3d/conv_block3d_1/conv3d_3/bias/v
J:HÜ\2-Adam/u_net3d/conv_block3d_3/conv3d_6/kernel/v
7:5\2+Adam/u_net3d/conv_block3d_3/conv3d_6/bias/v
I:G\\2-Adam/u_net3d/conv_block3d_3/conv3d_7/kernel/v
7:5\2+Adam/u_net3d/conv_block3d_3/conv3d_7/bias/v
J:H@2.Adam/u_net3d/conv_block3d_5/conv3d_10/kernel/v
8:62,Adam/u_net3d/conv_block3d_5/conv3d_10/bias/vŽ
"__inference__wrapped_model_1132130 !"#$%*+,-&'()./5˘2
+˘(
&#
input_1
Ş "6Ş3
1
u_net3d&#
u_net3dţ
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1137462Żw˘t
m˘j
he
1.
inputs/0 ˙˙˙˙˙˙˙˙˙
0-
inputs/1˙˙˙˙˙˙˙˙˙\
Ş "4˘1
*'
0 ˙˙˙˙˙˙˙˙˙Ü
 Ö
/__inference_concatenate_1_layer_call_fn_1137455˘w˘t
m˘j
he
1.
inputs/0 ˙˙˙˙˙˙˙˙˙
0-
inputs/1˙˙˙˙˙˙˙˙˙\
Ş "'$ ˙˙˙˙˙˙˙˙˙Üű
H__inference_concatenate_layer_call_and_return_conditional_losses_1137449Žv˘s
l˘i
gd
0-
inputs/0˙˙˙˙˙˙˙˙˙\
0-
inputs/1˙˙˙˙˙˙˙˙˙@
Ş "4˘1
*'
0 ˙˙˙˙˙˙˙˙˙
 Ó
-__inference_concatenate_layer_call_fn_1137442Ąv˘s
l˘i
gd
0-
inputs/0˙˙˙˙˙˙˙˙˙\
0-
inputs/1˙˙˙˙˙˙˙˙˙@
Ş "'$ ˙˙˙˙˙˙˙˙˙Â
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1137481x./=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙@
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙
 
+__inference_conv3d_10_layer_call_fn_1137471k./=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙@
Ş "&#˙˙˙˙˙˙˙˙˙Á
E__inference_conv3d_1_layer_call_and_return_conditional_losses_1137519x=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙@
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 
*__inference_conv3d_1_layer_call_fn_1137509k=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙@
Ş "&#˙˙˙˙˙˙˙˙˙@Â
E__inference_conv3d_2_layer_call_and_return_conditional_losses_1137614y&'>˘;
4˘1
/,
inputs ˙˙˙˙˙˙˙˙˙
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 
*__inference_conv3d_2_layer_call_fn_1137604l&'>˘;
4˘1
/,
inputs ˙˙˙˙˙˙˙˙˙
Ş "&#˙˙˙˙˙˙˙˙˙@Á
E__inference_conv3d_3_layer_call_and_return_conditional_losses_1137633x()=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙@
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 
*__inference_conv3d_3_layer_call_fn_1137623k()=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙@
Ş "&#˙˙˙˙˙˙˙˙˙@Á
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1137538x=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙@
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 
*__inference_conv3d_4_layer_call_fn_1137528k=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙@
Ş "&#˙˙˙˙˙˙˙˙˙\Á
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1137557x !=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙\
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 
*__inference_conv3d_5_layer_call_fn_1137547k !=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙\
Ş "&#˙˙˙˙˙˙˙˙˙\Â
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1137652y*+>˘;
4˘1
/,
inputs ˙˙˙˙˙˙˙˙˙Ü
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 
*__inference_conv3d_6_layer_call_fn_1137642l*+>˘;
4˘1
/,
inputs ˙˙˙˙˙˙˙˙˙Ü
Ş "&#˙˙˙˙˙˙˙˙˙\Á
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1137671x,-=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙\
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 
*__inference_conv3d_7_layer_call_fn_1137661k,-=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙\
Ş "&#˙˙˙˙˙˙˙˙˙\ž
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1137576u"#;˘8
1˘.
,)
inputs˙˙˙˙˙˙˙˙˙@@\
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙@@
 
*__inference_conv3d_8_layer_call_fn_1137566h"#;˘8
1˘.
,)
inputs˙˙˙˙˙˙˙˙˙@@\
Ş "%"˙˙˙˙˙˙˙˙˙@@ż
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1137595v$%<˘9
2˘/
-*
inputs˙˙˙˙˙˙˙˙˙@@
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙@@
 
*__inference_conv3d_9_layer_call_fn_1137585i$%<˘9
2˘/
-*
inputs˙˙˙˙˙˙˙˙˙@@
Ş "%"˙˙˙˙˙˙˙˙˙@@ż
C__inference_conv3d_layer_call_and_return_conditional_losses_1137500x=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 
(__inference_conv3d_layer_call_fn_1137490k=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙
Ş "&#˙˙˙˙˙˙˙˙˙@Đ
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132754&'()C˘@
9˘6
0-
input_1 ˙˙˙˙˙˙˙˙˙
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 Đ
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1132770&'()C˘@
9˘6
0-
input_1 ˙˙˙˙˙˙˙˙˙
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 Î
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1136898&'()B˘?
8˘5
/,
inputs ˙˙˙˙˙˙˙˙˙
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 Î
K__inference_conv_block3d_1_layer_call_and_return_conditional_losses_1136916&'()B˘?
8˘5
/,
inputs ˙˙˙˙˙˙˙˙˙
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 §
0__inference_conv_block3d_1_layer_call_fn_1132663s&'()C˘@
9˘6
0-
input_1 ˙˙˙˙˙˙˙˙˙
p 
Ş "&#˙˙˙˙˙˙˙˙˙@§
0__inference_conv_block3d_1_layer_call_fn_1132738s&'()C˘@
9˘6
0-
input_1 ˙˙˙˙˙˙˙˙˙
p
Ş "&#˙˙˙˙˙˙˙˙˙@Ś
0__inference_conv_block3d_1_layer_call_fn_1136867r&'()B˘?
8˘5
/,
inputs ˙˙˙˙˙˙˙˙˙
p 
Ş "&#˙˙˙˙˙˙˙˙˙@Ś
0__inference_conv_block3d_1_layer_call_fn_1136880r&'()B˘?
8˘5
/,
inputs ˙˙˙˙˙˙˙˙˙
p
Ş "&#˙˙˙˙˙˙˙˙˙@Î
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132434 !B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙@
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 Î
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1132450 !B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙@
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 Í
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1136774~ !A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙@
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 Í
K__inference_conv_block3d_2_layer_call_and_return_conditional_losses_1136792~ !A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙@
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 Ś
0__inference_conv_block3d_2_layer_call_fn_1132343r !B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙@
p 
Ş "&#˙˙˙˙˙˙˙˙˙\Ś
0__inference_conv_block3d_2_layer_call_fn_1132418r !B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙@
p
Ş "&#˙˙˙˙˙˙˙˙˙\Ľ
0__inference_conv_block3d_2_layer_call_fn_1136743q !A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙@
p 
Ş "&#˙˙˙˙˙˙˙˙˙\Ľ
0__inference_conv_block3d_2_layer_call_fn_1136756q !A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙@
p
Ş "&#˙˙˙˙˙˙˙˙˙\Đ
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132914*+,-C˘@
9˘6
0-
input_1 ˙˙˙˙˙˙˙˙˙Ü
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 Đ
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1132930*+,-C˘@
9˘6
0-
input_1 ˙˙˙˙˙˙˙˙˙Ü
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 Î
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1136960*+,-B˘?
8˘5
/,
inputs ˙˙˙˙˙˙˙˙˙Ü
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 Î
K__inference_conv_block3d_3_layer_call_and_return_conditional_losses_1136978*+,-B˘?
8˘5
/,
inputs ˙˙˙˙˙˙˙˙˙Ü
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 §
0__inference_conv_block3d_3_layer_call_fn_1132823s*+,-C˘@
9˘6
0-
input_1 ˙˙˙˙˙˙˙˙˙Ü
p 
Ş "&#˙˙˙˙˙˙˙˙˙\§
0__inference_conv_block3d_3_layer_call_fn_1132898s*+,-C˘@
9˘6
0-
input_1 ˙˙˙˙˙˙˙˙˙Ü
p
Ş "&#˙˙˙˙˙˙˙˙˙\Ś
0__inference_conv_block3d_3_layer_call_fn_1136929r*+,-B˘?
8˘5
/,
inputs ˙˙˙˙˙˙˙˙˙Ü
p 
Ş "&#˙˙˙˙˙˙˙˙˙\Ś
0__inference_conv_block3d_3_layer_call_fn_1136942r*+,-B˘?
8˘5
/,
inputs ˙˙˙˙˙˙˙˙˙Ü
p
Ş "&#˙˙˙˙˙˙˙˙˙\Ë
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132594|"#$%@˘=
6˘3
-*
input_1˙˙˙˙˙˙˙˙˙@@\
p 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙@@
 Ë
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1132610|"#$%@˘=
6˘3
-*
input_1˙˙˙˙˙˙˙˙˙@@\
p
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙@@
 Ę
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1136836{"#$%?˘<
5˘2
,)
inputs˙˙˙˙˙˙˙˙˙@@\
p 
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙@@
 Ę
K__inference_conv_block3d_4_layer_call_and_return_conditional_losses_1136854{"#$%?˘<
5˘2
,)
inputs˙˙˙˙˙˙˙˙˙@@\
p
Ş "2˘/
(%
0˙˙˙˙˙˙˙˙˙@@
 Ł
0__inference_conv_block3d_4_layer_call_fn_1132503o"#$%@˘=
6˘3
-*
input_1˙˙˙˙˙˙˙˙˙@@\
p 
Ş "%"˙˙˙˙˙˙˙˙˙@@Ł
0__inference_conv_block3d_4_layer_call_fn_1132578o"#$%@˘=
6˘3
-*
input_1˙˙˙˙˙˙˙˙˙@@\
p
Ş "%"˙˙˙˙˙˙˙˙˙@@˘
0__inference_conv_block3d_4_layer_call_fn_1136805n"#$%?˘<
5˘2
,)
inputs˙˙˙˙˙˙˙˙˙@@\
p 
Ş "%"˙˙˙˙˙˙˙˙˙@@˘
0__inference_conv_block3d_4_layer_call_fn_1136818n"#$%?˘<
5˘2
,)
inputs˙˙˙˙˙˙˙˙˙@@\
p
Ş "%"˙˙˙˙˙˙˙˙˙@@Ě
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133040}./B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙@
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙
 Ě
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1133049}./B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙@
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙
 Ë
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1136658|./A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙@
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙
 Ë
K__inference_conv_block3d_5_layer_call_and_return_conditional_losses_1136668|./A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙@
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙
 ¤
0__inference_conv_block3d_5_layer_call_fn_1132985p./B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙@
p 
Ş "&#˙˙˙˙˙˙˙˙˙¤
0__inference_conv_block3d_5_layer_call_fn_1133031p./B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙@
p
Ş "&#˙˙˙˙˙˙˙˙˙Ł
0__inference_conv_block3d_5_layer_call_fn_1136639o./A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙@
p 
Ş "&#˙˙˙˙˙˙˙˙˙Ł
0__inference_conv_block3d_5_layer_call_fn_1136648o./A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙@
p
Ş "&#˙˙˙˙˙˙˙˙˙Ě
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132274B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 Ě
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1132290B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 Ë
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1136712~A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 Ë
I__inference_conv_block3d_layer_call_and_return_conditional_losses_1136730~A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙@
 ¤
.__inference_conv_block3d_layer_call_fn_1132183rB˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙
p 
Ş "&#˙˙˙˙˙˙˙˙˙@¤
.__inference_conv_block3d_layer_call_fn_1132258rB˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙
p
Ş "&#˙˙˙˙˙˙˙˙˙@Ł
.__inference_conv_block3d_layer_call_fn_1136681qA˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "&#˙˙˙˙˙˙˙˙˙@Ł
.__inference_conv_block3d_layer_call_fn_1136694qA˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙
p
Ş "&#˙˙˙˙˙˙˙˙˙@
L__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1136998¸_˘\
U˘R
PM
inputsA˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "U˘R
KH
0A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 á
1__inference_max_pooling3d_1_layer_call_fn_1136993Ť_˘\
U˘R
PM
inputsA˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "HEA˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
J__inference_max_pooling3d_layer_call_and_return_conditional_losses_1136988¸_˘\
U˘R
PM
inputsA˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "U˘R
KH
0A˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 ß
/__inference_max_pooling3d_layer_call_fn_1136983Ť_˘\
U˘R
PM
inputsA˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "HEA˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ę
B__inference_model_layer_call_and_return_conditional_losses_1134304 !"#$%*+,-&'()./=˘:
3˘0
&#
input_1
p 

 
Ş "*˘'
 
0
 Ę
B__inference_model_layer_call_and_return_conditional_losses_1134353 !"#$%*+,-&'()./=˘:
3˘0
&#
input_1
p

 
Ş "*˘'
 
0
 É
B__inference_model_layer_call_and_return_conditional_losses_1135014 !"#$%*+,-&'()./<˘9
2˘/
%"
inputs
p 

 
Ş "*˘'
 
0
 É
B__inference_model_layer_call_and_return_conditional_losses_1135520 !"#$%*+,-&'()./<˘9
2˘/
%"
inputs
p

 
Ş "*˘'
 
0
 Ą
'__inference_model_layer_call_fn_1134059v !"#$%*+,-&'()./=˘:
3˘0
&#
input_1
p 

 
Ş "Ą
'__inference_model_layer_call_fn_1134255v !"#$%*+,-&'()./=˘:
3˘0
&#
input_1
p

 
Ş " 
'__inference_model_layer_call_fn_1134459u !"#$%*+,-&'()./<˘9
2˘/
%"
inputs
p 

 
Ş " 
'__inference_model_layer_call_fn_1134508u !"#$%*+,-&'()./<˘9
2˘/
%"
inputs
p

 
Ş "ź
%__inference_signature_wrapper_1134410 !"#$%*+,-&'()./@˘=
˘ 
6Ş3
1
input_1&#
input_1"6Ş3
1
u_net3d&#
u_net3dÚ
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133899 !"#$%*+,-&'()./B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙
 Ú
D__inference_u_net3d_layer_call_and_return_conditional_losses_1133959 !"#$%*+,-&'()./B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙
 Ů
D__inference_u_net3d_layer_call_and_return_conditional_losses_1136124 !"#$%*+,-&'()./A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙
 Ů
D__inference_u_net3d_layer_call_and_return_conditional_losses_1136630 !"#$%*+,-&'()./A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙
p
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙
 ˛
)__inference_u_net3d_layer_call_fn_1133606 !"#$%*+,-&'()./B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙
p 
Ş "&#˙˙˙˙˙˙˙˙˙˛
)__inference_u_net3d_layer_call_fn_1133839 !"#$%*+,-&'()./B˘?
8˘5
/,
input_1˙˙˙˙˙˙˙˙˙
p
Ş "&#˙˙˙˙˙˙˙˙˙ą
)__inference_u_net3d_layer_call_fn_1135569 !"#$%*+,-&'()./A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "&#˙˙˙˙˙˙˙˙˙ą
)__inference_u_net3d_layer_call_fn_1135618 !"#$%*+,-&'()./A˘>
7˘4
.+
inputs˙˙˙˙˙˙˙˙˙
p
Ş "&#˙˙˙˙˙˙˙˙˙Ä
L__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_1137436t<˘9
2˘/
-*
inputs˙˙˙˙˙˙˙˙˙@@
Ş "4˘1
*'
0 ˙˙˙˙˙˙˙˙˙
 
1__inference_up_sampling3d_1_layer_call_fn_1137289g<˘9
2˘/
-*
inputs˙˙˙˙˙˙˙˙˙@@
Ş "'$ ˙˙˙˙˙˙˙˙˙Â
J__inference_up_sampling3d_layer_call_and_return_conditional_losses_1137284t=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙\
Ş "3˘0
)&
0˙˙˙˙˙˙˙˙˙\
 
/__inference_up_sampling3d_layer_call_fn_1137003g=˘:
3˘0
.+
inputs˙˙˙˙˙˙˙˙˙\
Ş "&#˙˙˙˙˙˙˙˙˙\