import FourCircleAtlas
import SeedPoleLocus

/-! A universal, exhaustive atlas: four real parameters off the exact pole
locus, and the previously checked sixteen-parameter cover on that locus. -/
namespace Mub6.Classification.FourPhase
open Mub6.Numerical Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open FourierSeedBinding
noncomputable section

def SeedPoleLocus (a b c d : ℂ) : Prop :=
  radicand a b c d = 0 ∧
    ((∃ i : Fin 3, 2*(g a b c d)^2+chi a b c d*q a b c d i=0) ∨
     (∃ i : Fin 3, 2*(g a b c d)^2+chi a b c d*qV a b c d i=0))

def FourCircleWitness (H : Mat6) : Prop :=
  SeedNoPoles (H 1 1) (H 1 2) (H 2 1) (H 2 2) ∧
  ∃ signs : SeedSigns, ∃ t : SeedParameters, ∃ tag : CarrierTag,
    InSeedCube t ∧ H = fourCircleCarrier signs t tag ∧
    FourCircleGuards signs t tag ∧ FourCirclePhysicalFilter signs t tag

def PoleFallbackWitness (H : Mat6) : Prop :=
  SeedPoleLocus (H 1 1) (H 1 2) (H 2 1) (H 2 2) ∧
  ∃ signs : CarrierSigns, ∃ t : CarrierParameters,
    InParameterCube t ∧ H = chartCarrier signs t ∧ ChartPhysicalFilter signs t

theorem physical_pole_locus_iff {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    SeedPoleLocus (H 1 1) (H 1 2) (H 2 1) (H 2 2) ↔
    ¬ SeedNoPoles (H 1 1) (H 1 2) (H 2 1) (H 2 2) :=
  (normalized_seed_noPoles_failure_iff hH).symm

theorem normalized_strict_four_phase_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H)
    (hR : 0 < radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2)) :
    FourCircleWitness H := by
  have hn := seed_strict_noPoles (H 1 1) (H 1 2) (H 2 1) (H 2 2)
    (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2) hR
  exact ⟨hn,normalized_four_circle_cover hH hn.1 hn.2⟩

/-- The boundary is not discarded. Nonpole boundary points use the smaller
atlas; precisely the pole cases retain the complete fallback. -/
theorem normalized_four_phase_or_pole_fallback {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) : FourCircleWitness H ∨ PoleFallbackWitness H := by
  classical
  by_cases hn : SeedNoPoles (H 1 1) (H 1 2) (H 2 1) (H 2 2)
  · exact Or.inl ⟨hn,normalized_four_circle_cover hH hn.1 hn.2⟩
  · exact Or.inr ⟨(physical_pole_locus_iff hH).mpr hn,normalized_sixteen_circle_cover hH⟩

/-- Universal physical coverage with the same map for every common unbiased
ray and exact preservation of all complex pair overlaps. -/
theorem phaseHadamard_four_phase_or_pole_fallback {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, let K := normalizedSideCarrier H k
      NormalizedGoodSideCarrier K ∧
      (FourCircleWitness K ∨ PoleFallbackWitness K) ∧
      (∀ z, IsRawCommonRay H z → IsRawCommonRay K (normalizedSideRay H k z)) ∧
      (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
        rawOverlap z w) := by
  obtain ⟨k,hk⟩ := phaseHadamard_normalized_good_side_cover hH
  exact ⟨k,hk,normalized_four_phase_or_pole_fallback hk,
    fun z hz => normalizedSideRay_commonRay hH k hz,normalizedSideRay_rawOverlap hH k⟩

#check physical_pole_locus_iff
#print axioms physical_pole_locus_iff
#check normalized_strict_four_phase_cover
#print axioms normalized_strict_four_phase_cover
#check normalized_four_phase_or_pole_fallback
#print axioms normalized_four_phase_or_pole_fallback
#check phaseHadamard_four_phase_or_pole_fallback
#print axioms phaseHadamard_four_phase_or_pole_fallback
end
end Mub6.Classification.FourPhase
