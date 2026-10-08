import CriticalZeroSumSmartCommonData
import CriticalZeroSumCommonData
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
theorem commonSmartCoefficients_11_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_11=commonCoefficients_11 X Y := by
  simp only [commonSmartCoefficients_11,commonCoefficients_11,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p1_m3_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_11_interpret
theorem commonSmartCoefficients_12_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_12=commonCoefficients_12 X Y := by
  simp only [commonSmartCoefficients_12,commonCoefficients_12,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p1_m2_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_12_interpret
theorem commonSmartCoefficients_13_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_13=commonCoefficients_13 X Y := by
  simp only [commonSmartCoefficients_13,commonCoefficients_13,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_13_interpret
theorem commonSmartCoefficients_14_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_14=commonCoefficients_14 X Y := by
  simp only [commonSmartCoefficients_14,commonCoefficients_14,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_14_interpret
theorem commonSmartCoefficients_15_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_15=commonCoefficients_15 X Y := by
  simp only [commonSmartCoefficients_15,commonCoefficients_15,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p1_p1_interpret,primitiveExprCoefficients_p2_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_15_interpret
theorem commonSmartCoefficients_16_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_16=commonCoefficients_16 X Y := by
  simp only [commonSmartCoefficients_16,commonCoefficients_16,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p1_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_16_interpret
theorem commonSmartCoefficients_17_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_17=commonCoefficients_17 X Y := by
  simp only [commonSmartCoefficients_17,commonCoefficients_17,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p2_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_17_interpret
theorem commonSmartCoefficients_18_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_18=commonCoefficients_18 X Y := by
  simp only [commonSmartCoefficients_18,commonCoefficients_18,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_18_interpret
theorem commonSmartCoefficients_19_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_19=commonCoefficients_19 X Y := by
  simp only [commonSmartCoefficients_19,commonCoefficients_19,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_19_interpret
theorem commonSmartCoefficients_20_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_20=commonCoefficients_20 X Y := by
  simp only [commonSmartCoefficients_20,commonCoefficients_20,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p1_m3_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_20_interpret
theorem commonSmartCoefficients_21_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_21=commonCoefficients_21 X Y := by
  simp only [commonSmartCoefficients_21,commonCoefficients_21,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p1_m2_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_21_interpret
end
end CriticalZeroSumAssembly20261003
