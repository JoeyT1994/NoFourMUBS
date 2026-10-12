import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonData
import NoFourMUBs.Reuse.Archive.CriticalZeroSumCommonData
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings05
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem commonDenseCoefficients_11_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_11=commonCoefficients_11 X Y := by
  simp only [commonDenseCoefficients_11,commonCoefficients_11,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p1_m3_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_11_interpret
theorem commonDenseCoefficients_12_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_12=commonCoefficients_12 X Y := by
  simp only [commonDenseCoefficients_12,commonCoefficients_12,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p1_m2_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_12_interpret
theorem commonDenseCoefficients_13_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_13=commonCoefficients_13 X Y := by
  simp only [commonDenseCoefficients_13,commonCoefficients_13,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_13_interpret
theorem commonDenseCoefficients_14_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_14=commonCoefficients_14 X Y := by
  simp only [commonDenseCoefficients_14,commonCoefficients_14,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_14_interpret
theorem commonDenseCoefficients_15_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_15=commonCoefficients_15 X Y := by
  simp only [commonDenseCoefficients_15,commonCoefficients_15,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p1_p1_interpret,primitiveExprCoefficients_p2_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_15_interpret
theorem commonDenseCoefficients_16_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_16=commonCoefficients_16 X Y := by
  simp only [commonDenseCoefficients_16,commonCoefficients_16,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p1_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_16_interpret
theorem commonDenseCoefficients_17_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_17=commonCoefficients_17 X Y := by
  simp only [commonDenseCoefficients_17,commonCoefficients_17,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_17_interpret
theorem commonDenseCoefficients_18_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_18=commonCoefficients_18 X Y := by
  simp only [commonDenseCoefficients_18,commonCoefficients_18,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_18_interpret
theorem commonDenseCoefficients_19_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_19=commonCoefficients_19 X Y := by
  simp only [commonDenseCoefficients_19,commonCoefficients_19,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_19_interpret
theorem commonDenseCoefficients_20_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_20=commonCoefficients_20 X Y := by
  simp only [commonDenseCoefficients_20,commonCoefficients_20,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p1_m3_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_20_interpret
theorem commonDenseCoefficients_21_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_21=commonCoefficients_21 X Y := by
  simp only [commonDenseCoefficients_21,commonCoefficients_21,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p1_m2_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_21_interpret
end
end CriticalZeroSumAssembly20261003
