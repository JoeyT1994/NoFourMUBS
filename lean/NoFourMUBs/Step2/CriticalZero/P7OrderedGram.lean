import NoFourMUBs.Step2.CriticalZero.P7PhasedStrip

/-! Row phases and orientation are chosen from the actual Gram correlations.
The fixed-corner exclusion is reused through the already proved strip adapter. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped BigOperators
namespace NoFourMUBs.Step2.Critical.P7
open CriticalPhysical20261003

theorem oriented_strip_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (s t r : ℂ)
    (hS : ∑ j : Fin 3, H 1 (front j) = s)
    (hT : ∑ j : Fin 3, H 2 (front j) = t)
    (hR : ∑ j : Fin 3, H 2 (front j) * star (H 1 (front j)) = r)
    (hs : Complex.normSq s = 1) (ht : Complex.normSq t = 1)
    (hz : r * s * star t = 1 + 2 * Complex.I) : False := by
  apply phased_strip_impossible hH (star s) (star t)
  · simpa [Complex.star_def] using hs
  · simpa [Complex.star_def] using ht
  · rw [← Finset.mul_sum, hS]
    exact Hadamard6.star_mul_self_of_normSq_one hs
  · rw [← Finset.mul_sum, hT]
    exact Hadamard6.star_mul_self_of_normSq_one ht
  · calc
      _ = star t * s * ∑ j : Fin 3, H 2 (front j) * star (H 1 (front j)) := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro j _
        simp only [star_mul, star_star]
        ring
      _ = 1 + 2 * Complex.I := by rw [hR]; linear_combination hz

theorem ordered_strip_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (s t r : ℂ)
    (hS : ∑ j : Fin 3, H 1 (front j) = s)
    (hT : ∑ j : Fin 3, H 2 (front j) = t)
    (hR : ∑ j : Fin 3, H 2 (front j) * star (H 1 (front j)) = r)
    (hs : Complex.normSq s = 1) (ht : Complex.normSq t = 1)
    (hr : Complex.normSq r = 5) (hzre : (r * s * star t).re = 1) : False := by
  have hn : Complex.normSq (r * s * star t) = 5 := by
    simp [map_mul, Complex.star_def, hs, ht, hr]
  have hi : (r * s * star t).im = 2 ∨ (r * s * star t).im = -2 := by
    rw [Complex.normSq_apply, hzre] at hn
    have he : ((r * s * star t).im - 2) * ((r * s * star t).im + 2) = 0 := by
      nlinarith only [hn]
    rcases mul_eq_zero.mp he with h | h
    · left; linarith only [h]
    · right; linarith only [h]
  rcases hi with hi | hi
  · apply oriented_strip_impossible hH s t r hS hT hR hs ht
    exact Complex.ext (hzre.trans (by norm_num)) (hi.trans (by norm_num))
  · let p : Perm := Equiv.swap 1 2
    let K := candidate H p (Equiv.refl _)
    have hK : AllCriticalCarrier K := allCritical_candidate hH p (Equiv.refl _)
    have hK1 (j : Fin 6) : K 1 j = H 2 j := by
      rw [show K 1 j = H (p 1) j * star (H (p 0) j) from
        row_candidate_entry hH.1 p 1 j]
      simp [p, Equiv.swap_apply_def, hH.1.2.1]
    have hK2 (j : Fin 6) : K 2 j = H 1 j := by
      rw [show K 2 j = H (p 2) j * star (H (p 0) j) from
        row_candidate_entry hH.1 p 2 j]
      simp [p, Equiv.swap_apply_def, hH.1.2.1]
    apply oriented_strip_impossible hK t s (star r)
      (by simpa only [hK1] using hT) (by simpa only [hK2] using hS)
      (by simpa only [hK1, hK2, star_sum, star_mul, star_star, mul_comm] using
        congrArg star hR) ht hs
    have he : star r * t * star s = star (r * s * star t) := by
      simp only [star_mul, star_star]
      ring
    rw [he]
    apply Complex.ext
    · exact hzre.trans (by norm_num)
    · exact (congrArg (fun x : ℝ => -x) hi).trans (by norm_num)

/-- An actual all-critical matrix cannot have ordered squared correlation
moduli 1,1,5 and J=2 in its leading corner. -/
theorem leading_p7_ordered_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H)
    (hs : Complex.normSq (sideS (H.submatrix front front)) = 1)
    (ht : Complex.normSq (sideT (H.submatrix front front)) = 1)
    (hr : Complex.normSq (sideR (H.submatrix front front)) = 5)
    (hJ : sideJ (H.submatrix front front) = 2) : False := by
  apply ordered_strip_impossible hH (sideS (H.submatrix front front))
    (sideT (H.submatrix front front)) (sideR (H.submatrix front front))
  · simp [sideS, FourierPhysicalSide.s, Fin.sum_univ_three, Matrix.submatrix_apply, front]
  · simp [sideT, FourierPhysicalSide.t, Fin.sum_univ_three, Matrix.submatrix_apply, front]
  · simp [sideR, FourierPhysicalSide.r, Fin.sum_univ_three, Matrix.submatrix_apply, front]
  · exact hs
  · exact ht
  · exact hr
  · change 2 * (sideR (H.submatrix front front) * sideS (H.submatrix front front) *
      star (sideT (H.submatrix front front))).re = 2 at hJ
    linarith only [hJ]

end NoFourMUBs.Step2.Critical.P7
