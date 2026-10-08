import TenCircleAtlas

/-! Exact pole masks recover lambda rationally on nonzero denominators and
retain a unit input only at a zero denominator. No mask is omitted. -/
namespace Mub6.Classification.PoleAtlas
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase FourierSeedBinding
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseGram
noncomputable section

abbrev PoleMask := Fin 3 → Bool
abbrev ActivePole (mask : PoleMask) := { i : Fin 3 // mask i = true }

def ExactPoleMask (s t r z : ℂ) (mask : PoleMask) : Prop :=
  ∀ i, mask i = true ↔ liftedDenominator s t r z i = 0

def maskedLambda (s t r z : ℂ) (mask : PoleMask) (F : ActivePole mask → ℂ)
    (i : Fin 3) : ℂ :=
  if hi : mask i = true then F ⟨i, hi⟩ else
    FourierGramNumerators.numerator s t r i / liftedDenominator s t r z i

theorem pole_mask_count : Fintype.card PoleMask = 8 := by
  rw [Fintype.card_fun]
  norm_num

theorem active_pole_count_le (mask : PoleMask) : Fintype.card (ActivePole mask) ≤ 3 := by
  exact Fintype.card_le_of_injective Subtype.val Subtype.val_injective

theorem hybrid_phase_count_le (maskB maskC : PoleMask) :
    4 + Fintype.card (ActivePole maskB) + Fintype.card (ActivePole maskC) ≤ 10 := by
  have hb := active_pole_count_le maskB
  have hc := active_pole_count_le maskC
  omega

theorem lambda_pole_numerator_zero {s t r z : ℂ} {L : Fin 3 → ℂ}
    (hE : LambdaEquations s t r z L) {i : Fin 3}
    (hi : liftedDenominator s t r z i = 0) :
    FourierGramNumerators.numerator s t r i = 0 := by
  rw [hE i, hi, zero_mul]

theorem lambda_nonpole_rational {s t r z : ℂ} {L : Fin 3 → ℂ}
    (hE : LambdaEquations s t r z L) {i : Fin 3}
    (hi : liftedDenominator s t r z i ≠ 0) :
    FourierGramNumerators.numerator s t r i / liftedDenominator s t r z i = L i := by
  rw [hE i, mul_div_cancel_left₀ _ hi]

theorem maskedLambda_active {s t r z : ℂ} {mask : PoleMask}
    (F : ActivePole mask → ℂ) (i : ActivePole mask) :
    maskedLambda s t r z mask F i.val = F i := by
  simp only [maskedLambda, dif_pos i.property]

theorem maskedLambda_inactive {s t r z : ℂ} {mask : PoleMask}
    (F : ActivePole mask → ℂ) {i : Fin 3} (hi : mask i ≠ true) :
    maskedLambda s t r z mask F i =
      FourierGramNumerators.numerator s t r i / liftedDenominator s t r z i := by
  simp only [maskedLambda, dif_neg hi]

theorem maskedLambda_matches {s t r z : ℂ} {L : Fin 3 → ℂ} {mask : PoleMask}
    (hE : LambdaEquations s t r z L) (hm : ExactPoleMask s t r z mask)
    (F : ActivePole mask → ℂ) (hF : ∀ i, F i = L i.val) :
    maskedLambda s t r z mask F = L := by
  funext i
  unfold maskedLambda
  split_ifs with hi
  · exact hF ⟨i, hi⟩
  · exact lambda_nonpole_rational hE (fun hd => hi ((hm i).mpr hd))

/-- Every physical lifted triple has an exact finite mask. The free inputs
are precisely its active pole-coordinate phases, and poles force numerator zero. -/
theorem masked_lambda_cover {s t r z : ℂ} {L : Fin 3 → ℂ}
    (hL : IsPhase3 L) (hE : LambdaEquations s t r z L) :
    ∃ mask : PoleMask, ∃ F : ActivePole mask → ℂ,
      ExactPoleMask s t r z mask ∧ (∀ i, IsPhase (F i)) ∧
      maskedLambda s t r z mask F = L ∧
      (∀ i : ActivePole mask, FourierGramNumerators.numerator s t r i.val = 0) := by
  classical
  let mask : PoleMask := fun i => decide (liftedDenominator s t r z i = 0)
  let F : ActivePole mask → ℂ := fun i => L i.val
  have hm : ExactPoleMask s t r z mask := by
    intro i
    simp only [mask, decide_eq_true_eq]
  refine ⟨mask, F, hm, fun i => hL i.val, maskedLambda_matches hE hm F (fun _ => rfl), ?_⟩
  intro i
  exact lambda_pole_numerator_zero hE ((hm i.val).mp i.property)

def hybridCarrier (a b c d : ℂ) (tag : LiftedTag) (maskB maskC : PoleMask)
    (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ) : Mat6 :=
  liftedCarrier a b c d
    (maskedLambda (rowS a b) (rowT c d) (rowR a b c d)
      (zeta (rowS a b) (rowT c d) (rowR a b c d) tag.1.1) maskB FB)
    (maskedLambda (rowS a c) (rowT b d) (rowR a c b d)
      (zeta (rowS a c) (rowT b d) (rowR a c b d) tag.2.1) maskC FC) tag

def HybridMasks (a b c d : ℂ) (tag : LiftedTag) (maskB maskC : PoleMask) : Prop :=
  ExactPoleMask (rowS a b) (rowT c d) (rowR a b c d)
    (zeta (rowS a b) (rowT c d) (rowR a b c d) tag.1.1) maskB ∧
  ExactPoleMask (rowS a c) (rowT b d) (rowR a c b d)
    (zeta (rowS a c) (rowT b d) (rowR a c b d) tag.2.1) maskC

def HybridGuards (a b c d : ℂ) (tag : LiftedTag) (maskB maskC : PoleMask)
    (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ) : Prop :=
  LiftedCarrierGuards a b c d
    (maskedLambda (rowS a b) (rowT c d) (rowR a b c d)
      (zeta (rowS a b) (rowT c d) (rowR a b c d) tag.1.1) maskB FB)
    (maskedLambda (rowS a c) (rowT b d) (rowR a c b d)
      (zeta (rowS a c) (rowT b d) (rowR a c b d) tag.2.1) maskC FC) tag

/-- Complete hybrid carrier cover: rationally recovered nonpole coordinates,
unit-phase inputs only at poles, both exact masks and all good guards retained. -/
theorem normalized_hybrid_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ∃ tag : LiftedTag, ∃ p q : Equiv.Perm (Fin 3), ∃ maskB maskC : PoleMask,
      ∃ FB : ActivePole maskB → ℂ, ∃ FC : ActivePole maskC → ℂ,
      HybridMasks (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag maskB maskC ∧
      (∀ i, IsPhase (FB i)) ∧ (∀ i, IsPhase (FC i)) ∧
      H = trailingReindex p q
        (hybridCarrier (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag maskB maskC FB FC) ∧
      HybridGuards (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag maskB maskC FB FC ∧
      NormalizedGoodSideCarrier
        (hybridCarrier (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag maskB maskC FB FC) := by
  obtain ⟨tag, p, q, he, hg, hf⟩ := normalized_lifted_physical_cover hH
  obtain ⟨maskB, FB, hmB, hFB, hLB, _⟩ := masked_lambda_cover hg.1.1 hg.1.2.1
  obtain ⟨maskC, FC, hmC, hFC, hLC, _⟩ := masked_lambda_cover hg.2.1 hg.2.2.1
  rw [← hLB, ← hLC] at he hg hf
  exact ⟨tag, p, q, maskB, maskC, FB, FC, ⟨hmB, hmC⟩, hFB, hFC, he, hg, hf⟩

def HybridAtlasWitness (H : Mat6) (k : Fin 20) : Prop :=
  let K := normalizedSideCarrier H k
  ∃ tag : LiftedTag, ∃ p q : Equiv.Perm (Fin 3), ∃ maskB maskC : PoleMask,
    ∃ FB : ActivePole maskB → ℂ, ∃ FC : ActivePole maskC → ℂ,
    HybridMasks (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC ∧
    (∀ i, IsPhase (FB i)) ∧ (∀ i, IsPhase (FC i)) ∧
    K = trailingReindex p q (hybridCarrier (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC) ∧
    HybridGuards (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC ∧
    NormalizedGoodSideCarrier (hybridCarrier (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC) ∧
    (∀ z, IsRawCommonRay H z → IsRawCommonRay
      (hybridCarrier (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC)
      (reducedRayTransport H k q z)) ∧
    (∀ z w, rawOverlap (reducedRayTransport H k q z) (reducedRayTransport H k q w) =
      rawOverlap z w)

theorem phaseHadamard_hybrid_atlas {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, NormalizedGoodSideCarrier (normalizedSideCarrier H k) ∧
      HybridAtlasWitness H k := by
  obtain ⟨k, hk⟩ := phaseHadamard_normalized_good_side_cover hH
  obtain ⟨tag, p, q, maskB, maskC, FB, FC, hm, hFB, hFC, he, hg, hf⟩ :=
    normalized_hybrid_cover hk
  refine ⟨k, hk, tag, p, q, maskB, maskC, FB, FC, hm, hFB, hFC, he, hg, hf, ?_,
    reducedRayTransport_rawOverlap hH k q⟩
  intro z hz
  have h0 := normalizedSideRay_commonRay hH k hz
  rw [he] at h0
  have h1 := trailingReindex_commonRay p.symm q.symm h0
  simpa only [trailingReindex_inverse, reducedRayTransport] using h1

#check pole_mask_count
#print axioms pole_mask_count
#check active_pole_count_le
#print axioms active_pole_count_le
#check hybrid_phase_count_le
#print axioms hybrid_phase_count_le
#check lambda_pole_numerator_zero
#print axioms lambda_pole_numerator_zero
#check lambda_nonpole_rational
#print axioms lambda_nonpole_rational
#check maskedLambda_active
#print axioms maskedLambda_active
#check maskedLambda_inactive
#print axioms maskedLambda_inactive
#check maskedLambda_matches
#print axioms maskedLambda_matches
#check masked_lambda_cover
#print axioms masked_lambda_cover
#check normalized_hybrid_cover
#print axioms normalized_hybrid_cover
#check HybridAtlasWitness
#check phaseHadamard_hybrid_atlas
#print axioms phaseHadamard_hybrid_atlas

end
end Mub6.Classification.PoleAtlas
