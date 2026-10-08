import CriticalZeroSumSmartCommonData
import CriticalZeroSumCommonData
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
theorem commonSmartCoefficients_00_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_00=commonCoefficients_00 X Y := by
  simp only [commonSmartCoefficients_00,commonCoefficients_00,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_00_interpret
theorem commonSmartCoefficients_01_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_01=commonCoefficients_01 X Y := by
  simp only [commonSmartCoefficients_01,commonCoefficients_01,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_01_interpret
theorem commonSmartCoefficients_02_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_02=commonCoefficients_02 X Y := by
  simp only [commonSmartCoefficients_02,commonCoefficients_02,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m3_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_02_interpret
theorem commonSmartCoefficients_03_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_03=commonCoefficients_03 X Y := by
  simp only [commonSmartCoefficients_03,commonCoefficients_03,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_03_interpret
theorem commonSmartCoefficients_04_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_04=commonCoefficients_04 X Y := by
  simp only [commonSmartCoefficients_04,commonCoefficients_04,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_04_interpret
theorem commonSmartCoefficients_05_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_05=commonCoefficients_05 X Y := by
  simp only [commonSmartCoefficients_05,commonCoefficients_05,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_05_interpret
theorem commonSmartCoefficients_06_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_06=commonCoefficients_06 X Y := by
  simp only [commonSmartCoefficients_06,commonCoefficients_06,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_06_interpret
theorem commonSmartCoefficients_07_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_07=commonCoefficients_07 X Y := by
  simp only [commonSmartCoefficients_07,commonCoefficients_07,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p1_p1_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_07_interpret
theorem commonSmartCoefficients_08_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_08=commonCoefficients_08 X Y := by
  simp only [commonSmartCoefficients_08,commonCoefficients_08,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p1_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_08_interpret
theorem commonSmartCoefficients_09_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_09=commonCoefficients_09 X Y := by
  simp only [commonSmartCoefficients_09,commonCoefficients_09,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_09_interpret
theorem commonSmartCoefficients_10_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_10=commonCoefficients_10 X Y := by
  simp only [commonSmartCoefficients_10,commonCoefficients_10,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_10_interpret
end
end CriticalZeroSumAssembly20261003
