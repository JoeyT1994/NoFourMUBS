import CriticalZeroSumEvalBase
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem eval_common_00 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_00 X Y)=
      commonTerm_00 X Y z := by
  simp only [commonCoefficients_00,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_00]
  ring
#print axioms eval_common_00
theorem eval_common_01 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_01 X Y)=
      commonTerm_01 X Y z := by
  simp only [commonCoefficients_01,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_01,primitive_m4_p2,primitive_p2_m4,primitive_p2_p2]
  ring
#print axioms eval_common_01
theorem eval_common_02 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_02 X Y)=
      commonTerm_02 X Y z := by
  simp only [commonCoefficients_02,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_02,primitive_m4_p2,primitive_p2_m3,primitive_p2_p1]
  ring
#print axioms eval_common_02
theorem eval_common_03 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_03 X Y)=
      commonTerm_03 X Y z := by
  simp only [commonCoefficients_03,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_03,primitive_m4_p2,primitive_p2_m2,primitive_p2_p0]
  ring
#print axioms eval_common_03
theorem eval_common_04 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_04 X Y)=
      commonTerm_04 X Y z := by
  simp only [commonCoefficients_04,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_04,primitive_m4_p2,primitive_p2_m1]
  ring
#print axioms eval_common_04
theorem eval_common_05 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_05 X Y)=
      commonTerm_05 X Y z := by
  simp only [commonCoefficients_05,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_05,primitive_m3_p0,primitive_p0_p2,primitive_p3_m2]
  ring
#print axioms eval_common_05
theorem eval_common_06 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_06 X Y)=
      commonTerm_06 X Y z := by
  simp only [commonCoefficients_06,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_06,primitive_m3_p0,primitive_p0_p3,primitive_p3_m3]
  ring
#print axioms eval_common_06
theorem eval_common_07 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_07 X Y)=
      commonTerm_07 X Y z := by
  simp only [commonCoefficients_07,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_07,primitive_m3_p0,primitive_p1_p1,primitive_p2_m1]
  ring
#print axioms eval_common_07
theorem eval_common_08 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_08 X Y)=
      commonTerm_08 X Y z := by
  simp only [commonCoefficients_08,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_08,primitive_m3_p0,primitive_p1_p2,primitive_p2_m2]
  ring
#print axioms eval_common_08
theorem eval_common_09 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_09 X Y)=
      commonTerm_09 X Y z := by
  simp only [commonCoefficients_09,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_09,primitive_m3_p0,primitive_p3_p0]
  ring
#print axioms eval_common_09
theorem eval_common_10 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_10 X Y)=
      commonTerm_10 X Y z := by
  simp only [commonCoefficients_10,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    eval_base_x,eval_base_y,eval_base_z,eval_base_remaining,eval_base_one]
  dsimp only [commonTerm_10,primitive_m3_p1,primitive_p0_p2,primitive_p3_m3]
  ring
#print axioms eval_common_10
end
end CriticalZeroSumAssembly20261003
