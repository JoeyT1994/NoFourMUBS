import NoFourMUBs.Step2.CriticalZero.EquicorrelationPhased

/-! Choose the two row phases by constant-scaled conjugation. The existing
row swap chooses orientation; the existing complement handles both J signs. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped BigOperators ComplexConjugate
namespace NoFourMUBs.Step2.Critical.Equicorrelation
open CriticalPhysical20261003 CriticalRowSum20261003 CriticalCorrelationChart20261003

def orientedProduct : ℂ := ⟨27 / 25, -54 / 25⟩

theorem gram_phases (s t r : ℂ)
    (hs : Complex.normSq s = 9 / 5) (ht : Complex.normSq t = 9 / 5)
    (hz : r * s * star t = orientedProduct) :
    ∃ u v : ℂ, Complex.normSq u = 1 ∧ Complex.normSq v = 1 ∧
      u * s = 2 + alpha ∧ v * t = 2 + conj alpha ∧
      v * star u * r = 1 + 2 * conj alpha := by
  let u : ℂ := (5 / 9) * (2 + alpha) * star s
  let v : ℂ := (5 / 9) * (2 + conj alpha) * star t
  obtain ⟨hS, hT, _⟩ := oriented_gram_constants
  have hss : star s * s = (9 / 5 : ℂ) := by
    simpa only [Complex.star_def, ← Complex.normSq_eq_conj_mul_self, hs,
      Complex.ofReal_div, Complex.ofReal_ofNat]
  have htt : star t * t = (9 / 5 : ℂ) := by
    simpa only [Complex.star_def, ← Complex.normSq_eq_conj_mul_self, ht,
      Complex.ofReal_div, Complex.ofReal_ofNat]
  refine ⟨u, v, ?_, ?_, ?_, ?_, ?_⟩
  · norm_num [u, map_mul, Complex.star_def, hS, hs, Complex.normSq_div]
  · norm_num [v, map_mul, Complex.star_def, hT, ht, Complex.normSq_div]
  · dsimp only [u]
    linear_combination (5 / 9 : ℂ) * (2 + alpha) * hss
  · dsimp only [v]
    linear_combination (5 / 9 : ℂ) * (2 + conj alpha) * htt
  · calc
      v * star u * r = (25 / 81 : ℂ) * (2 + conj alpha) ^ 2 *
          (r * s * star t) := by
        simp only [u, v, star_mul, star_star, star_add, star_div₀, star_ofNat,
          Complex.star_def, starRingEnd_self_apply]
        ring
      _ = 1 + 2 * conj alpha := by
        rw [hz]
        norm_num [orientedProduct, alpha, Complex.ext_iff, Complex.mul_re,
          Complex.mul_im, pow_two, map_ofNat]

theorem oriented_selected_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 3 → Fin 6) (hc : Function.Injective c)
    (hs : Complex.normSq (sideS (H.submatrix front c)) = 9 / 5)
    (ht : Complex.normSq (sideT (H.submatrix front c)) = 9 / 5)
    (hz : sideR (H.submatrix front c) * sideS (H.submatrix front c) *
      star (sideT (H.submatrix front c)) = orientedProduct) : False := by
  obtain ⟨u, v, hu, hv, hS, hT, hR⟩ := gram_phases _ _ _ hs ht hz
  apply phased_selected_impossible hH c hc u v hu hv
  · rw [← Finset.mul_sum]
    simpa [sideS, FourierPhysicalSide.s, Matrix.submatrix_apply, front,
      Fin.sum_univ_three] using hS
  · rw [← Finset.mul_sum]
    simpa [sideT, FourierPhysicalSide.t, Matrix.submatrix_apply, front,
      Fin.sum_univ_three] using hT
  · calc
      _ = v * star u * ∑ j : Fin 3, H 2 (c j) * star (H 1 (c j)) := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro j _
        simp only [star_mul]
        ring
      _ = 1 + 2 * conj alpha := by
        simpa [sideR, FourierPhysicalSide.r, Matrix.submatrix_apply, front,
          Fin.sum_univ_three, Complex.star_def] using hR

