import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonData
import NoFourMUBs.Reuse.Archive.CriticalZeroSumCommonData
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings01
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
theorem commonExprCoefficients_22_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_22=commonCoefficients_22 X Y := by
  simp only [commonExprCoefficients_22,commonCoefficients_22,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_22_interpret
theorem commonExprCoefficients_23_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_23=commonCoefficients_23 X Y := by
  simp only [commonExprCoefficients_23,commonCoefficients_23,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_23_interpret
theorem commonExprCoefficients_24_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_24=commonCoefficients_24 X Y := by
  simp only [commonExprCoefficients_24,commonCoefficients_24,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_24_interpret
theorem commonExprCoefficients_25_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_25=commonCoefficients_25 X Y := by
  simp only [commonExprCoefficients_25,commonCoefficients_25,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_25_interpret
theorem commonExprCoefficients_26_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_26=commonCoefficients_26 X Y := by
  simp only [commonExprCoefficients_26,commonCoefficients_26,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_26_interpret
theorem commonExprCoefficients_27_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_27=commonCoefficients_27 X Y := by
  simp only [commonExprCoefficients_27,commonCoefficients_27,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_27_interpret
theorem commonExprCoefficients_28_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_28=commonCoefficients_28 X Y := by
  simp only [commonExprCoefficients_28,commonCoefficients_28,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_28_interpret
theorem commonExprCoefficients_29_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_29=commonCoefficients_29 X Y := by
  simp only [commonExprCoefficients_29,commonCoefficients_29,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_29_interpret
theorem commonExprCoefficients_30_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_30=commonCoefficients_30 X Y := by
  simp only [commonExprCoefficients_30,commonCoefficients_30,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_30_interpret
theorem commonExprCoefficients_31_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_31=commonCoefficients_31 X Y := by
  simp only [commonExprCoefficients_31,commonCoefficients_31,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_31_interpret
theorem commonExprCoefficients_32_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_32=commonCoefficients_32 X Y := by
  simp only [commonExprCoefficients_32,commonCoefficients_32,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_32_interpret
end
end CriticalZeroSumAssembly20261003
