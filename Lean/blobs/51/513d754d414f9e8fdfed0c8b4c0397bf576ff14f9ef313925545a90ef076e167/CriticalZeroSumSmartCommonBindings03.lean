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
theorem commonSmartCoefficients_33_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_33=commonCoefficients_33 X Y := by
  simp only [commonSmartCoefficients_33,commonCoefficients_33,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_33_interpret
theorem commonSmartCoefficients_34_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_34=commonCoefficients_34 X Y := by
  simp only [commonSmartCoefficients_34,commonCoefficients_34,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_34_interpret
theorem commonSmartCoefficients_35_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_35=commonCoefficients_35 X Y := by
  simp only [commonSmartCoefficients_35,commonCoefficients_35,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p2_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_35_interpret
theorem commonSmartCoefficients_36_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_36=commonCoefficients_36 X Y := by
  simp only [commonSmartCoefficients_36,commonCoefficients_36,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_36_interpret
theorem commonSmartCoefficients_37_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_37=commonCoefficients_37 X Y := by
  simp only [commonSmartCoefficients_37,commonCoefficients_37,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_37_interpret
theorem commonSmartCoefficients_38_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_38=commonCoefficients_38 X Y := by
  simp only [commonSmartCoefficients_38,commonCoefficients_38,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_38_interpret
theorem commonSmartCoefficients_39_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_39=commonCoefficients_39 X Y := by
  simp only [commonSmartCoefficients_39,commonCoefficients_39,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_39_interpret
theorem commonSmartCoefficients_40_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_40=commonCoefficients_40 X Y := by
  simp only [commonSmartCoefficients_40,commonCoefficients_40,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p1_m3_interpret,primitiveExprCoefficients_p1_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_40_interpret
theorem commonSmartCoefficients_41_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_41=commonCoefficients_41 X Y := by
  simp only [commonSmartCoefficients_41,commonCoefficients_41,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p1_m2_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_41_interpret
theorem commonSmartCoefficients_42_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_42=commonCoefficients_42 X Y := by
  simp only [commonSmartCoefficients_42,commonCoefficients_42,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_42_interpret
theorem commonSmartCoefficients_43_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonSmartCoefficients_43=commonCoefficients_43 X Y := by
  simp only [commonSmartCoefficients_43,commonCoefficients_43,
    SmartExprCoefficients.interpret_scale,SmartExprCoefficients.interpret_shift,
    SmartExprCoefficients.interpret_mul,SmartExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonSmartCoefficients_43_interpret
end
end CriticalZeroSumAssembly20261003
