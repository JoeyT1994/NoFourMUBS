import FiniteSideCatalogue
import PhysicalSeedSheets

/-! Necessary four-phase carrier maps with a finite, explicit branch set. -/
namespace Mub6.Classification.FourPhase
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover FourierSeedBinding
open Hadamard6Extensions.FourPhaseGram Hadamard6Extensions.FourPhaseCatalogue
noncomputable section

abbrev CarrierTag := SideTag × SideTag

def carrierCandidate (a b c d : ℂ) (tag : CarrierTag) : Mat6 :=
  reconstructedCarrier (seed a b c d)
    (sideCandidate (rowS a b) (rowT c d) (rowR a b c d) tag.1)
    (sideCandidate (rowS a c) (rowT b d) (rowR a c b d) tag.2)ᵀ

def CarrierGuards (a b c d : ℂ) (tag : CarrierTag) : Prop :=
  SideGuards (rowS a b) (rowT c d) (rowR a b c d) tag.1 ∧
  SideGuards (rowS a c) (rowT b d) (rowR a c b d) tag.2

def CarrierPhysicalFilter (a b c d : ℂ) (tag : CarrierTag) : Prop :=
  NormalizedGoodSideCarrier (carrierCandidate a b c d tag)

theorem carrier_tag_count : Fintype.card CarrierTag = 576 := by
  rw [Fintype.card_prod, side_tag_count]

theorem horizontal_finite_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (hNP : NoPoles (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
      (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2))) :
    ∃ tag : SideTag,
      northeast H = sideCandidate (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
        (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)) tag ∧
      SideGuards (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
        (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)) tag := by
  have he : Hadamard6Extensions.FourierSide.actualSide (northeast H 1) (northeast H 2) =
      northeast H := by
    rw [← scalar_side_eq]
    exact horizontal_actualSide hH
  have hm := horizontal_moments hH
  have hn : NoPoles (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)) := by
    rwa [hm.1,hm.2.1,hm.2.2]
  have hh := actual_good_side_finite_cover (northeast H 1) (northeast H 2)
    (horizontal_phase hH 1) (horizontal_phase hH 2)
    (by rw [he]; exact horizontal_det_guard hH) hn
  rw [he] at hh
  change ∃ tag, northeast H = sideCandidate (sideS (northeast H))
    (sideT (northeast H)) (sideR (northeast H)) tag ∧
    SideGuards (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)) tag at hh
  rwa [hm.1,hm.2.1,hm.2.2] at hh

theorem vertical_finite_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (hNP : NoPoles (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2))) :
    ∃ tag : SideTag,
      (southwest H)ᵀ = sideCandidate (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
        (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) tag ∧
      SideGuards (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
        (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) tag :=
  horizontal_finite_cover (normalizedGoodSideCarrier_transpose hH) hNP

/-- At most 576 explicitly specified matrices per four-phase seed cover every
nonpole normalized physical carrier. Physical equations remain filters. -/
theorem normalized_four_phase_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (hB : NoPoles (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
      (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)))
    (hC : NoPoles (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2))) :
    ∃ tag : CarrierTag,
      H = carrierCandidate (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag ∧
      CarrierGuards (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag ∧
      CarrierPhysicalFilter (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag := by
  obtain ⟨tagB,hb,hbg⟩ := horizontal_finite_cover hH hB
  obtain ⟨tagC,hc,hcg⟩ := vertical_finite_cover hH hC
  have hc' := congrArg Matrix.transpose hc
  simp only [Matrix.transpose_transpose] at hc'
  have he : H = carrierCandidate (H 1 1) (H 1 2) (H 2 1) (H 2 2) (tagB,tagC) := by
    rw [carrierCandidate, ← normalized_northwest_seed hH, ← hb, ← hc']
    exact normalized_reconstructedCarrier hH
  refine ⟨(tagB,tagC),he,⟨hbg,hcg⟩,?_⟩
  change NormalizedGoodSideCarrier _
  rwa [← he]

#check carrier_tag_count
#print axioms carrier_tag_count
#check horizontal_finite_cover
#print axioms horizontal_finite_cover
#check vertical_finite_cover
#print axioms vertical_finite_cover
#check normalized_four_phase_cover
#print axioms normalized_four_phase_cover
end
end Mub6.Classification.FourPhase
