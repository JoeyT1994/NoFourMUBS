import FourPhaseCarrier
import SixteenCircleCover

/-! Four real parameters in a closed cube for the nonpole carrier catalogue.
The radical point maps need not be continuous across principal root cuts. -/
namespace Mub6.Classification.FourPhase
open Mub6.Numerical Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Numerical.CircleCharts FourierSeedBinding
open Hadamard6Extensions.FourPhaseGram
noncomputable section

abbrev SeedSigns := Fin 4 → Bool
abbrev SeedParameters := Fin 4 → ℝ

def seedEntry (H : Mat6) : Fin 4 → ℂ := ![H 1 1,H 1 2,H 2 1,H 2 2]
def circleSeed (signs : SeedSigns) (t : SeedParameters) (i : Fin 4) : ℂ :=
  signedCircle (signs i) (t i)
def InSeedCube (t : SeedParameters) : Prop := ∀ i, -1 ≤ t i ∧ t i ≤ 1

def fourCircleCarrier (signs : SeedSigns) (t : SeedParameters) (tag : CarrierTag) : Mat6 :=
  carrierCandidate (circleSeed signs t 0) (circleSeed signs t 1)
    (circleSeed signs t 2) (circleSeed signs t 3) tag

def FourCircleGuards (signs : SeedSigns) (t : SeedParameters) (tag : CarrierTag) : Prop :=
  CarrierGuards (circleSeed signs t 0) (circleSeed signs t 1)
    (circleSeed signs t 2) (circleSeed signs t 3) tag

def FourCirclePhysicalFilter (signs : SeedSigns) (t : SeedParameters)
    (tag : CarrierTag) : Prop := NormalizedGoodSideCarrier (fourCircleCarrier signs t tag)

theorem seed_sign_count : Fintype.card SeedSigns = 16 := by
  rw [Fintype.card_fun]
  norm_num

theorem four_circle_tag_count : Fintype.card (SeedSigns × CarrierTag) = 9216 := by
  rw [Fintype.card_prod, seed_sign_count, carrier_tag_count]

theorem seedEntry_unit {H : Mat6} (hH : PhaseHadamard H) (i : Fin 4) :
    Complex.normSq (seedEntry H i) = 1 := by
  fin_cases i <;> exact hH.1 _ _

theorem seed_four_circle_cover {H : Mat6} (hH : PhaseHadamard H) :
    ∃ signs : SeedSigns, ∃ t : SeedParameters,
      InSeedCube t ∧ seedEntry H = circleSeed signs t := by
  have hc (i : Fin 4) := unit_circle_complete (seedEntry_unit hH i)
  choose signs t hlo hhi he using hc
  exact ⟨signs,t,fun i => ⟨hlo i,hhi i⟩,funext he⟩

/-- A necessary four-real-parameter cover, retaining the physical filters and
all finite radical branches. This is a point-map theorem, not an interval API. -/
theorem normalized_four_circle_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (hB : NoPoles (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
      (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)))
    (hC : NoPoles (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2))) :
    ∃ signs : SeedSigns, ∃ t : SeedParameters, ∃ tag : CarrierTag,
      InSeedCube t ∧ H = fourCircleCarrier signs t tag ∧
      FourCircleGuards signs t tag ∧ FourCirclePhysicalFilter signs t tag := by
  obtain ⟨signs,t,ht,hs⟩ := seed_four_circle_cover hH.1
  have h0 : H 1 1 = circleSeed signs t 0 := congrFun hs 0
  have h1 : H 1 2 = circleSeed signs t 1 := congrFun hs 1
  have h2 : H 2 1 = circleSeed signs t 2 := congrFun hs 2
  have h3 : H 2 2 = circleSeed signs t 3 := congrFun hs 3
  obtain ⟨tag,he,hg,hf⟩ := normalized_four_phase_cover hH hB hC
  rw [h0,h1,h2,h3] at he hg hf
  exact ⟨signs,t,tag,ht,he,hg,hf⟩

#check seed_sign_count
#print axioms seed_sign_count
#check four_circle_tag_count
#print axioms four_circle_tag_count
#check seedEntry_unit
#print axioms seedEntry_unit
#check seed_four_circle_cover
#print axioms seed_four_circle_cover
#check normalized_four_circle_cover
#print axioms normalized_four_circle_cover
end
end Mub6.Classification.FourPhase
