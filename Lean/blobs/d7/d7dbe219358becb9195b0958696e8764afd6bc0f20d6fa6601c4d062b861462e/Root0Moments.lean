import Root0PhaseBounds
import ConcreteTwoRegions
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Moments20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot0Centers20261003
open Mub6.Classification.SharedSeedIntervals
open Mub6.Classification.SideColumns.ConcreteTwoRegions
noncomputable section
def oneBox : RationalRectangle := boxPoint 1 0
def rawS := boxNeg (boxAdd (boxAdd oneBox Phase0) Phase2)
def rawT := boxNeg (boxAdd (boxAdd oneBox Phase1) Phase3)
def rawR := boxNeg (boxAdd (boxAdd oneBox (boxMul Phase1 (boxConj Phase0))) (boxMul Phase3 (boxConj Phase2)))
theorem s_check : BoxIncludes rawS moments0.s := by decide +kernel
theorem t_check : BoxIncludes rawT moments0.t := by decide +kernel
theorem r_check : BoxIncludes rawR moments0.r := by decide +kernel
theorem moment_boxes_sound {θ : Fin 4 → ℝ} (h : Cube θ) :
    CoversSidePolynomials moments0 (-(1+cis (θ 0)+cis (θ 2)))
      (-(1+cis (θ 1)+cis (θ 3)))
      (-(1+cis (θ 1)*star (cis (θ 0))+cis (θ 3)*star (cis (θ 2)))) := by
  have h0 := phase0_sound h;have h1 := phase1_sound h
  have h2 := phase2_sound h;have h3 := phase3_sound h
  have hu : MemRectangle oneBox (1:ℂ) := by norm_num [MemRectangle,oneBox,boxPoint,rectangle,point]
  exact ⟨box_mono s_check (mem_boxNeg (mem_boxAdd (mem_boxAdd hu h0) h2)),
    box_mono t_check (mem_boxNeg (mem_boxAdd (mem_boxAdd hu h1) h3)),
    box_mono r_check (mem_boxNeg (mem_boxAdd (mem_boxAdd hu
      (mem_boxMul h1 (mem_boxConj h0))) (mem_boxMul h3 (mem_boxConj h2))))⟩
#print axioms moment_boxes_sound
end
end ShoulderRoot0Moments20261003
