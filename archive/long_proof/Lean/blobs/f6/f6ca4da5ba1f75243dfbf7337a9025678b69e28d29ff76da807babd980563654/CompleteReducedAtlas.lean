import CompleteFourPhaseAtlas
import CarrierPermutationReduction

/-! Sixteen necessary radical families, with four real circle coordinates and
exact common-ray transport, together with the complete boundary-pole fallback. -/
namespace Mub6.Classification.FourPhase
open Mub6.Numerical Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
noncomputable section

def reducedFourCircleCarrier (signs : SeedSigns) (t : SeedParameters)
    (tag : ReducedTag) : Mat6 :=
  reducedCandidate (circleSeed signs t 0) (circleSeed signs t 1)
    (circleSeed signs t 2) (circleSeed signs t 3) tag

def ReducedCircleGuards (signs : SeedSigns) (t : SeedParameters)
    (tag : ReducedTag) : Prop :=
  ReducedGuards (circleSeed signs t 0) (circleSeed signs t 1)
    (circleSeed signs t 2) (circleSeed signs t 3) tag

def reducedRayTransport (H : Mat6) (k : Fin 20) (q : Equiv.Perm (Fin 3))
    (z : Vector) : Vector :=
  permuteRay (trailingPerm q.symm) (normalizedSideRay H k z)

theorem reduced_circle_tag_count : Fintype.card (SeedSigns × ReducedTag) = 256 := by
  rw [Fintype.card_prod,seed_sign_count,reduced_tag_count]

theorem reducedRayTransport_rawOverlap {H : Mat6} (hH : PhaseHadamard H)
    (k : Fin 20) (q : Equiv.Perm (Fin 3)) (z w : Vector) :
    rawOverlap (reducedRayTransport H k q z) (reducedRayTransport H k q w) =
      rawOverlap z w := by
  rw [reducedRayTransport,reducedRayTransport,trailingRay_rawOverlap,
    normalizedSideRay_rawOverlap hH k]

theorem normalized_reduced_circle_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (hn : SeedNoPoles (H 1 1) (H 1 2) (H 2 1) (H 2 2)) :
    ∃ signs : SeedSigns, ∃ t : SeedParameters, ∃ tag : ReducedTag,
      ∃ p q : Equiv.Perm (Fin 3),
      InSeedCube t ∧ H = trailingReindex p q (reducedFourCircleCarrier signs t tag) ∧
      ReducedCircleGuards signs t tag ∧
      NormalizedGoodSideCarrier (reducedFourCircleCarrier signs t tag) := by
  obtain ⟨signs,t,ht,hs⟩ := seed_four_circle_cover hH.1
  have h0 : H 1 1 = circleSeed signs t 0 := congrFun hs 0
  have h1 : H 1 2 = circleSeed signs t 1 := congrFun hs 1
  have h2 : H 2 1 = circleSeed signs t 2 := congrFun hs 2
  have h3 : H 2 2 = circleSeed signs t 3 := congrFun hs 3
  obtain ⟨tag,p,q,he,hg,hf,_⟩ := normalized_reduced_physical_cover hH hn.1 hn.2
  rw [h0,h1,h2,h3] at he hg hf
  exact ⟨signs,t,tag,p,q,ht,he,hg,hf⟩

/-- The reduced target depends only on four real inputs, sixteen circle signs,
and sixteen radical tags. The permutations and twenty-frame index are transport
witnesses; they do not index extra copies of the target family. -/
def ReducedAtlasWitness (H : Mat6) (k : Fin 20) : Prop :=
  let K := normalizedSideCarrier H k
  SeedNoPoles (K 1 1) (K 1 2) (K 2 1) (K 2 2) ∧
  ∃ signs : SeedSigns, ∃ t : SeedParameters, ∃ tag : ReducedTag,
    ∃ p q : Equiv.Perm (Fin 3),
    InSeedCube t ∧ K = trailingReindex p q (reducedFourCircleCarrier signs t tag) ∧
    ReducedCircleGuards signs t tag ∧
    NormalizedGoodSideCarrier (reducedFourCircleCarrier signs t tag) ∧
    (∀ z, IsRawCommonRay H z → IsRawCommonRay (reducedFourCircleCarrier signs t tag)
      (reducedRayTransport H k q z)) ∧
    (∀ z w, rawOverlap (reducedRayTransport H k q z) (reducedRayTransport H k q w) =
      rawOverlap z w)

/-- Universal physical cover. The exact pole locus retains all prior fallback
cases; the nonpole side uses sixteen radical families and a single shared ray map. -/
theorem phaseHadamard_complete_reduced_atlas {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, let K := normalizedSideCarrier H k
      NormalizedGoodSideCarrier K ∧
      (ReducedAtlasWitness H k ∨
        (PoleFallbackWitness K ∧
          (∀ z, IsRawCommonRay H z → IsRawCommonRay K (normalizedSideRay H k z)) ∧
          (∀ z w, rawOverlap (normalizedSideRay H k z) (normalizedSideRay H k w) =
            rawOverlap z w))) := by
  classical
  obtain ⟨k,hk⟩ := phaseHadamard_normalized_good_side_cover hH
  let K := normalizedSideCarrier H k
  change NormalizedGoodSideCarrier K at hk
  by_cases hn : SeedNoPoles (K 1 1) (K 1 2) (K 2 1) (K 2 2)
  · obtain ⟨signs,t,tag,p,q,ht,he,hg,hf⟩ := normalized_reduced_circle_cover hk hn
    refine ⟨k,hk,Or.inl ⟨hn,signs,t,tag,p,q,ht,he,hg,hf,?_,
      reducedRayTransport_rawOverlap hH k q⟩⟩
    intro z hz
    have h0 := normalizedSideRay_commonRay hH k hz
    change IsRawCommonRay K (normalizedSideRay H k z) at h0
    rw [he] at h0
    have h1 := trailingReindex_commonRay p.symm q.symm h0
    simpa only [trailingReindex_inverse,reducedRayTransport] using h1
  · exact ⟨k,hk,Or.inr ⟨⟨(physical_pole_locus_iff hk).mpr hn,
      normalized_sixteen_circle_cover hk⟩,fun z hz => normalizedSideRay_commonRay hH k hz,
      normalizedSideRay_rawOverlap hH k⟩⟩

#check reduced_circle_tag_count
#print axioms reduced_circle_tag_count
#check reducedRayTransport_rawOverlap
#print axioms reducedRayTransport_rawOverlap
#check normalized_reduced_circle_cover
#print axioms normalized_reduced_circle_cover
#check phaseHadamard_complete_reduced_atlas
#print axioms phaseHadamard_complete_reduced_atlas
end
end Mub6.Classification.FourPhase
