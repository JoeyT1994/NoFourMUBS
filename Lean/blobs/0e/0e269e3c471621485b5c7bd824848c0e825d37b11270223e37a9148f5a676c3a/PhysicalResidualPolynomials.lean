import SharedResidualPolynomials

namespace Mub6.Classification.SharedResidualPolynomials
open Matrix MvPolynomial
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open FourierSeedBinding Hadamard6Extensions.FourierSide
noncomputable section

def physicalSide (H : Mat6) : Side → Mub6.Classification.CompactCover.Mat3
  | .horizontal => northeast H
  | .vertical => (southwest H)ᵀ

def physicalPoint (H : Mat6) (side : Side) : Variable → ℝ :=
  seedPoint (seedEntry H) (sideSheet (physicalSide H side))

theorem physical_seed_moments {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) :
    seedS side (seedEntry H) = sideS (physicalSide H side) ∧
    seedT side (seedEntry H) = sideT (physicalSide H side) ∧
    seedR side (seedEntry H) = sideR (physicalSide H side) := by
  cases side
  · obtain ⟨hs,ht,hr⟩ := horizontal_moments hH
    exact ⟨hs.symm,ht.symm,hr.symm⟩
  · obtain ⟨hs,ht,hr⟩ := vertical_moments hH
    exact ⟨hs.symm,ht.symm,hr.symm⟩

theorem physical_phase {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) (i : Fin 3) : IsPhase3 (physicalSide H side i) := by
  cases side
  · exact horizontal_phase hH i
  · exact vertical_phase hH i

theorem physical_actualSide {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) : Hadamard6Extensions.FourierSide.actualSide
      (physicalSide H side 1) (physicalSide H side 2) = physicalSide H side := by
  rw [← Hadamard6Extensions.FourPhaseGram.scalar_side_eq]
  cases side
  · exact horizontal_actualSide hH
  · exact vertical_actualSide hH

theorem physical_det_ne_zero {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) : (Hadamard6Extensions.FourierSide.actualSide
      (physicalSide H side 1) (physicalSide H side 2)).det ≠ 0 := by
  rw [physical_actualSide hH]
  cases side
  · exact horizontal_det_ne_zero hH
  · exact vertical_det_ne_zero hH

/-- This identity ties both denominator evaluations to actual matrix sides. -/
theorem physical_denominator {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) (i : Fin 3) :
    (denominatorPoly side i).eval (physicalPoint H side) =
      liftedDenominator (sideS (physicalSide H side)) (sideT (physicalSide H side))
        (sideR (physicalSide H side)) (sideSheet (physicalSide H side)) i := by
  obtain ⟨hs,ht,hr⟩ := physical_seed_moments hH side
  simp only [physicalPoint,eval_denominator,hs,ht,hr]

/-- Both sides and every lambda index are physically bound; no denominator
nonzero premise is used or inferred. -/
theorem physical_residual {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) (a b : ℚ) (i : Fin 3) :
    (residualPoly side a b i).eval (physicalPoint H side) =
      FourierGramNumerators.numerator (sideS (physicalSide H side))
        (sideT (physicalSide H side)) (sideR (physicalSide H side)) i -
      rationalCenter a b * liftedDenominator (sideS (physicalSide H side))
        (sideT (physicalSide H side)) (sideR (physicalSide H side))
        (sideSheet (physicalSide H side)) i := by
  obtain ⟨hs,ht,hr⟩ := physical_seed_moments hH side
  simp only [physicalPoint,eval_residual,hs,ht,hr]

/-- A normalized polynomial enclosure producer can supply these evaluation
memberships directly. The inherited centered consumer retains its fallback. -/
theorem physical_centered_lambda_boxes {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) {R D : Fin 3 → RationalRectangle} {a b radius : Fin 3 → ℚ}
    (hres : ∀ i, MemRectangle (R i)
      ((residualPoly side (a i) (b i) i).eval (physicalPoint H side)))
    (hden : ∀ i, MemRectangle (D i)
      ((denominatorPoly side i).eval (physicalPoint H side))) :
    ∀ i, MemRectangle (centeredLambdaBoxes R D a b radius i)
      (sideLambda (physicalSide H side) i) := by
  apply actual_centered_lambda_boxes (physicalSide H side 1) (physicalSide H side 2)
    (physical_phase hH side 1) (physical_phase hH side 2) (physical_det_ne_zero hH side)
  · intro i
    simpa only [physical_residual hH,sideS,sideT,sideR,FourierPhysicalSide.s,FourierPhysicalSide.t,FourierPhysicalSide.r,sum3,cross3,sideSheet,actualSheet] using hres i
  · intro i
    simpa only [physical_denominator hH,sideS,sideT,sideR,FourierPhysicalSide.s,FourierPhysicalSide.t,FourierPhysicalSide.r,sum3,cross3,sideSheet,actualSheet] using hden i

/-- A genuinely zero denominator cannot pass the positive denominator test. -/
theorem centered_fallback_of_zero {R D : RationalRectangle} {a b radius : ℚ}
    (hd : MemRectangle D (0 : ℂ)) :
    poleSafeCenteredLambdaBox R D a b radius = unitBox := by
  have hlo := (mem_boxNormSq hd).1
  have hnonpos : (boxNormSq D).lo ≤ 0 := by
    norm_num at hlo
    exact_mod_cast hlo
  unfold poleSafeCenteredLambdaBox
  split_ifs with hc
  · exact False.elim ((not_lt_of_ge hnonpos) hc.1)
  · rfl

#print axioms Mub6.Classification.SharedResidualPolynomials.physical_seed_moments
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_phase
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_actualSide
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_det_ne_zero
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_denominator
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_residual
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_centered_lambda_boxes
#print axioms Mub6.Classification.SharedResidualPolynomials.centered_fallback_of_zero
end
end Mub6.Classification.SharedResidualPolynomials
