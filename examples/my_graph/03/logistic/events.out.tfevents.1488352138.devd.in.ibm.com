       ŁK"	  â-ÖAbrain.Event:2×Dëß+      uz	Şâ-ÖA"ÓW
Z
imagePlaceholder*
dtype0*
shape:
* 
_output_shapes
:

X
labelPlaceholder*
dtype0*
shape:	
*
_output_shapes
:	

d
random_normal/shapeConst*
dtype0*
valueB"  
   *
_output_shapes
:
W
random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Y
random_normal/stddevConst*
dtype0*
valueB
 *
×#<*
_output_shapes
: 

"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*
dtype0*
seed2 *

seed *
T0*
_output_shapes
:	

|
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0*
_output_shapes
:	

e
random_normalAddrandom_normal/mulrandom_normal/mean*
T0*
_output_shapes
:	

{
WeightsVariable*
dtype0*
shape:	
*
	container *
shared_name *
_output_shapes
:	


Weights/AssignAssignWeightsrandom_normal*
validate_shape(*
_class
loc:@Weights*
use_locking(*
T0*
_output_shapes
:	

g
Weights/readIdentityWeights*
_class
loc:@Weights*
T0*
_output_shapes
:	

Z
zerosConst*
dtype0*
valueB
*    *
_output_shapes

:

{
	Weights_1Variable*
dtype0*
shape
:
*
	container *
shared_name *
_output_shapes

:


Weights_1/AssignAssign	Weights_1zeros*
validate_shape(*
_class
loc:@Weights_1*
use_locking(*
T0*
_output_shapes

:

l
Weights_1/readIdentity	Weights_1*
_class
loc:@Weights_1*
T0*
_output_shapes

:

u
MatMulMatMulimageWeights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	

L
addAddMatMulWeights_1/read*
T0*
_output_shapes
:	

F
RankConst*
dtype0*
value	B :*
_output_shapes
: 
V
ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:
H
Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
X
Shape_1Const*
dtype0*
valueB"   
   *
_output_shapes
:
G
Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
:
SubSubRank_1Sub/y*
T0*
_output_shapes
: 
R
Slice/beginPackSub*
N*
T0*
_output_shapes
:*

axis 
T

Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
b
SliceSliceShape_1Slice/begin
Slice/size*
Index0*
T0*
_output_shapes
:
S
concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
b
concat/values_0Const*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
i
concatConcatconcat/concat_dimconcat/values_0Slice*
_output_shapes
:*
T0*
N
W
ReshapeReshapeaddconcat*
_output_shapes
:	
*
T0*
Tshape0
H
Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
X
Shape_2Const*
dtype0*
valueB"   
   *
_output_shapes
:
I
Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
>
Sub_1SubRank_2Sub_1/y*
T0*
_output_shapes
: 
V
Slice_1/beginPackSub_1*
N*
T0*
_output_shapes
:*

axis 
V
Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
h
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
Index0*
T0*
_output_shapes
:
U
concat_1/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
d
concat_1/values_0Const*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
q
concat_1Concatconcat_1/concat_dimconcat_1/values_0Slice_1*
_output_shapes
:*
T0*
N
]
	Reshape_1Reshapelabelconcat_1*
_output_shapes
:	
*
T0*
Tshape0
j
lossSoftmaxCrossEntropyWithLogitsReshape	Reshape_1*
T0*&
_output_shapes
::	

I
Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
<
Sub_2SubRankSub_2/y*
T0*
_output_shapes
: 
W
Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
U
Slice_2/sizePackSub_2*
N*
T0*
_output_shapes
:*

axis 
o
Slice_2SliceShapeSlice_2/beginSlice_2/size*
Index0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
W
	Reshape_2ReshapelossSlice_2*
_output_shapes	
:*
T0*
Tshape0
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
\
MeanMean	Reshape_2Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
T
gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
m
"gradients/Mean_grad/Tile/multiplesConst*
dtype0*
valueB:*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes	
:
d
gradients/Mean_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
^
gradients/Mean_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
{
gradients/Mean_grad/floordivDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
|
gradients/Mean_grad/truedivDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes	
:
i
gradients/Reshape_2_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

 gradients/Reshape_2_grad/ReshapeReshapegradients/Mean_grad/truedivgradients/Reshape_2_grad/Shape*
_output_shapes	
:*
T0*
Tshape0
S
gradients/zeros_like	ZerosLikeloss:1*
T0*
_output_shapes
:	

m
"gradients/loss_grad/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
¨
gradients/loss_grad/ExpandDims
ExpandDims gradients/Reshape_2_grad/Reshape"gradients/loss_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:	
p
gradients/loss_grad/mulMulgradients/loss_grad/ExpandDimsloss:1*
T0*
_output_shapes
:	

m
gradients/Reshape_grad/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:

gradients/Reshape_grad/ReshapeReshapegradients/loss_grad/mulgradients/Reshape_grad/Shape*
_output_shapes
:	
*
T0*
Tshape0
i
gradients/add_grad/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:
k
gradients/add_grad/Shape_1Const*
dtype0*
valueB"   
   *
_output_shapes
:
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
§
gradients/add_grad/SumSumgradients/Reshape_grad/Reshape(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
_output_shapes
:	
*
T0*
Tshape0
Ť
gradients/add_grad/Sum_1Sumgradients/Reshape_grad/Reshape*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
_output_shapes

:
*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ň
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*-
_class#
!loc:@gradients/add_grad/Reshape*
T0*
_output_shapes
:	

×
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0*
_output_shapes

:

˛
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyWeights/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

Ź
gradients/MatMul_grad/MatMul_1MatMulimage+gradients/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	

n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
Ý
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0* 
_output_shapes
:

â
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	

b
GradientDescent/learning_rateConst*
dtype0*
valueB
 *
×#<*
_output_shapes
: 
ţ
3GradientDescent/update_Weights/ApplyGradientDescentApplyGradientDescentWeightsGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
_class
loc:@Weights*
use_locking( *
T0*
_output_shapes
:	


5GradientDescent/update_Weights_1/ApplyGradientDescentApplyGradientDescent	Weights_1GradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
_class
loc:@Weights_1*
use_locking( *
T0*
_output_shapes

:


GradientDescentNoOp4^GradientDescent/update_Weights/ApplyGradientDescent6^GradientDescent/update_Weights_1/ApplyGradientDescent
0
initNoOp^Weights/Assign^Weights_1/Assign"XjŠv6      Ü[´	 8Žâ-ÖAJęl
Ţ
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
N
Concat

concat_dim
values"T*N
output"T"
Nint(0"	
Ttype
8
Const
output"dtype"
valuetensor"
dtypetype
9
Div
x"T
y"T
z"T"
Ttype:
2	
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
i
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
Variable
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype*0.12.12v0.12.0-10-g4d924e7-dirtyÓW
Z
imagePlaceholder*
dtype0*
shape:
* 
_output_shapes
:

X
labelPlaceholder*
dtype0*
shape:	
*
_output_shapes
:	

d
random_normal/shapeConst*
dtype0*
valueB"  
   *
_output_shapes
:
W
random_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Y
random_normal/stddevConst*
dtype0*
valueB
 *
×#<*
_output_shapes
: 

"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*
dtype0*
seed2 *

seed *
T0*
_output_shapes
:	

|
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0*
_output_shapes
:	

e
random_normalAddrandom_normal/mulrandom_normal/mean*
T0*
_output_shapes
:	

{
WeightsVariable*
dtype0*
shape:	
*
shared_name *
	container *
_output_shapes
:	


Weights/AssignAssignWeightsrandom_normal*
validate_shape(*
_class
loc:@Weights*
use_locking(*
T0*
_output_shapes
:	

g
Weights/readIdentityWeights*
_class
loc:@Weights*
T0*
_output_shapes
:	

Z
zerosConst*
dtype0*
valueB
*    *
_output_shapes

:

{
	Weights_1Variable*
dtype0*
shape
:
*
shared_name *
	container *
_output_shapes

:


Weights_1/AssignAssign	Weights_1zeros*
validate_shape(*
_class
loc:@Weights_1*
use_locking(*
T0*
_output_shapes

:

l
Weights_1/readIdentity	Weights_1*
_class
loc:@Weights_1*
T0*
_output_shapes

:

u
MatMulMatMulimageWeights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	

L
addAddMatMulWeights_1/read*
T0*
_output_shapes
:	

F
RankConst*
dtype0*
value	B :*
_output_shapes
: 
V
ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:
H
Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
X
Shape_1Const*
dtype0*
valueB"   
   *
_output_shapes
:
G
Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
:
SubSubRank_1Sub/y*
T0*
_output_shapes
: 
R
Slice/beginPackSub*
_output_shapes
:*

axis *
T0*
N
T

Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
b
SliceSliceShape_1Slice/begin
Slice/size*
Index0*
T0*
_output_shapes
:
S
concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
b
concat/values_0Const*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
i
concatConcatconcat/concat_dimconcat/values_0Slice*
N*
T0*
_output_shapes
:
W
ReshapeReshapeaddconcat*
Tshape0*
T0*
_output_shapes
:	

H
Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
X
Shape_2Const*
dtype0*
valueB"   
   *
_output_shapes
:
I
Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
>
Sub_1SubRank_2Sub_1/y*
T0*
_output_shapes
: 
V
Slice_1/beginPackSub_1*
_output_shapes
:*

axis *
T0*
N
V
Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
h
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
Index0*
T0*
_output_shapes
:
U
concat_1/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
d
concat_1/values_0Const*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
q
concat_1Concatconcat_1/concat_dimconcat_1/values_0Slice_1*
N*
T0*
_output_shapes
:
]
	Reshape_1Reshapelabelconcat_1*
Tshape0*
T0*
_output_shapes
:	

j
lossSoftmaxCrossEntropyWithLogitsReshape	Reshape_1*
T0*&
_output_shapes
::	

I
Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
<
Sub_2SubRankSub_2/y*
T0*
_output_shapes
: 
W
Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
U
Slice_2/sizePackSub_2*
_output_shapes
:*

axis *
T0*
N
o
Slice_2SliceShapeSlice_2/beginSlice_2/size*
Index0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
W
	Reshape_2ReshapelossSlice_2*
Tshape0*
T0*
_output_shapes	
:
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
\
MeanMean	Reshape_2Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
T
gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
m
"gradients/Mean_grad/Tile/multiplesConst*
dtype0*
valueB:*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes	
:
d
gradients/Mean_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
^
gradients/Mean_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
{
gradients/Mean_grad/floordivDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
|
gradients/Mean_grad/truedivDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes	
:
i
gradients/Reshape_2_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

 gradients/Reshape_2_grad/ReshapeReshapegradients/Mean_grad/truedivgradients/Reshape_2_grad/Shape*
Tshape0*
T0*
_output_shapes	
:
S
gradients/zeros_like	ZerosLikeloss:1*
T0*
_output_shapes
:	

m
"gradients/loss_grad/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
¨
gradients/loss_grad/ExpandDims
ExpandDims gradients/Reshape_2_grad/Reshape"gradients/loss_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:	
p
gradients/loss_grad/mulMulgradients/loss_grad/ExpandDimsloss:1*
T0*
_output_shapes
:	

m
gradients/Reshape_grad/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:

gradients/Reshape_grad/ReshapeReshapegradients/loss_grad/mulgradients/Reshape_grad/Shape*
Tshape0*
T0*
_output_shapes
:	

i
gradients/add_grad/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:
k
gradients/add_grad/Shape_1Const*
dtype0*
valueB"   
   *
_output_shapes
:
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
§
gradients/add_grad/SumSumgradients/Reshape_grad/Reshape(gradients/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
Tshape0*
T0*
_output_shapes
:	

Ť
gradients/add_grad/Sum_1Sumgradients/Reshape_grad/Reshape*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:

g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ň
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*-
_class#
!loc:@gradients/add_grad/Reshape*
T0*
_output_shapes
:	

×
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0*
_output_shapes

:

˛
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyWeights/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

Ź
gradients/MatMul_grad/MatMul_1MatMulimage+gradients/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	

n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
Ý
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0* 
_output_shapes
:

â
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	

b
GradientDescent/learning_rateConst*
dtype0*
valueB
 *
×#<*
_output_shapes
: 
ţ
3GradientDescent/update_Weights/ApplyGradientDescentApplyGradientDescentWeightsGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
_class
loc:@Weights*
use_locking( *
T0*
_output_shapes
:	


5GradientDescent/update_Weights_1/ApplyGradientDescentApplyGradientDescent	Weights_1GradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
_class
loc:@Weights_1*
use_locking( *
T0*
_output_shapes

:


GradientDescentNoOp4^GradientDescent/update_Weights/ApplyGradientDescent6^GradientDescent/update_Weights_1/ApplyGradientDescent
0
initNoOp^Weights/Assign^Weights_1/Assign""
train_op

GradientDescent"o
	variablesb`
+
	Weights:0Weights/AssignWeights/read:0
1
Weights_1:0Weights_1/AssignWeights_1/read:0"y
trainable_variablesb`
+
	Weights:0Weights/AssignWeights/read:0
1
Weights_1:0Weights_1/AssignWeights_1/read:0˘/^