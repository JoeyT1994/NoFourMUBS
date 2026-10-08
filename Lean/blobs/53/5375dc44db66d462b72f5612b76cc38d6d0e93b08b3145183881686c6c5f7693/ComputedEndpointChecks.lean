import SquareEndpointRejection
import SquareBallLabelNoInit
import PhaseTape
import ApproximatePhaseFrontend

/-! Table-parametric soundness for internally witnessed endpoint square tests.
This module does not import or specialize the concrete trigonometric table.
The table is used only through its existing accuracy contract. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007

namespace Seed0024ClusterTube20261007

noncomputable def computedEndpointChecks (table : SupplierTable) : LeafChecks 48 :=
  ⟨fun s k => squareMidpointRejectCheck table s k ||
      squareEndpointRejectCheck table s k (leafMidpointNorm table s k).toNat,
    squareBallLabelCheck table⟩

theorem computedEndpointChecks_sound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) :
    LeafSound (computedEndpointChecks table) ClosedPhaseDomain
      (fun k theta => centreProjectorLabel k (turnRay theta)) := by
  constructor
  · intro s k theta hs ht hc hf
    change (squareMidpointRejectCheck table s k ||
      squareEndpointRejectCheck table s k (leafMidpointNorm table s k).toNat)=true at hc
    rcases Bool.or_eq_true.mp hc with hmid|hend
    · exact squareMidpointRejectCheck_sound table hTable s hs.1 k theta ht hmid (hf k)
    · exact squareEndpointRejectCheck_sound table hTable s hs.1 k
        (leafMidpointNorm table s k).toNat theta ht hend (hf k)
  · intro s k theta hs ht hc
    exact squareBallLabelCheck_sound table hTable s k theta ht hc

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.computedEndpointChecks_sound
