import CriticalZeroSumEvalBase
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem eval_common_44 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_44 X Y)=
      commonTerm_44 X Y z := by
  simp only [commonCoefficients_44,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_44,primitive_m2_p2,primitive_p0_m3,primitive_p2_p1]
  ring
#print axioms eval_common_44
theorem eval_common_45 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_45 X Y)=
      commonTerm_45 X Y z := by
  simp only [commonCoefficients_45,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_45,primitive_m2_p2,primitive_p0_m2,primitive_p2_p0]
  ring
#print axioms eval_common_45
theorem eval_common_46 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_46 X Y)=
      commonTerm_46 X Y z := by
  simp only [commonCoefficients_46,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_46,primitive_m2_p2,primitive_p0_p2,primitive_p2_m4]
  ring
#print axioms eval_common_46
theorem eval_common_47 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_47 X Y)=
      commonTerm_47 X Y z := by
  simp only [commonCoefficients_47,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_47,primitive_m2_p2,primitive_p2_m2]
  ring
#print axioms eval_common_47
theorem eval_common_48 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_48 X Y)=
      commonTerm_48 X Y z := by
  simp only [commonCoefficients_48,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_48,primitive_m1_m1,primitive_m2_p3,primitive_p3_m2]
  ring
#print axioms eval_common_48
theorem eval_common_49 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_49 X Y)=
      commonTerm_49 X Y z := by
  simp only [commonCoefficients_49,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_49,primitive_m2_p3,primitive_p0_m3,primitive_p2_p0]
  ring
#print axioms eval_common_49
theorem eval_common_50 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_50 X Y)=
      commonTerm_50 X Y z := by
  simp only [commonCoefficients_50,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_50,primitive_m2_p3,primitive_p2_m3]
  ring
#print axioms eval_common_50
theorem eval_common_51 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_51 X Y)=
      commonTerm_51 X Y z := by
  simp only [commonCoefficients_51,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_51,primitive_m1_m2,primitive_m2_p4,primitive_p3_m2]
  ring
#print axioms eval_common_51
theorem eval_common_52 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_52 X Y)=
      commonTerm_52 X Y z := by
  simp only [commonCoefficients_52,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_52,primitive_m2_p4,primitive_p0_m2,primitive_p2_m2]
  ring
#print axioms eval_common_52
theorem eval_common_53 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_53 X Y)=
      commonTerm_53 X Y z := by
  simp only [commonCoefficients_53,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_53,primitive_m2_p4,primitive_p1_m2]
  ring
#print axioms eval_common_53
theorem eval_common_54 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_54 X Y)=
      commonTerm_54 X Y z := by
  simp only [commonCoefficients_54,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_54,primitive_m1_m2,primitive_m1_p3,primitive_p2_m1]
  ring
#print axioms eval_common_54
end
end CriticalZeroSumAssembly20261003
