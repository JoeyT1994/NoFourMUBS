import CriticalPositiveParam

set_option autoImplicit false
namespace PositiveParamIndependentReview20261003
open CriticalRationalParam20261003 CriticalScalarReduction20261003
noncomputable section

theorem literal_positive_endpoint {a b c : ℝ}
    (ha : 0 ≤ a) (hphys : a + |b| ≤ 9) (hb : b ≠ 0)
    (hplus : R a b c = 0) (hminus : R a (-b) c = 0) :
    ∃ k : ℝ, 0 < k ∧ a = p k ∧ |b| = j k ∧ c = w k :=
  positive_magnitude_parameterization ha hphys hb hplus hminus

theorem positive_eta_plus_nonzero {k : ℝ} (hk : 0 < k) : q k + j k ≠ 0 := by
  intro h
  have heq := (eta_plus_zero_iff k).mp h
  linarith

theorem positive_permanent_iff {k : ℝ} (hk : 0 < k) :
    (q k - j k = 0 ∨ q k + j k = 0) ↔ k = 1 := by
  rw [eta_minus_zero_iff, eta_plus_zero_iff]
  constructor
  · rintro (h | h)
    · exact h
    · linarith
  · exact Or.inl

theorem signs_retain_both_permanent_values :
    p 1 = 7 ∧ j 1 = 2 ∧ w 1 = 6 ∧
    p (-1) = 7 ∧ j (-1) = -2 ∧ w (-1) = 6 := permanent_zero_scalar_values

theorem cannot_erase_nonzero_hypothesis :
    p 0 = 5 ∧ j 0 = 0 ∧ w 0 = 4 ∧ ¬ (0 < (0 : ℝ)) := by
  norm_num [p, q, j, w]

end
end PositiveParamIndependentReview20261003
#print axioms PositiveParamIndependentReview20261003.literal_positive_endpoint
#print axioms PositiveParamIndependentReview20261003.positive_eta_plus_nonzero
#print axioms PositiveParamIndependentReview20261003.positive_permanent_iff
#print axioms PositiveParamIndependentReview20261003.signs_retain_both_permanent_values
#print axioms PositiveParamIndependentReview20261003.cannot_erase_nonzero_hypothesis
