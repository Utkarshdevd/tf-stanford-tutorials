       БK"	  └шЩ-оAbrain.Event:2g7░w.     'Лн	"OЛшЩ-оA"Ж▄
e
data/X_placeholderPlaceholder*
dtype0*
shape: *(
_output_shapes
:         љ
d
data/Y_placeholderPlaceholder*
dtype0*
shape: *'
_output_shapes
:         

J
dropoutPlaceholder*
dtype0*
shape: *
_output_shapes
:
[
global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
m
global_stepVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
«
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0*
_output_shapes
: 
l
conv1/Reshape/shapeConst*
dtype0*%
valueB"             *
_output_shapes
:
Ѕ
conv1/ReshapeReshapedata/X_placeholderconv1/Reshape/shape*/
_output_shapes
:         *
T0*
Tshape0
ј
conv1/kernelVariable*
dtype0*
shape: *
	container *
shared_name *&
_output_shapes
: 
Е
/conv1/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@conv1/kernel*%
valueB"             *
_output_shapes
:
ћ
.conv1/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@conv1/kernel*
valueB
 *    *
_output_shapes
: 
ќ
0conv1/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@conv1/kernel*
valueB
 *  ђ?*
_output_shapes
: 
ш
9conv1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/conv1/kernel/Initializer/truncated_normal/shape*&
_output_shapes
: *
dtype0*
seed2 *

seed *
T0*
_class
loc:@conv1/kernel
з
-conv1/kernel/Initializer/truncated_normal/mulMul9conv1/kernel/Initializer/truncated_normal/TruncatedNormal0conv1/kernel/Initializer/truncated_normal/stddev*
_class
loc:@conv1/kernel*
T0*&
_output_shapes
: 
р
)conv1/kernel/Initializer/truncated_normalAdd-conv1/kernel/Initializer/truncated_normal/mul.conv1/kernel/Initializer/truncated_normal/mean*
_class
loc:@conv1/kernel*
T0*&
_output_shapes
: 
Л
conv1/kernel/AssignAssignconv1/kernel)conv1/kernel/Initializer/truncated_normal*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
}
conv1/kernel/readIdentityconv1/kernel*
_class
loc:@conv1/kernel*
T0*&
_output_shapes
: 
v
conv1/biasesVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
џ
/conv1/biases/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@conv1/biases*
valueB: *
_output_shapes
:
ћ
.conv1/biases/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@conv1/biases*
valueB
 *    *
_output_shapes
: 
ќ
0conv1/biases/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@conv1/biases*
valueB
 *  ђ?*
_output_shapes
: 
ж
9conv1/biases/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/conv1/biases/Initializer/truncated_normal/shape*
_output_shapes
: *
dtype0*
seed2 *

seed *
T0*
_class
loc:@conv1/biases
у
-conv1/biases/Initializer/truncated_normal/mulMul9conv1/biases/Initializer/truncated_normal/TruncatedNormal0conv1/biases/Initializer/truncated_normal/stddev*
_class
loc:@conv1/biases*
T0*
_output_shapes
: 
Н
)conv1/biases/Initializer/truncated_normalAdd-conv1/biases/Initializer/truncated_normal/mul.conv1/biases/Initializer/truncated_normal/mean*
_class
loc:@conv1/biases*
T0*
_output_shapes
: 
┼
conv1/biases/AssignAssignconv1/biases)conv1/biases/Initializer/truncated_normal*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 
q
conv1/biases/readIdentityconv1/biases*
_class
loc:@conv1/biases*
T0*
_output_shapes
: 
╔
conv1/Conv2DConv2Dconv1/Reshapeconv1/kernel/read*/
_output_shapes
:          *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
k
	conv1/addAddconv1/Conv2Dconv1/biases/read*
T0*/
_output_shapes
:          
X
conv1/conv1Relu	conv1/add*
T0*/
_output_shapes
:          
▒
pool1/MaxPoolMaxPoolconv1/conv1*/
_output_shapes
:          *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
Ј
conv2/kernelsVariable*
dtype0*
shape: @*
	container *
shared_name *&
_output_shapes
: @
Ф
0conv2/kernels/Initializer/truncated_normal/shapeConst*
dtype0* 
_class
loc:@conv2/kernels*%
valueB"          @   *
_output_shapes
:
ќ
/conv2/kernels/Initializer/truncated_normal/meanConst*
dtype0* 
_class
loc:@conv2/kernels*
valueB
 *    *
_output_shapes
: 
ў
1conv2/kernels/Initializer/truncated_normal/stddevConst*
dtype0* 
_class
loc:@conv2/kernels*
valueB
 *  ђ?*
_output_shapes
: 
Э
:conv2/kernels/Initializer/truncated_normal/TruncatedNormalTruncatedNormal0conv2/kernels/Initializer/truncated_normal/shape*&
_output_shapes
: @*
dtype0*
seed2 *

seed *
T0* 
_class
loc:@conv2/kernels
э
.conv2/kernels/Initializer/truncated_normal/mulMul:conv2/kernels/Initializer/truncated_normal/TruncatedNormal1conv2/kernels/Initializer/truncated_normal/stddev* 
_class
loc:@conv2/kernels*
T0*&
_output_shapes
: @
т
*conv2/kernels/Initializer/truncated_normalAdd.conv2/kernels/Initializer/truncated_normal/mul/conv2/kernels/Initializer/truncated_normal/mean* 
_class
loc:@conv2/kernels*
T0*&
_output_shapes
: @
Н
conv2/kernels/AssignAssignconv2/kernels*conv2/kernels/Initializer/truncated_normal*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
ђ
conv2/kernels/readIdentityconv2/kernels* 
_class
loc:@conv2/kernels*
T0*&
_output_shapes
: @
v
conv2/biasesVariable*
dtype0*
shape:@*
	container *
shared_name *
_output_shapes
:@
Ќ
,conv2/biases/Initializer/random_normal/shapeConst*
dtype0*
_class
loc:@conv2/biases*
valueB:@*
_output_shapes
:
Љ
+conv2/biases/Initializer/random_normal/meanConst*
dtype0*
_class
loc:@conv2/biases*
valueB
 *    *
_output_shapes
: 
Њ
-conv2/biases/Initializer/random_normal/stddevConst*
dtype0*
_class
loc:@conv2/biases*
valueB
 *  ђ?*
_output_shapes
: 
ь
;conv2/biases/Initializer/random_normal/RandomStandardNormalRandomStandardNormal,conv2/biases/Initializer/random_normal/shape*
_output_shapes
:@*
dtype0*
seed2 *

seed *
T0*
_class
loc:@conv2/biases
с
*conv2/biases/Initializer/random_normal/mulMul;conv2/biases/Initializer/random_normal/RandomStandardNormal-conv2/biases/Initializer/random_normal/stddev*
_class
loc:@conv2/biases*
T0*
_output_shapes
:@
╠
&conv2/biases/Initializer/random_normalAdd*conv2/biases/Initializer/random_normal/mul+conv2/biases/Initializer/random_normal/mean*
_class
loc:@conv2/biases*
T0*
_output_shapes
:@
┬
conv2/biases/AssignAssignconv2/biases&conv2/biases/Initializer/random_normal*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@
q
conv2/biases/readIdentityconv2/biases*
_class
loc:@conv2/biases*
T0*
_output_shapes
:@
╩
conv2/Conv2DConv2Dpool1/MaxPoolconv2/kernels/read*/
_output_shapes
:         @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
k
	conv2/addAddconv2/Conv2Dconv2/biases/read*
T0*/
_output_shapes
:         @
X
conv2/conv2Relu	conv2/add*
T0*/
_output_shapes
:         @
▒
pool2/MaxPoolMaxPoolconv2/conv2*/
_output_shapes
:         @*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
ђ

fc/weightsVariable*
dtype0*
shape:
└ђ*
	container *
shared_name * 
_output_shapes
:
└ђ
Ю
-fc/weights/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@fc/weights*
valueB"@     *
_output_shapes
:
љ
,fc/weights/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@fc/weights*
valueB
 *    *
_output_shapes
: 
њ
.fc/weights/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@fc/weights*
valueB
 *  ђ?*
_output_shapes
: 
ж
7fc/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal-fc/weights/Initializer/truncated_normal/shape* 
_output_shapes
:
└ђ*
dtype0*
seed2 *

seed *
T0*
_class
loc:@fc/weights
т
+fc/weights/Initializer/truncated_normal/mulMul7fc/weights/Initializer/truncated_normal/TruncatedNormal.fc/weights/Initializer/truncated_normal/stddev*
_class
loc:@fc/weights*
T0* 
_output_shapes
:
└ђ
М
'fc/weights/Initializer/truncated_normalAdd+fc/weights/Initializer/truncated_normal/mul,fc/weights/Initializer/truncated_normal/mean*
_class
loc:@fc/weights*
T0* 
_output_shapes
:
└ђ
├
fc/weights/AssignAssign
fc/weights'fc/weights/Initializer/truncated_normal*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ
q
fc/weights/readIdentity
fc/weights*
_class
loc:@fc/weights*
T0* 
_output_shapes
:
└ђ
u
	fc/biasesVariable*
dtype0*
shape:ђ*
	container *
shared_name *
_output_shapes	
:ђ
Ћ
,fc/biases/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@fc/biases*
valueB:ђ*
_output_shapes
:
ј
+fc/biases/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@fc/biases*
valueB
 *    *
_output_shapes
: 
љ
-fc/biases/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@fc/biases*
valueB
 *  ђ?*
_output_shapes
: 
р
6fc/biases/Initializer/truncated_normal/TruncatedNormalTruncatedNormal,fc/biases/Initializer/truncated_normal/shape*
_output_shapes	
:ђ*
dtype0*
seed2 *

seed *
T0*
_class
loc:@fc/biases
▄
*fc/biases/Initializer/truncated_normal/mulMul6fc/biases/Initializer/truncated_normal/TruncatedNormal-fc/biases/Initializer/truncated_normal/stddev*
_class
loc:@fc/biases*
T0*
_output_shapes	
:ђ
╩
&fc/biases/Initializer/truncated_normalAdd*fc/biases/Initializer/truncated_normal/mul+fc/biases/Initializer/truncated_normal/mean*
_class
loc:@fc/biases*
T0*
_output_shapes	
:ђ
║
fc/biases/AssignAssign	fc/biases&fc/biases/Initializer/truncated_normal*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
i
fc/biases/readIdentity	fc/biases*
_class
loc:@fc/biases*
T0*
_output_shapes	
:ђ
a
fc/Reshape/shapeConst*
dtype0*
valueB"    @  *
_output_shapes
:
w

