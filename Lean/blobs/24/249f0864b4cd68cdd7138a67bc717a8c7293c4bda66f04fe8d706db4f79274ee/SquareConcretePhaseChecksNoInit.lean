import CompactSparseTable
import SquareMidpointRejection
import EndpointLeafRejection
import SquareBallLabelNoInit
import PhaseCertificateToRetained36

/-! The same supplier tags use square-only midpoint rejection and centre
inclusion, with the original all-endpoint rejection as a fallback. No witness
payload or table-accuracy hypothesis is introduced. Complete acceptance of
every root shard remains the explicit finite premise. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
open Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006 Seed0024Geometry20261007

namespace Seed0024ClusterTube20261007

noncomputable def squareConcretePhaseChecks : LeafChecks 48 :=
  ⟨fun s k => squareMidpointRejectCheck compactSupplierTable s k ||
      endpointRejectCheck compactSupplierTable s k,
    squareBallLabelCheck compactSupplierTable⟩

theorem squareConcretePhaseChecks_sound :
    LeafSound squareConcretePhaseChecks ClosedPhaseDomain phaseCentreLabel := by
  constructor
  · intro s k theta hs ht hc hf
    have hor : squareMidpointRejectCheck compactSupplierTable s k=true ∨
        endpointRejectCheck compactSupplierTable s k=true := by
      simpa only [squareConcretePhaseChecks,Bool.or_eq_true] using hc
    rcases hor with hmid|hend
    · exact squareMidpointRejectCheck_sound compactSupplierTable
        compactSupplierTable_needed_accuracy s hs.1 k theta ht hmid (hf k)
    · exact endpointRejectCheck_sound compactSupplierTable
        compactSupplierTable_needed_accuracy s hs.1 k theta ht hend (hf k)
  · intro s k theta hs ht hc
    exact squareBallLabelCheck_sound compactSupplierTable
      compactSupplierTable_needed_accuracy s k theta ht hc

theorem square_concrete_tapes_centre_cover (width : ℕ) (hw : 0<width)
    (tags : Fin (rootShardCount width) → List UInt8)
    (hchecks : ∀s,checkTape squareConcretePhaseChecks
      (rootShardCells width s.val) (tags s)=true) :
    ApproximateF6CentreCover :=
  centre_cover_of_checked_ordinal_tapes squareConcretePhaseChecks width hw tags
    squareConcretePhaseChecks_sound hchecks

theorem retained36_no_live_of_square_concrete_tapes (width : ℕ) (hw : 0<width)
    (tags : Fin (rootShardCount width) → List UInt8)
    (hchecks : ∀s,checkTape squareConcretePhaseChecks
      (rootShardCells width s.val) (tags s)=true)
    {b : SeedBox} (hb : b∈Seed0024Geometry20261007.residual) :
    ¬Live MaximalQuartetPhasePopulation b.box :=
  retained36_no_live_of_checked_ordinal_tapes squareConcretePhaseChecks width hw tags
    squareConcretePhaseChecks_sound hchecks hb

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.squareConcretePhaseChecks_sound
#print axioms Seed0024ClusterTube20261007.square_concrete_tapes_centre_cover
#print axioms Seed0024ClusterTube20261007.retained36_no_live_of_square_concrete_tapes
