import Hadamard6.H2CanonicalForm

/-! The elementary row step in the written p=7 exclusion.  The four-phase
pairing theorem is reused; the crossed alignments are solved without division. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped BigOperators
namespace NoFourMUBs.Step2.Critical.P7

theorem unit_triple_contains_sum (x : Fin 3 → ℂ) (s : ℂ)
    (hx : ∀ j, Complex.normSq (x j) = 1) (hs : Complex.normSq s = 1)
    (hsum : ∑ j, x j = s) : ∃ j, x j = s := by
  have hn : Complex.normSq (-s) = 1 := by simpa using hs
  have hz : -s + x 0 + x 1 + x 2 = 0 := by
    rw [Fin.sum_univ_three] at hsum
    linear_combination hsum
  rcases Hadamard6.four_unit_sum_zero_pairs hn (hx 0) (hx 1) (hx 2) hz with
    h | h | h
  · exact ⟨0, by simpa using h.1⟩
  · exact ⟨1, by simpa using h.1⟩
  · exact ⟨2, by simpa using h.1⟩

theorem positive_crossed_alignment (u v : ℂ)
    (hu : Complex.normSq u = 1) (hv : Complex.normSq v = 1)
    (hc : v + star u + v * star u = 1 + 2 * Complex.I) :
    u = 1 ∨ v = 1 := by
  have hunit : u * star u = 1 := by
    simpa [mul_comm] using Hadamard6.star_mul_self_of_normSq_one hu
  have he : v * (u + 1) = (1 + 2 * Complex.I) * u - 1 := by
    linear_combination u * hc - (1 + v) * hunit
  have hn := congrArg Complex.normSq he
  rw [Complex.normSq_mul, hv, one_mul] at hn
  simp [Complex.normSq_apply, Complex.mul_re, Complex.mul_im] at hu hn
  have hab : u.re - u.im = 1 := by nlinarith only [hu, hn]
  have hf : u.re * (u.re - 1) = 0 := by nlinarith only [hu, hab]
  rcases mul_eq_zero.mp hf with hr | hr
  · have hi : u.im = -1 := by linarith only [hab, hr]
    have hval : u = -Complex.I := by apply Complex.ext <;> simp [hr, hi]
    rw [hval] at he
    have her := congrArg Complex.re he
    have hei := congrArg Complex.im he
    simp [Complex.mul_re, Complex.mul_im] at her hei
    right
    apply Complex.ext <;> simp only [Complex.one_re, Complex.one_im] <;> linarith
  · left
    have hre : u.re = 1 := by linarith only [hr]
    have him : u.im = 0 := by linarith only [hab, hre]
    apply Complex.ext <;> simp [hre, him]

theorem negative_crossed_alignment (u v : ℂ)
    (hu : Complex.normSq u = 1) (hv : Complex.normSq v = 1)
    (hc : -v - star u + v * star u = -1 - 2 * Complex.I) :
    u = -Complex.I ∧ v = Complex.I := by
  have hunit : u * star u = 1 := by
    simpa [mul_comm] using Hadamard6.star_mul_self_of_normSq_one hu
  have he : v * (1 - u) = (-1 - 2 * Complex.I) * u + 1 := by
    linear_combination u * hc + (1 - v) * hunit
  have hn := congrArg Complex.normSq he
  rw [Complex.normSq_mul, hv, one_mul] at hn
  simp [Complex.normSq_apply, Complex.mul_re, Complex.mul_im] at hu hn
  have hi : u.im = -1 := by nlinarith only [hu, hn]
  have hr : u.re = 0 := by nlinarith only [hu, hi, sq_nonneg u.re]
  have hval : u = -Complex.I := by apply Complex.ext <;> simp [hr, hi]
  refine ⟨hval, ?_⟩
  rw [hval] at he
  have her := congrArg Complex.re he
  have hei := congrArg Complex.im he
  simp [Complex.mul_re, Complex.mul_im] at her hei
  apply Complex.ext <;> simp only [Complex.I_re, Complex.I_im] <;> linarith

theorem negative_aligned_impossible (u v : ℂ)
    (hu : Complex.normSq u = 1) (hv : Complex.normSq v = 1)
    (hc : 1 + 2 * v * star u = -1 - 2 * Complex.I) : False := by
  have he : v * star u = -1 - Complex.I := by linear_combination hc / 2
  have hn := congrArg Complex.normSq he
  simp [Complex.normSq_mul, Complex.normSq_apply, Complex.star_def,
    Complex.mul_re, Complex.mul_im] at hu hv hn
  nlinarith [hu, hv]

end NoFourMUBs.Step2.Critical.P7
