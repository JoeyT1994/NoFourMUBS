import KarlssonSingularConditioning
set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace Mub6.Classification.KarlssonConditioning
open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonCompiler
open Mub6.Classification.CarrierIntervals Mub6.Numerical.CircleCharts
noncomputable section

/-- Exact singular guards justify a direct polynomial phase representative.
No guard is inferred from a small floating-point residual. -/
theorem conditioned_compiler_sound (c : RawInput) (hr : sqrt3Valid c.sqrt3) {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (c.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard c.label x) (hH : IsHadamard (reducedMatrix c.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix c.label x) K ∧
      CarrierBox (conditionedOutput c) (ClassificationCover.toNumerical K) := by
  have hmodel : reducedMatrix c.label x = karlssonRawMatrix (uncompactT (x 0))
      (signedCircle c.label.2 (x 1)) (rawPhases c.label x 0) (rawPhases c.label x 1)
      (rawPhases c.label x 2) (rawPhases c.label x 3) := rfl
  have hu : ∀ i, normSq (rawPhases c.label x i)=1 := raw_phases_unit (by rwa [←hmodel])
  have hop := raw_options_sound c hr hx h0 h1
  have hs : ∀ i, MemRectangle (c.squares i) ((rawPhases c.label x i)^2) :=
    fun i => resolveUnit_sound (hop i) (by simp [map_pow,hu i])
  have each (i : Fin 4) : ∃ w : ℂ, w^2=(rawPhases c.label x i)^2 ∧ normSq w=1 ∧
      MemRectangle (conditionedPhases c i) w := by
    by_cases hf : c.label.1≠.regular ∧ i=forcedIndex c.label.1
    · have spec := directPhase_spec c.label.1 (uncompactT (x 0))
        (free := (signedCircle false (x 2))^2) (signedCircle_normSq _ _) hf.1 hg
      refine ⟨directPhase c.label.1 (uncompactT (x 0)) (signedCircle c.label.2 (x 1)),?_,spec.1,?_⟩
      · simpa only [rawPhases,rootPhases_sq,hf.2] using spec.2
      · simpa only [conditionedPhases,if_pos hf] using directBox_sound c hr hx h0 h1 hf.1 hg
    · simpa only [conditionedPhases,if_neg hf,RawInput.phases] using
        (rootEnclosure_sound (r := c.roots i) (hu i) (hs i))
  choose w hw hu' hb using each
  let K := karlssonRawMatrix (uncompactT (x 0)) (signedCircle c.label.2 (x 1))
    (w 0) (w 1) (w 2) (w 3)
  have he : Equivalent (reducedMatrix c.label x) K := by
    rw [hmodel]
    exact equal_squares_equivalent _ _ _ w (fun i => (hw i).symm)
  have hK : IsHadamard K := (equivalent_isHadamard_iff he).mp hH
  refine ⟨K,he,?_⟩
  apply clipCarrier_sound _ (ClassificationCover.numerical_of_public hK).1
  have hp := clipUnit_sound (circleBox_sound c.label.2 (hx 1)) (signedCircle_normSq _ _)
  have ha := coreABox_sound (hx 0) hp (signedCircle_normSq _ _) h0 h1 hr
  have hbb := coreBBox_sound (hx 0) hp (signedCircle_normSq _ _) h0 h1 hr
  change CarrierBox (rawBoxes c.A c.B (conditionedPhases c)) (ClassificationCover.toNumerical K)
  rw [show K = karlssonRawMatrix (uncompactT (x 0)) (signedCircle c.label.2 (x 1))
    (w 0) (w 1) (w 2) (w 3) from rfl,raw_to_literal]
  exact rawBoxes_sound ha hbb hb

def conditionedProvider (depth : ℕ) (rt : Interval) (hr : sqrt3Valid rt)
    (recipes : ReducedLabel → RawCell depth → Fin 4 → RootRecipe) : GaugeEnclosureProvider depth where
  raw := fun label cell => conditionedOutput ⟨label,rawCellParameters cell,rt,recipes label cell⟩
  seam := fun label cell => (SeamInput.mk label (seamCellParameters cell) rt).output
  raw_sound := by
    intro label cell x h0 h1 hx hg hH
    exact conditioned_compiler_sound _ hr hx h0 h1 hg hH
  seam_sound := by
    intro label cell x hx hH
    exact ⟨seamMatrix label x,equivalent_refl _,seam_compiler_sound _ hr hx hH⟩

theorem conditioned_quartet_cover (depth : ℕ) (rt : Interval) (hr : sqrt3Valid rt)
    (recipes : ReducedLabel → RawCell depth → Fin 4 → RootRecipe)
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6,
      OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ (ClassificationCover.toNumerical K)) ∧
      ((∃ label cell, CarrierBox ((conditionedProvider depth rt hr recipes).raw label cell)
        (ClassificationCover.toNumerical K)) ∨
       (∃ label cell, CarrierBox ((conditionedProvider depth rt hr recipes).seam label cell)
        (ClassificationCover.toNumerical K))) :=
  reduced_quartet_finite_enclosures depth (conditionedProvider depth rt hr recipes) hH h₂

theorem conditioned_export_sound (c : RawInput) (hr : sqrt3Valid c.sqrt3) (out : CarrierRegion)
    (hout : ∀ i j, RectangleIncludes (conditionedOutput c i j) (out i j))
    {x : Fin 3 → ℝ} (hx : ∀ i, Mem (c.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hg : reducedGuard c.label x) (hH : IsHadamard (reducedMatrix c.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix c.label x) K ∧ CarrierBox out (ClassificationCover.toNumerical K) := by
  obtain ⟨K,he,hb⟩ := conditioned_compiler_sound c hr hx h0 h1 hg hH
  exact ⟨K,he,fun i j => rectangle_includes_sound (hout i j) (hb i j)⟩

#print axioms conditioned_compiler_sound
#print axioms conditionedProvider
#print axioms conditioned_quartet_cover
#print axioms conditioned_export_sound
end
end Mub6.Classification.KarlssonConditioning
