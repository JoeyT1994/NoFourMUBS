import Root1PhaseBounds
import Root1CertificateData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot1Moments20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot1Centers20261003
noncomputable section
open Mub6.Classification.SharedSeedIntervals
open ShoulderRoot1Data20261003
def oneBox : RationalRectangle := boxPoint 1 0
def rawS := boxNeg (boxAdd (boxAdd oneBox Phase0) Phase2)
def rawT := boxNeg (boxAdd (boxAdd oneBox Phase1) Phase3)
def rawR := boxNeg (boxAdd (boxAdd oneBox (boxMul Phase1 (boxConj Phase0))) (boxMul Phase3 (boxConj Phase2)))
theorem s_check : BoxIncludes rawS moments.s := by decide +kernel
theorem t_check : BoxIncludes rawT moments.t := by decide +kernel
theorem r_check : BoxIncludes rawR moments.r := by decide +kernel
theorem seed0_check : BoxIncludes Phase0 seed0 := by decide +kernel
theorem seed1_check : BoxIncludes Phase1 seed1 := by decide +kernel
theorem seed2_check : BoxIncludes Phase2 seed2 := by decide +kernel
theorem seed3_check : BoxIncludes Phase3 seed3 := by decide +kernel
theorem phase_boxes_sound {θ : Fin 4 → ℝ} (h : Cube θ) :
    ∀ k, MemRectangle (seeds k) (cis (θ k)) := by
  intro k;fin_cases k
  · simpa [seeds] using box_mono seed0_check (phase0_sound h)
  · simpa [seeds] using box_mono seed1_check (phase1_sound h)
  · simpa [seeds] using box_mono seed2_check (phase2_sound h)
  · simpa [seeds] using box_mono seed3_check (phase3_sound h)
theorem moment_boxes_sound {θ : Fin 4 → ℝ} (h : Cube θ) :
    CoversSidePolynomials moments (-(1+cis (θ 0)+cis (θ 2)))
      (-(1+cis (θ 1)+cis (θ 3)))
      (-(1+cis (θ 1)*star (cis (θ 0))+cis (θ 3)*star (cis (θ 2)))) := by
  have h0 := phase0_sound h;have h1 := phase1_sound h
  have h2 := phase2_sound h;have h3 := phase3_sound h
  have hu : MemRectangle oneBox (1:ℂ) := by norm_num [MemRectangle,oneBox,boxPoint,rectangle,point]
  exact ⟨box_mono s_check (mem_boxNeg (mem_boxAdd (mem_boxAdd hu h0) h2)),
    box_mono t_check (mem_boxNeg (mem_boxAdd (mem_boxAdd hu h1) h3)),
    box_mono r_check (mem_boxNeg (mem_boxAdd (mem_boxAdd hu
      (mem_boxMul h1 (mem_boxConj h0))) (mem_boxMul h3 (mem_boxConj h2))))⟩
#print axioms phase_boxes_sound
#print axioms moment_boxes_sound
end
end ShoulderRoot1Moments20261003
