import Step1.Common

set_option autoImplicit false

namespace Step1.Algebraic

theorem isolation_cos_alpha :
    ∃! x : ℝ, x ∈ Set.Icc ((63 : ℝ) / 256) ((65 : ℝ) / 256) ∧
      ((0 : ℝ) * x ^ 2 + (4 : ℝ) * x + (-1 : ℝ)) = 0 := by
  have h := quadratic_unique_root (0 : ℝ) (4 : ℝ) (-1 : ℝ) ((63 : ℝ) / 256) ((65 : ℝ) / 256) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  exact h

theorem isolation_cos_alpha_lower_value :
    (0 : ℝ) * ((63 : ℝ) / 256) ^ 2 + (4 : ℝ) * ((63 : ℝ) / 256) + (-1 : ℝ) = ((-1 : ℝ) / 64) := by norm_num

theorem isolation_cos_alpha_upper_value :
    (0 : ℝ) * ((65 : ℝ) / 256) ^ 2 + (4 : ℝ) * ((65 : ℝ) / 256) + (-1 : ℝ) = ((1 : ℝ) / 64) := by norm_num

theorem isolation_sqrt_five :
    ∃! x : ℝ, x ∈ Set.Icc ((143 : ℝ) / 64) ((9 : ℝ) / 4) ∧
      ((1 : ℝ) * x ^ 2 + (0 : ℝ) * x + (-5 : ℝ)) = 0 := by
  have h := quadratic_unique_root (1 : ℝ) (0 : ℝ) (-5 : ℝ) ((143 : ℝ) / 64) ((9 : ℝ) / 4) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  exact h

theorem isolation_sqrt_five_lower_value :
    (1 : ℝ) * ((143 : ℝ) / 64) ^ 2 + (0 : ℝ) * ((143 : ℝ) / 64) + (-5 : ℝ) = ((-31 : ℝ) / 4096) := by norm_num

theorem isolation_sqrt_five_upper_value :
    (1 : ℝ) * ((9 : ℝ) / 4) ^ 2 + (0 : ℝ) * ((9 : ℝ) / 4) + (-5 : ℝ) = ((1 : ℝ) / 16) := by norm_num

theorem isolation_sqrt_fifteen :
    ∃! x : ℝ, x ∈ Set.Icc ((991 : ℝ) / 256) ((31 : ℝ) / 8) ∧
      ((1 : ℝ) * x ^ 2 + (0 : ℝ) * x + (-15 : ℝ)) = 0 := by
  have h := quadratic_unique_root (1 : ℝ) (0 : ℝ) (-15 : ℝ) ((991 : ℝ) / 256) ((31 : ℝ) / 8) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  exact h

theorem isolation_sqrt_fifteen_lower_value :
    (1 : ℝ) * ((991 : ℝ) / 256) ^ 2 + (0 : ℝ) * ((991 : ℝ) / 256) + (-15 : ℝ) = ((-959 : ℝ) / 65536) := by norm_num

theorem isolation_sqrt_fifteen_upper_value :
    (1 : ℝ) * ((31 : ℝ) / 8) ^ 2 + (0 : ℝ) * ((31 : ℝ) / 8) + (-15 : ℝ) = ((1 : ℝ) / 64) := by norm_num

theorem isolation_transverse_y :
    ∃! x : ℝ, x ∈ Set.Icc ((-49 : ℝ) / 256) ((-3 : ℝ) / 16) ∧
      ((4 : ℝ) * x ^ 2 + (6 : ℝ) * x + (1 : ℝ)) = 0 := by
  have h := quadratic_unique_root (4 : ℝ) (6 : ℝ) (1 : ℝ) ((-49 : ℝ) / 256) ((-3 : ℝ) / 16) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  exact h

theorem isolation_transverse_y_lower_value :
    (4 : ℝ) * ((-49 : ℝ) / 256) ^ 2 + (6 : ℝ) * ((-49 : ℝ) / 256) + (1 : ℝ) = ((-31 : ℝ) / 16384) := by norm_num

theorem isolation_transverse_y_upper_value :
    (4 : ℝ) * ((-3 : ℝ) / 16) ^ 2 + (6 : ℝ) * ((-3 : ℝ) / 16) + (1 : ℝ) = ((1 : ℝ) / 64) := by norm_num

theorem isolation_extra_positive_value :
    ∃! x : ℝ, x ∈ Set.Icc (5 : ℝ) (6 : ℝ) ∧
      ((1 : ℝ) * x ^ 2 + (-625 : ℝ) * x + (3125 : ℝ)) = 0 := by
  have h := quadratic_unique_root (-1 : ℝ) (625 : ℝ) (-3125 : ℝ) (5 : ℝ) (6 : ℝ) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  obtain ⟨x, hx, hUnique⟩ := h
  refine ⟨x, ⟨hx.1, ?_⟩, ?_⟩
  · nlinarith [hx.2]
  · intro y hy
    apply hUnique y
    exact ⟨hy.1, by nlinarith [hy.2]⟩

theorem isolation_extra_positive_value_lower_value :
    (1 : ℝ) * (5 : ℝ) ^ 2 + (-625 : ℝ) * (5 : ℝ) + (3125 : ℝ) = (25 : ℝ) := by norm_num

theorem isolation_extra_positive_value_upper_value :
    (1 : ℝ) * (6 : ℝ) ^ 2 + (-625 : ℝ) * (6 : ℝ) + (3125 : ℝ) = (-589 : ℝ) := by norm_num

theorem rational_transverse_curvature_sign_by_squaring :
    (2601 : ℝ) < (2645 : ℝ) := by norm_num

theorem rational_transverse_curvature_dyadic_bound :
    (0 : ℝ) < ((25 : ℝ) / 128) := by norm_num

theorem rational_positive_maximum :
    (0 : ℝ) < ((1594323 : ℝ) / 4096) := by norm_num

theorem rational_hessian_SOS_coefficient_1 :
    (0 : ℝ) < ((79 : ℝ) / 4) := by norm_num

theorem rational_hessian_SOS_coefficient_2 :
    (0 : ℝ) < (79 : ℝ) := by norm_num

theorem rational_hessian_SOS_coefficient_3 :
    (0 : ℝ) < ((25 : ℝ) / 4) := by norm_num

end Step1.Algebraic
