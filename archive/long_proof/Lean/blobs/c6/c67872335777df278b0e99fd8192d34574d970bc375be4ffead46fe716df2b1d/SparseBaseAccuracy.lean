import SparseBaseFirst

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000

namespace Seed0024ClusterTubeTable20261007.SparseBase
open _root_.Seed0024ClusterTubeTable20261007.Dyadic

theorem second_tail_checked : tailCheck denominator 67108864 sharedStep boundaryBox secondTail=true := by
  decide +kernel

theorem all_tail_checked :
    tailCheck denominator 67108864 sharedStep initialBox (firstTail++secondTail)=true := by
  apply tailCheck_join denominator 67108864 sharedStep initialBox firstTail secondTail first_tail_checked
  simpa only [←boundary_eq_lastBox] using second_tail_checked

theorem base_rows_sound : Dyadic.RowsSound denominator 1824 67108864 0 baseRows := by
  exact ⟨initial_box_sound,
    rowCheck_sound denominator 1824 67108864 0 (by decide) initialRow initial_box_sound initial_row_checked,
    tailCheck_sound denominator 1824 67108864 (by decide) sharedStep shared_step_sound
      (firstTail++secondTail) 0 initialBox initial_box_sound all_tail_checked⟩

theorem base_accurate (k : Fin 229) :
    EntryApprox 1824 67108864 k.val (base k).1 (base k).2 := by
  simpa only [base,Nat.zero_add] using
    Dyadic.RowsSound_entry denominator 1824 67108864 0 baseRows base_rows_sound k.val
      (by simpa only [baseRows_length] using k.isLt)

end Seed0024ClusterTubeTable20261007.SparseBase

#print axioms Seed0024ClusterTubeTable20261007.SparseBase.second_tail_checked
#print axioms Seed0024ClusterTubeTable20261007.SparseBase.all_tail_checked
#print axioms Seed0024ClusterTubeTable20261007.SparseBase.base_rows_sound
#print axioms Seed0024ClusterTubeTable20261007.SparseBase.base_accurate
