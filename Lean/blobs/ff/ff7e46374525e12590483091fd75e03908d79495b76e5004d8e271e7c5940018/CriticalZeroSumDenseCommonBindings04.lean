import CriticalZeroSumDenseCommonData
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
theorem commonDenseCoefficients_44_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_44=commonCoefficients_44 X Y := by
  simp only [commonDenseCoefficients_44,commonCoefficients_44,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p2_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_44_interpret
theorem commonDenseCoefficients_45_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_45=commonCoefficients_45 X Y := by
  simp only [commonDenseCoefficients_45,commonCoefficients_45,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_45_interpret
theorem commonDenseCoefficients_46_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_46=commonCoefficients_46 X Y := by
  simp only [commonDenseCoefficients_46,commonCoefficients_46,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p0_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_46_interpret
theorem commonDenseCoefficients_47_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_47=commonCoefficients_47 X Y := by
  simp only [commonDenseCoefficients_47,commonCoefficients_47,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_47_interpret
theorem commonDenseCoefficients_48_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_48=commonCoefficients_48 X Y := by
  simp only [commonDenseCoefficients_48,commonCoefficients_48,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_48_interpret
theorem commonDenseCoefficients_49_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_49=commonCoefficients_49 X Y := by
  simp only [commonDenseCoefficients_49,commonCoefficients_49,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p2_p0_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_49_interpret
theorem commonDenseCoefficients_50_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_50=commonCoefficients_50 X Y := by
  simp only [commonDenseCoefficients_50,commonCoefficients_50,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p3_interpret,primitiveExprCoefficients_p2_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_50_interpret
theorem commonDenseCoefficients_51_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_51=commonCoefficients_51 X Y := by
  simp only [commonDenseCoefficients_51,commonCoefficients_51,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p3_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_51_interpret
theorem commonDenseCoefficients_52_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_52=commonCoefficients_52 X Y := by
  simp only [commonDenseCoefficients_52,commonCoefficients_52,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p2_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_52_interpret
theorem commonDenseCoefficients_53_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_53=commonCoefficients_53 X Y := by
  simp only [commonDenseCoefficients_53,commonCoefficients_53,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m2_p4_interpret,primitiveExprCoefficients_p1_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_53_interpret
theorem commonDenseCoefficients_54_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_54=commonCoefficients_54 X Y := by
  simp only [commonDenseCoefficients_54,commonCoefficients_54,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_54_interpret
end
end CriticalZeroSumAssembly20261003
