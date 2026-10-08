import LightPhaseSound
import CoreLabelBridge
import WitnessTapeRefinement

/- Reviewer-authored candidate only. Not compiled by reviewer.
The statement and all representation hypotheses are unchanged. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024ClusterTubeTable20261007 Seed0024PhaseCoreBridge20261007
namespace Seed0024LightPhase20261007

theorem core_leaf_refinement_direct (table : SupplierTable)
    (h : TableRepresents table) (hc : CentresRepresent) :
    Seed0024PhaseTapeBridge20261007.LeafRefinement (bridgeChecks table) :=
  { midpoint := fun s k hs =>
      show scalarRejectCheck table (toPhaseCell s) k = true from
        acceleratedScalarRejectCheck_implies table (toPhaseCell s) k none
          ((midpointReject_eq_square table h s k).symm.trans hs)
    endpoint := fun s k r hs =>
      show scalarRejectCheck table (toPhaseCell s) k = true from
        acceleratedScalarRejectCheck_implies table (toPhaseCell s) k (some r)
          ((endpointReject_eq_square table h s k r).symm.trans hs)
    inclusion := fun s label hs =>
      show squareBallLabelCheck table (toPhaseCell s) label = true from
        (labelAccept_eq_square table h hc s label).symm.trans hs }

#print axioms core_leaf_refinement_direct
end Seed0024LightPhase20261007
