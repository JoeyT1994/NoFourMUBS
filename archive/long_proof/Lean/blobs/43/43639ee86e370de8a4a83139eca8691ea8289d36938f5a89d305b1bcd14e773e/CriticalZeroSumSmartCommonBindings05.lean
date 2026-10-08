import CriticalZeroSumSmartCommonData
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
theorem commonSmartCoefficients_55_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_55=commonCoefficients_55 X Y := by
  simp only [commonSmartCoefficients_55,commonCoefficients_55,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_p1_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_55_interpret
theorem commonSmartCoefficients_56_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_56=commonCoefficients_56 X Y := by
  simp only [commonSmartCoefficients_56,commonCoefficients_56,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_56_interpret
theorem commonSmartCoefficients_57_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_57=commonCoefficients_57 X Y := by
  simp only [commonSmartCoefficients_57,commonCoefficients_57,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_57_interpret
theorem commonSmartCoefficients_58_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_58=commonCoefficients_58 X Y := by
  simp only [commonSmartCoefficients_58,commonCoefficients_58,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p1_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_58_interpret
theorem commonSmartCoefficients_59_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_59=commonCoefficients_59 X Y := by
  simp only [commonSmartCoefficients_59,commonCoefficients_59,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_59_interpret
theorem commonSmartCoefficients_60_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_60=commonCoefficients_60 X Y := by
  simp only [commonSmartCoefficients_60,commonCoefficients_60,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_60_interpret
theorem commonSmartCoefficients_61_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_61=commonCoefficients_61 X Y := by
  simp only [commonSmartCoefficients_61,commonCoefficients_61,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_61_interpret
theorem commonSmartCoefficients_62_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_62=commonCoefficients_62 X Y := by
  simp only [commonSmartCoefficients_62,commonCoefficients_62,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p1_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_62_interpret
theorem commonSmartCoefficients_63_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_63=commonCoefficients_63 X Y := by
  simp only [commonSmartCoefficients_63,commonCoefficients_63,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_p1_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_63_interpret
theorem commonSmartCoefficients_64_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_64=commonCoefficients_64 X Y := by
  simp only [commonSmartCoefficients_64,commonCoefficients_64,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p0_p3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_64_interpret
theorem commonSmartCoefficients_65_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_65=commonCoefficients_65 X Y := by
  simp only [commonSmartCoefficients_65,commonCoefficients_65,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p0_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_65_interpret
end
end CriticalZeroSumAssembly20261003
