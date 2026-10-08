import CompactSparseTable
import SquareMidpointRejection
import SquareBallLabelNoInit
import EndpointLeafRejection
import PhaseTape

/- Replay-only checker. The fields are exactly those of the existing square
concrete checker; its physical consumer is deliberately not imported here.
A separately checked rfl bridge is required before using physical soundness. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007

noncomputable def lightSquareChecks : LeafChecks 48 :=
  ⟨fun s k => squareMidpointRejectCheck compactSupplierTable s k ||
      endpointRejectCheck compactSupplierTable s k,
    squareBallLabelCheck compactSupplierTable⟩

theorem lightSquareChecks_reject (s : Cell) (k : Fin 6) :
    lightSquareChecks.reject s k =
      (squareMidpointRejectCheck compactSupplierTable s k ||
       endpointRejectCheck compactSupplierTable s k) := rfl
#print axioms lightSquareChecks_reject

theorem lightSquareChecks_accept (s : Cell) (k : Fin 48) :
    lightSquareChecks.accept s k = squareBallLabelCheck compactSupplierTable s k := rfl
#print axioms lightSquareChecks_accept

end Seed0024ClusterTube20261007
