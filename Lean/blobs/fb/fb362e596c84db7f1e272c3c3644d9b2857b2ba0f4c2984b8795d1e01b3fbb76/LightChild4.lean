import LightSquareChecks
import OrdinalRoots

/- Same failed33-node subtree, with only the replay arithmetic imports.
Candidate only: no physical consequence is asserted here. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
open Seed0024ClusterTubeCover20261007
namespace Seed0024ClusterTube20261007.LightChild4

def tags : List UInt8 := [54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 6, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1]

theorem checked : checkTape lightSquareChecks
    [childCell (ordinalCell 2241383) 4] tags=true := by
  decide +kernel

end Seed0024ClusterTube20261007.LightChild4
#print axioms Seed0024ClusterTube20261007.LightChild4.checked
