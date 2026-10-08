import KarlssonMatrixBoxes

namespace Mub6.Classification.KarlssonCompiler
open Complex Hadamard6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.KarlssonCover
open Mub6.Numerical.CircleCharts
noncomputable section
set_option maxHeartbeats 1600000

def rawPhases (label : ReducedLabel) (x : Fin 3 → ℝ) : Fin 4 → ℂ :=
  rootPhases label.1 (fun _ => false)
    (coeffA (uncompactT (x 0)) (signedCircle label.2 (x 1)))
    (coeffB (uncompactT (x 0)) (signedCircle label.2 (x 1)))
    (coeffC (uncompactT (x 0)) (signedCircle label.2 (x 1)))
    (coeffD (uncompactT (x 0)) (signedCircle label.2 (x 1))) (signedCircle false (x 2))

structure RawInput where
  label : ReducedLabel
  parameters : Fin 3 → Interval
  sqrt3 : Interval
  roots : Fin 4 → RootRecipe

def RawInput.p (c : RawInput) : RationalRectangle := clipUnit (circleBox c.label.2 (c.parameters 1))
def RawInput.free (c : RawInput) : RationalRectangle := clipUnit (circleBox false (c.parameters 2))
def RawInput.A (c : RawInput) : Boxes2 := coreABox (c.parameters 0) c.p c.sqrt3
def RawInput.B (c : RawInput) : Boxes2 := coreBBox (c.parameters 0) c.p c.sqrt3
def RawInput.options (c : RawInput) : Fin 4 → Option RationalRectangle :=
  phaseOptions c.label.1 (some (boxMul (c.A 0 1) (c.A 0 1)))
    (some (boxMul (c.A 0 0) (c.A 0 0))) (some (boxMul (c.B 0 1) (c.B 0 1)))
    (some (boxMul (c.B 0 0) (c.B 0 0))) (some (boxMul c.free c.free))
def RawInput.squares (c : RawInput) : Fin 4 → RationalRectangle := fun i => resolveUnit (c.options i)
def RawInput.phases (c : RawInput) : Fin 4 → RationalRectangle := fun i => rootEnclosure (c.roots i) (c.squares i)
def RawInput.output (c : RawInput) : CarrierRegion := clipCarrier (rawBoxes c.A c.B c.phases)

theorem raw_options_sound (c : RawInput) (hr : sqrt3Valid c.sqrt3) {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (c.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1) :
    ∀ i, Covers (c.options i) ((rawPhases c.label x i)^2) := by
  have hp := clipUnit_sound (circleBox_sound c.label.2 (hx 1)) (signedCircle_normSq _ _)
  have hf := clipUnit_sound (circleBox_sound false (hx 2)) (signedCircle_normSq _ _)
  have ha := coreABox_sound (hx 0) hp (signedCircle_normSq _ _) h0 h1 hr
  have hb := coreBBox_sound (hx 0) hp (signedCircle_normSq _ _) h0 h1 hr
  have ha01 : Covers (some (boxMul (c.A 0 1) (c.A 0 1)))
      (coeffA (uncompactT (x 0)) (signedCircle c.label.2 (x 1))) := by
    simpa only [coeffA,pow_two,Covers,RawInput.A,RawInput.B,RawInput.p] using mem_boxMul (ha 0 1) (ha 0 1)
  have ha00 : Covers (some (boxMul (c.A 0 0) (c.A 0 0)))
      (coeffB (uncompactT (x 0)) (signedCircle c.label.2 (x 1))) := by
    simpa only [coeffB,pow_two,Covers,RawInput.A,RawInput.B,RawInput.p] using mem_boxMul (ha 0 0) (ha 0 0)
  have hb01 : Covers (some (boxMul (c.B 0 1) (c.B 0 1)))
      (coeffC (uncompactT (x 0)) (signedCircle c.label.2 (x 1))) := by
    simpa only [coeffC,pow_two,Covers,RawInput.A,RawInput.B,RawInput.p] using mem_boxMul (hb 0 1) (hb 0 1)
  have hb00 : Covers (some (boxMul (c.B 0 0) (c.B 0 0)))
      (coeffD (uncompactT (x 0)) (signedCircle c.label.2 (x 1))) := by
    simpa only [coeffD,pow_two,Covers,RawInput.A,RawInput.B,RawInput.p] using mem_boxMul (hb 0 0) (hb 0 0)
  have hff : Covers (some (boxMul c.free c.free)) ((signedCircle false (x 2))^2) := by
    simpa only [pow_two,Covers,RawInput.free] using mem_boxMul hf hf
  intro i
  rw [rawPhases,rootPhases_sq]
  exact phaseOptions_sound c.label.1 ha01 ha00 hb01 hb00 hff i

/-- The executable producer supplies every enclosure premise. No condition on
the quality or correctness of the proposed root centres is required: the
rational guards are tested inside the compiler, with a retaining fallback. -/
theorem raw_compiler_sound (c : RawInput) (hr : sqrt3Valid c.sqrt3) {x : Fin 3 → ℝ}
    (hx : ∀ i, Mem (c.parameters i) (x i)) (h0 : 0<x 0) (h1 : x 0<1)
    (hH : IsHadamard (reducedMatrix c.label x)) :
    ∃ K : Mat6, Equivalent (reducedMatrix c.label x) K ∧
      CarrierBox c.output (ClassificationCover.toNumerical K) := by
  have hmodel : reducedMatrix c.label x = karlssonRawMatrix (uncompactT (x 0))
      (signedCircle c.label.2 (x 1)) (rawPhases c.label x 0) (rawPhases c.label x 1)
      (rawPhases c.label x 2) (rawPhases c.label x 3) := rfl
  have hu : ∀ i, normSq (rawPhases c.label x i)=1 := raw_phases_unit (by rwa [←hmodel])
  have hop := raw_options_sound c hr hx h0 h1
  have hs : ∀ i, MemRectangle (c.squares i) ((rawPhases c.label x i)^2) :=
    fun i => resolveUnit_sound (hop i) (by simp [map_pow,hu i])
  have each (i : Fin 4) := rootEnclosure_sound (r := c.roots i) (hu i) (hs i)
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
  change CarrierBox (rawBoxes c.A c.B c.phases) (ClassificationCover.toNumerical K)
  rw [show K = karlssonRawMatrix (uncompactT (x 0)) (signedCircle c.label.2 (x 1))
    (w 0) (w 1) (w 2) (w 3) from rfl,raw_to_literal]
  exact rawBoxes_sound ha hbb hb

#print axioms raw_options_sound
#print axioms raw_compiler_sound
end
end Mub6.Classification.KarlssonCompiler
