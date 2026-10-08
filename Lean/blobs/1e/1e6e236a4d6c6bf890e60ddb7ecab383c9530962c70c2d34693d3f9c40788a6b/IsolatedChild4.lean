import SquareConcretePhaseChecksNoInit
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
open Seed0024ClusterTubeCover20261007
namespace Seed0024ClusterTube20261007.IsolatedChild4
noncomputable def tags : List UInt8 := [54,1,1,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,6,6,6,1,6,1,4,1,1,1,6,1,1,1,1]
theorem checked : checkTape squareConcretePhaseChecks [childCell (ordinalCell 2241383) 4] tags=true := by
  decide +kernel
#print axioms checked
theorem covered : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 4) := by
  apply checkTape_sound squareConcretePhaseChecks ClosedPhaseDomain phaseCentreLabel squareConcretePhaseChecks_sound
    tags [childCell (ordinalCell 2241383) 4] checked
  exact List.mem_cons_self
#print axioms covered
end Seed0024ClusterTube20261007.IsolatedChild4
