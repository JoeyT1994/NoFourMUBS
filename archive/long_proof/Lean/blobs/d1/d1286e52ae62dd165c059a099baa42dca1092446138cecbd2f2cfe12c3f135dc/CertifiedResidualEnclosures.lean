import PhysicalResidualPolynomials
import SparsePolynomialIntervals

/-! The executable sparse evaluator supplies actual residual memberships.
The only analytic cell premises are the SAME four seed rectangles and the
selected actual sheet rectangle; polynomial identities are checked separately. -/
namespace Mub6.Classification.SharedResidualPolynomials
open Matrix MvPolynomial
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedSeedIntervals
open Mub6.Classification.SparsePolynomialIntervals
open FourierSeedBinding Hadamard6Extensions.FourierSide
noncomputable section

structure ComplexProgram where
  re : Program Variable
  im : Program Variable

def ComplexProgram.Represents (S : ComplexProgram) (P : ComplexPoly) : Prop :=
  programPolynomial S.re = P.re ∧ programPolynomial S.im = P.im

def ComplexProgram.enclose (B : Variable → Interval) (S : ComplexProgram) :
    RationalRectangle := rectangle
      (SparsePolynomialIntervals.enclose B S.re) (SparsePolynomialIntervals.enclose B S.im)

theorem ComplexProgram.enclose_sound (B : Variable → Interval) (p : Variable → ℝ)
    (hp : ∀ i, Mem (B i) (p i)) (S : ComplexProgram) (P : ComplexPoly)
    (hP : S.Represents P) : MemRectangle (S.enclose B) (P.eval p) := by
  rw [ComplexProgram.enclose,mem_rectangle_iff]
  exact ⟨enclose_polynomial B p hp S.re P.re hP.1,
    enclose_polynomial B p hp S.im P.im hP.2⟩

/-- All real polynomial coordinates inherit one seed-cell choice. -/
def seedCoordinateBoxes (B : Fin 4 → RationalRectangle) (Z : RationalRectangle) :
    Variable → Interval := fun (j,k) =>
  let Q := if h : j.val < 4 then B ⟨j.val,h⟩ else Z
  if k = 0 then reInterval Q else imInterval Q

theorem seedCoordinateBoxes_sound (B : Fin 4 → RationalRectangle) (Z : RationalRectangle)
    (v : Fin 4 → ℂ) (z : ℂ) (hB : ∀ i, MemRectangle (B i) (v i))
    (hZ : MemRectangle Z z) :
    ∀ i, Mem (seedCoordinateBoxes B Z i) (seedPoint v z i) := by
  rintro ⟨j,k⟩
  by_cases hj : j.val < 4
  · by_cases hk : k = 0
    · simp only [seedCoordinateBoxes,seedPoint,dif_pos hj,if_pos hk]
      exact ⟨(hB ⟨j.val,hj⟩).1,(hB ⟨j.val,hj⟩).2.1⟩
    · simp only [seedCoordinateBoxes,seedPoint,dif_pos hj,if_neg hk]
      exact (hB ⟨j.val,hj⟩).2.2
  · by_cases hk : k = 0
    · simp only [seedCoordinateBoxes,seedPoint,dif_neg hj,if_pos hk]
      exact ⟨hZ.1,hZ.2.1⟩
    · simp only [seedCoordinateBoxes,seedPoint,dif_neg hj,if_neg hk]
      exact hZ.2.2

theorem physical_coordinates_mem {H : Mat6} (side : Side)
    {B : Fin 4 → RationalRectangle} {Z : RationalRectangle}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    (hZ : MemRectangle Z (sideSheet (physicalSide H side))) :
    ∀ i, Mem (seedCoordinateBoxes B Z i) (physicalPoint H side i) :=
  seedCoordinateBoxes_sound B Z (seedEntry H) (sideSheet (physicalSide H side)) hB hZ

