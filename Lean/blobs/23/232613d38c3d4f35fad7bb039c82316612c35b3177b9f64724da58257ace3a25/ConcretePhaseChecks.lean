import CompactSparseTable
import EndpointLeafRejection
import IntegerBallLabel
import PhaseCertificateToRetained36

/- Actual certificate checks have no table-accuracy or leaf-soundness assumption.
The remaining finite obligation is acceptance of every supplied root shard. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
open Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006 Seed0024Geometry20261007
namespace Seed0024ClusterTube20261007

def concretePhaseChecks : LeafChecks 48 :=
  ⟨scalarRejectCheck compactSupplierTable,ballLabelCheck compactSupplierTable⟩

theorem concretePhaseChecks_sound :
    LeafSound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel := by
  constructor
  · intro s k theta hs ht hc hf
    exact scalarRejectCheck_sound compactSupplierTable
      compactSupplierTable_needed_accuracy s hs.1 k theta ht hc (hf k)
  · intro s k theta hs ht hc
    exact ballLabelCheck_sound compactSupplierTable
      compactSupplierTable_needed_accuracy s k theta ht hc

theorem concrete_tapes_centre_cover (width : ℕ) (hw : 0<width)
    (tags : Fin (rootShardCount width) → List UInt8)
    (hchecks : ∀s,checkTape concretePhaseChecks (rootShardCells width s.val) (tags s)=true) :
    ApproximateF6CentreCover :=
  centre_cover_of_checked_ordinal_tapes concretePhaseChecks width hw tags
    concretePhaseChecks_sound hchecks

theorem retained36_no_live_of_concrete_tapes (width : ℕ) (hw : 0<width)
    (tags : Fin (rootShardCount width) → List UInt8)
    (hchecks : ∀s,checkTape concretePhaseChecks (rootShardCells width s.val) (tags s)=true)
    {b : SeedBox} (hb : b∈Seed0024Geometry20261007.residual) :
    ¬Live MaximalQuartetPhasePopulation b.box :=
  retained36_no_live_of_checked_ordinal_tapes concretePhaseChecks width hw tags
    concretePhaseChecks_sound hchecks hb

end Seed0024ClusterTube20261007
#print axioms Seed0024ClusterTube20261007.concretePhaseChecks_sound
#print axioms Seed0024ClusterTube20261007.concrete_tapes_centre_cover
#print axioms Seed0024ClusterTube20261007.retained36_no_live_of_concrete_tapes
