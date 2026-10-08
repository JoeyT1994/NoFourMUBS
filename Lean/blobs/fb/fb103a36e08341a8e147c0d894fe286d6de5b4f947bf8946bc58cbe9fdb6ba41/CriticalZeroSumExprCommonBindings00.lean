import CriticalZeroSumExprCommonData
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
theorem commonExprCoefficients_00_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_00=commonCoefficients_00 X Y := by
  simp only [commonExprCoefficients_00,commonCoefficients_00,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_00_interpret
theorem commonExprCoefficients_01_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_01=commonCoefficients_01 X Y := by
  simp only [commonExprCoefficients_01,commonCoefficients_01,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_01_interpret
theorem commonExprCoefficients_02_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_02=commonCoefficients_02 X Y := by
  simp only [commonExprCoefficients_02,commonCoefficients_02,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m3_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_02_interpret
theorem commonExprCoefficients_03_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_03=commonCoefficients_03 X Y := by
  simp only [commonExprCoefficients_03,commonCoefficients_03,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_03_interpret
theorem commonExprCoefficients_04_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_04=commonCoefficients_04 X Y := by
  simp only [commonExprCoefficients_04,commonCoefficients_04,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_04_interpret
theorem commonExprCoefficients_05_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_05=commonCoefficients_05 X Y := by
  simp only [commonExprCoefficients_05,commonCoefficients_05,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_05_interpret
theorem commonExprCoefficients_06_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_06=commonCoefficients_06 X Y := by
  simp only [commonExprCoefficients_06,commonCoefficients_06,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_06_interpret
theorem commonExprCoefficients_07_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_07=commonCoefficients_07 X Y := by
  simp only [commonExprCoefficients_07,commonCoefficients_07,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p1_p1_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_07_interpret
theorem commonExprCoefficients_08_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_08=commonCoefficients_08 X Y := by
  simp only [commonExprCoefficients_08,commonCoefficients_08,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p1_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_08_interpret
theorem commonExprCoefficients_09_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_09=commonCoefficients_09 X Y := by
  simp only [commonExprCoefficients_09,commonCoefficients_09,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_09_interpret
theorem commonExprCoefficients_10_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_10=commonCoefficients_10 X Y := by
  simp only [commonExprCoefficients_10,commonCoefficients_10,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_10_interpret
end
end CriticalZeroSumAssembly20261003
