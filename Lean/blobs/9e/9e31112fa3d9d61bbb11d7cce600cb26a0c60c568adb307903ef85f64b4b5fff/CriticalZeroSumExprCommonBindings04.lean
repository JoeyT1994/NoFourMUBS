import CriticalZeroSumExprCommonData
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
theorem commonExprCoefficients_44_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_44=commonCoefficients_44 X Y := by
  simp only [commonExprCoefficients_44,commonCoefficients_44,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_44_interpret
theorem commonExprCoefficients_45_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_45=commonCoefficients_45 X Y := by
  simp only [commonExprCoefficients_45,commonCoefficients_45,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_45_interpret
theorem commonExprCoefficients_46_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_46=commonCoefficients_46 X Y := by
  simp only [commonExprCoefficients_46,commonCoefficients_46,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_46_interpret
theorem commonExprCoefficients_47_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_47=commonCoefficients_47 X Y := by
  simp only [commonExprCoefficients_47,commonCoefficients_47,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_47_interpret
theorem commonExprCoefficients_48_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_48=commonCoefficients_48 X Y := by
  simp only [commonExprCoefficients_48,commonCoefficients_48,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_48_interpret
theorem commonExprCoefficients_49_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_49=commonCoefficients_49 X Y := by
  simp only [commonExprCoefficients_49,commonCoefficients_49,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_49_interpret
theorem commonExprCoefficients_50_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_50=commonCoefficients_50 X Y := by
  simp only [commonExprCoefficients_50,commonCoefficients_50,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p2_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_50_interpret
theorem commonExprCoefficients_51_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_51=commonCoefficients_51 X Y := by
  simp only [commonExprCoefficients_51,commonCoefficients_51,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_51_interpret
theorem commonExprCoefficients_52_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_52=commonCoefficients_52 X Y := by
  simp only [commonExprCoefficients_52,commonCoefficients_52,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_52_interpret
theorem commonExprCoefficients_53_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_53=commonCoefficients_53 X Y := by
  simp only [commonExprCoefficients_53,commonCoefficients_53,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p1_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_53_interpret
theorem commonExprCoefficients_54_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_54=commonCoefficients_54 X Y := by
  simp only [commonExprCoefficients_54,commonCoefficients_54,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_54_interpret
end
end CriticalZeroSumAssembly20261003
