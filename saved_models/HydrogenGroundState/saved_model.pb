��
��
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
8
Const
output"dtype"
valuetensor"
dtypetype
,
Exp
x"T
y"T"
Ttype:

2
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	
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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
@
Softplus
features"T
activations"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
�
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
executor_typestring �
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
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8�
d
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�

layer1

layer2

layer3
containment
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
^


kernel
regularization_losses
trainable_variables
	variables
	keras_api
^

kernel
regularization_losses
trainable_variables
	variables
	keras_api
^

kernel
regularization_losses
trainable_variables
	variables
	keras_api
DB
VARIABLE_VALUEVariable&containment/.ATTRIBUTES/VARIABLE_VALUE
 


0
1
2
3


0
1
2
3
�
regularization_losses

layers
trainable_variables
layer_regularization_losses
layer_metrics
	variables
metrics
non_trainable_variables
 
JH
VARIABLE_VALUEdense/kernel(layer1/kernel/.ATTRIBUTES/VARIABLE_VALUE
 


0


0
�
regularization_losses

layers
layer_metrics
 layer_regularization_losses
trainable_variables
	variables
!metrics
"non_trainable_variables
LJ
VARIABLE_VALUEdense_1/kernel(layer2/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
�
regularization_losses

#layers
$layer_metrics
%layer_regularization_losses
trainable_variables
	variables
&metrics
'non_trainable_variables
LJ
VARIABLE_VALUEdense_2/kernel(layer3/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
�
regularization_losses

(layers
)layer_metrics
*layer_regularization_losses
trainable_variables
	variables
+metrics
,non_trainable_variables

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense/kerneldense_1/kerneldense_2/kernelVariable*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_792878
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_793011
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariabledense/kerneldense_1/kerneldense_2/kernel*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_793033��
�
�
__inference_call_792934

inputs(
$dense_matmul_readvariableop_resource*
&dense_1_matmul_readvariableop_resource*
&dense_2_matmul_readvariableop_resource
exp_readvariableop_resource
identity��Exp/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMulj
SoftplusSoftplusdense/MatMul:product:0*
T0*'
_output_shapes
:���������2

Softplus�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMulSoftplus:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/MatMulp

Softplus_1Softplusdense_1/MatMul:product:0*
T0*'
_output_shapes
:���������2

Softplus_1�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulSoftplus_1:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMulS
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
pow/y[
powPowinputspow/y:output:0*
T0*'
_output_shapes
:���������2
powp
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesh
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
SumP
SqrtSqrtSum:output:0*
T0*#
_output_shapes
:���������2
Sqrt|
Exp/ReadVariableOpReadVariableOpexp_readvariableop_resource*
_output_shapes
: *
dtype02
Exp/ReadVariableOpN
ExpExpExp/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
Exp;
NegNegExp:y:0*
T0*
_output_shapes
: 2
NegR
mulMulNeg:y:0Sqrt:y:0*
T0*#
_output_shapes
:���������2
mulo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
Reshape/shapep
ReshapeReshapemul:z:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������2	
Reshapeq
addAddV2dense_2/MatMul:product:0Reshape:output:0*
T0*'
_output_shapes
:���������2
add�
IdentityIdentityadd:z:0^Exp/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::::2(
Exp/ReadVariableOpExp/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
l
&__inference_dense_layer_call_fn_792948

inputs
unknown
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_7927832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_792878
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_7927722
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
C__inference_dense_1_layer_call_and_return_conditional_losses_792803

inputs"
matmul_readvariableop_resource
identity��MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul|
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
"__inference__traced_restore_793033
file_prefix
assignvariableop_variable#
assignvariableop_1_dense_kernel%
!assignvariableop_2_dense_1_kernel%
!assignvariableop_3_dense_2_kernel

identity_5��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&containment/.ATTRIBUTES/VARIABLE_VALUEB(layer1/kernel/.ATTRIBUTES/VARIABLE_VALUEB(layer2/kernel/.ATTRIBUTES/VARIABLE_VALUEB(layer3/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_2_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4�

Identity_5IdentityIdentity_4:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*
T0*
_output_shapes
: 2

Identity_5"!

identity_5Identity_5:output:0*%
_input_shapes
: ::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
n
(__inference_dense_1_layer_call_fn_792962

inputs
unknown
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_7928032
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
!__inference__wrapped_model_792772
input_1
neural_wavefunction_792762
neural_wavefunction_792764
neural_wavefunction_792766
neural_wavefunction_792768
identity��+neural_wavefunction/StatefulPartitionedCall�
+neural_wavefunction/StatefulPartitionedCallStatefulPartitionedCallinput_1neural_wavefunction_792762neural_wavefunction_792764neural_wavefunction_792766neural_wavefunction_792768*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� * 
fR
__inference_call_7927612-
+neural_wavefunction/StatefulPartitionedCall�
IdentityIdentity4neural_wavefunction/StatefulPartitionedCall:output:0,^neural_wavefunction/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::::2Z
+neural_wavefunction/StatefulPartitionedCall+neural_wavefunction/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
A__inference_dense_layer_call_and_return_conditional_losses_792783

inputs"
matmul_readvariableop_resource
identity��MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul|
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
n
(__inference_dense_2_layer_call_fn_792976

inputs
unknown
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7928232
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_call_792761

inputs(
$dense_matmul_readvariableop_resource*
&dense_1_matmul_readvariableop_resource*
&dense_2_matmul_readvariableop_resource
exp_readvariableop_resource
identity��Exp/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMulj
SoftplusSoftplusdense/MatMul:product:0*
T0*'
_output_shapes
:���������2

Softplus�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMulSoftplus:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/MatMulp

Softplus_1Softplusdense_1/MatMul:product:0*
T0*'
_output_shapes
:���������2

Softplus_1�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulSoftplus_1:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMulS
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
pow/y[
powPowinputspow/y:output:0*
T0*'
_output_shapes
:���������2
powp
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesh
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
SumP
SqrtSqrtSum:output:0*
T0*#
_output_shapes
:���������2
Sqrt|
Exp/ReadVariableOpReadVariableOpexp_readvariableop_resource*
_output_shapes
: *
dtype02
Exp/ReadVariableOpN
ExpExpExp/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
Exp;
NegNegExp:y:0*
T0*
_output_shapes
: 2
NegR
mulMulNeg:y:0Sqrt:y:0*
T0*#
_output_shapes
:���������2
mulo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
Reshape/shapep
ReshapeReshapemul:z:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������2	
Reshapeq
addAddV2dense_2/MatMul:product:0Reshape:output:0*
T0*'
_output_shapes
:���������2
add�
IdentityIdentityadd:z:0^Exp/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::::2(
Exp/ReadVariableOpExp/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_dense_layer_call_and_return_conditional_losses_792941

inputs"
matmul_readvariableop_resource
identity��MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul|
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
4__inference_neural_wavefunction_layer_call_fn_792863
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_neural_wavefunction_layer_call_and_return_conditional_losses_7928492
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
__inference__traced_save_793011
file_prefix'
#savev2_variable_read_readvariableop+
'savev2_dense_kernel_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&containment/.ATTRIBUTES/VARIABLE_VALUEB(layer1/kernel/.ATTRIBUTES/VARIABLE_VALUEB(layer2/kernel/.ATTRIBUTES/VARIABLE_VALUEB(layer3/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop'savev2_dense_kernel_read_readvariableop)savev2_dense_1_kernel_read_readvariableop)savev2_dense_2_kernel_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*7
_input_shapes&
$: : :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: 
�
�
O__inference_neural_wavefunction_layer_call_and_return_conditional_losses_792849
input_1
dense_792792
dense_1_792812
dense_2_792832
exp_readvariableop_resource
identity��Exp/ReadVariableOp�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_792792*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_7927832
dense/StatefulPartitionedCallz
SoftplusSoftplus&dense/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Softplus�
dense_1/StatefulPartitionedCallStatefulPartitionedCallSoftplus:activations:0dense_1_792812*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_7928032!
dense_1/StatefulPartitionedCall�

Softplus_1Softplus(dense_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Softplus_1�
dense_2/StatefulPartitionedCallStatefulPartitionedCallSoftplus_1:activations:0dense_2_792832*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_7928232!
dense_2/StatefulPartitionedCallS
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
pow/y\
powPowinput_1pow/y:output:0*
T0*'
_output_shapes
:���������2
powp
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesh
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������2
SumP
SqrtSqrtSum:output:0*
T0*#
_output_shapes
:���������2
Sqrt|
Exp/ReadVariableOpReadVariableOpexp_readvariableop_resource*
_output_shapes
: *
dtype02
Exp/ReadVariableOpN
ExpExpExp/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
Exp;
NegNegExp:y:0*
T0*
_output_shapes
: 2
NegR
mulMulNeg:y:0Sqrt:y:0*
T0*#
_output_shapes
:���������2
mulo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
Reshape/shapep
ReshapeReshapemul:z:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������2	
Reshape�
addAddV2(dense_2/StatefulPartitionedCall:output:0Reshape:output:0*
T0*'
_output_shapes
:���������2
add�
IdentityIdentityadd:z:0^Exp/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::::2(
Exp/ReadVariableOpExp/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
__inference_call_792906

inputs(
$dense_matmul_readvariableop_resource*
&dense_1_matmul_readvariableop_resource*
&dense_2_matmul_readvariableop_resource
exp_readvariableop_resource
identity��Exp/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense/MatMul/ReadVariableOp}
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense/MatMulb
SoftplusSoftplusdense/MatMul:product:0*
T0*
_output_shapes
:	�2

Softplus�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMulSoftplus:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/MatMulh

Softplus_1Softplusdense_1/MatMul:product:0*
T0*
_output_shapes
:	�2

Softplus_1�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulSoftplus_1:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_2/MatMulS
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
pow/yS
powPowinputspow/y:output:0*
T0*
_output_shapes
:	�2
powp
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices`
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*
_output_shapes	
:�2
SumH
SqrtSqrtSum:output:0*
T0*
_output_shapes	
:�2
Sqrt|
Exp/ReadVariableOpReadVariableOpexp_readvariableop_resource*
_output_shapes
: *
dtype02
Exp/ReadVariableOpN
ExpExpExp/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
Exp;
NegNegExp:y:0*
T0*
_output_shapes
: 2
NegJ
mulMulNeg:y:0Sqrt:y:0*
T0*
_output_shapes	
:�2
mulo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2
Reshape/shapeh
ReshapeReshapemul:z:0Reshape/shape:output:0*
T0*
_output_shapes
:	�2	
Reshapei
addAddV2dense_2/MatMul:product:0Reshape:output:0*
T0*
_output_shapes
:	�2
add�
IdentityIdentityadd:z:0^Exp/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*.
_input_shapes
:	�::::2(
Exp/ReadVariableOpExp/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
�
C__inference_dense_1_layer_call_and_return_conditional_losses_792955

inputs"
matmul_readvariableop_resource
identity��MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul|
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_dense_2_layer_call_and_return_conditional_losses_792969

inputs"
matmul_readvariableop_resource
identity��MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul|
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_dense_2_layer_call_and_return_conditional_losses_792823

inputs"
matmul_readvariableop_resource
identity��MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul|
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�R
�

layer1

layer2

layer3
containment
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
*-&call_and_return_all_conditional_losses
.__call__
/_default_save_signature
0call"�
_tf_keras_model�{"class_name": "NeuralWavefunction", "name": "neural_wavefunction", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "NeuralWavefunction"}}
�


kernel
regularization_losses
trainable_variables
	variables
	keras_api
*1&call_and_return_all_conditional_losses
2__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [500, 3]}}
�

kernel
regularization_losses
trainable_variables
	variables
	keras_api
*3&call_and_return_all_conditional_losses
4__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 24, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [500, 16]}}
�

kernel
regularization_losses
trainable_variables
	variables
	keras_api
*5&call_and_return_all_conditional_losses
6__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [500, 24]}}
: 2Variable
 "
trackable_list_wrapper
<

0
1
2
3"
trackable_list_wrapper
<

0
1
2
3"
trackable_list_wrapper
�
regularization_losses

layers
trainable_variables
layer_regularization_losses
layer_metrics
	variables
metrics
non_trainable_variables
.__call__
/_default_save_signature
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
,
7serving_default"
signature_map
:2dense/kernel
 "
trackable_list_wrapper
'

0"
trackable_list_wrapper
'

0"
trackable_list_wrapper
�
regularization_losses

layers
layer_metrics
 layer_regularization_losses
trainable_variables
	variables
!metrics
"non_trainable_variables
2__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
 :2dense_1/kernel
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
regularization_losses

#layers
$layer_metrics
%layer_regularization_losses
trainable_variables
	variables
&metrics
'non_trainable_variables
4__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
 :2dense_2/kernel
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
regularization_losses

(layers
)layer_metrics
*layer_regularization_losses
trainable_variables
	variables
+metrics
,non_trainable_variables
6__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�2�
O__inference_neural_wavefunction_layer_call_and_return_conditional_losses_792849�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *&�#
!�
input_1���������
�2�
4__inference_neural_wavefunction_layer_call_fn_792863�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *&�#
!�
input_1���������
�2�
!__inference__wrapped_model_792772�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *&�#
!�
input_1���������
�2�
__inference_call_792906
__inference_call_792934�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_layer_call_and_return_conditional_losses_792941�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_layer_call_fn_792948�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_1_layer_call_and_return_conditional_losses_792955�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dense_1_layer_call_fn_792962�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_2_layer_call_and_return_conditional_losses_792969�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dense_2_layer_call_fn_792976�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_792878input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_792772m
0�-
&�#
!�
input_1���������
� "3�0
.
output_1"�
output_1���������\
__inference_call_792906A
'�$
�
�
inputs	�
� "�	�l
__inference_call_792934Q
/�,
%�"
 �
inputs���������
� "�����������
C__inference_dense_1_layer_call_and_return_conditional_losses_792955[/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� z
(__inference_dense_1_layer_call_fn_792962N/�,
%�"
 �
inputs���������
� "�����������
C__inference_dense_2_layer_call_and_return_conditional_losses_792969[/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� z
(__inference_dense_2_layer_call_fn_792976N/�,
%�"
 �
inputs���������
� "�����������
A__inference_dense_layer_call_and_return_conditional_losses_792941[
/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� x
&__inference_dense_layer_call_fn_792948N
/�,
%�"
 �
inputs���������
� "�����������
O__inference_neural_wavefunction_layer_call_and_return_conditional_losses_792849_
0�-
&�#
!�
input_1���������
� "%�"
�
0���������
� �
4__inference_neural_wavefunction_layer_call_fn_792863R
0�-
&�#
!�
input_1���������
� "�����������
$__inference_signature_wrapper_792878x
;�8
� 
1�.
,
input_1!�
input_1���������"3�0
.
output_1"�
output_1���������