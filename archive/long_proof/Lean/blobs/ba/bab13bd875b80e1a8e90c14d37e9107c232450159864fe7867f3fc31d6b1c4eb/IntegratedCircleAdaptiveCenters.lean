import FourCircleResidualRecentering
import CircleJob23f409ee25a86f2dPhysical

namespace IntegratedCircleAdaptiveCenters
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedSeedIntervals Mub6.Classification.SharedSeedSheetIntervals
open Mub6.Classification.SharedResidualPolynomials
open Mub6.Classification.FourCircleResidualSubstitution
open CircleJob23f409ee25a86f2dPhysical
noncomputable section

def adjustedPrograms (a b : Side → Fin 3 → ℚ) (side : Side) (i : Fin 3) :
    CircleComplexProgram :=
  (residualPrograms side i).recenter (denominatorPrograms side i)
    (centerReal side i) (centerImag side i) (a side i) (b side i)

def adjustedPolynomials (a b : Side → Fin 3 → ℚ) (side : Side) (i : Fin 3) :
    CircleComplexPoly :=
  (residualPrograms side i).polynomial.recenter (denominatorPrograms side i).polynomial
    (centerReal side i) (centerImag side i) (a side i) (b side i)

theorem adjusted_scales (a b : Side → Fin 3 → ℚ) (side : Side) (i : Fin 3) :
    Scales signs (scale side i) (adjustedPolynomials a b side i)
      (residualPoly side (a side i) (b side i) i) :=
  Scales.recenter side i (centerReal side i) (centerImag side i) (a side i) (b side i)
    (residual_scales side i) (denominator_scales side i)

theorem adjusted_represents (a b : Side → Fin 3 → ℚ) (side : Side) (i : Fin 3) :
    (adjustedPrograms a b side i).Represents (adjustedPolynomials a b side i) :=
  (residualPrograms side i).recenter_represents (denominatorPrograms side i) _ _
    (centerReal side i) (centerImag side i) (a side i) (b side i)
    (residualPrograms side i).represents_polynomial
    (denominatorPrograms side i).represents_polynomial

/-- Actual six-pair payload, with arbitrary rational centers chosen per cell.
List concatenation is certified; narrower bounds or collected coefficients
are not asserted. No center change requires a new circle substitution proof. -/
theorem physical_circle_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed signs t) (T : Fin 4 → Interval)
    (ht : ∀ j, Mem (T j) (t j))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval (circleSeedBoxes signs T)) u)
    (a b radius : Side → Fin 3 → ℚ) :
    ∃ hs vs : Bool,
      CoversSideMoments
        (tightCircleMomentBoxes signs T u hs .horizontal (adjustedPrograms a b .horizontal)
          (denominatorPrograms .horizontal) (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (tightCircleMomentBoxes signs T u vs .vertical (adjustedPrograms a b .vertical)
          (denominatorPrograms .vertical) (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega :=
  physical_circle_tight_scaled_moment_cover hH signs t hseed T ht hu scale
    (adjustedPolynomials a b) (fun side i => (denominatorPrograms side i).polynomial)
    (adjustedPrograms a b) denominatorPrograms a b radius
    (adjusted_scales a b) denominator_scales
    (adjusted_represents a b) (fun side i => (denominatorPrograms side i).represents_polynomial)

#print axioms IntegratedCircleAdaptiveCenters.adjusted_scales
#print axioms IntegratedCircleAdaptiveCenters.adjusted_represents
#print axioms IntegratedCircleAdaptiveCenters.physical_circle_cover
end
end IntegratedCircleAdaptiveCenters
