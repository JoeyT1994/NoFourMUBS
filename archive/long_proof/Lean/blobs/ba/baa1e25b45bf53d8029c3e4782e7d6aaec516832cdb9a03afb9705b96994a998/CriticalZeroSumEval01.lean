import CriticalZeroSumEvalBase
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem eval_common_11 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_11 X Y)=
      commonTerm_11 X Y z := by
  simp only [commonCoefficients_11,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_11,primitive_m3_p1,primitive_p1_m3,primitive_p2_p2]
  ring
#print axioms eval_common_11
theorem eval_common_12 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_12 X Y)=
      commonTerm_12 X Y z := by
  simp only [commonCoefficients_12,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_12,primitive_m3_p1,primitive_p1_m2,primitive_p2_p1]
  ring
#print axioms eval_common_12
theorem eval_common_13 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_13 X Y)=
      commonTerm_13 X Y z := by
  simp only [commonCoefficients_13,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_13,primitive_m3_p1,primitive_p3_m1]
  ring
#print axioms eval_common_13
theorem eval_common_14 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_14 X Y)=
      commonTerm_14 X Y z := by
  simp only [commonCoefficients_14,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_14,primitive_m3_p2,primitive_p0_m2,primitive_p3_p0]
  ring
#print axioms eval_common_14
theorem eval_common_15 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_15 X Y)=
      commonTerm_15 X Y z := by
  simp only [commonCoefficients_15,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_15,primitive_m3_p2,primitive_p1_p1,primitive_p2_m3]
  ring
#print axioms eval_common_15
theorem eval_common_16 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_16 X Y)=
      commonTerm_16 X Y z := by
  simp only [commonCoefficients_16,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_16,primitive_m3_p2,primitive_p1_p2,primitive_p2_m4]
  ring
#print axioms eval_common_16
theorem eval_common_17 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_17 X Y)=
      commonTerm_17 X Y z := by
  simp only [commonCoefficients_17,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_17,primitive_m3_p2,primitive_p3_m2]
  ring
#print axioms eval_common_17
theorem eval_common_18 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_18 X Y)=
      commonTerm_18 X Y z := by
  simp only [commonCoefficients_18,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_18,primitive_m3_p3,primitive_p0_m3,primitive_p3_p0]
  ring
#print axioms eval_common_18
theorem eval_common_19 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_19 X Y)=
      commonTerm_19 X Y z := by
  simp only [commonCoefficients_19,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_19,primitive_m3_p3,primitive_p0_m2,primitive_p3_m1]
  ring
#print axioms eval_common_19
theorem eval_common_20 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_20 X Y)=
      commonTerm_20 X Y z := by
  simp only [commonCoefficients_20,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_20,primitive_m3_p3,primitive_p1_m3,primitive_p2_p0]
  ring
#print axioms eval_common_20
theorem eval_common_21 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_21 X Y)=
      commonTerm_21 X Y z := by
  simp only [commonCoefficients_21,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_21,primitive_m3_p3,primitive_p1_m2,primitive_p2_m1]
  ring
#print axioms eval_common_21
end
end CriticalZeroSumAssembly20261003
