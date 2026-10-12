import NoFourMUBs.Step2.CriticalZero.P7OrderedGram
import NoFourMUBs.Step2.CriticalZero.P7Moduli
import NoFourMUBs.Reuse.Archive.CriticalCorrelationRechart
import NoFourMUBs.Step2.CriticalZero.LeadingScalarPremises

/-! The positive-J p=7 scalar candidate reaches the existing corner exclusion.
The two row reorderings and scalar reduction are reused unchanged. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.P7
open CriticalPhysical20261003 CriticalCorrelationChart20261003

theorem leading_p7_unordered_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H)
    (hm : (Complex.normSq (sideS (H.submatrix front front)) = 1 ∧
        Complex.normSq (sideT (H.submatrix front front)) = 1 ∧
        Complex.normSq (sideR (H.submatrix front front)) = 5) ∨
      (Complex.normSq (sideS (H.submatrix front front)) = 1 ∧
        Complex.normSq (sideT (H.submatrix front front)) = 5 ∧
        Complex.normSq (sideR (H.submatrix front front)) = 1) ∨
      (Complex.normSq (sideS (H.submatrix front front)) = 5 ∧
        Complex.normSq (sideT (H.submatrix front front)) = 1 ∧
        Complex.normSq (sideR (H.submatrix front front)) = 1))
    (hj : sideJ (H.submatrix front front) = 2) : False := by
  rcases hm with ⟨hs, ht, hr⟩ | ⟨hs, ht, hr⟩ | ⟨hs, ht, hr⟩
  · exact leading_p7_ordered_impossible hH hs ht hr hj
  · obtain ⟨hS, hT, hR⟩ := swap01_correlations hH.1 front
    apply leading_p7_ordered_impossible
      (allCritical_candidate hH (Equiv.swap 0 1) (Equiv.refl _))
    · rw [hS]; simpa [Complex.star_def] using hs
    · rw [hT]; exact hr
    · rw [hR]; exact ht
    · exact (swap01_invariants hH.1 front).2.1.trans hj
  · obtain ⟨hS, hT, hR⟩ := swap02_correlations hH.1 front
    apply leading_p7_ordered_impossible
      (allCritical_candidate hH (Equiv.swap 0 2) (Equiv.refl _))
    · rw [hS]; simpa [Complex.star_def] using hr
    · rw [hT]; simpa [Complex.star_def] using ht
    · rw [hR]; simpa [Complex.star_def] using hs
    · exact (swap02_invariants hH.1 front).2.1.trans hj

/-- The full positive-J leading-corner endpoint. Only its actual scalar
candidate p=7,J=2,K=5 is assumed, with no normal form or pole guards. -/
theorem leading_p7_positive_impossible {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H)
    (hp : sideP (H.submatrix front front) = 7)
    (hj : sideJ (H.submatrix front front) = 2)
    (hk : Complex.normSq (sideS (H.submatrix front front)) *
      Complex.normSq (sideT (H.submatrix front front)) *
      Complex.normSq (sideR (H.submatrix front front)) = 5) : False := by
  obtain ⟨h0, hb, hplus, hminus⟩ := allCritical_scalar_premises hH
  have hj0 : sideJ (H.submatrix front front) ≠ 0 := by rw [hj]; norm_num
  obtain ⟨_, _, _, hw⟩ := CriticalScalarReduction20261003.nonzero_reduction
    h0 hb hj0 hplus hminus
  change sideW (H.submatrix front front) =
    -(sideP (H.submatrix front front) - 9) *
      (sideP (H.submatrix front front) ^ 2 - 10 * sideP (H.submatrix front front) + 27) / 2 at hw
  rw [hp] at hw
  norm_num at hw
  apply leading_p7_unordered_impossible hH _ hj
  exact moduli_permutation _ _ _ hp hw hk

end NoFourMUBs.Step2.Critical.P7
