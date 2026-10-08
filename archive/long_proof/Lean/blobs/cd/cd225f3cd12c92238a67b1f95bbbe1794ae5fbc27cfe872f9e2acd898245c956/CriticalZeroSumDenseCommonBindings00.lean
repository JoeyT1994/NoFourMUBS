import CriticalZeroSumDenseCommonData
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
theorem commonDenseCoefficients_00_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_00=commonCoefficients_00 X Y := by
  simp only [commonDenseCoefficients_00,commonCoefficients_00,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_00_interpret
theorem commonDenseCoefficients_01_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_01=commonCoefficients_01 X Y := by
  simp only [commonDenseCoefficients_01,commonCoefficients_01,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_01_interpret
theorem commonDenseCoefficients_02_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_02=commonCoefficients_02 X Y := by
  simp only [commonDenseCoefficients_02,commonCoefficients_02,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m3_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_02_interpret
theorem commonDenseCoefficients_03_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_03=commonCoefficients_03 X Y := by
  simp only [commonDenseCoefficients_03,commonCoefficients_03,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_03_interpret
theorem commonDenseCoefficients_04_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_04=commonCoefficients_04 X Y := by
  simp only [commonDenseCoefficients_04,commonCoefficients_04,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m4_p2_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_04_interpret
theorem commonDenseCoefficients_05_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_05=commonCoefficients_05 X Y := by
  simp only [commonDenseCoefficients_05,commonCoefficients_05,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_05_interpret
theorem commonDenseCoefficients_06_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_06=commonCoefficients_06 X Y := by
  simp only [commonDenseCoefficients_06,commonCoefficients_06,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_06_interpret
theorem commonDenseCoefficients_07_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_07=commonCoefficients_07 X Y := by
  simp only [commonDenseCoefficients_07,commonCoefficients_07,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p1_p1_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_07_interpret
theorem commonDenseCoefficients_08_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_08=commonCoefficients_08 X Y := by
  simp only [commonDenseCoefficients_08,commonCoefficients_08,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p1_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_08_interpret
theorem commonDenseCoefficients_09_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_09=commonCoefficients_09 X Y := by
  simp only [commonDenseCoefficients_09,commonCoefficients_09,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p0_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_09_interpret
theorem commonDenseCoefficients_10_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_10=commonCoefficients_10 X Y := by
  simp only [commonDenseCoefficients_10,commonCoefficients_10,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m3_p1_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_10_interpret
end
end CriticalZeroSumAssembly20261003
