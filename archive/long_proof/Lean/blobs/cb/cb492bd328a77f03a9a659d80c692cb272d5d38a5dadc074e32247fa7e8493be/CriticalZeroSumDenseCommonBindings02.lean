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
theorem commonDenseCoefficients_22_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_22=commonCoefficients_22 X Y := by
  simp only [commonDenseCoefficients_22,commonCoefficients_22,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_22_interpret
theorem commonDenseCoefficients_23_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_23=commonCoefficients_23 X Y := by
  simp only [commonDenseCoefficients_23,commonCoefficients_23,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_23_interpret
theorem commonDenseCoefficients_24_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_24=commonCoefficients_24 X Y := by
  simp only [commonDenseCoefficients_24,commonCoefficients_24,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_24_interpret
theorem commonDenseCoefficients_25_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_25=commonCoefficients_25 X Y := by
  simp only [commonDenseCoefficients_25,commonCoefficients_25,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_25_interpret
theorem commonDenseCoefficients_26_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_26=commonCoefficients_26 X Y := by
  simp only [commonDenseCoefficients_26,commonCoefficients_26,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_26_interpret
theorem commonDenseCoefficients_27_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_27=commonCoefficients_27 X Y := by
  simp only [commonDenseCoefficients_27,commonCoefficients_27,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_27_interpret
theorem commonDenseCoefficients_28_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_28=commonCoefficients_28 X Y := by
  simp only [commonDenseCoefficients_28,commonCoefficients_28,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_28_interpret
theorem commonDenseCoefficients_29_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_29=commonCoefficients_29 X Y := by
  simp only [commonDenseCoefficients_29,commonCoefficients_29,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_29_interpret
theorem commonDenseCoefficients_30_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_30=commonCoefficients_30 X Y := by
  simp only [commonDenseCoefficients_30,commonCoefficients_30,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_30_interpret
theorem commonDenseCoefficients_31_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_31=commonCoefficients_31 X Y := by
  simp only [commonDenseCoefficients_31,commonCoefficients_31,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_31_interpret
theorem commonDenseCoefficients_32_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_32=commonCoefficients_32 X Y := by
  simp only [commonDenseCoefficients_32,commonCoefficients_32,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_32_interpret
end
end CriticalZeroSumAssembly20261003
