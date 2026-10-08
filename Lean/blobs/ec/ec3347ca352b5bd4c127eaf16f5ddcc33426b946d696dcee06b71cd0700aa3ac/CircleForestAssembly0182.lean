import CircleFullInterface
import CircleForestAssembly0181
import CircleForestChunk0685
import CircleForestChunk0686
import CircleForestChunk0687
import CircleForestChunk0688
import CircleForestChunk0689
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1465205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 10)))
theorem cover_1465205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465205 := by
  apply coveredState_split_literal (state := state_1465205) 3
    state_1465206 state_1465247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465206
  · exact cover_1465247
#print axioms cover_1465205

def state_1465135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_1465135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465135 := by
  apply coveredState_split_literal (state := state_1465135) 2
    state_1465136 state_1465205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465136
  · exact cover_1465205
#print axioms cover_1465135

def state_1465668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 44)))
theorem cover_1465668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465668 := by
  apply coveredState_split_literal (state := state_1465668) 0
    state_1465669 state_1465674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465669
  · exact cover_1465674
#print axioms cover_1465668

def state_1465667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 22)))
theorem cover_1465667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465667 := by
  apply coveredState_split_literal (state := state_1465667) 4
    state_1465668 state_1465733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465668
  · exact cover_1465733
#print axioms cover_1465667

def state_1465653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 15 else 22)))
theorem cover_1465653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465653 := by
  apply coveredState_split_literal (state := state_1465653) 3
    state_1465654 state_1465667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465654
  · exact cover_1465667
#print axioms cover_1465653

def state_1465635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 22)))
theorem cover_1465635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465635 := by
  apply coveredState_split_literal (state := state_1465635) 2
    state_1465636 state_1465653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465636
  · exact cover_1465653
#print axioms cover_1465635

def state_1465631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 22)))
theorem cover_1465631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465631 := by
  apply coveredState_split_literal (state := state_1465631) 1
    state_1465632 state_1465635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465632
  · exact cover_1465635
#print axioms cover_1465631

def state_1465625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 22)))
theorem cover_1465625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465625 := by
  apply coveredState_split_literal (state := state_1465625) 0
    state_1465626 state_1465631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465626
  · exact cover_1465631
#print axioms cover_1465625

def state_1465624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
theorem cover_1465624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465624 := by
  apply coveredState_split_literal (state := state_1465624) 4
    state_1465625 state_1465740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465625
  · exact cover_1465740
#print axioms cover_1465624

def state_1465616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
theorem cover_1465616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465616 := by
  apply coveredState_split_literal (state := state_1465616) 3
    state_1465617 state_1465624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465617
  · exact cover_1465624
#print axioms cover_1465616

def state_1465602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_1465602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465602 := by
  apply coveredState_split_literal (state := state_1465602) 2
    state_1465603 state_1465616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465603
  · exact cover_1465616
#print axioms cover_1465602

def state_1465134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1465134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465134 := by
  apply coveredState_split_literal (state := state_1465134) 4
    state_1465135 state_1465602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465135
  · exact cover_1465602
#print axioms cover_1465134

def state_1465814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 21)))
theorem cover_1465814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465814 := by
  apply coveredState_split_literal (state := state_1465814) 0
    state_1465815 state_1465822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465815
  · exact cover_1465822
#print axioms cover_1465814

def state_1465813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 21)))
theorem cover_1465813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465813 := by
  apply coveredState_split_literal (state := state_1465813) 1
    state_1465814 state_1465881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465814
  · exact cover_1465881
#print axioms cover_1465813

def state_1465801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 15 else 21)))
theorem cover_1465801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465801 := by
  apply coveredState_split_literal (state := state_1465801) 3
    state_1465802 state_1465813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465802
  · exact cover_1465813
#print axioms cover_1465801

def state_1465781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 21)))
theorem cover_1465781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465781 := by
  apply coveredState_split_literal (state := state_1465781) 2
    state_1465782 state_1465801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465782
  · exact cover_1465801
#print axioms cover_1465781

def state_1465777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
theorem cover_1465777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465777 := by
  apply coveredState_split_literal (state := state_1465777) 4
    state_1465778 state_1465781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465778
  · exact cover_1465781
#print axioms cover_1465777

def state_1465771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
theorem cover_1465771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465771 := by
  apply coveredState_split_literal (state := state_1465771) 0
    state_1465772 state_1465777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465772
  · exact cover_1465777
#print axioms cover_1465771

def state_1465770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
theorem cover_1465770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465770 := by
  apply coveredState_split_literal (state := state_1465770) 1
    state_1465771 state_1465888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465771
  · exact cover_1465888
#print axioms cover_1465770

def state_1465758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 10)))
theorem cover_1465758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465758 := by
  apply coveredState_split_literal (state := state_1465758) 3
    state_1465759 state_1465770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465759
  · exact cover_1465770
#print axioms cover_1465758

def state_1465748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_1465748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465748 := by
  apply coveredState_split_literal (state := state_1465748) 2
    state_1465749 state_1465758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465749
  · exact cover_1465758
#print axioms cover_1465748

def state_1465747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1465747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465747 := by
  apply coveredState_split_literal (state := state_1465747) 4
    state_1465748 state_1465895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465748
  · exact cover_1465895
#print axioms cover_1465747

def state_1465133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1465133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465133 := by
  apply coveredState_split_literal (state := state_1465133) 1
    state_1465134 state_1465747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465134
  · exact cover_1465747
#print axioms cover_1465133

def state_1466033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 22)))
theorem cover_1466033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466033 := by
  apply coveredState_split_literal (state := state_1466033) 2
    state_1466034 state_1466047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466034
  · exact cover_1466047
#print axioms cover_1466033

def state_1466031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 22)))
theorem cover_1466031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466031 := by
  apply coveredState_split_literal (state := state_1466031) 1
    state_1466032 state_1466033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466032
  · exact cover_1466033
#print axioms cover_1466031

def state_1466030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
theorem cover_1466030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466030 := by
  apply coveredState_split_literal (state := state_1466030) 4
    state_1466031 state_1466098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466031
  · exact cover_1466098
#print axioms cover_1466030

def state_1466029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
theorem cover_1466029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466029 := by
  apply coveredState_split_literal (state := state_1466029) 0
    state_1466030 state_1466099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466030
  · exact cover_1466099
#print axioms cover_1466029

def state_1466027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
theorem cover_1466027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466027 := by
  apply coveredState_split_literal (state := state_1466027) 3
    state_1466028 state_1466029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466028
  · exact cover_1466029
#print axioms cover_1466027

def state_1466013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_1466013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466013 := by
  apply coveredState_split_literal (state := state_1466013) 2
    state_1466014 state_1466027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466014
  · exact cover_1466027
#print axioms cover_1466013

def state_1465949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1465949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465949 := by
  apply coveredState_split_literal (state := state_1465949) 4
    state_1465950 state_1466013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465950
  · exact cover_1466013
#print axioms cover_1465949

def state_1466115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
theorem cover_1466115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466115 := by
  apply coveredState_split_literal (state := state_1466115) 0
    state_1466116 state_1466179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466116
  · exact cover_1466179
#print axioms cover_1466115

def state_1466103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 10)))
theorem cover_1466103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466103 := by
  apply coveredState_split_literal (state := state_1466103) 3
    state_1466104 state_1466115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466104
  · exact cover_1466115
#print axioms cover_1466103
end Mub6.Numerical.CircleFullD0.Forest
