import CoreLeafBridgeSplit
import WitnessTapeRefinement

set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024ClusterTubeTable20261007
namespace Seed0024PhaseCoreBridge20261007

theorem core_leaf_refinement (table : SupplierTable) (h : TableRepresents table)
    (hc : CentresRepresent) :
    Seed0024PhaseTapeBridge20261007.LeafRefinement (bridgeChecks table) := by
  constructor
  · intro s k hs
    rw [midpointReject_eq_square table h] at hs
    exact acceleratedScalarRejectCheck_implies table (toPhaseCell s) k none hs
  · intro s k r hs
    rw [endpointReject_eq_square table h] at hs
    exact acceleratedScalarRejectCheck_implies table (toPhaseCell s) k (some r) hs
  · intro s label hs
    rw [labelAccept_eq_square table h hc] at hs
    exact hs

end Seed0024PhaseCoreBridge20261007
#print axioms Seed0024PhaseCoreBridge20261007.core_leaf_refinement
