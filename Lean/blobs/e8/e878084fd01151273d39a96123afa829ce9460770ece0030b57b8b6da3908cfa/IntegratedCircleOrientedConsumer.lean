import IntegratedCircleAdaptiveCenters
import FourCircleOrientedOmegaEnclosures

namespace IntegratedCircleOrientedConsumer
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedSeedIntervals Mub6.Classification.SharedSeedSheetIntervals
open Mub6.Classification.SharedResidualPolynomials
open Mub6.Classification.FourCircleResidualSubstitution
open CircleJob23f409ee25a86f2dPhysical
open IntegratedCircleAdaptiveCenters
noncomputable section

/-- Actual six-pair payload, with arbitrary rational centers chosen per cell.
List concatenation is certified; narrower bounds or collected coefficients
are not asserted. The fixed Fourier root uses its proved positive-imaginary rectangle.
No center change requires a new circle substitution proof. -/
theorem physical_circle_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed signs t) (T : Fin 4 → Interval)
    (ht : ∀ j, Mem (T j) (t j))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval (circleSeedBoxes signs T)) u)
    (a b radius : Side → Fin 3 → ℚ) :
    ∃ hs vs : Bool,
      CoversSideMoments
        (orientedCircleMomentBoxes signs T u hs .horizontal (adjustedPrograms a b .horizontal)
          (denominatorPrograms .horizontal) (a .horizontal) (b .horizontal) (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (orientedCircleMomentBoxes signs T u vs .vertical (adjustedPrograms a b .vertical)
          (denominatorPrograms .vertical) (a .vertical) (b .vertical) (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega :=
  physical_circle_oriented_scaled_moment_cover hH signs t hseed T ht hu scale
    (adjustedPolynomials a b) (fun side i => (denominatorPrograms side i).polynomial)
    (adjustedPrograms a b) denominatorPrograms a b radius
    (adjusted_scales a b) denominator_scales
    (adjusted_represents a b) (fun side i => (denominatorPrograms side i).represents_polynomial)

#print axioms IntegratedCircleOrientedConsumer.physical_circle_cover
end
end IntegratedCircleOrientedConsumer
