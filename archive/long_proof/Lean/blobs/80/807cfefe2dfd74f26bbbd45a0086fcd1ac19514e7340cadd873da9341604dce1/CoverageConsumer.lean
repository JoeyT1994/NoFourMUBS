import FourPhaseCarrier
import PhysicalSeedCover
import SixteenCircleCover

/-! Independent consumer checks of branch meaning and the retained fallback. -/
namespace FourPhaseCoverageReview
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover Mub6.Classification.FourPhase FourierSeedBinding
open Hadamard6Extensions.FourPhaseGram Hadamard6Extensions.FourPhaseCatalogue
noncomputable section

theorem coalescing_sheets_duplicate_tags (s t r : ℂ) (hR : R s t r = 0)
    (b : Bool) (p : Equiv.Perm (Fin 3)) :
    sideCandidate s t r (false,b,p) = sideCandidate s t r (true,b,p) := by
  simp [sideCandidate, sideBase, sideDelta, sideTau,
    Hadamard6Extensions.FourPhaseCatalogue.sideT,
    momentU, momentV, momentW, lambda, denominator, zeta, sheetParameter, hR]

theorem seed_and_ray_cover_share_one_frame {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20,
      NormalizedGoodSideCarrier (normalizedSideCarrier H k) ∧
      ActualSeedBridge (normalizedSideCarrier H k) ∧
      (∀ z, IsRawCommonRay H z →
        IsRawCommonRay (normalizedSideCarrier H k) (normalizedSideRay H k z)) ∧
      (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
        rawOverlap z w) := by
  obtain ⟨k, hk⟩ := phaseHadamard_normalized_good_side_cover hH
  exact ⟨k, hk, normalized_actual_seed_bridge hk,
    fun _ hz => normalizedSideRay_commonRay hH k hz,
    normalizedSideRay_rawOverlap hH k⟩

def ReviewRegular (H : Mat6) : Prop :=
  NoPoles (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
      (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)) ∧
  NoPoles (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2))

theorem normalized_nonpole_or_retained_fallback {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) :
    (ReviewRegular H ∧ ∃ tag : CarrierTag,
      H = carrierCandidate (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag ∧
      CarrierGuards (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag ∧
      CarrierPhysicalFilter (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag) ∨
    (¬ ReviewRegular H ∧ ∃ signs : CarrierSigns, ∃ t : CarrierParameters,
      InParameterCube t ∧ H = chartCarrier signs t ∧ ChartPhysicalFilter signs t) := by
  by_cases h : ReviewRegular H
  · exact Or.inl ⟨h, normalized_four_phase_cover hH h.1 h.2⟩
  · exact Or.inr ⟨h, normalized_sixteen_circle_cover hH⟩

#print axioms coalescing_sheets_duplicate_tags
#print axioms seed_and_ray_cover_share_one_frame
#print axioms normalized_nonpole_or_retained_fallback
#check normalized_four_phase_cover
#print axioms normalized_four_phase_cover
#check phaseHadamard_actual_seed_cover
#print axioms phaseHadamard_actual_seed_cover
#check phaseHadamard_sixteen_parameter_cover
#print axioms phaseHadamard_sixteen_parameter_cover
#check actual_good_side_finite_cover
#print axioms actual_good_side_finite_cover
#check Hadamard6Extensions.FourPhaseFourierBridge.actual_good_side_scalar_cover
#print axioms Hadamard6Extensions.FourPhaseFourierBridge.actual_good_side_scalar_cover

end
end FourPhaseCoverageReview
