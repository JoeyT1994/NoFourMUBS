import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCommonData
import NoFourMUBs.Reuse.Archive.CriticalZeroSumCommonData
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings00
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings02
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings03
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings04
import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprPrimitiveBindings05
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem commonDenseCoefficients_55_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_55=commonCoefficients_55 X Y := by
  simp only [commonDenseCoefficients_55,commonCoefficients_55,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_m2_interpret,primitiveExprCoefficients_p1_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_55_interpret
theorem commonDenseCoefficients_56_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_56=commonCoefficients_56 X Y := by
  simp only [commonDenseCoefficients_56,commonCoefficients_56,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_p2_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_56_interpret
theorem commonDenseCoefficients_57_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_57=commonCoefficients_57 X Y := by
  simp only [commonDenseCoefficients_57,commonCoefficients_57,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p2_m1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_57_interpret
theorem commonDenseCoefficients_58_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_58=commonCoefficients_58 X Y := by
  simp only [commonDenseCoefficients_58,commonCoefficients_58,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_p0_p3_interpret,primitiveExprCoefficients_p1_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_58_interpret
theorem commonDenseCoefficients_59_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_59=commonCoefficients_59 X Y := by
  simp only [commonDenseCoefficients_59,commonCoefficients_59,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_m1_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_59_interpret
theorem commonDenseCoefficients_60_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_60=commonCoefficients_60 X Y := by
  simp only [commonDenseCoefficients_60,commonCoefficients_60,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p2_m4_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_60_interpret
theorem commonDenseCoefficients_61_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_61=commonCoefficients_61 X Y := by
  simp only [commonDenseCoefficients_61,commonCoefficients_61,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p1_p1_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_61_interpret
theorem commonDenseCoefficients_62_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_62=commonCoefficients_62 X Y := by
  simp only [commonDenseCoefficients_62,commonCoefficients_62,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_p2_interpret,primitiveExprCoefficients_p1_m2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_62_interpret
theorem commonDenseCoefficients_63_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_63=commonCoefficients_63 X Y := by
  simp only [commonDenseCoefficients_63,commonCoefficients_63,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_m1_p3_interpret,primitiveExprCoefficients_p1_m3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_63_interpret
theorem commonDenseCoefficients_64_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_64=commonCoefficients_64 X Y := by
  simp only [commonDenseCoefficients_64,commonCoefficients_64,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_p0_m3_interpret,primitiveExprCoefficients_p0_p3_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_64_interpret
theorem commonDenseCoefficients_65_interpret (X Y : K) :
    DenseCoefficients.interpret X Y commonDenseCoefficients_65=commonCoefficients_65 X Y := by
  simp only [commonDenseCoefficients_65,commonCoefficients_65,
    DenseCoefficients.interpret_scale,DenseCoefficients.interpret_shift,
    DenseCoefficients.interpret_mul,DenseCoefficients.interpret_pow,DenseCoefficients.interpret_fromExpr,HornerReflector.normalize_sound,
    primitiveExprCoefficients_p0_m2_interpret,primitiveExprCoefficients_p0_p2_interpret,ExprCoefficients.interpret,value,
    Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg]
#print axioms commonDenseCoefficients_65_interpret
end
end CriticalZeroSumAssembly20261003
