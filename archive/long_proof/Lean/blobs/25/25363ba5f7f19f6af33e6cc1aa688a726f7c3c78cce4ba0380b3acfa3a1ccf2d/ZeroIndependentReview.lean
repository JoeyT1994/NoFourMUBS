import CriticalZeroReduction

set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace CriticalZeroIndependentReview20261003
open CriticalScalarReduction20261003
noncomputable section

/-- Audit the literal polynomial and both roots, not just an alias of R. -/
theorem expected_polynomial_endpoint {p w : ℝ} (hp : p ≤ 9) :
    4*(27-3*p)^2*(9-p)-(w-(p-9)*(p-18))^2 = 0 ↔
      w=(9-p)*(Real.sqrt (9-p)+3)^2 ∨
      w=(9-p)*(Real.sqrt (9-p)-3)^2 := by
  simpa only [R, add_zero, mul_zero] using (zero_iff (w := w) hp)

theorem permanent_zero_boundary (w : ℝ) : R 9 0 w = 0 ↔ w = 0 := by
  simpa using (zero_iff (p := 9) (w := w) (by norm_num))

theorem p_zero_both_branches (w : ℝ) : R 0 0 w = 0 ↔ w = 324 ∨ w = 0 := by
  have h : Real.sqrt (9 : ℝ) = 3 := by norm_num
  simpa [h] using (zero_iff (p := 0) (w := w) (by norm_num))

theorem p_five_both_branches (w : ℝ) : R 5 0 w = 0 ↔ w = 100 ∨ w = 4 := by
  have h : Real.sqrt (4 : ℝ) = 2 := by norm_num
  norm_num [h] at *
  simpa using (zero_iff (p := 5) (w := w) (by norm_num))

theorem p_eight_both_branches (w : ℝ) : R 8 0 w = 0 ↔ w = 16 ∨ w = 4 := by
  simpa using (zero_iff (p := 8) (w := w) (by norm_num))

theorem branch_values_nonnegative {p w : ℝ} (hp : p ≤ 9) (hz : R p 0 w = 0) :
    0 ≤ w := by
  rcases (zero_iff hp).mp hz with h | h <;> rw [h]
  all_goals exact mul_nonneg (by linarith) (sq_nonneg _)

/-- This is only a scalar witness. It rules out treating the paired zero
equations themselves as the missing physical whole-strip classification. -/
theorem scalar_zero_does_not_force_exceptional_values :
    R 8 0 4 = 0 ∧ R 8 (-0) 4 = 0 ∧
      (8 : ℝ) ≠ 0 ∧ (8 : ℝ) ≠ 5 ∧
      ¬ ((572220/100000 : ℝ) ≤ 8 ∧ (8 : ℝ) ≤ 572221/100000) := by
  norm_num [R]

end
#print axioms expected_polynomial_endpoint
#print axioms permanent_zero_boundary
#print axioms p_zero_both_branches
#print axioms p_five_both_branches
#print axioms p_eight_both_branches
#print axioms branch_values_nonnegative
#print axioms scalar_zero_does_not_force_exceptional_values
end CriticalZeroIndependentReview20261003
