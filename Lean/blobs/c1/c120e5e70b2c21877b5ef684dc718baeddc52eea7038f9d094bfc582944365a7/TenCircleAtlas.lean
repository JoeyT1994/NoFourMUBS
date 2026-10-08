import TenPhaseCarrier
import CompleteReducedAtlas

/-! Universal ten-circle lifted cover and the sharper four-circle/nonpole
dichotomy. Every common ray uses one shared transport preserving raw overlaps. -/
namespace Mub6.Classification.PoleAtlas
open Mub6.Numerical Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Numerical.CircleCharts
noncomputable section

abbrev TenIndex := Fin 4 ⊕ (Fin 3 ⊕ Fin 3)
abbrev TenSigns := TenIndex → Bool
abbrev TenParameters := TenIndex → ℝ

def liftedEntry (H : Mat6) : TenIndex → ℂ :=
  Sum.elim (seedEntry H) (Sum.elim (sideLambda (northeast H)) (sideLambda ((southwest H)ᵀ)))

def tenCircleEntry (signs : TenSigns) (t : TenParameters) (i : TenIndex) : ℂ :=
  signedCircle (signs i) (t i)

def InTenCube (t : TenParameters) : Prop := ∀ i, -1 ≤ t i ∧ t i ≤ 1

def liftedFromInput (F : TenIndex → ℂ) (tag : LiftedTag) : Mat6 :=
  liftedCarrier (F (.inl 0)) (F (.inl 1)) (F (.inl 2)) (F (.inl 3))
    (fun i => F (.inr (.inl i))) (fun i => F (.inr (.inr i))) tag

def LiftedInputGuards (F : TenIndex → ℂ) (tag : LiftedTag) : Prop :=
  LiftedCarrierGuards (F (.inl 0)) (F (.inl 1)) (F (.inl 2)) (F (.inl 3))
    (fun i => F (.inr (.inl i))) (fun i => F (.inr (.inr i))) tag

def tenCircleCarrier (signs : TenSigns) (t : TenParameters) (tag : LiftedTag) : Mat6 :=
  liftedFromInput (tenCircleEntry signs t) tag

def TenCircleGuards (signs : TenSigns) (t : TenParameters) (tag : LiftedTag) : Prop :=
  LiftedInputGuards (tenCircleEntry signs t) tag

theorem ten_coordinate_count : Fintype.card TenIndex = 10 := by
  simp [TenIndex]

theorem ten_circle_sign_count : Fintype.card TenSigns = 1024 := by
  rw [Fintype.card_fun, ten_coordinate_count]
  norm_num

theorem ten_circle_tag_count : Fintype.card (TenSigns × LiftedTag) = 16384 := by
  rw [Fintype.card_prod, ten_circle_sign_count, lifted_tag_count]

theorem liftedEntry_unit {H : Mat6} (hH : NormalizedGoodSideCarrier H) (i : TenIndex) :
    Complex.normSq (liftedEntry H i) = 1 := by
  rcases i with i | i
  · exact seedEntry_unit hH.1 i
  · rcases i with i | i
    · exact horizontal_lambda_phase hH i
    · exact vertical_lambda_phase hH i

theorem ten_circle_input_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ∃ signs : TenSigns, ∃ t : TenParameters,
      InTenCube t ∧ liftedEntry H = tenCircleEntry signs t := by
  have hc (i : TenIndex) := unit_circle_complete (liftedEntry_unit hH i)
  choose signs t hlo hhi he using hc
  exact ⟨signs, t, fun i => ⟨hlo i, hhi i⟩, funext he⟩

/-- Ten real circle coordinates suffice for every normalized physical good
carrier, including every rational pole. Permutations are transport witnesses. -/
theorem normalized_ten_circle_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ∃ signs : TenSigns, ∃ t : TenParameters, ∃ tag : LiftedTag,
      ∃ p q : Equiv.Perm (Fin 3),
      InTenCube t ∧ H = trailingReindex p q (tenCircleCarrier signs t tag) ∧
      TenCircleGuards signs t tag ∧ NormalizedGoodSideCarrier (tenCircleCarrier signs t tag) := by
  obtain ⟨signs, t, ht, hs⟩ := ten_circle_input_cover hH
  obtain ⟨tag, p, q, he, hg, hf⟩ := normalized_lifted_physical_cover hH
  change H = trailingReindex p q (liftedFromInput (liftedEntry H) tag) at he
  change LiftedInputGuards (liftedEntry H) tag at hg
  change NormalizedGoodSideCarrier (liftedFromInput (liftedEntry H) tag) at hf
  rw [hs] at he hg hf
  exact ⟨signs, t, tag, p, q, ht, he, hg, hf⟩

