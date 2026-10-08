import CriticalZeroSumEvalBase
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem eval_common_55 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_55 X Y)=
      commonTerm_55 X Y z := by
  simp only [commonCoefficients_55,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_55,primitive_m1_m2,primitive_p1_p2]
  ring
#print axioms eval_common_55
theorem eval_common_56 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_56 X Y)=
      commonTerm_56 X Y z := by
  simp only [commonCoefficients_56,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_56,primitive_m1_m1,primitive_p2_p2]
  ring
#print axioms eval_common_56
theorem eval_common_57 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_57 X Y)=
      commonTerm_57 X Y z := by
  simp only [commonCoefficients_57,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_57,primitive_m1_m1,primitive_m1_p2,primitive_p2_m1]
  ring
#print axioms eval_common_57
theorem eval_common_58 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_58 X Y)=
      commonTerm_58 X Y z := by
  simp only [commonCoefficients_58,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_58,primitive_m1_m1,primitive_p0_p3,primitive_p1_m2]
  ring
#print axioms eval_common_58
theorem eval_common_59 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_59 X Y)=
      commonTerm_59 X Y z := by
  simp only [commonCoefficients_59,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_59,primitive_m1_m1,primitive_p1_p1]
  ring
#print axioms eval_common_59
theorem eval_common_60 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_60 X Y)=
      commonTerm_60 X Y z := by
  simp only [commonCoefficients_60,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_60,primitive_m1_p2,primitive_p2_m4]
  ring
#print axioms eval_common_60
theorem eval_common_61 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_61 X Y)=
      commonTerm_61 X Y z := by
  simp only [commonCoefficients_61,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_61,primitive_m1_p2,primitive_p0_m3,primitive_p1_p1]
  ring
#print axioms eval_common_61
theorem eval_common_62 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_62 X Y)=
      commonTerm_62 X Y z := by
  simp only [commonCoefficients_62,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_62,primitive_m1_p2,primitive_p1_m2]
  ring
#print axioms eval_common_62
theorem eval_common_63 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_63 X Y)=
      commonTerm_63 X Y z := by
  simp only [commonCoefficients_63,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_63,primitive_m1_p3,primitive_p1_m3]
  ring
#print axioms eval_common_63
theorem eval_common_64 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_64 X Y)=
      commonTerm_64 X Y z := by
  simp only [commonCoefficients_64,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_64,primitive_p0_m3,primitive_p0_p3]
  ring
#print axioms eval_common_64
theorem eval_common_65 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_65 X Y)=
      commonTerm_65 X Y z := by
  simp only [commonCoefficients_65,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_65,primitive_p0_m2,primitive_p0_p2]
  ring
#print axioms eval_common_65
end
end CriticalZeroSumAssembly20261003