fc/ReshapeReshapepool2/MaxPoolfc/Reshape/shape*(
_output_shapes
:         └*
T0*
Tshape0
Ѕ
	fc/MatMulMatMul
fc/Reshapefc/weights/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:         ђ
[
fc/addAdd	fc/MatMulfc/biases/read*
T0*(
_output_shapes
:         ђ
J
fc/reluRelufc/add*
T0*(
_output_shapes
:         ђ
\
fc/relu_dropout/ShapeShapefc/relu*
out_type0*
T0*
_output_shapes
:
g
"fc/relu_dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: 
g
"fc/relu_dropout/random_uniform/maxConst*
dtype0*
valueB
 *  ђ?*
_output_shapes
: 
Г
,fc/relu_dropout/random_uniform/RandomUniformRandomUniformfc/relu_dropout/Shape*
dtype0*
seed2 *

seed *
T0*(
_output_shapes
:         ђ
њ
"fc/relu_dropout/random_uniform/subSub"fc/relu_dropout/random_uniform/max"fc/relu_dropout/random_uniform/min*
T0*
_output_shapes
: 
«
"fc/relu_dropout/random_uniform/mulMul,fc/relu_dropout/random_uniform/RandomUniform"fc/relu_dropout/random_uniform/sub*
T0*(
_output_shapes
:         ђ
а
fc/relu_dropout/random_uniformAdd"fc/relu_dropout/random_uniform/mul"fc/relu_dropout/random_uniform/min*
T0*(
_output_shapes
:         ђ
f
fc/relu_dropout/addAdddropoutfc/relu_dropout/random_uniform*
T0*
_output_shapes
:
V
fc/relu_dropout/FloorFloorfc/relu_dropout/add*
T0*
_output_shapes
:
O
fc/relu_dropout/DivDivfc/reludropout*
T0*
_output_shapes
:
y
fc/relu_dropout/mulMulfc/relu_dropout/Divfc/relu_dropout/Floor*
T0*(
_output_shapes
:         ђ
і
softmax_linear/weightsVariable*
dtype0*
shape:	ђ
*
	container *
shared_name *
_output_shapes
:	ђ

х
9softmax_linear/weights/Initializer/truncated_normal/shapeConst*
dtype0*)
_class
loc:@softmax_linear/weights*
valueB"   
   *
_output_shapes
:
е
8softmax_linear/weights/Initializer/truncated_normal/meanConst*
dtype0*)
_class
loc:@softmax_linear/weights*
valueB
 *    *
_output_shapes
: 
ф
:softmax_linear/weights/Initializer/truncated_normal/stddevConst*
dtype0*)
_class
loc:@softmax_linear/weights*
valueB
 *  ђ?*
_output_shapes
: 
ї
Csoftmax_linear/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9softmax_linear/weights/Initializer/truncated_normal/shape*
_output_shapes
:	ђ
*
dtype0*
seed2 *

seed *
T0*)
_class
loc:@softmax_linear/weights
ћ
7softmax_linear/weights/Initializer/truncated_normal/mulMulCsoftmax_linear/weights/Initializer/truncated_normal/TruncatedNormal:softmax_linear/weights/Initializer/truncated_normal/stddev*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes
:	ђ

ѓ
3softmax_linear/weights/Initializer/truncated_normalAdd7softmax_linear/weights/Initializer/truncated_normal/mul8softmax_linear/weights/Initializer/truncated_normal/mean*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes
:	ђ

Ы
softmax_linear/weights/AssignAssignsoftmax_linear/weights3softmax_linear/weights/Initializer/truncated_normal*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

ћ
softmax_linear/weights/readIdentitysoftmax_linear/weights*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes
:	ђ


softmax_linear/biasesVariable*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

г
8softmax_linear/biases/Initializer/truncated_normal/shapeConst*
dtype0*(
_class
loc:@softmax_linear/biases*
valueB:
*
_output_shapes
:
д
7softmax_linear/biases/Initializer/truncated_normal/meanConst*
dtype0*(
_class
loc:@softmax_linear/biases*
valueB
 *    *
_output_shapes
: 
е
9softmax_linear/biases/Initializer/truncated_normal/stddevConst*
dtype0*(
_class
loc:@softmax_linear/biases*
valueB
 *  ђ?*
_output_shapes
: 
ё
Bsoftmax_linear/biases/Initializer/truncated_normal/TruncatedNormalTruncatedNormal8softmax_linear/biases/Initializer/truncated_normal/shape*
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*(
_class
loc:@softmax_linear/biases
І
6softmax_linear/biases/Initializer/truncated_normal/mulMulBsoftmax_linear/biases/Initializer/truncated_normal/TruncatedNormal9softmax_linear/biases/Initializer/truncated_normal/stddev*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

щ
2softmax_linear/biases/Initializer/truncated_normalAdd6softmax_linear/biases/Initializer/truncated_normal/mul7softmax_linear/biases/Initializer/truncated_normal/mean*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

ж
softmax_linear/biases/AssignAssignsoftmax_linear/biases2softmax_linear/biases/Initializer/truncated_normal*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

ї
softmax_linear/biases/readIdentitysoftmax_linear/biases*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

Е
softmax_linear/MatMulMatMulfc/relu_dropout/mulsoftmax_linear/weights/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:         

~
softmax_linear/addAddsoftmax_linear/MatMulsoftmax_linear/biases/read*
T0*'
_output_shapes
:         

K
	loss/RankConst*
dtype0*
value	B :*
_output_shapes
: 
\

loss/ShapeShapesoftmax_linear/add*
out_type0*
T0*
_output_shapes
:
M
loss/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
^
loss/Shape_1Shapesoftmax_linear/add*
out_type0*
T0*
_output_shapes
:
L

loss/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
I
loss/SubSubloss/Rank_1
loss/Sub/y*
T0*
_output_shapes
: 
\
loss/Slice/beginPackloss/Sub*
N*
T0*
_output_shapes
:*

axis 
Y
loss/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
v

loss/SliceSliceloss/Shape_1loss/Slice/beginloss/Slice/size*
Index0*
T0*
_output_shapes
:
X
loss/concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
g
loss/concat/values_0Const*
dtype0*
valueB:
         *
_output_shapes
:
}
loss/concatConcatloss/concat/concat_dimloss/concat/values_0
loss/Slice*
_output_shapes
:*
T0*
N
Ђ
loss/ReshapeReshapesoftmax_linear/addloss/concat*0
_output_shapes
:                  *
T0*
Tshape0
M
loss/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
^
loss/Shape_2Shapedata/Y_placeholder*
out_type0*
T0*
_output_shapes
:
N
loss/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
M

loss/Sub_1Subloss/Rank_2loss/Sub_1/y*
T0*
_output_shapes
: 
`
loss/Slice_1/beginPack
loss/Sub_1*
N*
T0*
_output_shapes
:*

axis 
[
loss/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
|
loss/Slice_1Sliceloss/Shape_2loss/Slice_1/beginloss/Slice_1/size*
Index0*
T0*
_output_shapes
:
Z
loss/concat_1/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
i
loss/concat_1/values_0Const*
dtype0*
valueB:
         *
_output_shapes
:
Ё
loss/concat_1Concatloss/concat_1/concat_dimloss/concat_1/values_0loss/Slice_1*
_output_shapes
:*
T0*
N
Ё
loss/Reshape_1Reshapedata/Y_placeholderloss/concat_1*0
_output_shapes
:                  *
T0*
Tshape0
Ф
"loss/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsloss/Reshapeloss/Reshape_1*
T0*?
_output_shapes-
+:         :                  
N
loss/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
K

loss/Sub_2Sub	loss/Rankloss/Sub_2/y*
T0*
_output_shapes
: 
\
loss/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
_
loss/Slice_2/sizePack
loss/Sub_2*
N*
T0*
_output_shapes
:*

axis 
Ѓ
loss/Slice_2Slice
loss/Shapeloss/Slice_2/beginloss/Slice_2/size*
Index0*
T0*#
_output_shapes
:         
Є
loss/Reshape_2Reshape"loss/SoftmaxCrossEntropyWithLogitsloss/Slice_2*#
_output_shapes
:         *
T0*
Tshape0
T

loss/ConstConst*
dtype0*
valueB: *
_output_shapes
:
k
	loss/lossMeanloss/Reshape_2
loss/Const*
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
 *  ђ?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
p
&gradients/loss/loss_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
ќ
 gradients/loss/loss_grad/ReshapeReshapegradients/Fill&gradients/loss/loss_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
l
gradients/loss/loss_grad/ShapeShapeloss/Reshape_2*
out_type0*
T0*
_output_shapes
:
Д
gradients/loss/loss_grad/TileTile gradients/loss/loss_grad/Reshapegradients/loss/loss_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
n
 gradients/loss/loss_grad/Shape_1Shapeloss/Reshape_2*
out_type0*
T0*
_output_shapes
:
c
 gradients/loss/loss_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
h
gradients/loss/loss_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Ц
gradients/loss/loss_grad/ProdProd gradients/loss/loss_grad/Shape_1gradients/loss/loss_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
j
 gradients/loss/loss_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
Е
gradients/loss/loss_grad/Prod_1Prod gradients/loss/loss_grad/Shape_2 gradients/loss/loss_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
d
"gradients/loss/loss_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
Љ
 gradients/loss/loss_grad/MaximumMaximumgradients/loss/loss_grad/Prod_1"gradients/loss/loss_grad/Maximum/y*
T0*
_output_shapes
: 
і
!gradients/loss/loss_grad/floordivDivgradients/loss/loss_grad/Prod gradients/loss/loss_grad/Maximum*
T0*
_output_shapes
: 
x
gradients/loss/loss_grad/CastCast!gradients/loss/loss_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
Њ
 gradients/loss/loss_grad/truedivDivgradients/loss/loss_grad/Tilegradients/loss/loss_grad/Cast*
T0*#
_output_shapes
:         
Ё
#gradients/loss/Reshape_2_grad/ShapeShape"loss/SoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:
│
%gradients/loss/Reshape_2_grad/ReshapeReshape gradients/loss/loss_grad/truediv#gradients/loss/Reshape_2_grad/Shape*#
_output_shapes
:         *
T0*
Tshape0
ѓ
gradients/zeros_like	ZerosLike$loss/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:                  
І
@gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
ы
<gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims%gradients/loss/Reshape_2_grad/Reshape@gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
█
5gradients/loss/SoftmaxCrossEntropyWithLogits_grad/mulMul<gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims$loss/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:                  
s
!gradients/loss/Reshape_grad/ShapeShapesoftmax_linear/add*
out_type0*
T0*
_output_shapes
:
╚
#gradients/loss/Reshape_grad/ReshapeReshape5gradients/loss/SoftmaxCrossEntropyWithLogits_grad/mul!gradients/loss/Reshape_grad/Shape*'
_output_shapes
:         
*
T0*
Tshape0
|
'gradients/softmax_linear/add_grad/ShapeShapesoftmax_linear/MatMul*
out_type0*
T0*
_output_shapes
:
s
)gradients/softmax_linear/add_grad/Shape_1Const*
dtype0*
valueB:
*
_output_shapes
:
р
7gradients/softmax_linear/add_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/softmax_linear/add_grad/Shape)gradients/softmax_linear/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
%gradients/softmax_linear/add_grad/SumSum#gradients/loss/Reshape_grad/Reshape7gradients/softmax_linear/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
─
)gradients/softmax_linear/add_grad/ReshapeReshape%gradients/softmax_linear/add_grad/Sum'gradients/softmax_linear/add_grad/Shape*'
_output_shapes
:         
*
T0*
Tshape0
╬
'gradients/softmax_linear/add_grad/Sum_1Sum#gradients/loss/Reshape_grad/Reshape9gradients/softmax_linear/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
й
+gradients/softmax_linear/add_grad/Reshape_1Reshape'gradients/softmax_linear/add_grad/Sum_1)gradients/softmax_linear/add_grad/Shape_1*
_output_shapes
:
*
T0*
Tshape0
ћ
2gradients/softmax_linear/add_grad/tuple/group_depsNoOp*^gradients/softmax_linear/add_grad/Reshape,^gradients/softmax_linear/add_grad/Reshape_1
ќ
:gradients/softmax_linear/add_grad/tuple/control_dependencyIdentity)gradients/softmax_linear/add_grad/Reshape3^gradients/softmax_linear/add_grad/tuple/group_deps*<
_class2
0.loc:@gradients/softmax_linear/add_grad/Reshape*
T0*'
_output_shapes
:         

Ј
<gradients/softmax_linear/add_grad/tuple/control_dependency_1Identity+gradients/softmax_linear/add_grad/Reshape_13^gradients/softmax_linear/add_grad/tuple/group_deps*>
_class4
20loc:@gradients/softmax_linear/add_grad/Reshape_1*
T0*
_output_shapes
:

у
+gradients/softmax_linear/MatMul_grad/MatMulMatMul:gradients/softmax_linear/add_grad/tuple/control_dependencysoftmax_linear/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         ђ
п
-gradients/softmax_linear/MatMul_grad/MatMul_1MatMulfc/relu_dropout/mul:gradients/softmax_linear/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	ђ

Џ
5gradients/softmax_linear/MatMul_grad/tuple/group_depsNoOp,^gradients/softmax_linear/MatMul_grad/MatMul.^gradients/softmax_linear/MatMul_grad/MatMul_1
А
=gradients/softmax_linear/MatMul_grad/tuple/control_dependencyIdentity+gradients/softmax_linear/MatMul_grad/MatMul6^gradients/softmax_linear/MatMul_grad/tuple/group_deps*>
_class4
20loc:@gradients/softmax_linear/MatMul_grad/MatMul*
T0*(
_output_shapes
:         ђ
ъ
?gradients/softmax_linear/MatMul_grad/tuple/control_dependency_1Identity-gradients/softmax_linear/MatMul_grad/MatMul_16^gradients/softmax_linear/MatMul_grad/tuple/group_deps*@
_class6
42loc:@gradients/softmax_linear/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	ђ

ё
(gradients/fc/relu_dropout/mul_grad/ShapeShapefc/relu_dropout/Div*
out_type0*
T0*#
_output_shapes
:         
ѕ
*gradients/fc/relu_dropout/mul_grad/Shape_1Shapefc/relu_dropout/Floor*
out_type0*
T0*#
_output_shapes
:         
С
8gradients/fc/relu_dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/fc/relu_dropout/mul_grad/Shape*gradients/fc/relu_dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
д
&gradients/fc/relu_dropout/mul_grad/mulMul=gradients/softmax_linear/MatMul_grad/tuple/control_dependencyfc/relu_dropout/Floor*
T0*
_output_shapes
:
¤
&gradients/fc/relu_dropout/mul_grad/SumSum&gradients/fc/relu_dropout/mul_grad/mul8gradients/fc/relu_dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
И
*gradients/fc/relu_dropout/mul_grad/ReshapeReshape&gradients/fc/relu_dropout/mul_grad/Sum(gradients/fc/relu_dropout/mul_grad/Shape*
_output_shapes
:*
T0*
Tshape0
д
(gradients/fc/relu_dropout/mul_grad/mul_1Mulfc/relu_dropout/Div=gradients/softmax_linear/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
Н
(gradients/fc/relu_dropout/mul_grad/Sum_1Sum(gradients/fc/relu_dropout/mul_grad/mul_1:gradients/fc/relu_dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Й
,gradients/fc/relu_dropout/mul_grad/Reshape_1Reshape(gradients/fc/relu_dropout/mul_grad/Sum_1*gradients/fc/relu_dropout/mul_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
Ќ
3gradients/fc/relu_dropout/mul_grad/tuple/group_depsNoOp+^gradients/fc/relu_dropout/mul_grad/Reshape-^gradients/fc/relu_dropout/mul_grad/Reshape_1
І
;gradients/fc/relu_dropout/mul_grad/tuple/control_dependencyIdentity*gradients/fc/relu_dropout/mul_grad/Reshape4^gradients/fc/relu_dropout/mul_grad/tuple/group_deps*=
_class3
1/loc:@gradients/fc/relu_dropout/mul_grad/Reshape*
T0*
_output_shapes
:
Љ
=gradients/fc/relu_dropout/mul_grad/tuple/control_dependency_1Identity,gradients/fc/relu_dropout/mul_grad/Reshape_14^gradients/fc/relu_dropout/mul_grad/tuple/group_deps*?
_class5
31loc:@gradients/fc/relu_dropout/mul_grad/Reshape_1*
T0*
_output_shapes
:
o
(gradients/fc/relu_dropout/Div_grad/ShapeShapefc/relu*
out_type0*
T0*
_output_shapes
:
z
*gradients/fc/relu_dropout/Div_grad/Shape_1Shapedropout*
out_type0*
T0*#
_output_shapes
:         
С
8gradients/fc/relu_dropout/Div_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/fc/relu_dropout/Div_grad/Shape*gradients/fc/relu_dropout/Div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
џ
*gradients/fc/relu_dropout/Div_grad/truedivDiv;gradients/fc/relu_dropout/mul_grad/tuple/control_dependencydropout*
T0*
_output_shapes
:
М
&gradients/fc/relu_dropout/Div_grad/SumSum*gradients/fc/relu_dropout/Div_grad/truediv8gradients/fc/relu_dropout/Div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
╚
*gradients/fc/relu_dropout/Div_grad/ReshapeReshape&gradients/fc/relu_dropout/Div_grad/Sum(gradients/fc/relu_dropout/Div_grad/Shape*(
_output_shapes
:         ђ*
T0*
Tshape0
i
&gradients/fc/relu_dropout/Div_grad/NegNegfc/relu*
T0*(
_output_shapes
:         ђ
_
)gradients/fc/relu_dropout/Div_grad/SquareSquaredropout*
T0*
_output_shapes
:
Е
,gradients/fc/relu_dropout/Div_grad/truediv_1Div&gradients/fc/relu_dropout/Div_grad/Neg)gradients/fc/relu_dropout/Div_grad/Square*
T0*
_output_shapes
:
╗
&gradients/fc/relu_dropout/Div_grad/mulMul;gradients/fc/relu_dropout/mul_grad/tuple/control_dependency,gradients/fc/relu_dropout/Div_grad/truediv_1*
T0*
_output_shapes
:
М
(gradients/fc/relu_dropout/Div_grad/Sum_1Sum&gradients/fc/relu_dropout/Div_grad/mul:gradients/fc/relu_dropout/Div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Й
,gradients/fc/relu_dropout/Div_grad/Reshape_1Reshape(gradients/fc/relu_dropout/Div_grad/Sum_1*gradients/fc/relu_dropout/Div_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
Ќ
3gradients/fc/relu_dropout/Div_grad/tuple/group_depsNoOp+^gradients/fc/relu_dropout/Div_grad/Reshape-^gradients/fc/relu_dropout/Div_grad/Reshape_1
Џ
;gradients/fc/relu_dropout/Div_grad/tuple/control_dependencyIdentity*gradients/fc/relu_dropout/Div_grad/Reshape4^gradients/fc/relu_dropout/Div_grad/tuple/group_deps*=
_class3
1/loc:@gradients/fc/relu_dropout/Div_grad/Reshape*
T0*(
_output_shapes
:         ђ
Љ
=gradients/fc/relu_dropout/Div_grad/tuple/control_dependency_1Identity,gradients/fc/relu_dropout/Div_grad/Reshape_14^gradients/fc/relu_dropout/Div_grad/tuple/group_deps*?
_class5
31loc:@gradients/fc/relu_dropout/Div_grad/Reshape_1*
T0*
_output_shapes
:
ц
gradients/fc/relu_grad/ReluGradReluGrad;gradients/fc/relu_dropout/Div_grad/tuple/control_dependencyfc/relu*
T0*(
_output_shapes
:         ђ
d
gradients/fc/add_grad/ShapeShape	fc/MatMul*
out_type0*
T0*
_output_shapes
:
h
gradients/fc/add_grad/Shape_1Const*
dtype0*
valueB:ђ*
_output_shapes
:
й
+gradients/fc/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/fc/add_grad/Shapegradients/fc/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
«
gradients/fc/add_grad/SumSumgradients/fc/relu_grad/ReluGrad+gradients/fc/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
А
gradients/fc/add_grad/ReshapeReshapegradients/fc/add_grad/Sumgradients/fc/add_grad/Shape*(
_output_shapes
:         ђ*
T0*
Tshape0
▓
gradients/fc/add_grad/Sum_1Sumgradients/fc/relu_grad/ReluGrad-gradients/fc/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
џ
gradients/fc/add_grad/Reshape_1Reshapegradients/fc/add_grad/Sum_1gradients/fc/add_grad/Shape_1*
_output_shapes	
:ђ*
T0*
Tshape0
p
&gradients/fc/add_grad/tuple/group_depsNoOp^gradients/fc/add_grad/Reshape ^gradients/fc/add_grad/Reshape_1
у
.gradients/fc/add_grad/tuple/control_dependencyIdentitygradients/fc/add_grad/Reshape'^gradients/fc/add_grad/tuple/group_deps*0
_class&
$"loc:@gradients/fc/add_grad/Reshape*
T0*(
_output_shapes
:         ђ
Я
0gradients/fc/add_grad/tuple/control_dependency_1Identitygradients/fc/add_grad/Reshape_1'^gradients/fc/add_grad/tuple/group_deps*2
_class(
&$loc:@gradients/fc/add_grad/Reshape_1*
T0*
_output_shapes	
:ђ
├
gradients/fc/MatMul_grad/MatMulMatMul.gradients/fc/add_grad/tuple/control_dependencyfc/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         └
И
!gradients/fc/MatMul_grad/MatMul_1MatMul
fc/Reshape.gradients/fc/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
└ђ
w
)gradients/fc/MatMul_grad/tuple/group_depsNoOp ^gradients/fc/MatMul_grad/MatMul"^gradients/fc/MatMul_grad/MatMul_1
ы
1gradients/fc/MatMul_grad/tuple/control_dependencyIdentitygradients/fc/MatMul_grad/MatMul*^gradients/fc/MatMul_grad/tuple/group_deps*2
_class(
&$loc:@gradients/fc/MatMul_grad/MatMul*
T0*(
_output_shapes
:         └
№
3gradients/fc/MatMul_grad/tuple/control_dependency_1Identity!gradients/fc/MatMul_grad/MatMul_1*^gradients/fc/MatMul_grad/tuple/group_deps*4
_class*
(&loc:@gradients/fc/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
└ђ
l
gradients/fc/Reshape_grad/ShapeShapepool2/MaxPool*
out_type0*
T0*
_output_shapes
:
╚
!gradients/fc/Reshape_grad/ReshapeReshape1gradients/fc/MatMul_grad/tuple/control_dependencygradients/fc/Reshape_grad/Shape*/
_output_shapes
:         @*
T0*
Tshape0
ѓ
(gradients/pool2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2/conv2pool2/MaxPool!gradients/fc/Reshape_grad/Reshape*/
_output_shapes
:         @*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
а
#gradients/conv2/conv2_grad/ReluGradReluGrad(gradients/pool2/MaxPool_grad/MaxPoolGradconv2/conv2*
T0*/
_output_shapes
:         @
j
gradients/conv2/add_grad/ShapeShapeconv2/Conv2D*
out_type0*
T0*
_output_shapes
:
j
 gradients/conv2/add_grad/Shape_1Const*
dtype0*
valueB:@*
_output_shapes
:
к
.gradients/conv2/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/conv2/add_grad/Shape gradients/conv2/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
И
gradients/conv2/add_grad/SumSum#gradients/conv2/conv2_grad/ReluGrad.gradients/conv2/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
▒
 gradients/conv2/add_grad/ReshapeReshapegradients/conv2/add_grad/Sumgradients/conv2/add_grad/Shape*/
_output_shapes
:         @*
T0*
Tshape0
╝
gradients/conv2/add_grad/Sum_1Sum#gradients/conv2/conv2_grad/ReluGrad0gradients/conv2/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
б
"gradients/conv2/add_grad/Reshape_1Reshapegradients/conv2/add_grad/Sum_1 gradients/conv2/add_grad/Shape_1*
_output_shapes
:@*
T0*
Tshape0
y
)gradients/conv2/add_grad/tuple/group_depsNoOp!^gradients/conv2/add_grad/Reshape#^gradients/conv2/add_grad/Reshape_1
Щ
1gradients/conv2/add_grad/tuple/control_dependencyIdentity gradients/conv2/add_grad/Reshape*^gradients/conv2/add_grad/tuple/group_deps*3
_class)
'%loc:@gradients/conv2/add_grad/Reshape*
T0*/
_output_shapes
:         @
в
3gradients/conv2/add_grad/tuple/control_dependency_1Identity"gradients/conv2/add_grad/Reshape_1*^gradients/conv2/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/conv2/add_grad/Reshape_1*
T0*
_output_shapes
:@
n
!gradients/conv2/Conv2D_grad/ShapeShapepool1/MaxPool*
out_type0*
T0*
_output_shapes
:
▄
/gradients/conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput!gradients/conv2/Conv2D_grad/Shapeconv2/kernels/read1gradients/conv2/add_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
|
#gradients/conv2/Conv2D_grad/Shape_1Const*
dtype0*%
valueB"          @   *
_output_shapes
:
и
0gradients/conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpool1/MaxPool#gradients/conv2/Conv2D_grad/Shape_11gradients/conv2/add_grad/tuple/control_dependency*&
_output_shapes
: @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
Ў
,gradients/conv2/Conv2D_grad/tuple/group_depsNoOp0^gradients/conv2/Conv2D_grad/Conv2DBackpropInput1^gradients/conv2/Conv2D_grad/Conv2DBackpropFilter
ъ
4gradients/conv2/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv2/Conv2D_grad/Conv2DBackpropInput-^gradients/conv2/Conv2D_grad/tuple/group_deps*B
_class8
64loc:@gradients/conv2/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:          
Ў
6gradients/conv2/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv2/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv2/Conv2D_grad/tuple/group_deps*C
_class9
75loc:@gradients/conv2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @
Ћ
(gradients/pool1/MaxPool_grad/MaxPoolGradMaxPoolGradconv1/conv1pool1/MaxPool4gradients/conv2/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:          *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
а
#gradients/conv1/conv1_grad/ReluGradReluGrad(gradients/pool1/MaxPool_grad/MaxPoolGradconv1/conv1*
T0*/
_output_shapes
:          
j
gradients/conv1/add_grad/ShapeShapeconv1/Conv2D*
out_type0*
T0*
_output_shapes
:
j
 gradients/conv1/add_grad/Shape_1Const*
dtype0*
valueB: *
_output_shapes
:
к
.gradients/conv1/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/conv1/add_grad/Shape gradients/conv1/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
И
gradients/conv1/add_grad/SumSum#gradients/conv1/conv1_grad/ReluGrad.gradients/conv1/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
▒
 gradients/conv1/add_grad/ReshapeReshapegradients/conv1/add_grad/Sumgradients/conv1/add_grad/Shape*/
_output_shapes
:          *
T0*
Tshape0
╝
gradients/conv1/add_grad/Sum_1Sum#gradients/conv1/conv1_grad/ReluGrad0gradients/conv1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
б
"gradients/conv1/add_grad/Reshape_1Reshapegradients/conv1/add_grad/Sum_1 gradients/conv1/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
y
)gradients/conv1/add_grad/tuple/group_depsNoOp!^gradients/conv1/add_grad/Reshape#^gradients/conv1/add_grad/Reshape_1
Щ
1gradients/conv1/add_grad/tuple/control_dependencyIdentity gradients/conv1/add_grad/Reshape*^gradients/conv1/add_grad/tuple/group_deps*3
_class)
'%loc:@gradients/conv1/add_grad/Reshape*
T0*/
_output_shapes
:          
в
3gradients/conv1/add_grad/tuple/control_dependency_1Identity"gradients/conv1/add_grad/Reshape_1*^gradients/conv1/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/conv1/add_grad/Reshape_1*
T0*
_output_shapes
: 
n
!gradients/conv1/Conv2D_grad/ShapeShapeconv1/Reshape*
out_type0*
T0*
_output_shapes
:
█
/gradients/conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput!gradients/conv1/Conv2D_grad/Shapeconv1/kernel/read1gradients/conv1/add_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
|
#gradients/conv1/Conv2D_grad/Shape_1Const*
dtype0*%
valueB"             *
_output_shapes
:
и
0gradients/conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1/Reshape#gradients/conv1/Conv2D_grad/Shape_11gradients/conv1/add_grad/tuple/control_dependency*&
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
Ў
,gradients/conv1/Conv2D_grad/tuple/group_depsNoOp0^gradients/conv1/Conv2D_grad/Conv2DBackpropInput1^gradients/conv1/Conv2D_grad/Conv2DBackpropFilter
ъ
4gradients/conv1/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv1/Conv2D_grad/Conv2DBackpropInput-^gradients/conv1/Conv2D_grad/tuple/group_deps*B
_class8
64loc:@gradients/conv1/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:         
Ў
6gradients/conv1/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv1/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv1/Conv2D_grad/tuple/group_deps*C
_class9
75loc:@gradients/conv1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 

beta1_power/initial_valueConst*
dtype0*
_class
loc:@conv1/kernel*
valueB
 *fff?*
_output_shapes
: 
ј
beta1_powerVariable*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/kernel*
shared_name 
»
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*
_output_shapes
: 
k
beta1_power/readIdentitybeta1_power*
_class
loc:@conv1/kernel*
T0*
_output_shapes
: 

beta2_power/initial_valueConst*
dtype0*
_class
loc:@conv1/kernel*
valueB
 *wЙ?*
_output_shapes
: 
ј
beta2_powerVariable*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/kernel*
shared_name 
»
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*
_output_shapes
: 
k
beta2_power/readIdentitybeta2_power*
_class
loc:@conv1/kernel*
T0*
_output_shapes
: 
j
zerosConst*
dtype0*%
valueB *    *&
_output_shapes
: 
┤
conv1/kernel/AdamVariable*
	container *&
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/kernel*
shared_name 
и
conv1/kernel/Adam/AssignAssignconv1/kernel/Adamzeros*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
Є
conv1/kernel/Adam/readIdentityconv1/kernel/Adam*
_class
loc:@conv1/kernel*
T0*&
_output_shapes
: 
l
zeros_1Const*
dtype0*%
valueB *    *&
_output_shapes
: 
Х
conv1/kernel/Adam_1Variable*
	container *&
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/kernel*
shared_name 
й
conv1/kernel/Adam_1/AssignAssignconv1/kernel/Adam_1zeros_1*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
І
conv1/kernel/Adam_1/readIdentityconv1/kernel/Adam_1*
_class
loc:@conv1/kernel*
T0*&
_output_shapes
: 
T
zeros_2Const*
dtype0*
valueB *    *
_output_shapes
: 
ю
conv1/biases/AdamVariable*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/biases*
shared_name 
Г
conv1/biases/Adam/AssignAssignconv1/biases/Adamzeros_2*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 
{
conv1/biases/Adam/readIdentityconv1/biases/Adam*
_class
loc:@conv1/biases*
T0*
_output_shapes
: 
T
zeros_3Const*
dtype0*
valueB *    *
_output_shapes
: 
ъ
conv1/biases/Adam_1Variable*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/biases*
shared_name 
▒
conv1/biases/Adam_1/AssignAssignconv1/biases/Adam_1zeros_3*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 

conv1/biases/Adam_1/readIdentityconv1/biases/Adam_1*
_class
loc:@conv1/biases*
T0*
_output_shapes
: 
l
zeros_4Const*
dtype0*%
valueB @*    *&
_output_shapes
: @
Х
conv2/kernels/AdamVariable*
	container *&
_output_shapes
: @*
dtype0*
shape: @* 
_class
loc:@conv2/kernels*
shared_name 
╝
conv2/kernels/Adam/AssignAssignconv2/kernels/Adamzeros_4*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
і
conv2/kernels/Adam/readIdentityconv2/kernels/Adam* 
_class
loc:@conv2/kernels*
T0*&
_output_shapes
: @
l
zeros_5Const*
dtype0*%
valueB @*    *&
_output_shapes
: @
И
conv2/kernels/Adam_1Variable*
	container *&
_output_shapes
: @*
dtype0*
shape: @* 
_class
loc:@conv2/kernels*
shared_name 
└
conv2/kernels/Adam_1/AssignAssignconv2/kernels/Adam_1zeros_5*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
ј
conv2/kernels/Adam_1/readIdentityconv2/kernels/Adam_1* 
_class
loc:@conv2/kernels*
T0*&
_output_shapes
: @
T
zeros_6Const*
dtype0*
valueB@*    *
_output_shapes
:@
ю
conv2/biases/AdamVariable*
	container *
_output_shapes
:@*
dtype0*
shape:@*
_class
loc:@conv2/biases*
shared_name 
Г
conv2/biases/Adam/AssignAssignconv2/biases/Adamzeros_6*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@
{
conv2/biases/Adam/readIdentityconv2/biases/Adam*
_class
loc:@conv2/biases*
T0*
_output_shapes
:@
T
zeros_7Const*
dtype0*
valueB@*    *
_output_shapes
:@
ъ
conv2/biases/Adam_1Variable*
	container *
_output_shapes
:@*
dtype0*
shape:@*
_class
loc:@conv2/biases*
shared_name 
▒
conv2/biases/Adam_1/AssignAssignconv2/biases/Adam_1zeros_7*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@

conv2/biases/Adam_1/readIdentityconv2/biases/Adam_1*
_class
loc:@conv2/biases*
T0*
_output_shapes
:@
`
zeros_8Const*
dtype0*
valueB
└ђ*    * 
_output_shapes
:
└ђ
ц
fc/weights/AdamVariable*
	container * 
_output_shapes
:
└ђ*
dtype0*
shape:
└ђ*
_class
loc:@fc/weights*
shared_name 
Г
fc/weights/Adam/AssignAssignfc/weights/Adamzeros_8*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ
{
fc/weights/Adam/readIdentityfc/weights/Adam*
_class
loc:@fc/weights*
T0* 
_output_shapes
:
└ђ
`
zeros_9Const*
dtype0*
valueB
└ђ*    * 
_output_shapes
:
└ђ
д
fc/weights/Adam_1Variable*
	container * 
_output_shapes
:
└ђ*
dtype0*
shape:
└ђ*
_class
loc:@fc/weights*
shared_name 
▒
fc/weights/Adam_1/AssignAssignfc/weights/Adam_1zeros_9*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ

fc/weights/Adam_1/readIdentityfc/weights/Adam_1*
_class
loc:@fc/weights*
T0* 
_output_shapes
:
└ђ
W
zeros_10Const*
dtype0*
valueBђ*    *
_output_shapes	
:ђ
ў
fc/biases/AdamVariable*
	container *
_output_shapes	
:ђ*
dtype0*
shape:ђ*
_class
loc:@fc/biases*
shared_name 
д
fc/biases/Adam/AssignAssignfc/biases/Adamzeros_10*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
s
fc/biases/Adam/readIdentityfc/biases/Adam*
_class
loc:@fc/biases*
T0*
_output_shapes	
:ђ
W
zeros_11Const*
dtype0*
valueBђ*    *
_output_shapes	
:ђ
џ
fc/biases/Adam_1Variable*
	container *
_output_shapes	
:ђ*
dtype0*
shape:ђ*
_class
loc:@fc/biases*
shared_name 
ф
fc/biases/Adam_1/AssignAssignfc/biases/Adam_1zeros_11*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
w
fc/biases/Adam_1/readIdentityfc/biases/Adam_1*
_class
loc:@fc/biases*
T0*
_output_shapes	
:ђ
_
zeros_12Const*
dtype0*
valueB	ђ
*    *
_output_shapes
:	ђ

║
softmax_linear/weights/AdamVariable*
	container *
_output_shapes
:	ђ
*
dtype0*
shape:	ђ
*)
_class
loc:@softmax_linear/weights*
shared_name 
Л
"softmax_linear/weights/Adam/AssignAssignsoftmax_linear/weights/Adamzeros_12*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

ъ
 softmax_linear/weights/Adam/readIdentitysoftmax_linear/weights/Adam*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes
:	ђ

_
zeros_13Const*
dtype0*
valueB	ђ
*    *
_output_shapes
:	ђ

╝
softmax_linear/weights/Adam_1Variable*
	container *
_output_shapes
:	ђ
*
dtype0*
shape:	ђ
*)
_class
loc:@softmax_linear/weights*
shared_name 
Н
$softmax_linear/weights/Adam_1/AssignAssignsoftmax_linear/weights/Adam_1zeros_13*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

б
"softmax_linear/weights/Adam_1/readIdentitysoftmax_linear/weights/Adam_1*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes
:	ђ

U
zeros_14Const*
dtype0*
valueB
*    *
_output_shapes
:

«
softmax_linear/biases/AdamVariable*
	container *
_output_shapes
:
*
dtype0*
shape:
*(
_class
loc:@softmax_linear/biases*
shared_name 
╔
!softmax_linear/biases/Adam/AssignAssignsoftmax_linear/biases/Adamzeros_14*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

ќ
softmax_linear/biases/Adam/readIdentitysoftmax_linear/biases/Adam*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

U
zeros_15Const*
dtype0*
valueB
*    *
_output_shapes
:

░
softmax_linear/biases/Adam_1Variable*
	container *
_output_shapes
:
*
dtype0*
shape:
*(
_class
loc:@softmax_linear/biases*
shared_name 
═
#softmax_linear/biases/Adam_1/AssignAssignsoftmax_linear/biases/Adam_1zeros_15*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

џ
!softmax_linear/biases/Adam_1/readIdentitysoftmax_linear/biases/Adam_1*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

W
Adam/learning_rateConst*
dtype0*
valueB
 *oЃ:*
_output_shapes
: 
O

Adam/beta1Const*
dtype0*
valueB
 *fff?*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
valueB
 *wЙ?*
_output_shapes
: 
Q
Adam/epsilonConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
Я
"Adam/update_conv1/kernel/ApplyAdam	ApplyAdamconv1/kernelconv1/kernel/Adamconv1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv1/Conv2D_grad/tuple/control_dependency_1*
_class
loc:@conv1/kernel*
use_locking( *
T0*&
_output_shapes
: 
Л
"Adam/update_conv1/biases/ApplyAdam	ApplyAdamconv1/biasesconv1/biases/Adamconv1/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/conv1/add_grad/tuple/control_dependency_1*
_class
loc:@conv1/biases*
use_locking( *
T0*
_output_shapes
: 
т
#Adam/update_conv2/kernels/ApplyAdam	ApplyAdamconv2/kernelsconv2/kernels/Adamconv2/kernels/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv2/Conv2D_grad/tuple/control_dependency_1* 
_class
loc:@conv2/kernels*
use_locking( *
T0*&
_output_shapes
: @
Л
"Adam/update_conv2/biases/ApplyAdam	ApplyAdamconv2/biasesconv2/biases/Adamconv2/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/conv2/add_grad/tuple/control_dependency_1*
_class
loc:@conv2/biases*
use_locking( *
T0*
_output_shapes
:@
═
 Adam/update_fc/weights/ApplyAdam	ApplyAdam
fc/weightsfc/weights/Adamfc/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/fc/MatMul_grad/tuple/control_dependency_1*
_class
loc:@fc/weights*
use_locking( *
T0* 
_output_shapes
:
└ђ
└
Adam/update_fc/biases/ApplyAdam	ApplyAdam	fc/biasesfc/biases/Adamfc/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/fc/add_grad/tuple/control_dependency_1*
_class
loc:@fc/biases*
use_locking( *
T0*
_output_shapes	
:ђ
ћ
,Adam/update_softmax_linear/weights/ApplyAdam	ApplyAdamsoftmax_linear/weightssoftmax_linear/weights/Adamsoftmax_linear/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/softmax_linear/MatMul_grad/tuple/control_dependency_1*)
_class
loc:@softmax_linear/weights*
use_locking( *
T0*
_output_shapes
:	ђ

Є
+Adam/update_softmax_linear/biases/ApplyAdam	ApplyAdamsoftmax_linear/biasessoftmax_linear/biases/Adamsoftmax_linear/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/softmax_linear/add_grad/tuple/control_dependency_1*(
_class
loc:@softmax_linear/biases*
use_locking( *
T0*
_output_shapes
:

д
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_conv1/kernel/ApplyAdam#^Adam/update_conv1/biases/ApplyAdam$^Adam/update_conv2/kernels/ApplyAdam#^Adam/update_conv2/biases/ApplyAdam!^Adam/update_fc/weights/ApplyAdam ^Adam/update_fc/biases/ApplyAdam-^Adam/update_softmax_linear/weights/ApplyAdam,^Adam/update_softmax_linear/biases/ApplyAdam*
_class
loc:@conv1/kernel*
T0*
_output_shapes
: 
Ќ
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking( *
T0*
_output_shapes
: 
е

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_conv1/kernel/ApplyAdam#^Adam/update_conv1/biases/ApplyAdam$^Adam/update_conv2/kernels/ApplyAdam#^Adam/update_conv2/biases/ApplyAdam!^Adam/update_fc/weights/ApplyAdam ^Adam/update_fc/biases/ApplyAdam-^Adam/update_softmax_linear/weights/ApplyAdam,^Adam/update_softmax_linear/biases/ApplyAdam*
_class
loc:@conv1/kernel*
T0*
_output_shapes
: 
Џ
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking( *
T0*
_output_shapes
: 
У
Adam/updateNoOp#^Adam/update_conv1/kernel/ApplyAdam#^Adam/update_conv1/biases/ApplyAdam$^Adam/update_conv2/kernels/ApplyAdam#^Adam/update_conv2/biases/ApplyAdam!^Adam/update_fc/weights/ApplyAdam ^Adam/update_fc/biases/ApplyAdam-^Adam/update_softmax_linear/weights/ApplyAdam,^Adam/update_softmax_linear/biases/ApplyAdam^Adam/Assign^Adam/Assign_1
z

Adam/valueConst^Adam/update*
dtype0*
_class
loc:@global_step*
value	B :*
_output_shapes
: 
~
Adam	AssignAddglobal_step
Adam/value*
_class
loc:@global_step*
use_locking( *
T0*
_output_shapes
: 
У
initNoOp^global_step/Assign^conv1/kernel/Assign^conv1/biases/Assign^conv2/kernels/Assign^conv2/biases/Assign^fc/weights/Assign^fc/biases/Assign^softmax_linear/weights/Assign^softmax_linear/biases/Assign^beta1_power/Assign^beta2_power/Assign^conv1/kernel/Adam/Assign^conv1/kernel/Adam_1/Assign^conv1/biases/Adam/Assign^conv1/biases/Adam_1/Assign^conv2/kernels/Adam/Assign^conv2/kernels/Adam_1/Assign^conv2/biases/Adam/Assign^conv2/biases/Adam_1/Assign^fc/weights/Adam/Assign^fc/weights/Adam_1/Assign^fc/biases/Adam/Assign^fc/biases/Adam_1/Assign#^softmax_linear/weights/Adam/Assign%^softmax_linear/weights/Adam_1/Assign"^softmax_linear/biases/Adam/Assign$^softmax_linear/biases/Adam_1/Assign
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Т
save/SaveV2/tensor_namesConst*
dtype0*Ў
valueЈBїBbeta1_powerBbeta2_powerBconv1/biasesBconv1/biases/AdamBconv1/biases/Adam_1Bconv1/kernelBconv1/kernel/AdamBconv1/kernel/Adam_1Bconv2/biasesBconv2/biases/AdamBconv2/biases/Adam_1Bconv2/kernelsBconv2/kernels/AdamBconv2/kernels/Adam_1B	fc/biasesBfc/biases/AdamBfc/biases/Adam_1B
fc/weightsBfc/weights/AdamBfc/weights/Adam_1Bglobal_stepBsoftmax_linear/biasesBsoftmax_linear/biases/AdamBsoftmax_linear/biases/Adam_1Bsoftmax_linear/weightsBsoftmax_linear/weights/AdamBsoftmax_linear/weights/Adam_1*
_output_shapes
:
Ў
save/SaveV2/shape_and_slicesConst*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
ѕ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerconv1/biasesconv1/biases/Adamconv1/biases/Adam_1conv1/kernelconv1/kernel/Adamconv1/kernel/Adam_1conv2/biasesconv2/biases/Adamconv2/biases/Adam_1conv2/kernelsconv2/kernels/Adamconv2/kernels/Adam_1	fc/biasesfc/biases/Adamfc/biases/Adam_1
fc/weightsfc/weights/Adamfc/weights/Adam_1global_stepsoftmax_linear/biasessoftmax_linear/biases/Adamsoftmax_linear/biases/Adam_1softmax_linear/weightssoftmax_linear/weights/Adamsoftmax_linear/weights/Adam_1*)
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBbeta1_power*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
љ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ю
save/AssignAssignbeta1_powersave/RestoreV2*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBbeta2_power*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
А
save/Assign_1Assignbeta2_powersave/RestoreV2_1*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*
_output_shapes
: 
r
save/RestoreV2_2/tensor_namesConst*
dtype0*!
valueBBconv1/biases*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_2Assignconv1/biasessave/RestoreV2_2*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 
w
save/RestoreV2_3/tensor_namesConst*
dtype0*&
valueBBconv1/biases/Adam*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ф
save/Assign_3Assignconv1/biases/Adamsave/RestoreV2_3*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 
y
save/RestoreV2_4/tensor_namesConst*
dtype0*(
valueBBconv1/biases/Adam_1*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Г
save/Assign_4Assignconv1/biases/Adam_1save/RestoreV2_4*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 
r
save/RestoreV2_5/tensor_namesConst*
dtype0*!
valueBBconv1/kernel*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save/Assign_5Assignconv1/kernelsave/RestoreV2_5*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
w
save/RestoreV2_6/tensor_namesConst*
dtype0*&
valueBBconv1/kernel/Adam*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save/Assign_6Assignconv1/kernel/Adamsave/RestoreV2_6*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
y
save/RestoreV2_7/tensor_namesConst*
dtype0*(
valueBBconv1/kernel/Adam_1*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save/Assign_7Assignconv1/kernel/Adam_1save/RestoreV2_7*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
r
save/RestoreV2_8/tensor_namesConst*
dtype0*!
valueBBconv2/biases*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_8Assignconv2/biasessave/RestoreV2_8*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@
w
save/RestoreV2_9/tensor_namesConst*
dtype0*&
valueBBconv2/biases/Adam*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
Ф
save/Assign_9Assignconv2/biases/Adamsave/RestoreV2_9*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@
z
save/RestoreV2_10/tensor_namesConst*
dtype0*(
valueBBconv2/biases/Adam_1*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
»
save/Assign_10Assignconv2/biases/Adam_1save/RestoreV2_10*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@
t
save/RestoreV2_11/tensor_namesConst*
dtype0*"
valueBBconv2/kernels*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Х
save/Assign_11Assignconv2/kernelssave/RestoreV2_11*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
y
save/RestoreV2_12/tensor_namesConst*
dtype0*'
valueBBconv2/kernels/Adam*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
╗
save/Assign_12Assignconv2/kernels/Adamsave/RestoreV2_12*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
{
save/RestoreV2_13/tensor_namesConst*
dtype0*)
value BBconv2/kernels/Adam_1*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_13Assignconv2/kernels/Adam_1save/RestoreV2_13*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
p
save/RestoreV2_14/tensor_namesConst*
dtype0*
valueBB	fc/biases*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Б
save/Assign_14Assign	fc/biasessave/RestoreV2_14*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
u
save/RestoreV2_15/tensor_namesConst*
dtype0*#
valueBBfc/biases/Adam*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save/Assign_15Assignfc/biases/Adamsave/RestoreV2_15*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
w
save/RestoreV2_16/tensor_namesConst*
dtype0*%
valueBBfc/biases/Adam_1*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
ф
save/Assign_16Assignfc/biases/Adam_1save/RestoreV2_16*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
q
save/RestoreV2_17/tensor_namesConst*
dtype0*
valueBB
fc/weights*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
ф
save/Assign_17Assign
fc/weightssave/RestoreV2_17*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ
v
save/RestoreV2_18/tensor_namesConst*
dtype0*$
valueBBfc/weights/Adam*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
»
save/Assign_18Assignfc/weights/Adamsave/RestoreV2_18*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ
x
save/RestoreV2_19/tensor_namesConst*
dtype0*&
valueBBfc/weights/Adam_1*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
▒
save/Assign_19Assignfc/weights/Adam_1save/RestoreV2_19*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ
r
save/RestoreV2_20/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_20Assignglobal_stepsave/RestoreV2_20*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
|
save/RestoreV2_21/tensor_namesConst*
dtype0**
value!BBsoftmax_linear/biases*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save/Assign_21Assignsoftmax_linear/biasessave/RestoreV2_21*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

Ђ
save/RestoreV2_22/tensor_namesConst*
dtype0*/
value&B$Bsoftmax_linear/biases/Adam*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
┐
save/Assign_22Assignsoftmax_linear/biases/Adamsave/RestoreV2_22*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

Ѓ
save/RestoreV2_23/tensor_namesConst*
dtype0*1
value(B&Bsoftmax_linear/biases/Adam_1*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
┴
save/Assign_23Assignsoftmax_linear/biases/Adam_1save/RestoreV2_23*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

}
save/RestoreV2_24/tensor_namesConst*
dtype0*+
value"B Bsoftmax_linear/weights*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
┴
save/Assign_24Assignsoftmax_linear/weightssave/RestoreV2_24*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

ѓ
save/RestoreV2_25/tensor_namesConst*
dtype0*0
value'B%Bsoftmax_linear/weights/Adam*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save/Assign_25Assignsoftmax_linear/weights/Adamsave/RestoreV2_25*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

ё
save/RestoreV2_26/tensor_namesConst*
dtype0*2
value)B'Bsoftmax_linear/weights/Adam_1*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
╚
save/Assign_26Assignsoftmax_linear/weights/Adam_1save/RestoreV2_26*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

О
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26"╦?┤J     ┤"Ъд	▒щушЩ-оAJДЋ
№#╔#
9
Add
x"T
y"T
z"T"
Ttype:
2	
Л
	ApplyAdam
var"Tђ	
m"Tђ	
v"Tђ
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"Tђ"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
p
	AssignAdd
ref"Tђ

value"T

output_ref"Tђ"
Ttype:
2	"
use_lockingbool( 
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
╔
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
№
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
Ь
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
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
+
Floor
x"T
y"T"
Ttype:
2
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
Й
MaxPool

input"T
output"T"
Ttype0:
2"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
С
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	љ
і
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
2	љ
-
Neg
x"T
y"T"
Ttype:
	2	
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
і
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
ё
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
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
Ѕ
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

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
q
Variable
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ
&
	ZerosLike
x"T
y"T"	
Ttype*0.12.12v0.12.0-10-g4d924e7-dirtyЖ▄
e
data/X_placeholderPlaceholder*
dtype0*
shape: *(
_output_shapes
:         љ
d
data/Y_placeholderPlaceholder*
dtype0*
shape: *'
_output_shapes
:         

J
dropoutPlaceholder*
dtype0*
shape: *
_output_shapes
:
[
global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
m
global_stepVariable*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
«
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0*
_output_shapes
: 
l
conv1/Reshape/shapeConst*
dtype0*%
valueB"             *
_output_shapes
:
Ѕ
conv1/ReshapeReshapedata/X_placeholderconv1/Reshape/shape*
Tshape0*
T0*/
_output_shapes
:         
ј
conv1/kernelVariable*
dtype0*
shape: *
shared_name *
	container *&
_output_shapes
: 
Е
/conv1/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@conv1/kernel*%
valueB"             *
_output_shapes
:
ћ
.conv1/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@conv1/kernel*
valueB
 *    *
_output_shapes
: 
ќ
0conv1/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@conv1/kernel*
valueB
 *  ђ?*
_output_shapes
: 
ш
9conv1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/conv1/kernel/Initializer/truncated_normal/shape*&
_output_shapes
: *
dtype0*
seed2 *

seed *
T0*
_class
loc:@conv1/kernel
з
-conv1/kernel/Initializer/truncated_normal/mulMul9conv1/kernel/Initializer/truncated_normal/TruncatedNormal0conv1/kernel/Initializer/truncated_normal/stddev*
_class
loc:@conv1/kernel*
T0*&
_output_shapes
: 
р
)conv1/kernel/Initializer/truncated_normalAdd-conv1/kernel/Initializer/truncated_normal/mul.conv1/kernel/Initializer/truncated_normal/mean*
_class
loc:@conv1/kernel*
T0*&
_output_shapes
: 
Л
conv1/kernel/AssignAssignconv1/kernel)conv1/kernel/Initializer/truncated_normal*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
}
conv1/kernel/readIdentityconv1/kernel*
_class
loc:@conv1/kernel*
T0*&
_output_shapes
: 
v
conv1/biasesVariable*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
џ
/conv1/biases/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@conv1/biases*
valueB: *
_output_shapes
:
ћ
.conv1/biases/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@conv1/biases*
valueB
 *    *
_output_shapes
: 
ќ
0conv1/biases/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@conv1/biases*
valueB
 *  ђ?*
_output_shapes
: 
ж
9conv1/biases/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/conv1/biases/Initializer/truncated_normal/shape*
_output_shapes
: *
dtype0*
seed2 *

seed *
T0*
_class
loc:@conv1/biases
у
-conv1/biases/Initializer/truncated_normal/mulMul9conv1/biases/Initializer/truncated_normal/TruncatedNormal0conv1/biases/Initializer/truncated_normal/stddev*
_class
loc:@conv1/biases*
T0*
_output_shapes
: 
Н
)conv1/biases/Initializer/truncated_normalAdd-conv1/biases/Initializer/truncated_normal/mul.conv1/biases/Initializer/truncated_normal/mean*
_class
loc:@conv1/biases*
T0*
_output_shapes
: 
┼
conv1/biases/AssignAssignconv1/biases)conv1/biases/Initializer/truncated_normal*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 
q
conv1/biases/readIdentityconv1/biases*
_class
loc:@conv1/biases*
T0*
_output_shapes
: 
╔
conv1/Conv2DConv2Dconv1/Reshapeconv1/kernel/read*/
_output_shapes
:          *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
k
	conv1/addAddconv1/Conv2Dconv1/biases/read*
T0*/
_output_shapes
:          
X
conv1/conv1Relu	conv1/add*
T0*/
_output_shapes
:          
▒
pool1/MaxPoolMaxPoolconv1/conv1*/
_output_shapes
:          *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
Ј
conv2/kernelsVariable*
dtype0*
shape: @*
shared_name *
	container *&
_output_shapes
: @
Ф
0conv2/kernels/Initializer/truncated_normal/shapeConst*
dtype0* 
_class
loc:@conv2/kernels*%
valueB"          @   *
_output_shapes
:
ќ
/conv2/kernels/Initializer/truncated_normal/meanConst*
dtype0* 
_class
loc:@conv2/kernels*
valueB
 *    *
_output_shapes
: 
ў
1conv2/kernels/Initializer/truncated_normal/stddevConst*
dtype0* 
_class
loc:@conv2/kernels*
valueB
 *  ђ?*
_output_shapes
: 
Э
:conv2/kernels/Initializer/truncated_normal/TruncatedNormalTruncatedNormal0conv2/kernels/Initializer/truncated_normal/shape*&
_output_shapes
: @*
dtype0*
seed2 *

seed *
T0* 
_class
loc:@conv2/kernels
э
.conv2/kernels/Initializer/truncated_normal/mulMul:conv2/kernels/Initializer/truncated_normal/TruncatedNormal1conv2/kernels/Initializer/truncated_normal/stddev* 
_class
loc:@conv2/kernels*
T0*&
_output_shapes
: @
т
*conv2/kernels/Initializer/truncated_normalAdd.conv2/kernels/Initializer/truncated_normal/mul/conv2/kernels/Initializer/truncated_normal/mean* 
_class
loc:@conv2/kernels*
T0*&
_output_shapes
: @
Н
conv2/kernels/AssignAssignconv2/kernels*conv2/kernels/Initializer/truncated_normal*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
ђ
conv2/kernels/readIdentityconv2/kernels* 
_class
loc:@conv2/kernels*
T0*&
_output_shapes
: @
v
conv2/biasesVariable*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
Ќ
,conv2/biases/Initializer/random_normal/shapeConst*
dtype0*
_class
loc:@conv2/biases*
valueB:@*
_output_shapes
:
Љ
+conv2/biases/Initializer/random_normal/meanConst*
dtype0*
_class
loc:@conv2/biases*
valueB
 *    *
_output_shapes
: 
Њ
-conv2/biases/Initializer/random_normal/stddevConst*
dtype0*
_class
loc:@conv2/biases*
valueB
 *  ђ?*
_output_shapes
: 
ь
;conv2/biases/Initializer/random_normal/RandomStandardNormalRandomStandardNormal,conv2/biases/Initializer/random_normal/shape*
_output_shapes
:@*
dtype0*
seed2 *

seed *
T0*
_class
loc:@conv2/biases
с
*conv2/biases/Initializer/random_normal/mulMul;conv2/biases/Initializer/random_normal/RandomStandardNormal-conv2/biases/Initializer/random_normal/stddev*
_class
loc:@conv2/biases*
T0*
_output_shapes
:@
╠
&conv2/biases/Initializer/random_normalAdd*conv2/biases/Initializer/random_normal/mul+conv2/biases/Initializer/random_normal/mean*
_class
loc:@conv2/biases*
T0*
_output_shapes
:@
┬
conv2/biases/AssignAssignconv2/biases&conv2/biases/Initializer/random_normal*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@
q
conv2/biases/readIdentityconv2/biases*
_class
loc:@conv2/biases*
T0*
_output_shapes
:@
╩
conv2/Conv2DConv2Dpool1/MaxPoolconv2/kernels/read*/
_output_shapes
:         @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
k
	conv2/addAddconv2/Conv2Dconv2/biases/read*
T0*/
_output_shapes
:         @
X
conv2/conv2Relu	conv2/add*
T0*/
_output_shapes
:         @
▒
pool2/MaxPoolMaxPoolconv2/conv2*/
_output_shapes
:         @*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
ђ

fc/weightsVariable*
dtype0*
shape:
└ђ*
shared_name *
	container * 
_output_shapes
:
└ђ
Ю
-fc/weights/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@fc/weights*
valueB"@     *
_output_shapes
:
љ
,fc/weights/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@fc/weights*
valueB
 *    *
_output_shapes
: 
њ
.fc/weights/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@fc/weights*
valueB
 *  ђ?*
_output_shapes
: 
ж
7fc/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal-fc/weights/Initializer/truncated_normal/shape* 
_output_shapes
:
└ђ*
dtype0*
seed2 *

seed *
T0*
_class
loc:@fc/weights
т
+fc/weights/Initializer/truncated_normal/mulMul7fc/weights/Initializer/truncated_normal/TruncatedNormal.fc/weights/Initializer/truncated_normal/stddev*
_class
loc:@fc/weights*
T0* 
_output_shapes
:
└ђ
М
'fc/weights/Initializer/truncated_normalAdd+fc/weights/Initializer/truncated_normal/mul,fc/weights/Initializer/truncated_normal/mean*
_class
loc:@fc/weights*
T0* 
_output_shapes
:
└ђ
├
fc/weights/AssignAssign
fc/weights'fc/weights/Initializer/truncated_normal*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ
q
fc/weights/readIdentity
fc/weights*
_class
loc:@fc/weights*
T0* 
_output_shapes
:
└ђ
u
	fc/biasesVariable*
dtype0*
shape:ђ*
shared_name *
	container *
_output_shapes	
:ђ
Ћ
,fc/biases/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@fc/biases*
valueB:ђ*
_output_shapes
:
ј
+fc/biases/Initializer/truncated_normal/meanConst*
dtype0*
_class
loc:@fc/biases*
valueB
 *    *
_output_shapes
: 
љ
-fc/biases/Initializer/truncated_normal/stddevConst*
dtype0*
_class
loc:@fc/biases*
valueB
 *  ђ?*
_output_shapes
: 
р
6fc/biases/Initializer/truncated_normal/TruncatedNormalTruncatedNormal,fc/biases/Initializer/truncated_normal/shape*
_output_shapes	
:ђ*
dtype0*
seed2 *

seed *
T0*
_class
loc:@fc/biases
▄
*fc/biases/Initializer/truncated_normal/mulMul6fc/biases/Initializer/truncated_normal/TruncatedNormal-fc/biases/Initializer/truncated_normal/stddev*
_class
loc:@fc/biases*
T0*
_output_shapes	
:ђ
╩
&fc/biases/Initializer/truncated_normalAdd*fc/biases/Initializer/truncated_normal/mul+fc/biases/Initializer/truncated_normal/mean*
_class
loc:@fc/biases*
T0*
_output_shapes	
:ђ
║
fc/biases/AssignAssign	fc/biases&fc/biases/Initializer/truncated_normal*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
i
fc/biases/readIdentity	fc/biases*
_class
loc:@fc/biases*
T0*
_output_shapes	
:ђ
a
fc/Reshape/shapeConst*
dtype0*
valueB"    @  *
_output_shapes
:
w

fc/ReshapeReshapepool2/MaxPoolfc/Reshape/shape*
Tshape0*
T0*(
_output_shapes
:         └
Ѕ
	fc/MatMulMatMul
fc/Reshapefc/weights/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:         ђ
[
fc/addAdd	fc/MatMulfc/biases/read*
T0*(
_output_shapes
:         ђ
J
fc/reluRelufc/add*
T0*(
_output_shapes
:         ђ
\
fc/relu_dropout/ShapeShapefc/relu*
out_type0*
T0*
_output_shapes
:
g
"fc/relu_dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: 
g
"fc/relu_dropout/random_uniform/maxConst*
dtype0*
valueB
 *  ђ?*
_output_shapes
: 
Г
,fc/relu_dropout/random_uniform/RandomUniformRandomUniformfc/relu_dropout/Shape*
dtype0*
seed2 *

seed *
T0*(
_output_shapes
:         ђ
њ
"fc/relu_dropout/random_uniform/subSub"fc/relu_dropout/random_uniform/max"fc/relu_dropout/random_uniform/min*
T0*
_output_shapes
: 
«
"fc/relu_dropout/random_uniform/mulMul,fc/relu_dropout/random_uniform/RandomUniform"fc/relu_dropout/random_uniform/sub*
T0*(
_output_shapes
:         ђ
а
fc/relu_dropout/random_uniformAdd"fc/relu_dropout/random_uniform/mul"fc/relu_dropout/random_uniform/min*
T0*(
_output_shapes
:         ђ
f
fc/relu_dropout/addAdddropoutfc/relu_dropout/random_uniform*
T0*
_output_shapes
:
V
fc/relu_dropout/FloorFloorfc/relu_dropout/add*
T0*
_output_shapes
:
O
fc/relu_dropout/DivDivfc/reludropout*
T0*
_output_shapes
:
y
fc/relu_dropout/mulMulfc/relu_dropout/Divfc/relu_dropout/Floor*
T0*(
_output_shapes
:         ђ
і
softmax_linear/weightsVariable*
dtype0*
shape:	ђ
*
shared_name *
	container *
_output_shapes
:	ђ

х
9softmax_linear/weights/Initializer/truncated_normal/shapeConst*
dtype0*)
_class
loc:@softmax_linear/weights*
valueB"   
   *
_output_shapes
:
е
8softmax_linear/weights/Initializer/truncated_normal/meanConst*
dtype0*)
_class
loc:@softmax_linear/weights*
valueB
 *    *
_output_shapes
: 
ф
:softmax_linear/weights/Initializer/truncated_normal/stddevConst*
dtype0*)
_class
loc:@softmax_linear/weights*
valueB
 *  ђ?*
_output_shapes
: 
ї
Csoftmax_linear/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9softmax_linear/weights/Initializer/truncated_normal/shape*
_output_shapes
:	ђ
*
dtype0*
seed2 *

seed *
T0*)
_class
loc:@softmax_linear/weights
ћ
7softmax_linear/weights/Initializer/truncated_normal/mulMulCsoftmax_linear/weights/Initializer/truncated_normal/TruncatedNormal:softmax_linear/weights/Initializer/truncated_normal/stddev*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes
:	ђ

ѓ
3softmax_linear/weights/Initializer/truncated_normalAdd7softmax_linear/weights/Initializer/truncated_normal/mul8softmax_linear/weights/Initializer/truncated_normal/mean*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes
:	ђ

Ы
softmax_linear/weights/AssignAssignsoftmax_linear/weights3softmax_linear/weights/Initializer/truncated_normal*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

ћ
softmax_linear/weights/readIdentitysoftmax_linear/weights*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes
:	ђ


softmax_linear/biasesVariable*
dtype0*
shape:
*
shared_name *
	container *
_output_shapes
:

г
8softmax_linear/biases/Initializer/truncated_normal/shapeConst*
dtype0*(
_class
loc:@softmax_linear/biases*
valueB:
*
_output_shapes
:
д
7softmax_linear/biases/Initializer/truncated_normal/meanConst*
dtype0*(
_class
loc:@softmax_linear/biases*
valueB
 *    *
_output_shapes
: 
е
9softmax_linear/biases/Initializer/truncated_normal/stddevConst*
dtype0*(
_class
loc:@softmax_linear/biases*
valueB
 *  ђ?*
_output_shapes
: 
ё
Bsoftmax_linear/biases/Initializer/truncated_normal/TruncatedNormalTruncatedNormal8softmax_linear/biases/Initializer/truncated_normal/shape*
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*(
_class
loc:@softmax_linear/biases
І
6softmax_linear/biases/Initializer/truncated_normal/mulMulBsoftmax_linear/biases/Initializer/truncated_normal/TruncatedNormal9softmax_linear/biases/Initializer/truncated_normal/stddev*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

щ
2softmax_linear/biases/Initializer/truncated_normalAdd6softmax_linear/biases/Initializer/truncated_normal/mul7softmax_linear/biases/Initializer/truncated_normal/mean*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

ж
softmax_linear/biases/AssignAssignsoftmax_linear/biases2softmax_linear/biases/Initializer/truncated_normal*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

ї
softmax_linear/biases/readIdentitysoftmax_linear/biases*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

Е
softmax_linear/MatMulMatMulfc/relu_dropout/mulsoftmax_linear/weights/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:         

~
softmax_linear/addAddsoftmax_linear/MatMulsoftmax_linear/biases/read*
T0*'
_output_shapes
:         

K
	loss/RankConst*
dtype0*
value	B :*
_output_shapes
: 
\

loss/ShapeShapesoftmax_linear/add*
out_type0*
T0*
_output_shapes
:
M
loss/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
^
loss/Shape_1Shapesoftmax_linear/add*
out_type0*
T0*
_output_shapes
:
L

loss/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
I
loss/SubSubloss/Rank_1
loss/Sub/y*
T0*
_output_shapes
: 
\
loss/Slice/beginPackloss/Sub*
_output_shapes
:*

axis *
T0*
N
Y
loss/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
v

loss/SliceSliceloss/Shape_1loss/Slice/beginloss/Slice/size*
Index0*
T0*
_output_shapes
:
X
loss/concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
g
loss/concat/values_0Const*
dtype0*
valueB:
         *
_output_shapes
:
}
loss/concatConcatloss/concat/concat_dimloss/concat/values_0
loss/Slice*
N*
T0*
_output_shapes
:
Ђ
loss/ReshapeReshapesoftmax_linear/addloss/concat*
Tshape0*
T0*0
_output_shapes
:                  
M
loss/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
^
loss/Shape_2Shapedata/Y_placeholder*
out_type0*
T0*
_output_shapes
:
N
loss/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
M

loss/Sub_1Subloss/Rank_2loss/Sub_1/y*
T0*
_output_shapes
: 
`
loss/Slice_1/beginPack
loss/Sub_1*
_output_shapes
:*

axis *
T0*
N
[
loss/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
|
loss/Slice_1Sliceloss/Shape_2loss/Slice_1/beginloss/Slice_1/size*
Index0*
T0*
_output_shapes
:
Z
loss/concat_1/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
i
loss/concat_1/values_0Const*
dtype0*
valueB:
         *
_output_shapes
:
Ё
loss/concat_1Concatloss/concat_1/concat_dimloss/concat_1/values_0loss/Slice_1*
N*
T0*
_output_shapes
:
Ё
loss/Reshape_1Reshapedata/Y_placeholderloss/concat_1*
Tshape0*
T0*0
_output_shapes
:                  
Ф
"loss/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsloss/Reshapeloss/Reshape_1*
T0*?
_output_shapes-
+:         :                  
N
loss/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
K

loss/Sub_2Sub	loss/Rankloss/Sub_2/y*
T0*
_output_shapes
: 
\
loss/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
_
loss/Slice_2/sizePack
loss/Sub_2*
_output_shapes
:*

axis *
T0*
N
Ѓ
loss/Slice_2Slice
loss/Shapeloss/Slice_2/beginloss/Slice_2/size*
Index0*
T0*#
_output_shapes
:         
Є
loss/Reshape_2Reshape"loss/SoftmaxCrossEntropyWithLogitsloss/Slice_2*
Tshape0*
T0*#
_output_shapes
:         
T

loss/ConstConst*
dtype0*
valueB: *
_output_shapes
:
k
	loss/lossMeanloss/Reshape_2
loss/Const*

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
 *  ђ?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
p
&gradients/loss/loss_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
ќ
 gradients/loss/loss_grad/ReshapeReshapegradients/Fill&gradients/loss/loss_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
l
gradients/loss/loss_grad/ShapeShapeloss/Reshape_2*
out_type0*
T0*
_output_shapes
:
Д
gradients/loss/loss_grad/TileTile gradients/loss/loss_grad/Reshapegradients/loss/loss_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
n
 gradients/loss/loss_grad/Shape_1Shapeloss/Reshape_2*
out_type0*
T0*
_output_shapes
:
c
 gradients/loss/loss_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
h
gradients/loss/loss_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Ц
gradients/loss/loss_grad/ProdProd gradients/loss/loss_grad/Shape_1gradients/loss/loss_grad/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
j
 gradients/loss/loss_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
Е
gradients/loss/loss_grad/Prod_1Prod gradients/loss/loss_grad/Shape_2 gradients/loss/loss_grad/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
d
"gradients/loss/loss_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
Љ
 gradients/loss/loss_grad/MaximumMaximumgradients/loss/loss_grad/Prod_1"gradients/loss/loss_grad/Maximum/y*
T0*
_output_shapes
: 
і
!gradients/loss/loss_grad/floordivDivgradients/loss/loss_grad/Prod gradients/loss/loss_grad/Maximum*
T0*
_output_shapes
: 
x
gradients/loss/loss_grad/CastCast!gradients/loss/loss_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
Њ
 gradients/loss/loss_grad/truedivDivgradients/loss/loss_grad/Tilegradients/loss/loss_grad/Cast*
T0*#
_output_shapes
:         
Ё
#gradients/loss/Reshape_2_grad/ShapeShape"loss/SoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:
│
%gradients/loss/Reshape_2_grad/ReshapeReshape gradients/loss/loss_grad/truediv#gradients/loss/Reshape_2_grad/Shape*
Tshape0*
T0*#
_output_shapes
:         
ѓ
gradients/zeros_like	ZerosLike$loss/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:                  
І
@gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
ы
<gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims%gradients/loss/Reshape_2_grad/Reshape@gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
█
5gradients/loss/SoftmaxCrossEntropyWithLogits_grad/mulMul<gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims$loss/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:                  
s
!gradients/loss/Reshape_grad/ShapeShapesoftmax_linear/add*
out_type0*
T0*
_output_shapes
:
╚
#gradients/loss/Reshape_grad/ReshapeReshape5gradients/loss/SoftmaxCrossEntropyWithLogits_grad/mul!gradients/loss/Reshape_grad/Shape*
Tshape0*
T0*'
_output_shapes
:         

|
'gradients/softmax_linear/add_grad/ShapeShapesoftmax_linear/MatMul*
out_type0*
T0*
_output_shapes
:
s
)gradients/softmax_linear/add_grad/Shape_1Const*
dtype0*
valueB:
*
_output_shapes
:
р
7gradients/softmax_linear/add_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/softmax_linear/add_grad/Shape)gradients/softmax_linear/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
%gradients/softmax_linear/add_grad/SumSum#gradients/loss/Reshape_grad/Reshape7gradients/softmax_linear/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
─
)gradients/softmax_linear/add_grad/ReshapeReshape%gradients/softmax_linear/add_grad/Sum'gradients/softmax_linear/add_grad/Shape*
Tshape0*
T0*'
_output_shapes
:         

╬
'gradients/softmax_linear/add_grad/Sum_1Sum#gradients/loss/Reshape_grad/Reshape9gradients/softmax_linear/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
й
+gradients/softmax_linear/add_grad/Reshape_1Reshape'gradients/softmax_linear/add_grad/Sum_1)gradients/softmax_linear/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:

ћ
2gradients/softmax_linear/add_grad/tuple/group_depsNoOp*^gradients/softmax_linear/add_grad/Reshape,^gradients/softmax_linear/add_grad/Reshape_1
ќ
:gradients/softmax_linear/add_grad/tuple/control_dependencyIdentity)gradients/softmax_linear/add_grad/Reshape3^gradients/softmax_linear/add_grad/tuple/group_deps*<
_class2
0.loc:@gradients/softmax_linear/add_grad/Reshape*
T0*'
_output_shapes
:         

Ј
<gradients/softmax_linear/add_grad/tuple/control_dependency_1Identity+gradients/softmax_linear/add_grad/Reshape_13^gradients/softmax_linear/add_grad/tuple/group_deps*>
_class4
20loc:@gradients/softmax_linear/add_grad/Reshape_1*
T0*
_output_shapes
:

у
+gradients/softmax_linear/MatMul_grad/MatMulMatMul:gradients/softmax_linear/add_grad/tuple/control_dependencysoftmax_linear/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         ђ
п
-gradients/softmax_linear/MatMul_grad/MatMul_1MatMulfc/relu_dropout/mul:gradients/softmax_linear/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	ђ

Џ
5gradients/softmax_linear/MatMul_grad/tuple/group_depsNoOp,^gradients/softmax_linear/MatMul_grad/MatMul.^gradients/softmax_linear/MatMul_grad/MatMul_1
А
=gradients/softmax_linear/MatMul_grad/tuple/control_dependencyIdentity+gradients/softmax_linear/MatMul_grad/MatMul6^gradients/softmax_linear/MatMul_grad/tuple/group_deps*>
_class4
20loc:@gradients/softmax_linear/MatMul_grad/MatMul*
T0*(
_output_shapes
:         ђ
ъ
?gradients/softmax_linear/MatMul_grad/tuple/control_dependency_1Identity-gradients/softmax_linear/MatMul_grad/MatMul_16^gradients/softmax_linear/MatMul_grad/tuple/group_deps*@
_class6
42loc:@gradients/softmax_linear/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	ђ

ё
(gradients/fc/relu_dropout/mul_grad/ShapeShapefc/relu_dropout/Div*
out_type0*
T0*#
_output_shapes
:         
ѕ
*gradients/fc/relu_dropout/mul_grad/Shape_1Shapefc/relu_dropout/Floor*
out_type0*
T0*#
_output_shapes
:         
С
8gradients/fc/relu_dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/fc/relu_dropout/mul_grad/Shape*gradients/fc/relu_dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
д
&gradients/fc/relu_dropout/mul_grad/mulMul=gradients/softmax_linear/MatMul_grad/tuple/control_dependencyfc/relu_dropout/Floor*
T0*
_output_shapes
:
¤
&gradients/fc/relu_dropout/mul_grad/SumSum&gradients/fc/relu_dropout/mul_grad/mul8gradients/fc/relu_dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
И
*gradients/fc/relu_dropout/mul_grad/ReshapeReshape&gradients/fc/relu_dropout/mul_grad/Sum(gradients/fc/relu_dropout/mul_grad/Shape*
Tshape0*
T0*
_output_shapes
:
д
(gradients/fc/relu_dropout/mul_grad/mul_1Mulfc/relu_dropout/Div=gradients/softmax_linear/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
Н
(gradients/fc/relu_dropout/mul_grad/Sum_1Sum(gradients/fc/relu_dropout/mul_grad/mul_1:gradients/fc/relu_dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Й
,gradients/fc/relu_dropout/mul_grad/Reshape_1Reshape(gradients/fc/relu_dropout/mul_grad/Sum_1*gradients/fc/relu_dropout/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:
Ќ
3gradients/fc/relu_dropout/mul_grad/tuple/group_depsNoOp+^gradients/fc/relu_dropout/mul_grad/Reshape-^gradients/fc/relu_dropout/mul_grad/Reshape_1
І
;gradients/fc/relu_dropout/mul_grad/tuple/control_dependencyIdentity*gradients/fc/relu_dropout/mul_grad/Reshape4^gradients/fc/relu_dropout/mul_grad/tuple/group_deps*=
_class3
1/loc:@gradients/fc/relu_dropout/mul_grad/Reshape*
T0*
_output_shapes
:
Љ
=gradients/fc/relu_dropout/mul_grad/tuple/control_dependency_1Identity,gradients/fc/relu_dropout/mul_grad/Reshape_14^gradients/fc/relu_dropout/mul_grad/tuple/group_deps*?
_class5
31loc:@gradients/fc/relu_dropout/mul_grad/Reshape_1*
T0*
_output_shapes
:
o
(gradients/fc/relu_dropout/Div_grad/ShapeShapefc/relu*
out_type0*
T0*
_output_shapes
:
z
*gradients/fc/relu_dropout/Div_grad/Shape_1Shapedropout*
out_type0*
T0*#
_output_shapes
:         
С
8gradients/fc/relu_dropout/Div_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/fc/relu_dropout/Div_grad/Shape*gradients/fc/relu_dropout/Div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
џ
*gradients/fc/relu_dropout/Div_grad/truedivDiv;gradients/fc/relu_dropout/mul_grad/tuple/control_dependencydropout*
T0*
_output_shapes
:
М
&gradients/fc/relu_dropout/Div_grad/SumSum*gradients/fc/relu_dropout/Div_grad/truediv8gradients/fc/relu_dropout/Div_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
╚
*gradients/fc/relu_dropout/Div_grad/ReshapeReshape&gradients/fc/relu_dropout/Div_grad/Sum(gradients/fc/relu_dropout/Div_grad/Shape*
Tshape0*
T0*(
_output_shapes
:         ђ
i
&gradients/fc/relu_dropout/Div_grad/NegNegfc/relu*
T0*(
_output_shapes
:         ђ
_
)gradients/fc/relu_dropout/Div_grad/SquareSquaredropout*
T0*
_output_shapes
:
Е
,gradients/fc/relu_dropout/Div_grad/truediv_1Div&gradients/fc/relu_dropout/Div_grad/Neg)gradients/fc/relu_dropout/Div_grad/Square*
T0*
_output_shapes
:
╗
&gradients/fc/relu_dropout/Div_grad/mulMul;gradients/fc/relu_dropout/mul_grad/tuple/control_dependency,gradients/fc/relu_dropout/Div_grad/truediv_1*
T0*
_output_shapes
:
М
(gradients/fc/relu_dropout/Div_grad/Sum_1Sum&gradients/fc/relu_dropout/Div_grad/mul:gradients/fc/relu_dropout/Div_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Й
,gradients/fc/relu_dropout/Div_grad/Reshape_1Reshape(gradients/fc/relu_dropout/Div_grad/Sum_1*gradients/fc/relu_dropout/Div_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:
Ќ
3gradients/fc/relu_dropout/Div_grad/tuple/group_depsNoOp+^gradients/fc/relu_dropout/Div_grad/Reshape-^gradients/fc/relu_dropout/Div_grad/Reshape_1
Џ
;gradients/fc/relu_dropout/Div_grad/tuple/control_dependencyIdentity*gradients/fc/relu_dropout/Div_grad/Reshape4^gradients/fc/relu_dropout/Div_grad/tuple/group_deps*=
_class3
1/loc:@gradients/fc/relu_dropout/Div_grad/Reshape*
T0*(
_output_shapes
:         ђ
Љ
=gradients/fc/relu_dropout/Div_grad/tuple/control_dependency_1Identity,gradients/fc/relu_dropout/Div_grad/Reshape_14^gradients/fc/relu_dropout/Div_grad/tuple/group_deps*?
_class5
31loc:@gradients/fc/relu_dropout/Div_grad/Reshape_1*
T0*
_output_shapes
:
ц
gradients/fc/relu_grad/ReluGradReluGrad;gradients/fc/relu_dropout/Div_grad/tuple/control_dependencyfc/relu*
T0*(
_output_shapes
:         ђ
d
gradients/fc/add_grad/ShapeShape	fc/MatMul*
out_type0*
T0*
_output_shapes
:
h
gradients/fc/add_grad/Shape_1Const*
dtype0*
valueB:ђ*
_output_shapes
:
й
+gradients/fc/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/fc/add_grad/Shapegradients/fc/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
«
gradients/fc/add_grad/SumSumgradients/fc/relu_grad/ReluGrad+gradients/fc/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
А
gradients/fc/add_grad/ReshapeReshapegradients/fc/add_grad/Sumgradients/fc/add_grad/Shape*
Tshape0*
T0*(
_output_shapes
:         ђ
▓
gradients/fc/add_grad/Sum_1Sumgradients/fc/relu_grad/ReluGrad-gradients/fc/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
џ
gradients/fc/add_grad/Reshape_1Reshapegradients/fc/add_grad/Sum_1gradients/fc/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes	
:ђ
p
&gradients/fc/add_grad/tuple/group_depsNoOp^gradients/fc/add_grad/Reshape ^gradients/fc/add_grad/Reshape_1
у
.gradients/fc/add_grad/tuple/control_dependencyIdentitygradients/fc/add_grad/Reshape'^gradients/fc/add_grad/tuple/group_deps*0
_class&
$"loc:@gradients/fc/add_grad/Reshape*
T0*(
_output_shapes
:         ђ
Я
0gradients/fc/add_grad/tuple/control_dependency_1Identitygradients/fc/add_grad/Reshape_1'^gradients/fc/add_grad/tuple/group_deps*2
_class(
&$loc:@gradients/fc/add_grad/Reshape_1*
T0*
_output_shapes	
:ђ
├
gradients/fc/MatMul_grad/MatMulMatMul.gradients/fc/add_grad/tuple/control_dependencyfc/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         └
И
!gradients/fc/MatMul_grad/MatMul_1MatMul
fc/Reshape.gradients/fc/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
└ђ
w
)gradients/fc/MatMul_grad/tuple/group_depsNoOp ^gradients/fc/MatMul_grad/MatMul"^gradients/fc/MatMul_grad/MatMul_1
ы
1gradients/fc/MatMul_grad/tuple/control_dependencyIdentitygradients/fc/MatMul_grad/MatMul*^gradients/fc/MatMul_grad/tuple/group_deps*2
_class(
&$loc:@gradients/fc/MatMul_grad/MatMul*
T0*(
_output_shapes
:         └
№
3gradients/fc/MatMul_grad/tuple/control_dependency_1Identity!gradients/fc/MatMul_grad/MatMul_1*^gradients/fc/MatMul_grad/tuple/group_deps*4
_class*
(&loc:@gradients/fc/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
└ђ
l
gradients/fc/Reshape_grad/ShapeShapepool2/MaxPool*
out_type0*
T0*
_output_shapes
:
╚
!gradients/fc/Reshape_grad/ReshapeReshape1gradients/fc/MatMul_grad/tuple/control_dependencygradients/fc/Reshape_grad/Shape*
Tshape0*
T0*/
_output_shapes
:         @
ѓ
(gradients/pool2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2/conv2pool2/MaxPool!gradients/fc/Reshape_grad/Reshape*/
_output_shapes
:         @*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
а
#gradients/conv2/conv2_grad/ReluGradReluGrad(gradients/pool2/MaxPool_grad/MaxPoolGradconv2/conv2*
T0*/
_output_shapes
:         @
j
gradients/conv2/add_grad/ShapeShapeconv2/Conv2D*
out_type0*
T0*
_output_shapes
:
j
 gradients/conv2/add_grad/Shape_1Const*
dtype0*
valueB:@*
_output_shapes
:
к
.gradients/conv2/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/conv2/add_grad/Shape gradients/conv2/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
И
gradients/conv2/add_grad/SumSum#gradients/conv2/conv2_grad/ReluGrad.gradients/conv2/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
▒
 gradients/conv2/add_grad/ReshapeReshapegradients/conv2/add_grad/Sumgradients/conv2/add_grad/Shape*
Tshape0*
T0*/
_output_shapes
:         @
╝
gradients/conv2/add_grad/Sum_1Sum#gradients/conv2/conv2_grad/ReluGrad0gradients/conv2/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
б
"gradients/conv2/add_grad/Reshape_1Reshapegradients/conv2/add_grad/Sum_1 gradients/conv2/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:@
y
)gradients/conv2/add_grad/tuple/group_depsNoOp!^gradients/conv2/add_grad/Reshape#^gradients/conv2/add_grad/Reshape_1
Щ
1gradients/conv2/add_grad/tuple/control_dependencyIdentity gradients/conv2/add_grad/Reshape*^gradients/conv2/add_grad/tuple/group_deps*3
_class)
'%loc:@gradients/conv2/add_grad/Reshape*
T0*/
_output_shapes
:         @
в
3gradients/conv2/add_grad/tuple/control_dependency_1Identity"gradients/conv2/add_grad/Reshape_1*^gradients/conv2/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/conv2/add_grad/Reshape_1*
T0*
_output_shapes
:@
n
!gradients/conv2/Conv2D_grad/ShapeShapepool1/MaxPool*
out_type0*
T0*
_output_shapes
:
▄
/gradients/conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput!gradients/conv2/Conv2D_grad/Shapeconv2/kernels/read1gradients/conv2/add_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
|
#gradients/conv2/Conv2D_grad/Shape_1Const*
dtype0*%
valueB"          @   *
_output_shapes
:
и
0gradients/conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpool1/MaxPool#gradients/conv2/Conv2D_grad/Shape_11gradients/conv2/add_grad/tuple/control_dependency*&
_output_shapes
: @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
Ў
,gradients/conv2/Conv2D_grad/tuple/group_depsNoOp0^gradients/conv2/Conv2D_grad/Conv2DBackpropInput1^gradients/conv2/Conv2D_grad/Conv2DBackpropFilter
ъ
4gradients/conv2/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv2/Conv2D_grad/Conv2DBackpropInput-^gradients/conv2/Conv2D_grad/tuple/group_deps*B
_class8
64loc:@gradients/conv2/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:          
Ў
6gradients/conv2/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv2/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv2/Conv2D_grad/tuple/group_deps*C
_class9
75loc:@gradients/conv2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @
Ћ
(gradients/pool1/MaxPool_grad/MaxPoolGradMaxPoolGradconv1/conv1pool1/MaxPool4gradients/conv2/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:          *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
а
#gradients/conv1/conv1_grad/ReluGradReluGrad(gradients/pool1/MaxPool_grad/MaxPoolGradconv1/conv1*
T0*/
_output_shapes
:          
j
gradients/conv1/add_grad/ShapeShapeconv1/Conv2D*
out_type0*
T0*
_output_shapes
:
j
 gradients/conv1/add_grad/Shape_1Const*
dtype0*
valueB: *
_output_shapes
:
к
.gradients/conv1/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/conv1/add_grad/Shape gradients/conv1/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
И
gradients/conv1/add_grad/SumSum#gradients/conv1/conv1_grad/ReluGrad.gradients/conv1/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
▒
 gradients/conv1/add_grad/ReshapeReshapegradients/conv1/add_grad/Sumgradients/conv1/add_grad/Shape*
Tshape0*
T0*/
_output_shapes
:          
╝
gradients/conv1/add_grad/Sum_1Sum#gradients/conv1/conv1_grad/ReluGrad0gradients/conv1/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
б
"gradients/conv1/add_grad/Reshape_1Reshapegradients/conv1/add_grad/Sum_1 gradients/conv1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
y
)gradients/conv1/add_grad/tuple/group_depsNoOp!^gradients/conv1/add_grad/Reshape#^gradients/conv1/add_grad/Reshape_1
Щ
1gradients/conv1/add_grad/tuple/control_dependencyIdentity gradients/conv1/add_grad/Reshape*^gradients/conv1/add_grad/tuple/group_deps*3
_class)
'%loc:@gradients/conv1/add_grad/Reshape*
T0*/
_output_shapes
:          
в
3gradients/conv1/add_grad/tuple/control_dependency_1Identity"gradients/conv1/add_grad/Reshape_1*^gradients/conv1/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/conv1/add_grad/Reshape_1*
T0*
_output_shapes
: 
n
!gradients/conv1/Conv2D_grad/ShapeShapeconv1/Reshape*
out_type0*
T0*
_output_shapes
:
█
/gradients/conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput!gradients/conv1/Conv2D_grad/Shapeconv1/kernel/read1gradients/conv1/add_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
|
#gradients/conv1/Conv2D_grad/Shape_1Const*
dtype0*%
valueB"             *
_output_shapes
:
и
0gradients/conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1/Reshape#gradients/conv1/Conv2D_grad/Shape_11gradients/conv1/add_grad/tuple/control_dependency*&
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
Ў
,gradients/conv1/Conv2D_grad/tuple/group_depsNoOp0^gradients/conv1/Conv2D_grad/Conv2DBackpropInput1^gradients/conv1/Conv2D_grad/Conv2DBackpropFilter
ъ
4gradients/conv1/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv1/Conv2D_grad/Conv2DBackpropInput-^gradients/conv1/Conv2D_grad/tuple/group_deps*B
_class8
64loc:@gradients/conv1/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:         
Ў
6gradients/conv1/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv1/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv1/Conv2D_grad/tuple/group_deps*C
_class9
75loc:@gradients/conv1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 

beta1_power/initial_valueConst*
dtype0*
_class
loc:@conv1/kernel*
valueB
 *fff?*
_output_shapes
: 
ј
beta1_powerVariable*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/kernel*
shared_name 
»
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*
_output_shapes
: 
k
beta1_power/readIdentitybeta1_power*
_class
loc:@conv1/kernel*
T0*
_output_shapes
: 

beta2_power/initial_valueConst*
dtype0*
_class
loc:@conv1/kernel*
valueB
 *wЙ?*
_output_shapes
: 
ј
beta2_powerVariable*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/kernel*
shared_name 
»
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*
_output_shapes
: 
k
beta2_power/readIdentitybeta2_power*
_class
loc:@conv1/kernel*
T0*
_output_shapes
: 
j
zerosConst*
dtype0*%
valueB *    *&
_output_shapes
: 
┤
conv1/kernel/AdamVariable*
	container *&
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/kernel*
shared_name 
и
conv1/kernel/Adam/AssignAssignconv1/kernel/Adamzeros*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
Є
conv1/kernel/Adam/readIdentityconv1/kernel/Adam*
_class
loc:@conv1/kernel*
T0*&
_output_shapes
: 
l
zeros_1Const*
dtype0*%
valueB *    *&
_output_shapes
: 
Х
conv1/kernel/Adam_1Variable*
	container *&
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/kernel*
shared_name 
й
conv1/kernel/Adam_1/AssignAssignconv1/kernel/Adam_1zeros_1*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
І
conv1/kernel/Adam_1/readIdentityconv1/kernel/Adam_1*
_class
loc:@conv1/kernel*
T0*&
_output_shapes
: 
T
zeros_2Const*
dtype0*
valueB *    *
_output_shapes
: 
ю
conv1/biases/AdamVariable*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/biases*
shared_name 
Г
conv1/biases/Adam/AssignAssignconv1/biases/Adamzeros_2*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 
{
conv1/biases/Adam/readIdentityconv1/biases/Adam*
_class
loc:@conv1/biases*
T0*
_output_shapes
: 
T
zeros_3Const*
dtype0*
valueB *    *
_output_shapes
: 
ъ
conv1/biases/Adam_1Variable*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/biases*
shared_name 
▒
conv1/biases/Adam_1/AssignAssignconv1/biases/Adam_1zeros_3*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 

conv1/biases/Adam_1/readIdentityconv1/biases/Adam_1*
_class
loc:@conv1/biases*
T0*
_output_shapes
: 
l
zeros_4Const*
dtype0*%
valueB @*    *&
_output_shapes
: @
Х
conv2/kernels/AdamVariable*
	container *&
_output_shapes
: @*
dtype0*
shape: @* 
_class
loc:@conv2/kernels*
shared_name 
╝
conv2/kernels/Adam/AssignAssignconv2/kernels/Adamzeros_4*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
і
conv2/kernels/Adam/readIdentityconv2/kernels/Adam* 
_class
loc:@conv2/kernels*
T0*&
_output_shapes
: @
l
zeros_5Const*
dtype0*%
valueB @*    *&
_output_shapes
: @
И
conv2/kernels/Adam_1Variable*
	container *&
_output_shapes
: @*
dtype0*
shape: @* 
_class
loc:@conv2/kernels*
shared_name 
└
conv2/kernels/Adam_1/AssignAssignconv2/kernels/Adam_1zeros_5*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
ј
conv2/kernels/Adam_1/readIdentityconv2/kernels/Adam_1* 
_class
loc:@conv2/kernels*
T0*&
_output_shapes
: @
T
zeros_6Const*
dtype0*
valueB@*    *
_output_shapes
:@
ю
conv2/biases/AdamVariable*
	container *
_output_shapes
:@*
dtype0*
shape:@*
_class
loc:@conv2/biases*
shared_name 
Г
conv2/biases/Adam/AssignAssignconv2/biases/Adamzeros_6*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@
{
conv2/biases/Adam/readIdentityconv2/biases/Adam*
_class
loc:@conv2/biases*
T0*
_output_shapes
:@
T
zeros_7Const*
dtype0*
valueB@*    *
_output_shapes
:@
ъ
conv2/biases/Adam_1Variable*
	container *
_output_shapes
:@*
dtype0*
shape:@*
_class
loc:@conv2/biases*
shared_name 
▒
conv2/biases/Adam_1/AssignAssignconv2/biases/Adam_1zeros_7*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@

conv2/biases/Adam_1/readIdentityconv2/biases/Adam_1*
_class
loc:@conv2/biases*
T0*
_output_shapes
:@
`
zeros_8Const*
dtype0*
valueB
└ђ*    * 
_output_shapes
:
└ђ
ц
fc/weights/AdamVariable*
	container * 
_output_shapes
:
└ђ*
dtype0*
shape:
└ђ*
_class
loc:@fc/weights*
shared_name 
Г
fc/weights/Adam/AssignAssignfc/weights/Adamzeros_8*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ
{
fc/weights/Adam/readIdentityfc/weights/Adam*
_class
loc:@fc/weights*
T0* 
_output_shapes
:
└ђ
`
zeros_9Const*
dtype0*
valueB
└ђ*    * 
_output_shapes
:
└ђ
д
fc/weights/Adam_1Variable*
	container * 
_output_shapes
:
└ђ*
dtype0*
shape:
└ђ*
_class
loc:@fc/weights*
shared_name 
▒
fc/weights/Adam_1/AssignAssignfc/weights/Adam_1zeros_9*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ

fc/weights/Adam_1/readIdentityfc/weights/Adam_1*
_class
loc:@fc/weights*
T0* 
_output_shapes
:
└ђ
W
zeros_10Const*
dtype0*
valueBђ*    *
_output_shapes	
:ђ
ў
fc/biases/AdamVariable*
	container *
_output_shapes	
:ђ*
dtype0*
shape:ђ*
_class
loc:@fc/biases*
shared_name 
д
fc/biases/Adam/AssignAssignfc/biases/Adamzeros_10*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
s
fc/biases/Adam/readIdentityfc/biases/Adam*
_class
loc:@fc/biases*
T0*
_output_shapes	
:ђ
W
zeros_11Const*
dtype0*
valueBђ*    *
_output_shapes	
:ђ
џ
fc/biases/Adam_1Variable*
	container *
_output_shapes	
:ђ*
dtype0*
shape:ђ*
_class
loc:@fc/biases*
shared_name 
ф
fc/biases/Adam_1/AssignAssignfc/biases/Adam_1zeros_11*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
w
fc/biases/Adam_1/readIdentityfc/biases/Adam_1*
_class
loc:@fc/biases*
T0*
_output_shapes	
:ђ
_
zeros_12Const*
dtype0*
valueB	ђ
*    *
_output_shapes
:	ђ

║
softmax_linear/weights/AdamVariable*
	container *
_output_shapes
:	ђ
*
dtype0*
shape:	ђ
*)
_class
loc:@softmax_linear/weights*
shared_name 
Л
"softmax_linear/weights/Adam/AssignAssignsoftmax_linear/weights/Adamzeros_12*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

ъ
 softmax_linear/weights/Adam/readIdentitysoftmax_linear/weights/Adam*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes
:	ђ

_
zeros_13Const*
dtype0*
valueB	ђ
*    *
_output_shapes
:	ђ

╝
softmax_linear/weights/Adam_1Variable*
	container *
_output_shapes
:	ђ
*
dtype0*
shape:	ђ
*)
_class
loc:@softmax_linear/weights*
shared_name 
Н
$softmax_linear/weights/Adam_1/AssignAssignsoftmax_linear/weights/Adam_1zeros_13*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

б
"softmax_linear/weights/Adam_1/readIdentitysoftmax_linear/weights/Adam_1*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes
:	ђ

U
zeros_14Const*
dtype0*
valueB
*    *
_output_shapes
:

«
softmax_linear/biases/AdamVariable*
	container *
_output_shapes
:
*
dtype0*
shape:
*(
_class
loc:@softmax_linear/biases*
shared_name 
╔
!softmax_linear/biases/Adam/AssignAssignsoftmax_linear/biases/Adamzeros_14*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

ќ
softmax_linear/biases/Adam/readIdentitysoftmax_linear/biases/Adam*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

U
zeros_15Const*
dtype0*
valueB
*    *
_output_shapes
:

░
softmax_linear/biases/Adam_1Variable*
	container *
_output_shapes
:
*
dtype0*
shape:
*(
_class
loc:@softmax_linear/biases*
shared_name 
═
#softmax_linear/biases/Adam_1/AssignAssignsoftmax_linear/biases/Adam_1zeros_15*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

џ
!softmax_linear/biases/Adam_1/readIdentitysoftmax_linear/biases/Adam_1*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

W
Adam/learning_rateConst*
dtype0*
valueB
 *oЃ:*
_output_shapes
: 
O

Adam/beta1Const*
dtype0*
valueB
 *fff?*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
valueB
 *wЙ?*
_output_shapes
: 
Q
Adam/epsilonConst*
dtype0*
valueB
 *w╠+2*
_output_shapes
: 
Я
"Adam/update_conv1/kernel/ApplyAdam	ApplyAdamconv1/kernelconv1/kernel/Adamconv1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv1/Conv2D_grad/tuple/control_dependency_1*
_class
loc:@conv1/kernel*
use_locking( *
T0*&
_output_shapes
: 
Л
"Adam/update_conv1/biases/ApplyAdam	ApplyAdamconv1/biasesconv1/biases/Adamconv1/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/conv1/add_grad/tuple/control_dependency_1*
_class
loc:@conv1/biases*
use_locking( *
T0*
_output_shapes
: 
т
#Adam/update_conv2/kernels/ApplyAdam	ApplyAdamconv2/kernelsconv2/kernels/Adamconv2/kernels/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv2/Conv2D_grad/tuple/control_dependency_1* 
_class
loc:@conv2/kernels*
use_locking( *
T0*&
_output_shapes
: @
Л
"Adam/update_conv2/biases/ApplyAdam	ApplyAdamconv2/biasesconv2/biases/Adamconv2/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/conv2/add_grad/tuple/control_dependency_1*
_class
loc:@conv2/biases*
use_locking( *
T0*
_output_shapes
:@
═
 Adam/update_fc/weights/ApplyAdam	ApplyAdam
fc/weightsfc/weights/Adamfc/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/fc/MatMul_grad/tuple/control_dependency_1*
_class
loc:@fc/weights*
use_locking( *
T0* 
_output_shapes
:
└ђ
└
Adam/update_fc/biases/ApplyAdam	ApplyAdam	fc/biasesfc/biases/Adamfc/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/fc/add_grad/tuple/control_dependency_1*
_class
loc:@fc/biases*
use_locking( *
T0*
_output_shapes	
:ђ
ћ
,Adam/update_softmax_linear/weights/ApplyAdam	ApplyAdamsoftmax_linear/weightssoftmax_linear/weights/Adamsoftmax_linear/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/softmax_linear/MatMul_grad/tuple/control_dependency_1*)
_class
loc:@softmax_linear/weights*
use_locking( *
T0*
_output_shapes
:	ђ

Є
+Adam/update_softmax_linear/biases/ApplyAdam	ApplyAdamsoftmax_linear/biasessoftmax_linear/biases/Adamsoftmax_linear/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/softmax_linear/add_grad/tuple/control_dependency_1*(
_class
loc:@softmax_linear/biases*
use_locking( *
T0*
_output_shapes
:

д
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_conv1/kernel/ApplyAdam#^Adam/update_conv1/biases/ApplyAdam$^Adam/update_conv2/kernels/ApplyAdam#^Adam/update_conv2/biases/ApplyAdam!^Adam/update_fc/weights/ApplyAdam ^Adam/update_fc/biases/ApplyAdam-^Adam/update_softmax_linear/weights/ApplyAdam,^Adam/update_softmax_linear/biases/ApplyAdam*
_class
loc:@conv1/kernel*
T0*
_output_shapes
: 
Ќ
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking( *
T0*
_output_shapes
: 
е

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_conv1/kernel/ApplyAdam#^Adam/update_conv1/biases/ApplyAdam$^Adam/update_conv2/kernels/ApplyAdam#^Adam/update_conv2/biases/ApplyAdam!^Adam/update_fc/weights/ApplyAdam ^Adam/update_fc/biases/ApplyAdam-^Adam/update_softmax_linear/weights/ApplyAdam,^Adam/update_softmax_linear/biases/ApplyAdam*
_class
loc:@conv1/kernel*
T0*
_output_shapes
: 
Џ
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking( *
T0*
_output_shapes
: 
У
Adam/updateNoOp#^Adam/update_conv1/kernel/ApplyAdam#^Adam/update_conv1/biases/ApplyAdam$^Adam/update_conv2/kernels/ApplyAdam#^Adam/update_conv2/biases/ApplyAdam!^Adam/update_fc/weights/ApplyAdam ^Adam/update_fc/biases/ApplyAdam-^Adam/update_softmax_linear/weights/ApplyAdam,^Adam/update_softmax_linear/biases/ApplyAdam^Adam/Assign^Adam/Assign_1
z

Adam/valueConst^Adam/update*
dtype0*
_class
loc:@global_step*
value	B :*
_output_shapes
: 
~
Adam	AssignAddglobal_step
Adam/value*
_class
loc:@global_step*
use_locking( *
T0*
_output_shapes
: 
У
initNoOp^global_step/Assign^conv1/kernel/Assign^conv1/biases/Assign^conv2/kernels/Assign^conv2/biases/Assign^fc/weights/Assign^fc/biases/Assign^softmax_linear/weights/Assign^softmax_linear/biases/Assign^beta1_power/Assign^beta2_power/Assign^conv1/kernel/Adam/Assign^conv1/kernel/Adam_1/Assign^conv1/biases/Adam/Assign^conv1/biases/Adam_1/Assign^conv2/kernels/Adam/Assign^conv2/kernels/Adam_1/Assign^conv2/biases/Adam/Assign^conv2/biases/Adam_1/Assign^fc/weights/Adam/Assign^fc/weights/Adam_1/Assign^fc/biases/Adam/Assign^fc/biases/Adam_1/Assign#^softmax_linear/weights/Adam/Assign%^softmax_linear/weights/Adam_1/Assign"^softmax_linear/biases/Adam/Assign$^softmax_linear/biases/Adam_1/Assign
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Т
save/SaveV2/tensor_namesConst*
dtype0*Ў
valueЈBїBbeta1_powerBbeta2_powerBconv1/biasesBconv1/biases/AdamBconv1/biases/Adam_1Bconv1/kernelBconv1/kernel/AdamBconv1/kernel/Adam_1Bconv2/biasesBconv2/biases/AdamBconv2/biases/Adam_1Bconv2/kernelsBconv2/kernels/AdamBconv2/kernels/Adam_1B	fc/biasesBfc/biases/AdamBfc/biases/Adam_1B
fc/weightsBfc/weights/AdamBfc/weights/Adam_1Bglobal_stepBsoftmax_linear/biasesBsoftmax_linear/biases/AdamBsoftmax_linear/biases/Adam_1Bsoftmax_linear/weightsBsoftmax_linear/weights/AdamBsoftmax_linear/weights/Adam_1*
_output_shapes
:
Ў
save/SaveV2/shape_and_slicesConst*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
ѕ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerconv1/biasesconv1/biases/Adamconv1/biases/Adam_1conv1/kernelconv1/kernel/Adamconv1/kernel/Adam_1conv2/biasesconv2/biases/Adamconv2/biases/Adam_1conv2/kernelsconv2/kernels/Adamconv2/kernels/Adam_1	fc/biasesfc/biases/Adamfc/biases/Adam_1
fc/weightsfc/weights/Adamfc/weights/Adam_1global_stepsoftmax_linear/biasessoftmax_linear/biases/Adamsoftmax_linear/biases/Adam_1softmax_linear/weightssoftmax_linear/weights/Adamsoftmax_linear/weights/Adam_1*)
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBbeta1_power*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
љ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ю
save/AssignAssignbeta1_powersave/RestoreV2*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBbeta2_power*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
А
save/Assign_1Assignbeta2_powersave/RestoreV2_1*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*
_output_shapes
: 
r
save/RestoreV2_2/tensor_namesConst*
dtype0*!
valueBBconv1/biases*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_2Assignconv1/biasessave/RestoreV2_2*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 
w
save/RestoreV2_3/tensor_namesConst*
dtype0*&
valueBBconv1/biases/Adam*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ф
save/Assign_3Assignconv1/biases/Adamsave/RestoreV2_3*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 
y
save/RestoreV2_4/tensor_namesConst*
dtype0*(
valueBBconv1/biases/Adam_1*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Г
save/Assign_4Assignconv1/biases/Adam_1save/RestoreV2_4*
validate_shape(*
_class
loc:@conv1/biases*
use_locking(*
T0*
_output_shapes
: 
r
save/RestoreV2_5/tensor_namesConst*
dtype0*!
valueBBconv1/kernel*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save/Assign_5Assignconv1/kernelsave/RestoreV2_5*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
w
save/RestoreV2_6/tensor_namesConst*
dtype0*&
valueBBconv1/kernel/Adam*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save/Assign_6Assignconv1/kernel/Adamsave/RestoreV2_6*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
y
save/RestoreV2_7/tensor_namesConst*
dtype0*(
valueBBconv1/kernel/Adam_1*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save/Assign_7Assignconv1/kernel/Adam_1save/RestoreV2_7*
validate_shape(*
_class
loc:@conv1/kernel*
use_locking(*
T0*&
_output_shapes
: 
r
save/RestoreV2_8/tensor_namesConst*
dtype0*!
valueBBconv2/biases*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_8Assignconv2/biasessave/RestoreV2_8*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@
w
save/RestoreV2_9/tensor_namesConst*
dtype0*&
valueBBconv2/biases/Adam*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
Ф
save/Assign_9Assignconv2/biases/Adamsave/RestoreV2_9*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@
z
save/RestoreV2_10/tensor_namesConst*
dtype0*(
valueBBconv2/biases/Adam_1*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
»
save/Assign_10Assignconv2/biases/Adam_1save/RestoreV2_10*
validate_shape(*
_class
loc:@conv2/biases*
use_locking(*
T0*
_output_shapes
:@
t
save/RestoreV2_11/tensor_namesConst*
dtype0*"
valueBBconv2/kernels*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Х
save/Assign_11Assignconv2/kernelssave/RestoreV2_11*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
y
save/RestoreV2_12/tensor_namesConst*
dtype0*'
valueBBconv2/kernels/Adam*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
╗
save/Assign_12Assignconv2/kernels/Adamsave/RestoreV2_12*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
{
save/RestoreV2_13/tensor_namesConst*
dtype0*)
value BBconv2/kernels/Adam_1*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_13Assignconv2/kernels/Adam_1save/RestoreV2_13*
validate_shape(* 
_class
loc:@conv2/kernels*
use_locking(*
T0*&
_output_shapes
: @
p
save/RestoreV2_14/tensor_namesConst*
dtype0*
valueBB	fc/biases*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Б
save/Assign_14Assign	fc/biasessave/RestoreV2_14*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
u
save/RestoreV2_15/tensor_namesConst*
dtype0*#
valueBBfc/biases/Adam*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
е
save/Assign_15Assignfc/biases/Adamsave/RestoreV2_15*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
w
save/RestoreV2_16/tensor_namesConst*
dtype0*%
valueBBfc/biases/Adam_1*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
ф
save/Assign_16Assignfc/biases/Adam_1save/RestoreV2_16*
validate_shape(*
_class
loc:@fc/biases*
use_locking(*
T0*
_output_shapes	
:ђ
q
save/RestoreV2_17/tensor_namesConst*
dtype0*
valueBB
fc/weights*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
ф
save/Assign_17Assign
fc/weightssave/RestoreV2_17*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ
v
save/RestoreV2_18/tensor_namesConst*
dtype0*$
valueBBfc/weights/Adam*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
»
save/Assign_18Assignfc/weights/Adamsave/RestoreV2_18*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ
x
save/RestoreV2_19/tensor_namesConst*
dtype0*&
valueBBfc/weights/Adam_1*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
▒
save/Assign_19Assignfc/weights/Adam_1save/RestoreV2_19*
validate_shape(*
_class
loc:@fc/weights*
use_locking(*
T0* 
_output_shapes
:
└ђ
r
save/RestoreV2_20/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
б
save/Assign_20Assignglobal_stepsave/RestoreV2_20*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
|
save/RestoreV2_21/tensor_namesConst*
dtype0**
value!BBsoftmax_linear/biases*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save/Assign_21Assignsoftmax_linear/biasessave/RestoreV2_21*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

Ђ
save/RestoreV2_22/tensor_namesConst*
dtype0*/
value&B$Bsoftmax_linear/biases/Adam*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
┐
save/Assign_22Assignsoftmax_linear/biases/Adamsave/RestoreV2_22*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

Ѓ
save/RestoreV2_23/tensor_namesConst*
dtype0*1
value(B&Bsoftmax_linear/biases/Adam_1*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
┴
save/Assign_23Assignsoftmax_linear/biases/Adam_1save/RestoreV2_23*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

}
save/RestoreV2_24/tensor_namesConst*
dtype0*+
value"B Bsoftmax_linear/weights*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
┴
save/Assign_24Assignsoftmax_linear/weightssave/RestoreV2_24*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

ѓ
save/RestoreV2_25/tensor_namesConst*
dtype0*0
value'B%Bsoftmax_linear/weights/Adam*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save/Assign_25Assignsoftmax_linear/weights/Adamsave/RestoreV2_25*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

ё
save/RestoreV2_26/tensor_namesConst*
dtype0*2
value)B'Bsoftmax_linear/weights/Adam_1*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
╚
save/Assign_26Assignsoftmax_linear/weights/Adam_1save/RestoreV2_26*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes
:	ђ

О
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26""
train_op

Adam"Ѓ
	variablesшЫ
7
global_step:0global_step/Assignglobal_step/read:0
:
conv1/kernel:0conv1/kernel/Assignconv1/kernel/read:0
:
conv1/biases:0conv1/biases/Assignconv1/biases/read:0
=
conv2/kernels:0conv2/kernels/Assignconv2/kernels/read:0
:
conv2/biases:0conv2/biases/Assignconv2/biases/read:0
4
fc/weights:0fc/weights/Assignfc/weights/read:0
1
fc/biases:0fc/biases/Assignfc/biases/read:0
X
softmax_linear/weights:0softmax_linear/weights/Assignsoftmax_linear/weights/read:0
U
softmax_linear/biases:0softmax_linear/biases/Assignsoftmax_linear/biases/read:0
7
beta1_power:0beta1_power/Assignbeta1_power/read:0
7
beta2_power:0beta2_power/Assignbeta2_power/read:0
I
conv1/kernel/Adam:0conv1/kernel/Adam/Assignconv1/kernel/Adam/read:0
O
conv1/kernel/Adam_1:0conv1/kernel/Adam_1/Assignconv1/kernel/Adam_1/read:0
I
conv1/biases/Adam:0conv1/biases/Adam/Assignconv1/biases/Adam/read:0
O
conv1/biases/Adam_1:0conv1/biases/Adam_1/Assignconv1/biases/Adam_1/read:0
L
conv2/kernels/Adam:0conv2/kernels/Adam/Assignconv2/kernels/Adam/read:0
R
conv2/kernels/Adam_1:0conv2/kernels/Adam_1/Assignconv2/kernels/Adam_1/read:0
I
conv2/biases/Adam:0conv2/biases/Adam/Assignconv2/biases/Adam/read:0
O
conv2/biases/Adam_1:0conv2/biases/Adam_1/Assignconv2/biases/Adam_1/read:0
C
fc/weights/Adam:0fc/weights/Adam/Assignfc/weights/Adam/read:0
I
fc/weights/Adam_1:0fc/weights/Adam_1/Assignfc/weights/Adam_1/read:0
@
fc/biases/Adam:0fc/biases/Adam/Assignfc/biases/Adam/read:0
F
fc/biases/Adam_1:0fc/biases/Adam_1/Assignfc/biases/Adam_1/read:0
g
softmax_linear/weights/Adam:0"softmax_linear/weights/Adam/Assign"softmax_linear/weights/Adam/read:0
m
softmax_linear/weights/Adam_1:0$softmax_linear/weights/Adam_1/Assign$softmax_linear/weights/Adam_1/read:0
d
softmax_linear/biases/Adam:0!softmax_linear/biases/Adam/Assign!softmax_linear/biases/Adam/read:0
j
softmax_linear/biases/Adam_1:0#softmax_linear/biases/Adam_1/Assign#softmax_linear/biases/Adam_1/read:0"е
trainable_variablesљЇ
:
conv1/kernel:0conv1/kernel/Assignconv1/kernel/read:0
:
conv1/biases:0conv1/biases/Assignconv1/biases/read:0
=
conv2/kernels:0conv2/kernels/Assignconv2/kernels/read:0
:
conv2/biases:0conv2/biases/Assignconv2/biases/read:0
4
fc/weights:0fc/weights/Assignfc/weights/read:0
1
fc/biases:0fc/biases/Assignfc/biases/read:0
X
softmax_linear/weights:0softmax_linear/weights/Assignsoftmax_linear/weights/read:0
U
softmax_linear/biases:0softmax_linear/biases/Assignsoftmax_linear/biases/read:0┘Ь