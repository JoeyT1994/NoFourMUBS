import TightShiftedMomentCover
import ResidualJob60e184ee2c76b59dPhysical

namespace Mub6.Classification.IntegratedTightMomentConsumer
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedSeedIntervals
open Mub6.Classification.SharedSeedSheetIntervals
open Mub6.Classification.SharedResidualPolynomials
open ResidualJob60e184ee2c76b59dPhysical
noncomputable section

/-- All six literal programs feed the tight Fourier-root and supplied sqrt-bound
consumer. The literal arithmetic control's sheet boxes are not assumed physical. -/
theorem physical_seed_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) {B : SeedBoxes}
    (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval B) u)
    (radius : Side → Fin 3 → ℚ) :
    ∃ hs vs : Bool,
      CoversSideMoments
        (tightShiftedMomentBoxes B u hs .horizontal (residualPrograms .horizontal)
          (denominatorPrograms .horizontal) (centerReal .horizontal) (centerImag .horizontal)
          (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (tightShiftedMomentBoxes B u vs .vertical (residualPrograms .vertical)
          (denominatorPrograms .vertical) (centerReal .vertical) (centerImag .vertical)
          (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega :=
  physical_seed_tight_shifted_moment_cover hH hB hu coordinateShift
    residualPrograms denominatorPrograms centerReal centerImag radius
    residual_represents denominator_represents

/-- Four circle-cell memberships suffice; all sparse identities are discharged
by the integrated worker, with no actual residual membership premise. -/
theorem physical_circle_cover {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) (signs : SeedSigns)
    {T : Fin 4 → Interval} {t : SeedParameters}
    (he : seedEntry H = circleSeed signs t) (ht : ∀ i, Mem (T i) (t i))
    {u : ℚ} (hu : SqrtUpperCertificate (sharedRadicandInterval (circleSeedBoxes signs T)) u)
    (radius : Side → Fin 3 → ℚ) :
    let B := circleSeedBoxes signs T
    ∃ hs vs : Bool,
      CoversSideMoments
        (tightShiftedMomentBoxes B u hs .horizontal (residualPrograms .horizontal)
          (denominatorPrograms .horizontal) (centerReal .horizontal) (centerImag .horizontal)
          (radius .horizontal))
        (northeast H 1) (northeast H 2) Hadamard6Extensions.FourPhaseRoots.omega ∧
      CoversSideMoments
        (tightShiftedMomentBoxes B u vs .vertical (residualPrograms .vertical)
          (denominatorPrograms .vertical) (centerReal .vertical) (centerImag .vertical)
          (radius .vertical))
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) Hadamard6Extensions.FourPhaseRoots.omega :=
  physical_circle_tight_shifted_moment_cover hH signs he ht hu coordinateShift
    residualPrograms denominatorPrograms centerReal centerImag radius
    residual_represents denominator_represents

#print axioms Mub6.Classification.IntegratedTightMomentConsumer.physical_seed_cover
#print axioms Mub6.Classification.IntegratedTightMomentConsumer.physical_circle_cover
end
end Mub6.Classification.IntegratedTightMomentConsumer
