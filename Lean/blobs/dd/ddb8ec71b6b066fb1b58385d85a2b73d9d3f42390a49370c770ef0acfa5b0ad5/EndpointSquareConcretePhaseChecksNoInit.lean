import CompactSparseTable
import SquareMidpointRejection
import SquareEndpointRejection
import SquareBallLabelNoInit
import PhaseCertificateToRetained36

/-! The unchanged supplier tag format now uses endpoint square tests with the
actual midpoint floor as an internally computed, checked witness. No external
witness is trusted. One midpoint square root remains in the endpoint fallback;
the32 endpoint square roots are replaced by checked square inequalities.
Complete acceptance of every root shard remains the explicit finite premise. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
open Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006 Seed0024Geometry20261007

namespace Seed0024ClusterTube20261007

noncomputable def endpointSquareConcretePhaseChecks : LeafChecks 48 :=
  ⟨fun s k => squareMidpointRejectCheck compactSupplierTable s k ||
      squareEndpointRejectCheck compactSupplierTable s k
        (leafMidpointNorm compactSupplierTable s k).toNat,
    squareBallLabelCheck compactSupplierTable⟩

theorem endpointSquareConcretePhaseChecks_sound :
    LeafSound endpointSquareConcretePhaseChecks ClosedPhaseDomain phaseCentreLabel := by
  constructor
  · intro s k theta hs ht hc hf
    have hor : squareMidpointRejectCheck compactSupplierTable s k=true ∨
        squareEndpointRejectCheck compactSupplierTable s k
          (leafMidpointNorm compactSupplierTable s k).toNat=true := by
      simpa only [endpointSquareConcretePhaseChecks,Bool.or_eq_true] using hc
    rcases hor with hmid|hend
    · exact squareMidpointRejectCheck_sound compactSupplierTable
        compactSupplierTable_needed_accuracy s hs.1 k theta ht hmid (hf k)
    · exact squareEndpointRejectCheck_sound compactSupplierTable
        compactSupplierTable_needed_accuracy s hs.1 k
        (leafMidpointNorm compactSupplierTable s k).toNat theta ht hend (hf k)
  · intro s k theta hs ht hc
    exact squareBallLabelCheck_sound compactSupplierTable
      compactSupplierTable_needed_accuracy s k theta ht hc

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
