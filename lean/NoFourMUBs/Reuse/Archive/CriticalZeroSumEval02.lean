import NoFourMUBs.Reuse.Archive.CriticalZeroSumEvalBase
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem eval_common_22 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_22 X Y)=
      commonTerm_22 X Y z := by
  simp only [commonCoefficients_22,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_22,primitive_m3_p3,primitive_p3_m3]
  ring
#print axioms eval_common_22
theorem eval_common_23 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_23 X Y)=
      commonTerm_23 X Y z := by
  simp only [commonCoefficients_23,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_23,primitive_m2_m2,primitive_m2_p4,primitive_p4_m2]
  ring
#print axioms eval_common_23
theorem eval_common_24 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_24 X Y)=
      commonTerm_24 X Y z := by
  simp only [commonCoefficients_24,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_24,primitive_m1_p3,primitive_m2_m2,primitive_p3_m1]
  ring
#print axioms eval_common_24
theorem eval_common_25 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_25 X Y)=
      commonTerm_25 X Y z := by
  simp only [commonCoefficients_25,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_25,primitive_m2_m2,primitive_p0_p2,primitive_p2_p0]
  ring
#print axioms eval_common_25
theorem eval_common_26 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_26 X Y)=
      commonTerm_26 X Y z := by
  simp only [commonCoefficients_26,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_26,primitive_m2_m2,primitive_p1_p1]
  ring
#print axioms eval_common_26
theorem eval_common_27 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_27 X Y)=
      commonTerm_27 X Y z := by
  simp only [commonCoefficients_27,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_27,primitive_m2_m1,primitive_m2_p3,primitive_p4_m2]
  ring
#print axioms eval_common_27
theorem eval_common_28 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_28 X Y)=
      commonTerm_28 X Y z := by
  simp only [commonCoefficients_28,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_28,primitive_m1_p2,primitive_m2_m1,primitive_p3_m1]
  ring
#print axioms eval_common_28
theorem eval_common_29 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_29 X Y)=
      commonTerm_29 X Y z := by
  simp only [commonCoefficients_29,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_29,primitive_m2_m1,primitive_p0_p3,primitive_p2_m2]
  ring
#print axioms eval_common_29
theorem eval_common_30 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_30 X Y)=
      commonTerm_30 X Y z := by
  simp only [commonCoefficients_30,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_30,primitive_m2_m1,primitive_p2_p1]
  ring
#print axioms eval_common_30
theorem eval_common_31 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_31 X Y)=
      commonTerm_31 X Y z := by
  simp only [commonCoefficients_31,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_31,primitive_m2_p0,primitive_m2_p2,primitive_p4_m2]
  ring
#print axioms eval_common_31
theorem eval_common_32 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_32 X Y)=
      commonTerm_32 X Y z := by
  simp only [commonCoefficients_32,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_32,primitive_m1_p3,primitive_m2_p0,primitive_p3_m3]
  ring
#print axioms eval_common_32
end
end CriticalZeroSumAssembly20261003
