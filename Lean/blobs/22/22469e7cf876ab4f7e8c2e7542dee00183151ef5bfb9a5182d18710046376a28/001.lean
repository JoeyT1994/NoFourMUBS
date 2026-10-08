import SharedSeedProducerControl
import TightOmegaSeedMoments
set_option autoImplicit false

namespace Mub6.Classification.SeedCellMomentExport
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.GoodMinor Mub6.Classification.CompactCover
open Mub6.Classification.FourPhase Mub6.Classification.SharedSeedIntervals
open Mub6.Classification.SharedSeedSheetIntervals
open Mub6.Classification.RadicalIntervals
open Hadamard6Extensions.FourPhaseRoots
open SharedSeedProducerControl
noncomputable section

/-- The generated exact arithmetic discharges the physical sheet API's bound. -/
theorem exported_sqrt_certificate :
    SqrtUpperCertificate (sharedRadicandInterval seed) sqrtUpper := by
  change 0 ≤ sqrtUpper ∧
    (meetInterval (radicandBox (SharedSeedIntervals.horizontalBoxes seed))
      (radicandBox (SharedSeedIntervals.verticalBoxes seed))).hi ≤ sqrtUpper^2
  rw [← shared_radicand_eq]
  exact sqrt_upper_certificate

def horizontalOutput (negative : Bool) : SideMomentBoxes :=
  TightOmegaSeedMoments.horizontalBoxes seed sqrtUpper negative

def verticalOutput (negative : Bool) : SideMomentBoxes :=
  TightOmegaSeedMoments.verticalBoxes seed sqrtUpper negative

/-- Universal physical binding for the exported cell. This does not assert
that this particular arithmetic control cell has a physical occupant. -/
theorem exported_physical_moment_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    {t : SeedParameters} (he : seedEntry H = circleSeed signs t)
    (ht : ∀ i, Mem (cell i) (t i)) :
    ∃ horizontalSign verticalSign : Bool,
      CoversSideMoments (horizontalOutput horizontalSign)
        (northeast H 1) (northeast H 2) omega ∧
      CoversSideMoments (verticalOutput verticalSign)
        ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) omega := by
  apply TightOmegaSeedMoments.physical_seed_moment_cover hH _ exported_sqrt_certificate
  intro i
  rw [he]
  exact seed_sound ht i

#print axioms exported_sqrt_certificate
#print axioms exported_physical_moment_cover
end
end Mub6.Classification.SeedCellMomentExport
