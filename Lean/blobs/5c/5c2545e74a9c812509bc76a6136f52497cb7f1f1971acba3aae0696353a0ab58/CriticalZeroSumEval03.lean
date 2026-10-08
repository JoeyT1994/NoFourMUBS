import CriticalZeroSumEvalBase
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 100000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
theorem eval_common_33 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_33 X Y)=
      commonTerm_33 X Y z := by
  simp only [commonCoefficients_33,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_33,primitive_m2_p0,primitive_p0_m2,primitive_p2_p2]
  ring
#print axioms eval_common_33
theorem eval_common_34 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_34 X Y)=
      commonTerm_34 X Y z := by
  simp only [commonCoefficients_34,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_34,primitive_m2_p0,primitive_p0_p2,primitive_p2_m2]
  ring
#print axioms eval_common_34
theorem eval_common_35 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_35 X Y)=
      commonTerm_35 X Y z := by
  simp only [commonCoefficients_35,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_35,primitive_m2_p0,primitive_p0_p3,primitive_p2_m3]
  ring
#print axioms eval_common_35
theorem eval_common_36 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_36 X Y)=
      commonTerm_36 X Y z := by
  simp only [commonCoefficients_36,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_36,primitive_m2_p0,primitive_p2_p0]
  ring
#print axioms eval_common_36
theorem eval_common_37 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_37 X Y)=
      commonTerm_37 X Y z := by
  simp only [commonCoefficients_37,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_37,primitive_m2_p1,primitive_p4_m2]
  ring
#print axioms eval_common_37
theorem eval_common_38 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_38 X Y)=
      commonTerm_38 X Y z := by
  simp only [commonCoefficients_38,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_38,primitive_m1_m1,primitive_m2_p1,primitive_p3_p0]
  ring
#print axioms eval_common_38
theorem eval_common_39 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_39 X Y)=
      commonTerm_39 X Y z := by
  simp only [commonCoefficients_39,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_39,primitive_m1_p2,primitive_m2_p1,primitive_p3_m3]
  ring
#print axioms eval_common_39
theorem eval_common_40 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_40 X Y)=
      commonTerm_40 X Y z := by
  simp only [commonCoefficients_40,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_40,primitive_m2_p1,primitive_p1_m3,primitive_p1_p2]
  ring
#print axioms eval_common_40
theorem eval_common_41 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_41 X Y)=
      commonTerm_41 X Y z := by
  simp only [commonCoefficients_41,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_41,primitive_m2_p1,primitive_p1_m2,primitive_p1_p1]
  ring
#print axioms eval_common_41
theorem eval_common_42 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_42 X Y)=
      commonTerm_42 X Y z := by
  simp only [commonCoefficients_42,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_42,primitive_m2_p1,primitive_p2_m1]
  ring
#print axioms eval_common_42
theorem eval_common_43 (X Y z : K) :
    CriticalZeroSplitReduction20261003.Coefficients.eval z (commonCoefficients_43 X Y)=
      commonTerm_43 X Y z := by
  simp only [commonCoefficients_43,
    CriticalZeroSplitReduction20261003.Coefficients.eval_scale,
    CriticalZeroSplitReduction20261003.Coefficients.eval_shift,
    Coefficients.eval_mul,Coefficients.eval_pow,
    (eval_base_x X Y z),(eval_base_y X Y z),(eval_base_z X Y z),(eval_base_remaining X Y z),(eval_base_one X Y z)]
  dsimp only [commonTerm_43,primitive_m1_m2,primitive_m2_p2,primitive_p3_p0]
  ring
#print axioms eval_common_43
end
end CriticalZeroSumAssembly20261003
