import SparseBaseData

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024ClusterTubeTable20261007.SparseBase
open _root_.Seed0024ClusterTubeTable20261007.Dyadic

theorem first_tail_checked : tailCheck denominator 67108864 sharedStep initialBox firstTail=true := by
  decide +kernel

theorem first_last_bounds : boundaryBox.Contains denominator (gridPoint 1824 127) := by
  rw [boundary_eq_lastBox]
  simpa only [firstTail_length,Nat.zero_add] using
    tailCheck_last_bounds denominator 1824 67108864 (by decide) sharedStep shared_step_sound
      firstTail 0 initialBox initial_box_sound first_tail_checked

end Seed0024ClusterTubeTable20261007.SparseBase

#print axioms Seed0024ClusterTubeTable20261007.SparseBase.first_tail_checked
#print axioms Seed0024ClusterTubeTable20261007.SparseBase.first_last_bounds
