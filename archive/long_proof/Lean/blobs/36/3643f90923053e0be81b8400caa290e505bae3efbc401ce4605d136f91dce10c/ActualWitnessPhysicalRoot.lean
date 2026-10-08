import ActualWitnessSemantics
import PureCentre385Compositional

/-! One actual auxiliary five-phase root has checked physical ray-label
coverage. This is not a full phase cover or a four-phase Hadamard-box closure. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007

namespace Seed0024PhaseCoreBridge20261007

theorem actual_root2241383_covered :
    Seed0024ClusterTubeCover20261007.CoveredCell ClosedPhaseDomain phaseCentreLabel
      (toPhaseCell (ordinalCellCode 2241383)) :=
  actual_accepted_cell_physical (ordinalCellCode 2241383)
    PureCentre385Compositional.tags_000 PureCentre385Compositional.checked
#print axioms actual_root2241383_covered

end Seed0024PhaseCoreBridge20261007
