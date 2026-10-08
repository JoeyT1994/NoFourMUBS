import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.NormNum

/-! Algebraic and norm estimates for the local anchored equilateral lemma.
The principal-angle existence and arccos Lipschitz step are not asserted here.
-/

namespace Seed0024.UnitTriple

theorem real_part_bound (u v : ℂ) (ε : ℝ)
    (hu : ‖u‖ = 1) (hv : ‖v‖ = 1)
    (he0 : 0 ≤ ε) (he1 : ε ≤ 1) (hs : ‖1 + u + v‖ ≤ ε) :
    |u.re + 1 / 2| ≤ ε + ε ^ 2 / 2 := by
  have hn : |‖1 + u‖ - 1| ≤ ‖1 + u + v‖ := by
    simpa only [norm_neg, hv, sub_neg_eq_add] using
      (abs_norm_sub_norm_le (1 + u) (-v))
  obtain ⟨hl, hh⟩ := abs_le.mp (hn.trans hs)
  have hlow : 1 - ε ≤ ‖1 + u‖ := by linarith
  have hhigh : ‖1 + u‖ ≤ 1 + ε := by linarith
  have hslo : (1 - ε) ^ 2 ≤ ‖1 + u‖ ^ 2 :=
    (sq_le_sq₀ (by linarith) (norm_nonneg _)).mpr hlow
  have hshi : ‖1 + u‖ ^ 2 ≤ (1 + ε) ^ 2 :=
    (sq_le_sq₀ (norm_nonneg _) (by linarith)).mpr hhigh
  have hunit := Complex.sq_norm_sub_sq_re u
  rw [hu] at hunit
  have hex : ‖1 + u‖ ^ 2 = 2 + 2 * u.re := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.add_re, Complex.one_re, Complex.add_im, Complex.one_im,
      zero_add]
    nlinarith
  apply abs_le.mpr
  constructor <;> nlinarith [sq_nonneg ε]

theorem local_real_part_interval (u v : ℂ)
    (hu : ‖u‖ = 1) (hv : ‖v‖ = 1)
    (hs : ‖1 + u + v‖ ≤ (53 : ℝ) / 20000) :
    -(51 : ℝ) / 100 < u.re ∧ u.re < -(49 : ℝ) / 100 := by
  have h := real_part_bound u v ((53 : ℝ) / 20000) hu hv
    (by norm_num) (by norm_num) hs
  obtain ⟨hl, hh⟩ := abs_le.mp h
  constructor <;> linarith

theorem local_imaginary_magnitude (u v : ℂ)
    (hu : ‖u‖ = 1) (hv : ‖v‖ = 1)
    (hs : ‖1 + u + v‖ ≤ (53 : ℝ) / 20000) :
    (43 : ℝ) / 50 < |u.im| := by
  obtain ⟨hl, hh⟩ := local_real_part_interval u v hu hv hs
  have hunit := Complex.sq_norm_sub_sq_re u
  rw [hu] at hunit
  have hre : u.re ^ 2 < ((51 : ℝ) / 100) ^ 2 := by
    nlinarith [sq_nonneg (u.re + (51 : ℝ) / 100)]
  have habs := abs_nonneg u.im
  have hsqa := sq_abs u.im
  nlinarith

theorem local_opposite_signs (u v : ℂ)
    (hu : ‖u‖ = 1) (hv : ‖v‖ = 1)
    (hs : ‖1 + u + v‖ ≤ (53 : ℝ) / 20000) :
    (0 < u.im ∧ v.im < 0) ∨ (u.im < 0 ∧ 0 < v.im) := by
  have hua := local_imaginary_magnitude u v hu hv hs
  have hswap : ‖1 + v + u‖ ≤ (53 : ℝ) / 20000 := by
    simpa only [add_right_comm (1 : ℂ) u v] using hs
  have hva := local_imaginary_magnitude v u hv hu hswap
  have his : |u.im + v.im| ≤ (53 : ℝ) / 20000 := by
    simpa only [Complex.add_im, Complex.one_im, zero_add] using
      (Complex.abs_im_le_norm (1 + u + v)).trans hs
  rcases lt_or_ge u.im 0 with hul |hug
  · have hvg : 0 < v.im := by
      by_contra hn
      have hvn : v.im ≤ 0 := le_of_not_gt hn
      rw [abs_of_nonpos (le_of_lt hul)] at hua
      rw [abs_of_nonpos hvn] at hva
      rw [abs_of_nonpos (by linarith : u.im + v.im ≤ 0)] at his
      linarith
    exact Or.inr ⟨hul, hvg⟩
  · have hug' : 0 < u.im := by
      rw [abs_of_nonneg hug] at hua
      linarith
    have hvl : v.im < 0 := by
      by_contra hn
      have hvn : 0 ≤ v.im := le_of_not_gt hn
      rw [abs_of_nonneg hug] at hua
      rw [abs_of_nonneg hvn] at hva
      rw [abs_of_nonneg (by linarith : 0 ≤ u.im + v.im)] at his
      linarith
    exact Or.inl ⟨hug', hvl⟩

theorem local_phase_constant :
    (50 : ℝ) / 43 * ((53 : ℝ) / 20000 + ((53 : ℝ) / 20000) ^ 2 / 2)
      < (2 : ℝ) / 625 := by norm_num

theorem unit_triple_polynomial (u v : ℂ)
    (hu : ‖u‖ = 1) (hv : ‖v‖ = 1) :
    u ^ 2 + u + 1 = (u + 1) * (1 + u + v) -
      u * v * star (1 + u + v) := by
  have huc : u * star u = 1 := by simpa [hu] using Complex.mul_conj' u
  have hvc : v * star v = 1 := by simpa [hv] using Complex.mul_conj' v
  simp only [star_add, star_one]
  linear_combination v * huc + u * hvc

theorem unit_triple_polynomial_norm (u v : ℂ)
    (hu : ‖u‖ = 1) (hv : ‖v‖ = 1) :
    ‖u ^ 2 + u + 1‖ ≤ 3 * ‖1 + u + v‖ := by
  rw [unit_triple_polynomial u v hu hv]
  have ht := norm_sub_le ((u + 1) * (1 + u + v)) (u * v * star (1 + u + v))
  have hup : ‖u + 1‖ ≤ 2 := by
    calc
      ‖u + 1‖ ≤ ‖u‖ + ‖(1 : ℂ)‖ := norm_add_le u (1 : ℂ)
      _ = 2 := by rw [hu, norm_one]; norm_num
  have hm := mul_le_mul_of_nonneg_right hup (norm_nonneg (1 + u + v))
  simp only [norm_mul, hu, hv, norm_star, one_mul] at ht
  linarith

#print axioms real_part_bound
#print axioms local_real_part_interval
#print axioms local_imaginary_magnitude
#print axioms local_opposite_signs
#print axioms local_phase_constant
#print axioms unit_triple_polynomial
#print axioms unit_triple_polynomial_norm

end Seed0024.UnitTriple
