import LiftedLambdaSide
import PhysicalSeedCover
import CarrierPermutationReduction

/-! A universal necessary carrier atlas with four seed and six lambda phases.
Four independent signs give sixteen families modulo trailing permutations. -/
namespace Mub6.Classification.PoleAtlas
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover Mub6.Classification.FourPhase FourierSeedBinding
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseGram
noncomputable section

abbrev LiftedTag := (Bool × Bool) × (Bool × Bool)

def liftedSide (s t r : ℂ) (L : Fin 3 → ℂ) (tag : Bool × Bool) : Mat3 :=
  explicitSideFromLambda s t r (zeta s t r tag.1) L tag.2

def LiftedSideConditions (s t r : ℂ) (L : Fin 3 → ℂ) (tag : Bool × Bool) : Prop :=
  IsPhase3 L ∧ LambdaEquations s t r (zeta s t r tag.1) L ∧
    LiftedSideGuards s t r (zeta s t r tag.1) L tag.2

def liftedCarrier (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag) : Mat6 :=
  reconstructedCarrier (seed a b c d)
    (liftedSide (rowS a b) (rowT c d) (rowR a b c d) LB tag.1)
    (liftedSide (rowS a c) (rowT b d) (rowR a c b d) LC tag.2)ᵀ

def LiftedCarrierGuards (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag) : Prop :=
  LiftedSideConditions (rowS a b) (rowT c d) (rowR a b c d) LB tag.1 ∧
  LiftedSideConditions (rowS a c) (rowT b d) (rowR a c b d) LC tag.2

def LiftedPhysicalFilter (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag) : Prop :=
  NormalizedGoodSideCarrier (liftedCarrier a b c d LB LC tag)

theorem lifted_tag_count : Fintype.card LiftedTag = 16 := by
  simp [LiftedTag, Fintype.card_prod]

theorem matrix_good_side_lifted_cover {A : Mat3}
    (hrow : ∀ j, A 0 j = 1) (hphase : ∀ i j, IsPhase (A i j))
    (hg : (54/5 : ℝ) ≤ Complex.normSq A.det) :
    ∃ tag : Bool × Bool, ∃ p : Equiv.Perm (Fin 3),
      sideSheet A = zeta (sideS A) (FourPhase.sideT A) (sideR A) tag.1 ∧
      A = (fun i j => liftedSide (sideS A) (FourPhase.sideT A) (sideR A)
        (sideLambda A) tag i (p j)) ∧
      LiftedSideConditions (sideS A) (FourPhase.sideT A) (sideR A) (sideLambda A) tag := by
  have he : Hadamard6Extensions.FourierSide.actualSide (A 1) (A 2) = A := by
    rw [← scalar_side_eq]
    exact actualSide_of_first_row hrow
  have hc := actual_good_side_signed_lifted_cover (A 1) (A 2)
    (hphase 1) (hphase 2) (by rw [he]; exact hg)
  rw [he] at hc
  obtain ⟨a, b, p, hL, hz, hp, hG, hE⟩ := hc
  exact ⟨(a,b), p, hz, hp, hL, hE, hG⟩

theorem horizontal_lifted_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ∃ tag : Bool × Bool, ∃ p : Equiv.Perm (Fin 3),
      sideSheet (northeast H) =
        zeta (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
          (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)) tag.1 ∧
      northeast H = (fun i j => liftedSide (rowS (H 1 1) (H 1 2))
        (rowT (H 2 1) (H 2 2)) (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2))
        (sideLambda (northeast H)) tag i (p j)) ∧
      LiftedSideConditions (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
        (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)) (sideLambda (northeast H)) tag := by
  have h := matrix_good_side_lifted_cover (horizontal_first_row hH)
    (horizontal_phase hH) (horizontal_det_guard hH)
  have hm := horizontal_moments hH
  rwa [hm.1, hm.2.1, hm.2.2] at h

