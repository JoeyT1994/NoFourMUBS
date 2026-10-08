import Root0PhysicalCorners
import Root0PhaseBounds
import Root0CoverData

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Actual20261003
open Mub6 Mub6.Numerical Mub6.Classification Matrix
open CompactCover GoodMinor CanonicalCorners GlobalCornerDomain
open Mub6.Numerical.IntervalKernel
open ShoulderRadian20261003 ShoulderRoot0Centers20261003 ShoulderRoot0Moments20261003
open Root0Angular20261003
noncomputable section

theorem phase0_subset_seed0 : BoxIncludes Phase0 seed0 := by decide +kernel
theorem phase1_subset_seed1 : BoxIncludes Phase1 seed1 := by decide +kernel
theorem phase2_subset_seed2 : BoxIncludes Phase2 seed2 := by decide +kernel
theorem phase3_subset_seed3 : BoxIncludes Phase3 seed3 := by decide +kernel

/-- The angular certificate's seed boxes contain the literal vertical seed
entries of every normalized matrix in the original radian cube. -/
theorem normalized_root0_seed_boxes {H : Mat6} (hH : NormalizedCarrier H)
    (hroot : InRoot0 H) :
    (∀ j, MemRectangle (EX j) (seedX H j)) ∧
    (∀ j, MemRectangle (EY j) (seedY H j)) := by
  obtain ⟨θ,hθ,h00,h01,h10,h11⟩ := hroot
  have hu : MemRectangle (boxPoint 1 0) (1:ℂ) := by
    norm_num [MemRectangle,boxPoint,rectangle,point]
  constructor
  · intro j
    fin_cases j
    · simpa only [EX,seedX,front,Matrix.cons_val_zero,hH.2.1] using hu
    · simpa [EX,seedX,front,h00] using box_mono phase0_subset_seed0 (phase0_sound hθ)
    · simpa [EX,seedX,front,h10] using box_mono phase2_subset_seed2 (phase2_sound hθ)
  · intro j
    fin_cases j
    · simpa only [EY,seedY,front,Matrix.cons_val_zero,hH.2.1] using hu
    · simpa [EY,seedY,front,h01] using box_mono phase1_subset_seed1 (phase1_sound hθ)
    · simpa [EY,seedY,front,h11] using box_mono phase3_subset_seed3 (phase3_sound hθ)

#print axioms normalized_root0_seed_boxes
end
end ShoulderRoot0Actual20261003
