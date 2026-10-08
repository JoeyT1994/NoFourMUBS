import CriticalZeroSumSmartCommonData
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
theorem commonSmartCoefficients_22_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_22=commonCoefficients_22 X Y := by
  simp only [commonSmartCoefficients_22,commonCoefficients_22,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p3_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_22_interpret
theorem commonSmartCoefficients_23_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_23=commonCoefficients_23 X Y := by
  simp only [commonSmartCoefficients_23,commonCoefficients_23,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_23_interpret
theorem commonSmartCoefficients_24_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_24=commonCoefficients_24 X Y := by
  simp only [commonSmartCoefficients_24,commonCoefficients_24,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_24_interpret
theorem commonSmartCoefficients_25_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_25=commonCoefficients_25 X Y := by
  simp only [commonSmartCoefficients_25,commonCoefficients_25,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_25_interpret
theorem commonSmartCoefficients_26_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_26=commonCoefficients_26 X Y := by
  simp only [commonSmartCoefficients_26,commonCoefficients_26,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m2_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_26_interpret
theorem commonSmartCoefficients_27_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_27=commonCoefficients_27 X Y := by
  simp only [commonSmartCoefficients_27,commonCoefficients_27,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_27_interpret
theorem commonSmartCoefficients_28_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_28=commonCoefficients_28 X Y := by
  simp only [commonSmartCoefficients_28,commonCoefficients_28,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_p3_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_28_interpret
theorem commonSmartCoefficients_29_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_29=commonCoefficients_29 X Y := by
  simp only [commonSmartCoefficients_29,commonCoefficients_29,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_29_interpret
theorem commonSmartCoefficients_30_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_30=commonCoefficients_30 X Y := by
  simp only [commonSmartCoefficients_30,commonCoefficients_30,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_m1_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_30_interpret
theorem commonSmartCoefficients_31_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_31=commonCoefficients_31 X Y := by
  simp only [commonSmartCoefficients_31,commonCoefficients_31,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_31_interpret
theorem commonSmartCoefficients_32_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_32=commonCoefficients_32 X Y := by
  simp only [commonSmartCoefficients_32,commonCoefficients_32,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_32_interpret
end
end CriticalZeroSumAssembly20261003