def TenAtlasWitness (H : Mat6) (k : Fin 20) : Prop :=
  let K := normalizedSideCarrier H k
  ∃ signs : TenSigns, ∃ t : TenParameters, ∃ tag : LiftedTag,
    ∃ p q : Equiv.Perm (Fin 3),
    InTenCube t ∧ K = trailingReindex p q (tenCircleCarrier signs t tag) ∧
    TenCircleGuards signs t tag ∧ NormalizedGoodSideCarrier (tenCircleCarrier signs t tag) ∧
    (∀ z, IsRawCommonRay H z → IsRawCommonRay (tenCircleCarrier signs t tag)
      (reducedRayTransport H k q z)) ∧
    (∀ z w, rawOverlap (reducedRayTransport H k q z) (reducedRayTransport H k q w) =
      rawOverlap z w)

theorem ten_atlas_witness {H : Mat6} (hH : PhaseHadamard H) (k : Fin 20)
    (hk : NormalizedGoodSideCarrier (normalizedSideCarrier H k)) : TenAtlasWitness H k := by
  obtain ⟨signs, t, tag, p, q, ht, he, hg, hf⟩ := normalized_ten_circle_cover hk
  refine ⟨signs, t, tag, p, q, ht, he, hg, hf, ?_, reducedRayTransport_rawOverlap hH k q⟩
  intro z hz
  have h0 := normalizedSideRay_commonRay hH k hz
  rw [he] at h0
  have h1 := trailingReindex_commonRay p.symm q.symm h0
  simpa only [trailingReindex_inverse, reducedRayTransport] using h1

/-- Universal coverage with the same transported ray map for every ray. -/
theorem phaseHadamard_ten_circle_atlas {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, NormalizedGoodSideCarrier (normalizedSideCarrier H k) ∧
      TenAtlasWitness H k := by
  obtain ⟨k, hk⟩ := phaseHadamard_normalized_good_side_cover hH
  exact ⟨k, hk, ten_atlas_witness hH k hk⟩

/-- Additive replacement of the old sixteen-circle pole fallback. The existing
four-circle nonpole atlas is retained, and the exact pole locus uses ten circles.
This is a necessary point atlas, without uniqueness or sufficiency. -/
theorem phaseHadamard_four_or_ten_circle_atlas {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, let K := normalizedSideCarrier H k
      NormalizedGoodSideCarrier K ∧
      (ReducedAtlasWitness H k ∨
        (SeedPoleLocus (K 1 1) (K 1 2) (K 2 1) (K 2 2) ∧ TenAtlasWitness H k)) := by
  classical
  obtain ⟨k, hk, hw⟩ := phaseHadamard_complete_reduced_atlas hH
  refine ⟨k, hk, ?_⟩
  rcases hw with hn | hp
  · exact Or.inl hn
  · exact Or.inr ⟨hp.1.1, ten_atlas_witness hH k hk⟩

#check ten_coordinate_count
#print axioms ten_coordinate_count
#check ten_circle_sign_count
#print axioms ten_circle_sign_count
#check ten_circle_tag_count
#print axioms ten_circle_tag_count
#check liftedEntry_unit
#print axioms liftedEntry_unit
#check ten_circle_input_cover
#print axioms ten_circle_input_cover
#check normalized_ten_circle_cover
#print axioms normalized_ten_circle_cover
#check TenAtlasWitness
#check ten_atlas_witness
#print axioms ten_atlas_witness
#check phaseHadamard_ten_circle_atlas
#print axioms phaseHadamard_ten_circle_atlas
#check phaseHadamard_four_or_ten_circle_atlas
#print axioms phaseHadamard_four_or_ten_circle_atlas

end
end Mub6.Classification.PoleAtlas
