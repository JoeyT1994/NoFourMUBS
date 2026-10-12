import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonData
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
theorem commonExprCoefficients_11_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_11=commonCoefficients_11 X Y := by
  simp only [commonExprCoefficients_11,commonCoefficients_11,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p1_m3_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_11_interpret
theorem commonExprCoefficients_12_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_12=commonCoefficients_12 X Y := by
  simp only [commonExprCoefficients_12,commonCoefficients_12,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p1_m2_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_12_interpret
theorem commonExprCoefficients_13_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_13=commonCoefficients_13 X Y := by
  simp only [commonExprCoefficients_13,commonCoefficients_13,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_13_interpret
theorem commonExprCoefficients_14_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_14=commonCoefficients_14 X Y := by
  simp only [commonExprCoefficients_14,commonCoefficients_14,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_14_interpret
theorem commonExprCoefficients_15_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_15=commonCoefficients_15 X Y := by
  simp only [commonExprCoefficients_15,commonCoefficients_15,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p1_p1_interpret,primitiveExprCoefficients_p2_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_15_interpret
theorem commonExprCoefficients_16_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_16=commonCoefficients_16 X Y := by
  simp only [commonExprCoefficients_16,commonCoefficients_16,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p1_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_16_interpret
theorem commonExprCoefficients_17_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_17=commonCoefficients_17 X Y := by
  simp only [commonExprCoefficients_17,commonCoefficients_17,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_17_interpret
theorem commonExprCoefficients_18_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_18=commonCoefficients_18 X Y := by
  simp only [commonExprCoefficients_18,commonCoefficients_18,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_18_interpret
theorem commonExprCoefficients_19_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_19=commonCoefficients_19 X Y := by
  simp only [commonExprCoefficients_19,commonCoefficients_19,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_19_interpret
theorem commonExprCoefficients_20_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_20=commonCoefficients_20 X Y := by
  simp only [commonExprCoefficients_20,commonCoefficients_20,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p1_m3_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_20_interpret
theorem commonExprCoefficients_21_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_21=commonCoefficients_21 X Y := by
  simp only [commonExprCoefficients_21,commonCoefficients_21,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p1_m2_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_21_interpret
end
end CriticalZeroSumAssembly20261003
