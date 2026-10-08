import CoreLabelBridge
import PhaseForest
import ApproximatePhaseFrontend

/-! Split of the exact leaf bridge, preserving every data premise and predicate. -/
set_option autoImplicit false
set_option maxRecDepth 4096
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024ClusterTubeTable20261007
namespace Seed0024PhaseCoreBridge20261007

def bridgeChecks (table : SupplierTable) : Seed0024ClusterTubeCover20261007.LeafChecks 48 :=
  ⟨scalarRejectCheck table, squareBallLabelCheck table⟩

theorem bridgeChecks_sound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) :
    Seed0024ClusterTubeCover20261007.LeafSound (bridgeChecks table) ClosedPhaseDomain
      (fun k theta => centreProjectorLabel k (turnRay theta)) := by
  constructor
  · intro s k theta hs ht hc hf
    exact scalarRejectCheck_sound table hTable s hs.1 k theta ht hc (hf k)
  · intro s k theta hs ht hc
    exact squareBallLabelCheck_sound table hTable s k theta ht hc
#print axioms bridgeChecks_sound


end Seed0024PhaseCoreBridge20261007
