import ActualWitnessRefinement

/-! A checked complete witness tape has the existing physical ray-label
meaning. The only finite-input premise is acceptance of that exact tape. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024PhaseTapeBridge20261007

namespace Seed0024PhaseCoreBridge20261007

theorem actual_accepted_pending_physical
    (pending : List CellCode) (tags : List WitnessTag)
    (hcheck : checkWitnessTape pending tags = true) :
    Seed0024ClusterTubeCover20261007.PendingCovered ClosedPhaseDomain phaseCentreLabel
      (pending.map toPhaseCell) :=
  checkWitnessTape_pendingCovered squareConcretePhaseChecks actual_witness_refinement
    ClosedPhaseDomain phaseCentreLabel squareConcretePhaseChecks_sound
    pending tags hcheck
#print axioms actual_accepted_pending_physical

theorem actual_accepted_cell_physical (s : CellCode) (tags : List WitnessTag)
    (hcheck : checkWitnessTape [s] tags = true) :
    Seed0024ClusterTubeCover20261007.CoveredCell ClosedPhaseDomain phaseCentreLabel
      (toPhaseCell s) := by
  have h := actual_accepted_pending_physical [s] tags hcheck
  exact h (toPhaseCell s) (by simp only [List.map_cons, List.map_nil, List.mem_singleton])
#print axioms actual_accepted_cell_physical

end Seed0024PhaseCoreBridge20261007
