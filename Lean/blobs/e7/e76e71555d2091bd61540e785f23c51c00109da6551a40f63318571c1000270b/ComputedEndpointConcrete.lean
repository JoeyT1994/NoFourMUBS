import ComputedEndpointChecks
import CompactSparseTable
import PhaseCertificateToRetained36

/-! The fixed certified table specializes generic endpoint-square soundness.
The one-byte tags and full-shard acceptance premise remain unchanged. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
open Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006 Seed0024Geometry20261007

namespace Seed0024ClusterTube20261007

noncomputable def endpointSquareConcretePhaseChecks : LeafChecks 48 :=
  computedEndpointChecks compactSupplierTable

theorem endpointSquareConcretePhaseChecks_sound :
    LeafSound endpointSquareConcretePhaseChecks ClosedPhaseDomain phaseCentreLabel :=
  computedEndpointChecks_sound compactSupplierTable compactSupplierTable_needed_accuracy

theorem endpoint_square_concrete_tapes_centre_cover (width : ℕ) (hw : 0<width)
    (tags : Fin (rootShardCount width) → List UInt8)
    (hchecks : ∀s,checkTape endpointSquareConcretePhaseChecks
      (rootShardCells width s.val) (tags s)=true) :
    ApproximateF6CentreCover :=
  centre_cover_of_checked_ordinal_tapes endpointSquareConcretePhaseChecks width hw tags
    endpointSquareConcretePhaseChecks_sound hchecks

theorem retained36_no_live_of_endpoint_square_concrete_tapes
    (width : ℕ) (hw : 0<width)
    (tags : Fin (rootShardCount width) → List UInt8)
    (hchecks : ∀s,checkTape endpointSquareConcretePhaseChecks
      (rootShardCells width s.val) (tags s)=true)
    {b : SeedBox} (hb : b∈Seed0024Geometry20261007.residual) :
    ¬Live MaximalQuartetPhasePopulation b.box :=
  retained36_no_live_of_checked_ordinal_tapes endpointSquareConcretePhaseChecks width hw tags
    endpointSquareConcretePhaseChecks_sound hchecks hb

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.endpointSquareConcretePhaseChecks_sound
#print axioms Seed0024ClusterTube20261007.endpoint_square_concrete_tapes_centre_cover
#print axioms Seed0024ClusterTube20261007.retained36_no_live_of_endpoint_square_concrete_tapes
