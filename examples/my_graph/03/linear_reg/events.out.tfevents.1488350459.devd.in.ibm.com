       �K"	  �>�-�Abrain.Event:2�K��      �(�,	�k�>�-�A"�9
D
xPlaceholder*
dtype0*
shape: *
_output_shapes
:
D
yPlaceholder*
dtype0*
shape: *
_output_shapes
:
T
w/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
c
wVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
�
w/AssignAssignww/initial_value*
validate_shape(*
_class

loc:@w*
use_locking(*
T0*
_output_shapes
: 
L
w/readIdentityw*
_class

loc:@w*
T0*
_output_shapes
: 
T
b/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
c
bVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
�
b/AssignAssignbb/initial_value*
validate_shape(*
_class

loc:@b*
use_locking(*
T0*
_output_shapes
: 
L
b/readIdentityb*
_class

loc:@b*
T0*
_output_shapes
: 
8
mulMulxw/read*
T0*
_output_shapes
:
:
addAddmulb/read*
T0*
_output_shapes
:
5
subSubyadd*
T0*
_output_shapes
:
6
lossSquaresub*
T0*
_output_shapes
:
\
gradients/ShapeShapeloss*
out_type0*
T0*#
_output_shapes
:���������
T
gradients/ConstConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
[
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
:
o
gradients/loss_grad/mul/xConst^gradients/Fill*
dtype0*
valueB
 *   @*
_output_shapes
: 
a
gradients/loss_grad/mulMulgradients/loss_grad/mul/xsub*
T0*
_output_shapes
:
l
gradients/loss_grad/mul_1Mulgradients/Fillgradients/loss_grad/mul*
T0*
_output_shapes
:
b
gradients/sub_grad/ShapeShapey*
out_type0*
T0*#
_output_shapes
:���������
f
gradients/sub_grad/Shape_1Shapeadd*
out_type0*
T0*#
_output_shapes
:���������
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/sub_grad/SumSumgradients/loss_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
_output_shapes
:*
T0*
Tshape0
�
gradients/sub_grad/Sum_1Sumgradients/loss_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0*
_output_shapes
:
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0*
_output_shapes
:
d
gradients/add_grad/ShapeShapemul*
out_type0*
T0*#
_output_shapes
:���������
]
gradients/add_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_grad/SumSum-gradients/sub_grad/tuple/control_dependency_1(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
_output_shapes
:*
T0*
Tshape0
�
gradients/add_grad/Sum_1Sum-gradients/sub_grad/tuple/control_dependency_1*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*-
_class#
!loc:@gradients/add_grad/Reshape*
T0*
_output_shapes
:
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0*
_output_shapes
: 
b
gradients/mul_grad/ShapeShapex*
out_type0*
T0*#
_output_shapes
:���������
]
gradients/mul_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
u
gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependencyw/read*
T0*
_output_shapes
:
�
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
_output_shapes
:*
T0*
Tshape0
r
gradients/mul_grad/mul_1Mulx+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes
:
�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
�
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_grad/Reshape*
T0*
_output_shapes
:
�
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
T0*
_output_shapes
: 
b
GradientDescent/learning_rateConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
-GradientDescent/update_w/ApplyGradientDescentApplyGradientDescentwGradientDescent/learning_rate-gradients/mul_grad/tuple/control_dependency_1*
_class

loc:@w*
use_locking( *
T0*
_output_shapes
: 
�
-GradientDescent/update_b/ApplyGradientDescentApplyGradientDescentbGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
_class

loc:@b*
use_locking( *
T0*
_output_shapes
: 
w
GradientDescentNoOp.^GradientDescent/update_w/ApplyGradientDescent.^GradientDescent/update_b/ApplyGradientDescent
"
initNoOp	^w/Assign	^b/Assign"/l�"      J��	R,�>�-�AJ�E
�
�	
9
Add
x"T
y"T
z"T"
Ttype:
2	
�
ApplyGradientDescent
var"T�

alpha"T

delta"T
out"T�"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
4
Fill
dims

value"T
output"T"	
Ttype
.
Identity

input"T
output"T"	
Ttype
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Square
x"T
y"T"
Ttype:
	2	
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
q
Variable
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*0.12.12v0.12.0-10-g4d924e7-dirty�9
D
xPlaceholder*
dtype0*
shape: *
_output_shapes
:
D
yPlaceholder*
dtype0*
shape: *
_output_shapes
:
T
w/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
c
wVariable*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
�
w/AssignAssignww/initial_value*
validate_shape(*
_class

loc:@w*
use_locking(*
T0*
_output_shapes
: 
L
w/readIdentityw*
_class

loc:@w*
T0*
_output_shapes
: 
T
b/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
c
bVariable*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
�
b/AssignAssignbb/initial_value*
validate_shape(*
_class

loc:@b*
use_locking(*
T0*
_output_shapes
: 
L
b/readIdentityb*
_class

loc:@b*
T0*
_output_shapes
: 
8
mulMulxw/read*
T0*
_output_shapes
:
:
addAddmulb/read*
T0*
_output_shapes
:
5
subSubyadd*
T0*
_output_shapes
:
6
lossSquaresub*
T0*
_output_shapes
:
\
gradients/ShapeShapeloss*
out_type0*
T0*#
_output_shapes
:���������
T
gradients/ConstConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
[
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
:
o
gradients/loss_grad/mul/xConst^gradients/Fill*
dtype0*
valueB
 *   @*
_output_shapes
: 
a
gradients/loss_grad/mulMulgradients/loss_grad/mul/xsub*
T0*
_output_shapes
:
l
gradients/loss_grad/mul_1Mulgradients/Fillgradients/loss_grad/mul*
T0*
_output_shapes
:
b
gradients/sub_grad/ShapeShapey*
out_type0*
T0*#
_output_shapes
:���������
f
gradients/sub_grad/Shape_1Shapeadd*
out_type0*
T0*#
_output_shapes
:���������
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/sub_grad/SumSumgradients/loss_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
Tshape0*
T0*
_output_shapes
:
�
gradients/sub_grad/Sum_1Sumgradients/loss_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0*
_output_shapes
:
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0*
_output_shapes
:
d
gradients/add_grad/ShapeShapemul*
out_type0*
T0*#
_output_shapes
:���������
]
gradients/add_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_grad/SumSum-gradients/sub_grad/tuple/control_dependency_1(gradients/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
Tshape0*
T0*
_output_shapes
:
�
gradients/add_grad/Sum_1Sum-gradients/sub_grad/tuple/control_dependency_1*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*-
_class#
!loc:@gradients/add_grad/Reshape*
T0*
_output_shapes
:
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0*
_output_shapes
: 
b
gradients/mul_grad/ShapeShapex*
out_type0*
T0*#
_output_shapes
:���������
]
gradients/mul_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
u
gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependencyw/read*
T0*
_output_shapes
:
�
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
Tshape0*
T0*
_output_shapes
:
r
gradients/mul_grad/mul_1Mulx+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes
:
�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
�
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
�
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_grad/Reshape*
T0*
_output_shapes
:
�
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
T0*
_output_shapes
: 
b
GradientDescent/learning_rateConst*
dtype0*
valueB
 *o�:*
_output_shapes
: 
�
-GradientDescent/update_w/ApplyGradientDescentApplyGradientDescentwGradientDescent/learning_rate-gradients/mul_grad/tuple/control_dependency_1*
_class

loc:@w*
use_locking( *
T0*
_output_shapes
: 
�
-GradientDescent/update_b/ApplyGradientDescentApplyGradientDescentbGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
_class

loc:@b*
use_locking( *
T0*
_output_shapes
: 
w
GradientDescentNoOp.^GradientDescent/update_w/ApplyGradientDescent.^GradientDescent/update_b/ApplyGradientDescent
"
initNoOp	^w/Assign	^b/Assign""
train_op

GradientDescent"E
	variables86

w:0w/Assignw/read:0

b:0b/Assignb/read:0"O
trainable_variables86

w:0w/Assignw/read:0

b:0b/Assignb/read:0�U-