/-- No residual or denominator membership is supplied: the sparse evaluator
proves both from coordinate membership and actual polynomial identities. -/
theorem certified_physical_centered_lambdas {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (side : Side)
    {B : Fin 4 → RationalRectangle} {Z : RationalRectangle}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    (hZ : MemRectangle Z (sideSheet (physicalSide H side)))
    (R D : Fin 3 → ComplexProgram) (a b radius : Fin 3 → ℚ)
    (hR : ∀ i, (R i).Represents (residualPoly side (a i) (b i) i))
    (hD : ∀ i, (D i).Represents (denominatorPoly side i)) :
    ∀ i, MemRectangle
      (centeredLambdaBoxes (fun i => (R i).enclose (seedCoordinateBoxes B Z))
        (fun i => (D i).enclose (seedCoordinateBoxes B Z)) a b radius i)
      (sideLambda (physicalSide H side) i) := by
  apply physical_centered_lambda_boxes hH side
  · intro i
    exact (R i).enclose_sound _ _ (physical_coordinates_mem side hB hZ) _ (hR i)
  · intro i
    exact (D i).enclose_sound _ _ (physical_coordinates_mem side hB hZ) _ (hD i)

def sideBoxes (B : SeedBoxes) : Side → SidePolynomialBoxes
  | .horizontal => horizontalBoxes B
  | .vertical => verticalBoxes B

theorem physical_side_boxes {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) {B : SeedBoxes} (hB : ∀ i, MemRectangle (B i) (seedEntry H i)) :
    CoversSidePolynomials (sideBoxes B side) (sideS (physicalSide H side))
      (sideT (physicalSide H side)) (sideR (physicalSide H side)) := by
  have hs := physical_shared_seed_inputs hH hB
  cases side
  · exact hs.1
  · exact hs.2

/-- Full moment consumer with concrete rational residual polynomials, shared
seed boxes, checked sparse identities, and automatic safe lambda fallback. -/
theorem certified_physical_centered_moments {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (side : Side)
    {B : Fin 4 → RationalRectangle} {Z W : RationalRectangle}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    (hZ : MemRectangle Z (sideSheet (physicalSide H side)))
    (w : ℂ) (hW : MemRectangle W w)
    (R D : Fin 3 → ComplexProgram) (a b radius : Fin 3 → ℚ)
    (hR : ∀ i, (R i).Represents (residualPoly side (a i) (b i) i))
    (hD : ∀ i, (D i).Represents (denominatorPoly side i)) :
    CoversSideMoments
      (lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r
        Z W (centeredLambdaBoxes (fun i => (R i).enclose (seedCoordinateBoxes B Z))
          (fun i => (D i).enclose (seedCoordinateBoxes B Z)) a b radius))
      (physicalSide H side 1) (physicalSide H side 2) w := by
  have hs := physical_side_boxes hH side hB
  apply actual_lambda_moment_cover _ _ w (physical_phase hH side 1)
    (physical_phase hH side 2) (physical_det_ne_zero hH side) _ _ _ hZ hW
    (certified_physical_centered_lambdas hH side hB hZ R D a b radius hR hD)
  · simpa only [sideS,FourierPhysicalSide.s,sum3] using hs.s_mem
  · simpa only [sideT,FourierPhysicalSide.t,sum3] using hs.t_mem
  · simpa only [sideR,FourierPhysicalSide.r,cross3] using hs.r_mem

#print axioms Mub6.Classification.SharedResidualPolynomials.ComplexProgram.enclose_sound
#print axioms Mub6.Classification.SharedResidualPolynomials.seedCoordinateBoxes_sound
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_coordinates_mem
#print axioms Mub6.Classification.SharedResidualPolynomials.certified_physical_centered_lambdas
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_side_boxes
#print axioms Mub6.Classification.SharedResidualPolynomials.certified_physical_centered_moments
end
end Mub6.Classification.SharedResidualPolynomials
