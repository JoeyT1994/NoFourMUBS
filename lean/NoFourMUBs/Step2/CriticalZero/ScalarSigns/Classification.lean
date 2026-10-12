import NoFourMUBs.Step2.CriticalZero.ScalarSigns.Intervals
import NoFourMUBs.Reuse.Archive.CriticalModulusQuarticReal

set_option autoImplicit false
set_option maxHeartbeats 3000000
namespace NoFourMUBs.Step2.Critical.NonzeroScalar
open CriticalModulusDomain20261003
open CriticalNonzeroPolynomial20261003
noncomputable section

/-- Classification of the scalar quartic on the already proved necessary
domain. Deriving this quartic from an actual nonzero-J matrix is separate. -/
theorem candidates_of_quartic_zero {k K : ℝ} (hk : 0<k)
    (hA : Allowed k K) (hQ : quartic k K=0) :
    (k=1/3 ∧ K=729/125) ∨ (k=1 ∧ K=5) ∨ (kappa k=0 ∧ K=minimum k) := by
  by_cases hkone : k=1
  · subst k
    exact Or.inr (Or.inl ⟨rfl, quartic_zero_at_one K hA hQ⟩)
  rcases hA with ⟨hl,hK⟩ | ⟨hl,hu,hK⟩ | ⟨hl,hK⟩
  · have hu : k<1 := by linarith
    rcases hK with ⟨hL,hR⟩ | ⟨hL,hR⟩
    · exact Or.inr (Or.inr (low01_candidate hk hu hL hR hQ))
    · by_cases ht : k=1/3
      · left
        refine ⟨ht,?_⟩
        subst k
        norm_num [rootPlus,root0,h] at hL hR
        linarith
      · have hn := quartic_high013_neg hk hu ht hL hR
        rw [hQ] at hn
        exact (lt_irrefl 0 hn).elim
  · have hu' : k<1 := by
      rcases eq_or_lt_of_le hu with he | he
      · exact (hkone he).elim
      · exact he
    rcases hK with ⟨hL,hR⟩ | ⟨hL,hR⟩
    · exact Or.inr (Or.inr (low01_candidate hk hu' hL hR hQ))
    · by_cases ht : k=1/3
      · left
        refine ⟨ht,?_⟩
        subst k
        norm_num [rootPlus,root0,h] at hL hR
        linarith
      · have hn := quartic_high131_neg hk hu' ht hL hR
        rw [hQ] at hn
        exact (lt_irrefl 0 hn).elim
  · have hk1 : 1<k := by
      rcases eq_or_lt_of_le hl with he | he
      · exact (hkone he.symm).elim
      · exact he
    rcases hK with ⟨hL,hR⟩ | ⟨hL,hR⟩
    · have hn := quartic_low1inf_neg hk1 hL hR
      rw [hQ] at hn
      exact (lt_irrefl 0 hn).elim
    · have hn := quartic_high1inf_neg hk1 hL hR
      rw [hQ] at hn
      exact (lt_irrefl 0 hn).elim

theorem candidates_of_signed_quartic_zero {k K : ℝ} (hk : k≠0)
    (hA : Allowed |k| K) (hQ : quartic k K=0) :
    (|k|=1/3 ∧ K=729/125) ∨ (|k|=1 ∧ K=5) ∨
      (kappa |k|=0 ∧ K=minimum k) := by
  have hc := candidates_of_quartic_zero (abs_pos.mpr hk) hA
    (by rw [quartic_abs]; exact hQ)
  simpa only [minimum_abs] using hc

end
#print axioms candidates_of_quartic_zero
#print axioms candidates_of_signed_quartic_zero
end NoFourMUBs.Step2.Critical.NonzeroScalar
