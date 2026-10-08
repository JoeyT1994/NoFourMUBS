import CircleFullInterface
import CircleForestAssembly0227
import CircleForestChunk0862
import CircleForestChunk0863
import CircleForestChunk0864
import CircleForestChunk0865
import CircleForestChunk0866
import CircleForestChunk0867
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1507742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 30)))
theorem cover_1507742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507742 := by
  apply coveredState_split_literal (state := state_1507742) 2
    state_1507743 state_1507834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507743
  · exact cover_1507834
#print axioms cover_1507742

def state_1507857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 88) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 60)))
theorem cover_1507857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507857 := by
  apply coveredState_split_literal (state := state_1507857) 2
    state_1507858 state_1507877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507858
  · exact cover_1507877
#print axioms cover_1507857

def state_1507856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 88) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
theorem cover_1507856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507856 := by
  apply coveredState_split_literal (state := state_1507856) 3
    state_1507857 state_1507928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507857
  · exact cover_1507928
#print axioms cover_1507856

def state_1507855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
theorem cover_1507855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507855 := by
  apply coveredState_split_literal (state := state_1507855) 1
    state_1507856 state_1507991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507856
  · exact cover_1507991
#print axioms cover_1507855

def state_1507839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
theorem cover_1507839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507839 := by
  apply coveredState_split_literal (state := state_1507839) 0
    state_1507840 state_1507855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507840
  · exact cover_1507855
#print axioms cover_1507839

def state_1507838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 30)))
theorem cover_1507838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507838 := by
  apply coveredState_split_literal (state := state_1507838) 4
    state_1507839 state_1508028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507839
  · exact cover_1508028
#print axioms cover_1507838

def state_1508063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 30)))
theorem cover_1508063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508063 := by
  apply coveredState_split_literal (state := state_1508063) 4
    state_1508064 state_1508123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508064
  · exact cover_1508123
#print axioms cover_1508063

def state_1507837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 30)))
theorem cover_1507837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507837 := by
  apply coveredState_split_literal (state := state_1507837) 2
    state_1507838 state_1508063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507838
  · exact cover_1508063
#print axioms cover_1507837

def state_1507741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1507741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507741 := by
  apply coveredState_split_literal (state := state_1507741) 3
    state_1507742 state_1507837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507742
  · exact cover_1507837
#print axioms cover_1507741

def state_1508132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1508132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508132 := by
  apply coveredState_split_literal (state := state_1508132) 3
    state_1508133 state_1508156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508133
  · exact cover_1508156
#print axioms cover_1508132

def state_1507740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1507740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507740 := by
  apply coveredState_split_literal (state := state_1507740) 1
    state_1507741 state_1508132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507741
  · exact cover_1508132
#print axioms cover_1507740

def state_1507716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 30)))
theorem cover_1507716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507716 := by
  apply coveredState_split_literal (state := state_1507716) 0
    state_1507717 state_1507740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507717
  · exact cover_1507740
#print axioms cover_1507716

def state_1507715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 15)))
theorem cover_1507715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507715 := by
  apply coveredState_split_literal (state := state_1507715) 4
    state_1507716 state_1508201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507716
  · exact cover_1508201
#print axioms cover_1507715

def state_1507714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 15)))
theorem cover_1507714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507714 := by
  apply coveredState_split_literal (state := state_1507714) 2
    state_1507715 state_1508228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507715
  · exact cover_1508228
#print axioms cover_1507714

def state_1507686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1507686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507686 := by
  apply coveredState_split_literal (state := state_1507686) 3
    state_1507687 state_1507714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507687
  · exact cover_1507714
#print axioms cover_1507686

def state_1507685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1507685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507685 := by
  apply coveredState_split_literal (state := state_1507685) 1
    state_1507686 state_1508241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507686
  · exact cover_1508241
#print axioms cover_1507685

def state_1508309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 30)))
theorem cover_1508309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508309 := by
  apply coveredState_split_literal (state := state_1508309) 4
    state_1508310 state_1508367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508310
  · exact cover_1508367
#print axioms cover_1508309

def state_1508308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 30)))
theorem cover_1508308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508308 := by
  apply coveredState_split_literal (state := state_1508308) 2
    state_1508309 state_1508398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508309
  · exact cover_1508398
#print axioms cover_1508308

def state_1508448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 60)))
theorem cover_1508448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508448 := by
  apply coveredState_split_literal (state := state_1508448) 4
    state_1508449 state_1508470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508449
  · exact cover_1508470
#print axioms cover_1508448

def state_1508408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 60)))
theorem cover_1508408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508408 := by
  apply coveredState_split_literal (state := state_1508408) 2
    state_1508409 state_1508448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508409
  · exact cover_1508448
#print axioms cover_1508408

def state_1508557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 121)))
theorem cover_1508557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508557 := by
  apply coveredState_split_literal (state := state_1508557) 0
    state_1508558 state_1508611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508558
  · exact cover_1508611
#print axioms cover_1508557

def state_1508521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 60)))
theorem cover_1508521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508521 := by
  apply coveredState_split_literal (state := state_1508521) 4
    state_1508522 state_1508557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508522
  · exact cover_1508557
#print axioms cover_1508521

def state_1508515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 60)))
theorem cover_1508515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508515 := by
  apply coveredState_split_literal (state := state_1508515) 2
    state_1508516 state_1508521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508516
  · exact cover_1508521
#print axioms cover_1508515

def state_1508407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
theorem cover_1508407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508407 := by
  apply coveredState_split_literal (state := state_1508407) 3
    state_1508408 state_1508515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508408
  · exact cover_1508515
#print axioms cover_1508407

def state_1508406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
theorem cover_1508406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508406 := by
  apply coveredState_split_literal (state := state_1508406) 1
    state_1508407 state_1508636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508407
  · exact cover_1508636
#print axioms cover_1508406

def state_1508405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
theorem cover_1508405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508405 := by
  apply coveredState_split_literal (state := state_1508405) 0
    state_1508406 state_1508665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508406
  · exact cover_1508665
#print axioms cover_1508405

def state_1508683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 61)))
theorem cover_1508683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508683 := by
  apply coveredState_split_literal (state := state_1508683) 1
    state_1508684 state_1508709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508684
  · exact cover_1508709
#print axioms cover_1508683

def state_1508682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 61)))
theorem cover_1508682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508682 := by
  apply coveredState_split_literal (state := state_1508682) 0
    state_1508683 state_1508762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508683
  · exact cover_1508762
#print axioms cover_1508682

def state_1508404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 30)))
theorem cover_1508404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508404 := by
  apply coveredState_split_literal (state := state_1508404) 4
    state_1508405 state_1508682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508405
  · exact cover_1508682
#print axioms cover_1508404

def state_1508803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 103 else 121)))
theorem cover_1508803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508803 := by
  apply coveredState_split_literal (state := state_1508803) 0
    state_1508804 state_1508861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508804
  · exact cover_1508861
#print axioms cover_1508803

def state_1508787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 103 else 60)))
theorem cover_1508787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508787 := by
  apply coveredState_split_literal (state := state_1508787) 4
    state_1508788 state_1508803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508788
  · exact cover_1508803
#print axioms cover_1508787

def state_1508786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 60)))
theorem cover_1508786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508786 := by
  apply coveredState_split_literal (state := state_1508786) 2
    state_1508787 state_1508878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508787
  · exact cover_1508878
#print axioms cover_1508786
end Mub6.Numerical.CircleFullD0.Forest
