import NoFourMUBs.Reuse.Archive.CriticalModulusMatrixDomain

/-! A zero existing numerator gives a scalar boundary without choosing row
phases. The modulus discriminant and its factorization are reused. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.Poles
open CriticalPhysical20261003 CriticalModulusDomain20261003

theorem numerator0_im (s t r : ℂ) :
    (FourierGramNumerators.numerator s t r 0 * star s * star t).im =
      (Complex.normSq s - Complex.normSq t) * (r * s * star t).im := by
  simp [FourierGramNumerators.numerator, Complex.normSq_apply,
    Complex.mul_re, Complex.mul_im, pow_two]
  ring

/-- A vanishing numerator forces repeated squared moduli or a real cubic
correlation product. This includes zero correlations. -/
theorem zero_numerator_degeneracy (s t r : ℂ) (i : Fin 3)
    (hn : FourierGramNumerators.numerator s t r i = 0) :
    (Complex.normSq s - Complex.normSq t) *
      (Complex.normSq s - Complex.normSq r) *
      (Complex.normSq t - Complex.normSq r) * (r * s * star t).im = 0 := by
  have hzero (a b c : ℂ) (h : FourierGramNumerators.numerator a b c 0 = 0) :
      (Complex.normSq a - Complex.normSq b) * (c * a * star b).im = 0 := by
    rw [← numerator0_im, h]
    simp
  fin_cases i
  · have h := hzero s t r hn
    linear_combination (Complex.normSq s - Complex.normSq r) *
      (Complex.normSq t - Complex.normSq r) * h
  · have hn' : FourierGramNumerators.numerator (star s) r t 0 = 0 := by
      calc
        _ = FourierGramNumerators.numerator s t r 1 := by
          simp [FourierGramNumerators.numerator]
          ring
        _ = 0 := hn
    have h := hzero (star s) r t hn'
    have he : t * star s * star r = star (r * s * star t) := by
      simp only [star_mul, star_star]
      ring
    rw [he] at h
    simp only [Complex.star_def, Complex.normSq_conj, Complex.conj_im] at h ⊢
    linear_combination -(Complex.normSq s - Complex.normSq t) *
      (Complex.normSq t - Complex.normSq r) * h
  · have hn' : FourierGramNumerators.numerator (star t) (star r) s 0 = 0 := by
      calc
        _ = FourierGramNumerators.numerator s t r 2 := by
          simp [FourierGramNumerators.numerator]
          ring
        _ = 0 := hn
    have h := hzero (star t) (star r) s hn'
    have he : s * star t * star (star r) = r * s * star t := by
      rw [star_star]
      ring
    rw [he] at h
    simp only [Complex.star_def, Complex.normSq_conj] at h ⊢
    linear_combination (Complex.normSq s - Complex.normSq t) *
      (Complex.normSq s - Complex.normSq r) * h

/-- Consume the existing discriminant and trace factorizations. No pole is
discarded and no positive-parameter assumption is needed. -/
theorem modulus_boundary_of_zero_numerator (s t r : ℂ) (k : ℝ) (i : Fin 3)
    (hp : momentP s t r = p k)
    (hj : momentJ s t r = 8 * k / (h k) ^ 2)
    (hw : momentW s t r = w k)
    (hn : FourierGramNumerators.numerator s t r i = 0) :
    let K := Complex.normSq s * Complex.normSq t * Complex.normSq r
    K = minimum k ∨ K = root0 k ∨ K = rootPlus k ∨ K = rootMinus k := by
  let K := Complex.normSq s * Complex.normSq t * Complex.normSq r
  change K = minimum k ∨ K = root0 k ∨ K = rootPlus k ∨ K = rootMinus k
  rcases mul_eq_zero.mp (zero_numerator_degeneracy s t r i hn) with hd | hi
  · have he := discriminant_of_three_roots
      (Complex.normSq s) (Complex.normSq t) (Complex.normSq r)
    change discriminant (momentP s t r) (momentW s t r) K = _ at he
    rw [hp, hw, discriminant_factorization] at he
    have hz : (Complex.normSq s - Complex.normSq t) ^ 2 *
        (Complex.normSq s - Complex.normSq r) ^ 2 *
        (Complex.normSq t - Complex.normSq r) ^ 2 = 0 := by
      calc
        _ = ((Complex.normSq s - Complex.normSq t) *
          (Complex.normSq s - Complex.normSq r) *
          (Complex.normSq t - Complex.normSq r)) ^ 2 := by ring
        _ = 0 := by rw [hd]; norm_num
    rw [hz] at he
    have hf : (K - root0 k) * (K - rootPlus k) * (K - rootMinus k) = 0 := by
      linarith only [he]
    rcases mul_eq_zero.mp hf with hleft | hlast
    · rcases mul_eq_zero.mp hleft with hfirst | hmiddle
      · exact Or.inr (Or.inl (sub_eq_zero.mp hfirst))
      · exact Or.inr (Or.inr (Or.inl (sub_eq_zero.mp hmiddle)))
    · exact Or.inr (Or.inr (Or.inr (sub_eq_zero.mp hlast)))
  · have hnK : Complex.normSq (r * s * star t) = K := by
      simp only [K, map_mul, Complex.star_def, Complex.normSq_conj]
      ring
    rw [Complex.normSq_apply, hi] at hnK
    have he : (momentJ s t r) ^ 2 = 4 * K := by
      dsimp only [momentJ]
      nlinarith only [hnK]
    rw [hj, trace_square] at he
    exact Or.inl (by linarith only [he])

end NoFourMUBs.Step2.Critical.Poles