theorem vertical_lifted_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ∃ tag : Bool × Bool, ∃ p : Equiv.Perm (Fin 3),
      sideSheet ((southwest H)ᵀ) =
        zeta (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
          (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) tag.1 ∧
      (southwest H)ᵀ = (fun i j => liftedSide (rowS (H 1 1) (H 2 1))
        (rowT (H 1 2) (H 2 2)) (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2))
        (sideLambda ((southwest H)ᵀ)) tag i (p j)) ∧
      LiftedSideConditions (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
        (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) (sideLambda ((southwest H)ᵀ)) tag := by
  simpa only [Matrix.transpose_apply, northeast_transpose] using
    horizontal_lifted_cover (normalizedGoodSideCarrier_transpose hH)

/-- Complete necessary ten-phase point atlas. The lambda inputs are exactly
those of the actual two side blocks; arbitrary inputs remain subject to the
displayed guards and physical filter. No side denominator is assumed nonzero. -/
theorem normalized_lifted_physical_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ∃ tag : LiftedTag, ∃ p q : Equiv.Perm (Fin 3),
      H = trailingReindex p q (liftedCarrier (H 1 1) (H 1 2) (H 2 1) (H 2 2)
        (sideLambda (northeast H)) (sideLambda ((southwest H)ᵀ)) tag) ∧
      LiftedCarrierGuards (H 1 1) (H 1 2) (H 2 1) (H 2 2)
        (sideLambda (northeast H)) (sideLambda ((southwest H)ᵀ)) tag ∧
      LiftedPhysicalFilter (H 1 1) (H 1 2) (H 2 1) (H 2 2)
        (sideLambda (northeast H)) (sideLambda ((southwest H)ᵀ)) tag := by
  obtain ⟨tagB, p, _, hb, hbg⟩ := horizontal_lifted_cover hH
  obtain ⟨tagC, q, _, hc, hcg⟩ := vertical_lifted_cover hH
  have hc' := congrArg Matrix.transpose hc
  simp only [Matrix.transpose_transpose] at hc'
  have hblocks := congrArg₂ (reconstructedCarrier (northwest H)) hb hc'
  have hperm := reconstructedCarrier_permutations (seed (H 1 1) (H 1 2) (H 2 1) (H 2 2))
    (liftedSide (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
      (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)) (sideLambda (northeast H)) tagB)
    (liftedSide (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) (sideLambda ((southwest H)ᵀ)) tagC)ᵀ p q
  rw [normalized_northwest_seed hH] at hblocks
  have he : H = trailingReindex p q
      (liftedCarrier (H 1 1) (H 1 2) (H 2 1) (H 2 2)
        (sideLambda (northeast H)) (sideLambda ((southwest H)ᵀ)) (tagB,tagC)) := by
    have hrec := normalized_reconstructedCarrier hH
    rw [normalized_northwest_seed hH] at hrec
    exact hrec.trans (hblocks.trans hperm)
  refine ⟨(tagB,tagC), p, q, he, ⟨hbg,hcg⟩, ?_⟩
  change NormalizedGoodSideCarrier _
  exact (trailingReindex_normalized_iff p q _).mp (he ▸ hH)

theorem liftedCarrier_ray_iff (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (p q : Equiv.Perm (Fin 3)) (z : Vector) :
    IsRawCommonRay (trailingReindex p q (liftedCarrier a b c d LB LC tag))
        (permuteRay (trailingPerm q) z) ↔
      IsRawCommonRay (liftedCarrier a b c d LB LC tag) z :=
  trailingReindex_commonRay_iff p q _ z

#check lifted_tag_count
#print axioms lifted_tag_count
#check matrix_good_side_lifted_cover
#print axioms matrix_good_side_lifted_cover
#check horizontal_lifted_cover
#print axioms horizontal_lifted_cover
#check vertical_lifted_cover
#print axioms vertical_lifted_cover
#check normalized_lifted_physical_cover
#print axioms normalized_lifted_physical_cover
#check liftedCarrier_ray_iff
#print axioms liftedCarrier_ray_iff

end
end Mub6.Classification.PoleAtlas
