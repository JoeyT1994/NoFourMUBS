import CertifiedShiftedResidualEnclosures

/-! Shared scaling of numerator and denominator is retained algebraically.
The centered phase consumer needs no division by the circle denominator.
Even a zero scale is safe: the existing positive-denominator test falls back. -/
namespace Mub6.Classification.SharedResidualPolynomials
open Matrix
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedSeedIntervals
open FourierSeedBinding Hadamard6Extensions.FourierSide
noncomputable section

theorem scaled_residual_identity (scale n d c : ℂ) :
    scale * (n - c*d) = scale*n - c*(scale*d) := by ring

theorem poleSafeCenteredLambdaBox_scaled_sound
    {R D : RationalRectangle} {a b radius : ℚ} {scale n d L : ℂ}
    (hR : MemRectangle R (scale * (n-rationalCenter a b*d)))
    (hD : MemRectangle D (scale*d)) (he : n=d*L)
    (hL : Complex.normSq L=1) :
    MemRectangle (poleSafeCenteredLambdaBox R D a b radius) L := by
  apply poleSafeCenteredLambdaBox_sound (n:=scale*n) (d:=scale*d) _ hD _ hL
  · simpa only [scaled_residual_identity] using hR
  · rw [he]
    ring

theorem actual_scaled_centered_lambda_boxes (x y : Fin 3 → ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y) (hD : (actualSide x y).det≠0)
    (scale : Fin 3 → ℂ)
    {R D : Fin 3 → RationalRectangle} {a b radius : Fin 3 → ℚ}
    (hres : ∀ i, MemRectangle (R i)
      (scale i * (FourierGramNumerators.numerator (sum3 x) (sum3 y) (cross3 x y) i -
        rationalCenter (a i) (b i) *
          liftedDenominator (sum3 x) (sum3 y) (cross3 x y) (actualSheet x y) i)))
    (hden : ∀ i, MemRectangle (D i)
      (scale i * liftedDenominator (sum3 x) (sum3 y) (cross3 x y) (actualSheet x y) i)) :
    ∀ i, MemRectangle (centeredLambdaBoxes R D a b radius i) (actualLambda x y i) := by
  obtain ⟨hphase,_,_,_,he⟩ := actual_lambda_binding x y hx hy hD
  intro i
  exact poleSafeCenteredLambdaBox_scaled_sound (hres i) (hden i) (he i) (hphase i)

theorem physical_scaled_centered_lambda_boxes {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (side : Side) (scale : Fin 3 → ℂ)
    {R D : Fin 3 → RationalRectangle} {a b radius : Fin 3 → ℚ}
    (hres : ∀ i, MemRectangle (R i)
      (scale i * (residualPoly side (a i) (b i) i).eval (physicalPoint H side)))
    (hden : ∀ i, MemRectangle (D i)
      (scale i * (denominatorPoly side i).eval (physicalPoint H side))) :
    ∀ i, MemRectangle (centeredLambdaBoxes R D a b radius i)
      (sideLambda (physicalSide H side) i) := by
  apply actual_scaled_centered_lambda_boxes (physicalSide H side 1) (physicalSide H side 2)
    (physical_phase hH side 1) (physical_phase hH side 2) (physical_det_ne_zero hH side) scale
  · intro i
    simpa only [physical_residual hH,sideS,sideT,sideR,FourierPhysicalSide.s,
      FourierPhysicalSide.t,FourierPhysicalSide.r,sum3,cross3,sideSheet,actualSheet] using hres i
  · intro i
    simpa only [physical_denominator hH,sideS,sideT,sideR,FourierPhysicalSide.s,
      FourierPhysicalSide.t,FourierPhysicalSide.r,sum3,cross3,sideSheet,actualSheet] using hden i

/-- Actual side moments from scaled residual boxes and the usual seed/sheet
memberships. Scaling does not remove any pole or require a nonzero scale. -/
theorem physical_scaled_centered_moment_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (side : Side) (scale : Fin 3 → ℂ)
    {B : Fin 4 → RationalRectangle} {Z W : RationalRectangle}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    (hZ : MemRectangle Z (sideSheet (physicalSide H side)))
    (w : ℂ) (hW : MemRectangle W w)
    {R D : Fin 3 → RationalRectangle} {a b radius : Fin 3 → ℚ}
    (hres : ∀ i, MemRectangle (R i)
      (scale i * (residualPoly side (a i) (b i) i).eval (physicalPoint H side)))
    (hden : ∀ i, MemRectangle (D i)
      (scale i * (denominatorPoly side i).eval (physicalPoint H side))) :
    CoversSideMoments
      (lambdaMomentBoxes (sideBoxes B side).s (sideBoxes B side).t (sideBoxes B side).r
        Z W (centeredLambdaBoxes R D a b radius))
      (physicalSide H side 1) (physicalSide H side 2) w := by
  have hs := physical_side_boxes hH side hB
  apply actual_lambda_moment_cover _ _ w (physical_phase hH side 1)
    (physical_phase hH side 2) (physical_det_ne_zero hH side) _ _ _ hZ hW
    (physical_scaled_centered_lambda_boxes hH side scale hres hden)
  · simpa only [sideS,FourierPhysicalSide.s,sum3] using hs.s_mem
  · simpa only [sideT,FourierPhysicalSide.t,sum3] using hs.t_mem
  · simpa only [sideR,FourierPhysicalSide.r,cross3] using hs.r_mem

#print axioms Mub6.Classification.SharedResidualPolynomials.scaled_residual_identity
#print axioms Mub6.Classification.SharedResidualPolynomials.poleSafeCenteredLambdaBox_scaled_sound
#print axioms Mub6.Classification.SharedResidualPolynomials.actual_scaled_centered_lambda_boxes
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_scaled_centered_lambda_boxes
#print axioms Mub6.Classification.SharedResidualPolynomials.physical_scaled_centered_moment_cover
end
end Mub6.Classification.SharedResidualPolynomials
