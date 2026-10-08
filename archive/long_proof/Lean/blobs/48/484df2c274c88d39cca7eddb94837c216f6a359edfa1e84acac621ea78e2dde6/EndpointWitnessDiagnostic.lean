import SquareConcretePhaseChecksNoInit
import SquareEndpointRejection

/- A single endpoint-needed leaf. The proposed integer floor is checked against
both adjacent squares; the original endpoint Boolean is then obtained through
the already checked implication, without evaluating its square roots. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007.EndpointWitnessDiagnostic

def endpointCell : Cell := childCell (childCell (ordinalCell 2241383) 4) 1

theorem midpoint_witness :
    normFloorWitnessCheck (leafMidpointPair compactSupplierTable endpointCell 1)
      137523506 = true := by
  decide +kernel
#print axioms midpoint_witness

theorem square_endpoint :
    squareEndpointRejectCheck compactSupplierTable endpointCell 1 137523506 = true := by
  decide +kernel
#print axioms square_endpoint

theorem original_endpoint_from_square :
    endpointRejectCheck compactSupplierTable endpointCell 1 = true :=
  squareEndpointRejectCheck_implies compactSupplierTable endpointCell 1 137523506
    square_endpoint
#print axioms original_endpoint_from_square

theorem concrete_reject_from_square :
    squareConcretePhaseChecks.reject endpointCell 1 = true := by
  change (squareMidpointRejectCheck compactSupplierTable endpointCell 1 ||
    endpointRejectCheck compactSupplierTable endpointCell 1) = true
  have hor : squareMidpointRejectCheck compactSupplierTable endpointCell 1=true ∨
      endpointRejectCheck compactSupplierTable endpointCell 1=true :=
    Or.inr original_endpoint_from_square
  simpa only [Bool.or_eq_true] using hor
#print axioms concrete_reject_from_square

-- Read-only elaborator diagnostics. These definitions receive no proof credit.
#print Nat.sqrt
set_option pp.explicit true in
#print endpointRejectCheck

end Seed0024ClusterTube20261007.EndpointWitnessDiagnostic