theorem selected_positive_gram_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 3 → Fin 6) (hc : Function.Injective c)
    (hs : Complex.normSq (sideS (H.submatrix front c)) = 9 / 5)
    (ht : Complex.normSq (sideT (H.submatrix front c)) = 9 / 5)
    (hr : Complex.normSq (sideR (H.submatrix front c)) = 9 / 5)
    (hj : sideJ (H.submatrix front c) = 54 / 25) : False := by
  let z := sideR (H.submatrix front c) * sideS (H.submatrix front c) *
    star (sideT (H.submatrix front c))
  have hre : z.re = 27 / 25 := by
    change 2 * z.re = 54 / 25 at hj
    linarith only [hj]
  have hn : Complex.normSq z = 729 / 125 := by
    norm_num [z, map_mul, Complex.star_def, hs, ht, hr]
  have hi : z.im = -54 / 25 ∨ z.im = 54 / 25 := by
    rw [Complex.normSq_apply, hre] at hn
    have hfactor : (z.im + 54 / 25) * (z.im - 54 / 25) = 0 := by
      nlinarith only [hn]
    rcases mul_eq_zero.mp hfactor with h | h
    · left; linarith only [h]
    · right; linarith only [h]
  rcases hi with hi | hi
  · apply oriented_selected_impossible hH c hc hs ht
    exact Complex.ext hre hi
  · obtain ⟨hS, hT, hR⟩ := swap01_correlations hH.1 c
    apply oriented_selected_impossible (allCritical_candidate hH (Equiv.swap 0 1)
      (Equiv.refl _)) c hc
    · rw [hS]; simpa [Complex.star_def] using hs
    · rwa [hT]
    · rw [hS, hT, hR]
      have he : sideT (H.submatrix front c) * star (sideS (H.submatrix front c)) *
          star (sideR (H.submatrix front c)) = star z := by
        simp only [z, star_mul, star_star]
        ring
      rw [he]
      apply Complex.ext
      · exact hre
      · change -z.im = -54 / 25
        linarith only [hi]

/-- Both signs and all twenty strip corners. The three literal squared
correlation moduli are the hypotheses; no coordinate normal form is assumed. -/
theorem strip_gram_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 20)
    (hs : Complex.normSq (sideS (stripCorner H c)) = 9 / 5)
    (ht : Complex.normSq (sideT (stripCorner H c)) = 9 / 5)
    (hr : Complex.normSq (sideR (stripCorner H c)) = 9 / 5)
    (hj : |sideJ (stripCorner H c)| = 54 / 25) : False := by
  rcases (abs_eq (by norm_num : (0 : ℝ) ≤ 54 / 25)).mp hj with hj | hj
  · exact selected_positive_gram_impossible hH (triples c)
      (strip_triples_injective c) hs ht hr hj
  · obtain ⟨hS, hT, hR⟩ := strip_complementary_moments hH.1 c
    apply selected_positive_gram_impossible hH (triples (Fin.rev c))
      (strip_triples_injective (Fin.rev c))
    · change Complex.normSq (sideS (stripCorner H (Fin.rev c))) = 9 / 5
      simpa only [hS, Complex.normSq_neg] using hs
    · change Complex.normSq (sideT (stripCorner H (Fin.rev c))) = 9 / 5
      simpa only [hT, Complex.normSq_neg] using ht
    · change Complex.normSq (sideR (stripCorner H (Fin.rev c))) = 9 / 5
      simpa only [hR, Complex.normSq_neg] using hr
    · change sideJ (stripCorner H (Fin.rev c)) = 54 / 25
      simp only [sideJ, hS, hT, hR, momentJ_neg]
      change -sideJ (stripCorner H c) = 54 / 25
      rw [hj]
      norm_num

end NoFourMUBs.Step2.Critical.Equicorrelation
