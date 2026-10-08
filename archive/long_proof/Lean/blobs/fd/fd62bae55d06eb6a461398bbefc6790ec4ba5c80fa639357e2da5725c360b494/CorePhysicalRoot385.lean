import CoreCertifiedWitnessSemantics
import PureCentre385Compositional

/-! One actual auxiliary five-phase root, connected to the physical ray-label
meaning. This is not a physical four-phase Hadamard box or a complete cover. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024PhaseCoreBridge20261007

namespace Seed0024PhaseCoreBridge20261007

theorem root2241383_covered :
    Seed0024ClusterTubeCover20261007.CoveredCell ClosedPhaseDomain
      (fun k theta => centreProjectorLabel k (turnRay theta))
      (toPhaseCell (ordinalCellCode 2241383)) :=
  core_accepted_cell_physical (ordinalCellCode 2241383)
    PureCentre385Compositional.tags_000 PureCentre385Compositional.checked

end Seed0024PhaseCoreBridge20261007

#print axioms Seed0024PhaseCoreBridge20261007.root2241383_covered
