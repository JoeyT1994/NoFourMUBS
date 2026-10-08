import CompactSparseTable
import MidpointLeafRejection
import ApproximatePhaseFrontend
import PhaseTape
import OrdinalRoots

/- First actual finite tape replay with proved integer/trigonometric semantics.
These1 phase roots are a pilot, not the complete cover or36-box exclusion. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007

namespace Seed0024ClusterTube20261007

def pilotMidpointChecks : LeafChecks 48 :=
  ⟨midpointRejectCheck compactSupplierTable,fun _ _ => false⟩

theorem pilotMidpointChecks_sound :
    LeafSound pilotMidpointChecks ClosedPhaseDomain (fun _ _ => False) := by
  constructor
  · intro s k theta hs ht hc hf
    exact midpointRejectCheck_sound compactSupplierTable
      compactSupplierTable_needed_accuracy s hs.1 k theta ht hc (hf k)
  · intro s k theta hs ht hc
    simp only [pilotMidpointChecks,Bool.false_eq_true] at hc

def pilotRootCells : List Cell := ordinalRange 0 1
def pilotTags : List UInt8 := List.replicate 1 0

theorem pilot1_checked : checkTape pilotMidpointChecks pilotRootCells pilotTags=true := by
  decide +kernel

theorem pilot1_no_closed_phase (s : Cell) (hs : s∈pilotRootCells)
    (theta : Turns) (ht : MemCell s theta) : ¬ClosedPhaseDomain theta := by
  intro hf
  obtain ⟨k,hk⟩ := checkTape_sound pilotMidpointChecks ClosedPhaseDomain (fun _ _ => False)
    pilotMidpointChecks_sound pilotTags pilotRootCells pilot1_checked s hs theta ht hf
  exact hk

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.pilotMidpointChecks_sound
#print axioms Seed0024ClusterTube20261007.pilot1_checked
#print axioms Seed0024ClusterTube20261007.pilot1_no_closed_phase
