import RationalRootRefinement

/-! Exact controls at a branch cut and at a rational pole. These are enclosure
certificates, not physical Hadamard exclusions or a global coverage ledger. -/
namespace Mub6.Classification.RadicalIntervals.Controls
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.RadicalIntervals
noncomputable section

/-- A nondegenerate box crossing the negative real axis. -/
def crossingBox : RationalRectangle :=
  ⟨-1000001/1000000,-999999/1000000,-1/1000000,1/1000000⟩

theorem crossingBox_contains_center : MemRectangle crossingBox (-1 : ℂ) := by
  norm_num [MemRectangle,crossingBox]

theorem crossingBox_crosses_axis : crossingBox.imLo < 0 ∧ 0 < crossingBox.imHi := by
  norm_num [crossingBox]

theorem crossing_refined_certificate :
    RefinedCubeCertificate crossingBox (-1) 0 (1/10) 1 2 (1/1000000) := by
  constructor <;>
    norm_num [CubeCertificate,rootResidual,crossingBox,boxNormSq,boxSub,boxAdd,boxNeg,
      boxMul,boxPow,boxPoint,rectangle,reInterval,imInterval,point,add,neg,sub,mul,square]

/-- Some cube root lies within one millionth in each coordinate of -1 on
both sides of the principal branch cut. -/
theorem crossing_cube_root_enclosed {T : ℂ} (hT : MemRectangle crossingBox T) :
    ∃ τ : ℂ, τ^3=T ∧ MemRectangle (centerBox (-1) 0 (1/1000000)) τ := by
  obtain ⟨τ,ht,hb⟩ := refinedCubeCertificate_sound crossing_refined_certificate hT
  refine ⟨τ,ht,?_⟩
  norm_num [MemRectangle,boxMeet,centerBox] at hb ⊢
  exact hb

theorem crossing_square_certificate : SquareCertificate crossingBox 0 1 (1/100) := by
  norm_num [SquareCertificate,rootResidual,crossingBox,boxNormSq,boxSub,boxAdd,boxNeg,
    boxMul,boxPow,boxPoint,rectangle,reInterval,imInterval,point,add,neg,sub,mul,square]

theorem crossing_all_square_roots_enclosed {D δ : ℂ}
    (hD : MemRectangle crossingBox D) (hδ : δ^2=D) :
    MemRectangle (centerBox 0 1 (1/100)) δ ∨
      MemRectangle (boxNeg (centerBox 0 1 (1/100))) δ :=
  squareCertificate_all_roots crossing_square_certificate hD hδ

theorem zero_pole_keeps_every_unit_phase (L : ℂ) (hL : Complex.normSq L=1) :
    MemRectangle (phaseQuotientBox (boxPoint 0 0) (boxPoint 0 0)) L := by
  have hzero : MemRectangle (boxPoint 0 0) (0 : ℂ) := by
    rw [show (0 : ℂ) = (⟨0, 0⟩ : ℂ) by apply Complex.ext <;> norm_num]
    simpa only [Rat.cast_zero] using mem_boxPoint_complex 0 0
  apply phaseQuotientBox_sound (n := 0) (d := 0)
  · exact hzero
  · exact hzero
  · exact hL
  · simp

#check crossingBox_contains_center
#print axioms crossingBox_contains_center
#check crossingBox_crosses_axis
#print axioms crossingBox_crosses_axis
#check crossing_refined_certificate
#print axioms crossing_refined_certificate
#check crossing_cube_root_enclosed
#print axioms crossing_cube_root_enclosed
#check crossing_square_certificate
#print axioms crossing_square_certificate
#check crossing_all_square_roots_enclosed
#print axioms crossing_all_square_roots_enclosed
#check zero_pole_keeps_every_unit_phase
#print axioms zero_pole_keeps_every_unit_phase
end
end Mub6.Classification.RadicalIntervals.Controls
