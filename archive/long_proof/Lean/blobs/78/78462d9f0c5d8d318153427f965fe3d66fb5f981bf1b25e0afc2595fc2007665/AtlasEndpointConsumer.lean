import CompleteFourPhaseAtlas

/-! Independent checks of the complete endpoint's physical branch semantics. -/
namespace FourPhaseCoverageReview
open Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover Mub6.Classification.FourPhase FourierSeedBinding
noncomputable section

theorem coalescing_nonpole_retained {H : Mat6}
    (hH : NormalizedGoodSideCarrier H)
    (hR : radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) = 0)
    (hn : SeedNoPoles (H 1 1) (H 1 2) (H 2 1) (H 2 2)) :
    radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) = 0 ∧ FourCircleWitness H := by
  exact ⟨hR, hn, normalized_four_circle_cover hH hn.1 hn.2⟩

theorem physical_branches_disjoint {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) :
    ¬ (FourCircleWitness H ∧ PoleFallbackWitness H) := by
  rintro ⟨hr, hp⟩
  exact (physical_pole_locus_iff hH).mp hp.1 hr.1

theorem all_poles_retain_fallback {H : Mat6}
    (hH : NormalizedGoodSideCarrier H)
    (hp : SeedPoleLocus (H 1 1) (H 1 2) (H 2 1) (H 2 2)) :
    PoleFallbackWitness H := by
  exact ⟨hp, normalized_sixteen_circle_cover hH⟩

theorem universal_shared_frame {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, let K := normalizedSideCarrier H k
      NormalizedGoodSideCarrier K ∧
      (FourCircleWitness K ∨ PoleFallbackWitness K) ∧
      (∀ z, IsRawCommonRay H z → IsRawCommonRay K (normalizedSideRay H k z)) ∧
      (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
        rawOverlap z w) :=
  phaseHadamard_four_phase_or_pole_fallback hH

#print axioms coalescing_nonpole_retained
#print axioms physical_branches_disjoint
#print axioms all_poles_retain_fallback
#check universal_shared_frame
#print axioms universal_shared_frame
#check physical_pole_locus_iff
#print axioms physical_pole_locus_iff
#check normalized_four_phase_or_pole_fallback
#print axioms normalized_four_phase_or_pole_fallback
#check four_circle_tag_count
#print axioms four_circle_tag_count
#check seed_sign_count
#print axioms seed_sign_count

end
end FourPhaseCoverageReview
