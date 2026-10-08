import CriticalZeroParam

set_option autoImplicit false
namespace ZeroParamIndependentReview20261003
open CriticalScalarReduction20261003
noncomputable section

theorem literal_full_locus {p w : ℝ} :
    (0 ≤ p ∧ p ≤ 9 ∧ R p 0 w = 0) ↔
      ∃ z : ℝ, -3 ≤ z ∧ z ≤ 3 ∧ p = 9-z^2 ∧ w = z^2*(z+3)^2 := by
  constructor
  · rintro ⟨h0, h9, hR⟩
    exact zero_parameterization h0 h9 hR
  · rintro ⟨z, hzlo, hzhi, rfl, rfl⟩
    have hb : 0 ≤ (z+3)*(3-z) := mul_nonneg (by linarith) (by linarith)
    exact ⟨by nlinarith, by nlinarith [sq_nonneg z], zero_param_R z⟩

theorem both_sheets_and_endpoints :
    R 5 0 4 = 0 ∧ R 5 0 100 = 0 ∧
    R 0 0 0 = 0 ∧ R 0 0 324 = 0 ∧ R 9 0 0 = 0 := by
  constructor
  · have h := zero_param_R (-2)
    norm_num at h
    exact h
  constructor
  · have h := zero_param_R 2
    norm_num at h
    exact h
  constructor
  · have h := zero_param_R (-3)
    norm_num at h
    exact h
  constructor
  · have h := zero_param_R 3
    norm_num at h
    exact h
  · simpa using zero_param_R 0

theorem denominator_zero_iff (z : ℝ) :
    2*(27-3*(9-z^2)) = 0 ↔ z = 0 := by
  constructor
  · intro h
    nlinarith only [h]
  · rintro rfl
    norm_num

theorem literal_safe_quotient {z : ℝ} (hz : z ≠ 0) :
    (z^2*(z+3)^2-((9-z^2)-9)*((9-z^2)-18)) /
      (2*(27-3*(9-z^2))) = z := zero_param_chi_over_g hz

theorem zero_parameter_is_singular :
    27-3*(9-(0:ℝ)^2) = 0 ∧
      (0:ℝ)^2*(0+3)^2-((9-0^2)-9)*((9-0^2)-18) = 0 := by
  norm_num

theorem p_nine_forces_zero_w {w : ℝ} (hR : R 9 0 w = 0) : w = 0 := by
  obtain ⟨z, _, _, hp, hw⟩ := zero_parameterization (by norm_num) (by norm_num) hR
  have hz : z = 0 := by nlinarith only [hp]
  simpa [hz] using hw

end
end ZeroParamIndependentReview20261003
#print axioms ZeroParamIndependentReview20261003.literal_full_locus
#print axioms ZeroParamIndependentReview20261003.both_sheets_and_endpoints
#print axioms ZeroParamIndependentReview20261003.denominator_zero_iff
#print axioms ZeroParamIndependentReview20261003.literal_safe_quotient
#print axioms ZeroParamIndependentReview20261003.zero_parameter_is_singular
#print axioms ZeroParamIndependentReview20261003.p_nine_forces_zero_w
