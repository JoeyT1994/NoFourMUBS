import ConcretePhaseChecksNoInit
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
set_option trace.profiler true
open Seed0024ClusterTubeCover20261007
namespace Seed0024ClusterTube20261007.CentrePilot

def roots : List Cell := ordinalRange 2241383 1
def tags : List UInt8 := [
  54, 6, 6, 6, 6, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 6, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1, 6, 54, 1, 4, 4, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 1, 6, 4, 4, 1, 1, 1, 4, 6, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 1, 1, 6, 1, 1, 1, 6, 1, 1, 1, 1, 6, 54, 1, 6, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 6, 6, 1, 6, 1, 5, 1, 1, 1, 6, 6, 1, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 1, 1, 6, 1, 1, 1, 6, 1, 1, 1, 1, 54, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 6, 54, 2, 6, 6, 6, 2, 2, 2, 6, 1, 6, 6, 6, 1, 6, 1, 6, 2, 2, 2, 2, 0, 0, 2, 2, 0, 0, 6, 6, 0, 0, 2, 6, 6, 54, 4, 6, 4, 4, 4, 4, 4, 4, 6, 6, 4, 6, 1, 6, 4, 4, 6, 6, 4, 6, 2, 6, 4, 4, 6, 6, 6, 6, 6, 6, 4, 6, 6, 54, 3, 6, 3, 6, 1, 6, 6, 6, 1, 3, 3, 3, 1, 1, 1, 6, 3, 6, 3, 6, 0, 6, 6, 6, 3, 3, 3, 3, 0, 0, 3, 6, 6, 6, 6, 54, 1, 1, 1, 6, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 6, 54, 1, 6, 6, 6, 1, 1, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 4, 6, 1, 6, 5, 5, 1, 1, 1, 6, 6]

theorem checked : checkTape concretePhaseChecks roots tags=true := by
  decide +kernel

theorem covered : CoveredCell ClosedPhaseDomain phaseCentreLabel (ordinalCell 2241383) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel
    concretePhaseChecks_sound tags roots checked
  simp [roots,ordinalRange,List.range']

end Seed0024ClusterTube20261007.CentrePilot
#print axioms Seed0024ClusterTube20261007.CentrePilot.checked
#print axioms Seed0024ClusterTube20261007.CentrePilot.covered
