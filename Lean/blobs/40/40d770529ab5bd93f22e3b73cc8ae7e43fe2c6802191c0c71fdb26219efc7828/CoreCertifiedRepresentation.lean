import CoreTableBridge
import CoreDataEqualitiesSplit
import CoreLeafRefinement

/-! Instantiate the exact data premises of the separately checked leaf bridge.
These equalities do not assert acceptance of any finite forest. -/
set_option autoImplicit false
open Seed0024ClusterTubeTable20261007

namespace Seed0024PhaseCoreBridge20261007

theorem compactSupplierTable_represents : TableRepresents compactSupplierTable :=
  tableEntry_eq

theorem certifiedCentres_represent : CentresRepresent :=
  centreEntry_eq

end Seed0024PhaseCoreBridge20261007

#print axioms Seed0024PhaseCoreBridge20261007.compactSupplierTable_represents
#print axioms Seed0024PhaseCoreBridge20261007.certifiedCentres_represent
