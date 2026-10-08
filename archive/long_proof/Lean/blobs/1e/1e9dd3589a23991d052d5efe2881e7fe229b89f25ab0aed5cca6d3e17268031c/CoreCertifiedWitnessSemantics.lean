import CoreCertifiedRepresentation

/-! Actual data discharge the pure-checker's representation premises.
Acceptance is still an explicit input; no complete forest is asserted. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024ClusterTubeTable20261007 Seed0024PhaseTapeBridge20261007

namespace Seed0024PhaseCoreBridge20261007

theorem core_accepted_pending_physical
    (pending : List CellCode) (tags : List WitnessTag)
    (hcheck : checkWitnessTape pending tags = true) :
    Seed0024ClusterTubeCover20261007.PendingCovered ClosedPhaseDomain
      (fun k theta => centreProjectorLabel k (turnRay theta))
      (pending.map toPhaseCell) := by
  exact checkWitnessTape_pendingCovered (bridgeChecks compactSupplierTable)
    (core_leaf_refinement compactSupplierTable
      compactSupplierTable_represents certifiedCentres_represent)
    ClosedPhaseDomain (fun k theta => centreProjectorLabel k (turnRay theta))
    (bridgeChecks_sound compactSupplierTable compactSupplierTable_needed_accuracy)
    pending tags hcheck

theorem core_accepted_cell_physical (s : CellCode) (tags : List WitnessTag)
    (hcheck : checkWitnessTape [s] tags = true) :
    Seed0024ClusterTubeCover20261007.CoveredCell ClosedPhaseDomain
      (fun k theta => centreProjectorLabel k (turnRay theta)) (toPhaseCell s) := by
  have h := core_accepted_pending_physical [s] tags hcheck
  exact h (toPhaseCell s) (by simp only [List.map_cons, List.map_nil, List.mem_singleton])

end Seed0024PhaseCoreBridge20261007

#print axioms Seed0024PhaseCoreBridge20261007.core_accepted_pending_physical
#print axioms Seed0024PhaseCoreBridge20261007.core_accepted_cell_physical
