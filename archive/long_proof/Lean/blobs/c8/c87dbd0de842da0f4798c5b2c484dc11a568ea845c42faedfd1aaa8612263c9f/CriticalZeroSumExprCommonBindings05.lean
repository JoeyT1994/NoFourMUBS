import CriticalZeroSumExprCommonData
import CriticalZeroSumCommonData
import CriticalZeroSumExprPrimitiveBindings00
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
theorem commonExprCoefficients_55_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_55=commonCoefficients_55 X Y := by
  simp only [commonExprCoefficients_55,commonCoefficients_55,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_p1_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_55_interpret
theorem commonExprCoefficients_56_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_56=commonCoefficients_56 X Y := by
  simp only [commonExprCoefficients_56,commonCoefficients_56,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_56_interpret
theorem commonExprCoefficients_57_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_57=commonCoefficients_57 X Y := by
  simp only [commonExprCoefficients_57,commonCoefficients_57,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_57_interpret
theorem commonExprCoefficients_58_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_58=commonCoefficients_58 X Y := by
  simp only [commonExprCoefficients_58,commonCoefficients_58,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p1_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_58_interpret
theorem commonExprCoefficients_59_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_59=commonCoefficients_59 X Y := by
  simp only [commonExprCoefficients_59,commonCoefficients_59,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_59_interpret
theorem commonExprCoefficients_60_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_60=commonCoefficients_60 X Y := by
  simp only [commonExprCoefficients_60,commonCoefficients_60,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_60_interpret
theorem commonExprCoefficients_61_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_61=commonCoefficients_61 X Y := by
  simp only [commonExprCoefficients_61,commonCoefficients_61,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_61_interpret
theorem commonExprCoefficients_62_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_62=commonCoefficients_62 X Y := by
  simp only [commonExprCoefficients_62,commonCoefficients_62,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p1_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_62_interpret
theorem commonExprCoefficients_63_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_63=commonCoefficients_63 X Y := by
  simp only [commonExprCoefficients_63,commonCoefficients_63,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_p1_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_63_interpret
theorem commonExprCoefficients_64_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_64=commonCoefficients_64 X Y := by
  simp only [commonExprCoefficients_64,commonCoefficients_64,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p0_p3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_64_interpret
theorem commonExprCoefficients_65_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_65=commonCoefficients_65 X Y := by
  simp only [commonExprCoefficients_65,commonCoefficients_65,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p0_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_65_interpret
end
end CriticalZeroSumAssembly20261003
