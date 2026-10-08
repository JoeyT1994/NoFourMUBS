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
theorem commonSmartCoefficients_44_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_44=commonCoefficients_44 X Y := by
  simp only [commonSmartCoefficients_44,commonCoefficients_44,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_44_interpret
theorem commonSmartCoefficients_45_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_45=commonCoefficients_45 X Y := by
  simp only [commonSmartCoefficients_45,commonCoefficients_45,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_45_interpret
theorem commonSmartCoefficients_46_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_46=commonCoefficients_46 X Y := by
  simp only [commonSmartCoefficients_46,commonCoefficients_46,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_46_interpret
theorem commonSmartCoefficients_47_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_47=commonCoefficients_47 X Y := by
  simp only [commonSmartCoefficients_47,commonCoefficients_47,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_47_interpret
theorem commonSmartCoefficients_48_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_48=commonCoefficients_48 X Y := by
  simp only [commonSmartCoefficients_48,commonCoefficients_48,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_48_interpret
theorem commonSmartCoefficients_49_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_49=commonCoefficients_49 X Y := by
  simp only [commonSmartCoefficients_49,commonCoefficients_49,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_49_interpret
theorem commonSmartCoefficients_50_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_50=commonCoefficients_50 X Y := by
  simp only [commonSmartCoefficients_50,commonCoefficients_50,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p2_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_50_interpret
theorem commonSmartCoefficients_51_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_51=commonCoefficients_51 X Y := by
  simp only [commonSmartCoefficients_51,commonCoefficients_51,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_51_interpret
theorem commonSmartCoefficients_52_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_52=commonCoefficients_52 X Y := by
  simp only [commonSmartCoefficients_52,commonCoefficients_52,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_52_interpret
theorem commonSmartCoefficients_53_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_53=commonCoefficients_53 X Y := by
  simp only [commonSmartCoefficients_53,commonCoefficients_53,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p1_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_53_interpret
theorem commonSmartCoefficients_54_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_54=commonCoefficients_54 X Y := by
  simp only [commonSmartCoefficients_54,commonCoefficients_54,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_54_interpret
end
end CriticalZeroSumAssembly20261003
