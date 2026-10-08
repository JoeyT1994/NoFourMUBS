import CriticalZeroSumDenseCommonData
import CriticalZeroSumCommonData
import CriticalZeroSumExprPrimitiveBindings00
import CriticalZeroSumExprPrimitiveBindings01
import CriticalZeroSumExprPrimitiveBindings02
import CriticalZeroSumExprPrimitiveBindings03
import CriticalZeroSumExprPrimitiveBindings04
import CriticalZeroSumExprPrimitiveBindings05
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem commonDenseCoefficients_33_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_33=commonCoefficients_33 X Y := by
  simp only [commonDenseCoefficients_33,commonCoefficients_33,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_33_interpret
theorem commonDenseCoefficients_34_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_34=commonCoefficients_34 X Y := by
  simp only [commonDenseCoefficients_34,commonCoefficients_34,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_34_interpret
theorem commonDenseCoefficients_35_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_35=commonCoefficients_35 X Y := by
  simp only [commonDenseCoefficients_35,commonCoefficients_35,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p2_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_35_interpret
theorem commonDenseCoefficients_36_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_36=commonCoefficients_36 X Y := by
  simp only [commonDenseCoefficients_36,commonCoefficients_36,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_36_interpret
theorem commonDenseCoefficients_37_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_37=commonCoefficients_37 X Y := by
  simp only [commonDenseCoefficients_37,commonCoefficients_37,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_37_interpret
theorem commonDenseCoefficients_38_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_38=commonCoefficients_38 X Y := by
  simp only [commonDenseCoefficients_38,commonCoefficients_38,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_38_interpret
theorem commonDenseCoefficients_39_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_39=commonCoefficients_39 X Y := by
  simp only [commonDenseCoefficients_39,commonCoefficients_39,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_39_interpret
theorem commonDenseCoefficients_40_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_40=commonCoefficients_40 X Y := by
  simp only [commonDenseCoefficients_40,commonCoefficients_40,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p1_m3_interpret,primitiveExprCoefficients_p1_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_40_interpret
theorem commonDenseCoefficients_41_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_41=commonCoefficients_41 X Y := by
  simp only [commonDenseCoefficients_41,commonCoefficients_41,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p1_m2_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_41_interpret
theorem commonDenseCoefficients_42_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_42=commonCoefficients_42 X Y := by
  simp only [commonDenseCoefficients_42,commonCoefficients_42,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_42_interpret
theorem commonDenseCoefficients_43_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_43=commonCoefficients_43 X Y := by
  simp only [commonDenseCoefficients_43,commonCoefficients_43,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_43_interpret
end
end CriticalZeroSumAssembly20261003
