import Root0PhysicalCap
import Root0Moments
import GlobalCornerSideBounds

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Actual20261003
open Mub6 Mub6.Numerical Mub6.Classification Matrix
open CompactCover GoodMinor FourierSeedBinding CanonicalCorners GlobalCornerDomain
open SharedSeedIntervals SideColumns SideColumns.ConcreteTwoRegions
open ShoulderRadian20261003 ShoulderRoot0Centers20261003
noncomputable section

theorem vertical_moment_boxes {H : Mat6} (hroot : InRoot0 H) :
    CoversSidePolynomials moments0 (rowS (H 1 1) (H 2 1))
      (rowT (H 1 2) (H 2 2)) (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) := by
  obtain ⟨θ,hθ,h00,h01,h10,h11⟩ := hroot
  simpa only [rowS,rowT,rowR,h00,h01,h10,h11] using
    ShoulderRoot0Moments20261003.moment_boxes_sound hθ

/-- Quantitative inputs for the separate exhaustive angular-cover theorem.
This is a bound theorem, not a cell exclusion. -/
theorem globalMax_root0_bounds {H : Mat6} (hH : GlobalMax H) (hroot : InRoot0 H) :
    score H≤1/80 ∧
    CoversSidePolynomials moments0 (rowS (H 1 1) (H 2 1))
      (rowT (H 1 2) (H 2 2)) (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) ∧
    System (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) :=
  ⟨normalized_score_cap hH.1 hroot,vertical_moment_boxes hroot,
    normalized_vertical_system hH.1⟩

#print axioms vertical_moment_boxes
#print axioms globalMax_root0_bounds
end
end ShoulderRoot0Actual20261003
