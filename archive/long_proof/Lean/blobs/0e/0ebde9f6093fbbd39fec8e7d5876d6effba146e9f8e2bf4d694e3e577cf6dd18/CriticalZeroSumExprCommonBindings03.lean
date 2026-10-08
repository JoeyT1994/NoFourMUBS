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
theorem commonExprCoefficients_33_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_33=commonCoefficients_33 X Y := by
  simp only [commonExprCoefficients_33,commonCoefficients_33,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_33_interpret
theorem commonExprCoefficients_34_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_34=commonCoefficients_34 X Y := by
  simp only [commonExprCoefficients_34,commonCoefficients_34,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_34_interpret
theorem commonExprCoefficients_35_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_35=commonCoefficients_35 X Y := by
  simp only [commonExprCoefficients_35,commonCoefficients_35,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p2_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_35_interpret
theorem commonExprCoefficients_36_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_36=commonCoefficients_36 X Y := by
  simp only [commonExprCoefficients_36,commonCoefficients_36,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p0_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_36_interpret
theorem commonExprCoefficients_37_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_37=commonCoefficients_37 X Y := by
  simp only [commonExprCoefficients_37,commonCoefficients_37,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p4_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_37_interpret
theorem commonExprCoefficients_38_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_38=commonCoefficients_38 X Y := by
  simp only [commonExprCoefficients_38,commonCoefficients_38,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_38_interpret
theorem commonExprCoefficients_39_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_39=commonCoefficients_39 X Y := by
  simp only [commonExprCoefficients_39,commonCoefficients_39,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p3_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_39_interpret
theorem commonExprCoefficients_40_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_40=commonCoefficients_40 X Y := by
  simp only [commonExprCoefficients_40,commonCoefficients_40,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p1_m3_interpret,primitiveExprCoefficients_p1_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_40_interpret
theorem commonExprCoefficients_41_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_41=commonCoefficients_41 X Y := by
  simp only [commonExprCoefficients_41,commonCoefficients_41,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p1_m2_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_41_interpret
theorem commonExprCoefficients_42_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_42=commonCoefficients_42 X Y := by
  simp only [commonExprCoefficients_42,commonCoefficients_42,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m2_p1_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_42_interpret
theorem commonExprCoefficients_43_interpret (X Y : K) :
    ExprCoefficients.interpret X Y commonExprCoefficients_43=commonCoefficients_43 X Y := by
  simp only [commonExprCoefficients_43,commonCoefficients_43,
    ExprCoefficients.interpret_scale,ExprCoefficients.interpret_shift,
    ExprCoefficients.interpret_mul,ExprCoefficients.interpret_pow,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p3_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonExprCoefficients_43_interpret
end
end CriticalZeroSumAssembly20261003
