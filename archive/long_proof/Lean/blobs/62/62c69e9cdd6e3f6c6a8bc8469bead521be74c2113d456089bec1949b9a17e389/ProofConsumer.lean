import CompleteReducedAtlas
import PhysicalSeedCover

namespace FourPhaseIndependentProofReview
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover Mub6.Classification.FourPhase
open FourierSeedBinding
open Hadamard6Extensions.FourPhaseGram Hadamard6Extensions.FourPhaseRoots
open Hadamard6Extensions.FourPhaseFourierBridge
noncomputable section

theorem actual_horizontal_cross_moment {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    H 2 3 * star (H 1 3) + H 2 4 * star (H 1 4) + H 2 5 * star (H 1 5) =
      -(1 + H 2 1 * star (H 1 1) + H 2 2 * star (H 1 2)) := by
  have h := (horizontal_moments hH).2.2
  simpa [sideR, FourierPhysicalSide.r, northeast, front, back, rowR] using h

theorem actual_vertical_cross_moment {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    H 3 2 * star (H 3 1) + H 4 2 * star (H 4 1) + H 5 2 * star (H 5 1) =
      -(1 + H 1 2 * star (H 1 1) + H 2 2 * star (H 2 1)) := by
  have h := (vertical_moments hH).2.2
  simpa [sideR, FourierPhysicalSide.r, southwest, front, back, rowR] using h

theorem boundary_sheets_coalesce {s t r : ℂ} (hR : R s t r = 0) :
    (∀ i, denominator s t r false i = denominator s t r true i) ∧
    (∀ i, lambda s t r false i = lambda s t r true i) := by
  constructor <;> intro i <;>
    simp [lambda, denominator, zeta, sheetParameter, hR]

theorem all_one_seed_violates_physical_guard {H : Mat6}
    (hH : NormalizedGoodSideCarrier H)
    (h11 : H 1 1 = 1) (h12 : H 1 2 = 1) (h21 : H 2 1 = 1) (h22 : H 2 2 = 1) :
    False := by
  have hg := seed_g_lower_bound hH
  rw [h11,h12,h21,h22] at hg
  have h1 : IsPhase (1 : ℂ) := by norm_num [IsPhase]
  have hv := g_binding 1 1 1 1 h1 h1 h1 h1
  norm_num [detE_formula,permE] at hv
  rw [hv] at hg
  norm_num at hg

theorem principal_cube_root_reconstructs_actual_good_side
    (x y : Fin 3 → ℂ)
    (hx : Hadamard6Extensions.FourierSide.IsPhase3 x)
    (hy : Hadamard6Extensions.FourierSide.IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (Hadamard6Extensions.FourierSide.actualSide x y).det) :
    ∃ delta h T : ℂ,
      SideOrientationData
        (Hadamard6Extensions.FourierSide.sum3 x) (Hadamard6Extensions.FourierSide.sum3 y)
        (Hadamard6Extensions.FourierSide.prod3 x) (Hadamard6Extensions.FourierSide.prod3 y)
        (Hadamard6Extensions.FourierSide.cross3 x y)
        (Hadamard6Extensions.FourierSide.permanentSide x y) delta h T ∧
      (81/10 : ℝ) ≤ Complex.normSq h ∧ (1/1000 : ℝ) ≤ Complex.normSq T ∧
      (1/10 : ℝ) ≤ Complex.normSq (cubeRoot T) ∧ Complex.normSq (cubeRoot T) ≤ 1 ∧
      Complex.normSq (cubeRoot T)⁻¹ ≤ 10 ∧
      ∃ p : Equiv.Perm (Fin 3),
        reconstructedSide
          (Hadamard6Extensions.FourierSide.sum3 x) (Hadamard6Extensions.FourierSide.sum3 y)
          (Hadamard6Extensions.FourierSide.prod3 x) (Hadamard6Extensions.FourierSide.prod3 y)
          (Hadamard6Extensions.FourierSide.cross3 x y)
          (Hadamard6Extensions.FourierSide.permanentSide x y) delta (cubeRoot T) omega =
          fun i j => Hadamard6Extensions.FourierSide.actualSide x y i (p j) := by
  obtain ⟨delta,h,T,hd,hh,hT,hrec⟩ :=
    actual_good_side_explicit_reconstruction x y omega omega_quadratic hx hy hg
  obtain ⟨_,hlo,hhi,hinv,hp⟩ := hrec (cubeRoot T) (cubeRoot_cube T)
  exact ⟨delta,h,T,hd,hh,hT,hlo,hhi,hinv,hp⟩

theorem actual_transported_atlas {H : Mat6} (hH : PhaseHadamard H) :
    ∃ M : Mat6, ∃ F : Mub6.Vector → Mub6.Vector,
      NormalizedGoodSideCarrier M ∧
      ((∃ signs : SeedSigns, ∃ t : SeedParameters, ∃ tag : ReducedTag,
          InSeedCube t ∧ M = reducedFourCircleCarrier signs t tag ∧
          ReducedCircleGuards signs t tag) ∨ PoleFallbackWitness M) ∧
      (∀ z, IsRawCommonRay H z → IsRawCommonRay M (F z)) ∧
      (∀ z w, rawOverlap (F z) (F w) = rawOverlap z w) := by
  obtain ⟨k,hK,hcover⟩ := phaseHadamard_complete_reduced_atlas hH
  rcases hcover with hr | hf
  · obtain ⟨_,signs,t,tag,p,q,ht,_,hg,hm,hrays,hoverlap⟩ := hr
    exact ⟨reducedFourCircleCarrier signs t tag,reducedRayTransport H k q,hm,
      Or.inl ⟨signs,t,tag,ht,rfl,hg⟩,hrays,hoverlap⟩
  · exact ⟨normalizedSideCarrier H k,normalizedSideRay H k,hK,
      Or.inr hf.1,hf.2.1,hf.2.2⟩

theorem selected_atlas_preserves_every_pair_constraint {H : Mat6} (hH : PhaseHadamard H) :
    ∃ M : Mat6, ∃ F : Mub6.Vector → Mub6.Vector,
      PhaseHadamard M ∧
      (∀ z, IsRawCommonRay H z → IsRawCommonRay M (F z)) ∧
      (∀ z w, rawOverlap (F z) (F w) = rawOverlap z w) ∧
      (∀ z w, rawOverlap (F z) (F w) = 0 ↔ rawOverlap z w = 0) ∧
      (∀ z w, Complex.normSq (rawOverlap (F z) (F w)) = 6 ↔
        Complex.normSq (rawOverlap z w) = 6) := by
  obtain ⟨M,F,hM,_,hrays,hoverlap⟩ := actual_transported_atlas hH
  refine ⟨M,F,hM.1,hrays,hoverlap,?_,?_⟩
  · intro z w
    rw [hoverlap]
  · intro z w
    rw [hoverlap]

#check actual_horizontal_cross_moment
#print axioms actual_horizontal_cross_moment
#check actual_vertical_cross_moment
#print axioms actual_vertical_cross_moment
#check boundary_sheets_coalesce
#print axioms boundary_sheets_coalesce
#check all_one_seed_violates_physical_guard
#print axioms all_one_seed_violates_physical_guard
#check principal_cube_root_reconstructs_actual_good_side
#print axioms principal_cube_root_reconstructs_actual_good_side
#check actual_transported_atlas
#print axioms actual_transported_atlas
#check selected_atlas_preserves_every_pair_constraint
#print axioms selected_atlas_preserves_every_pair_constraint
end
end FourPhaseIndependentProofReview
