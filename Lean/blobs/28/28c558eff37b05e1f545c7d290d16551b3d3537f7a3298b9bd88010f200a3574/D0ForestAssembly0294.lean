import D0FullInterface
import D0ForestAssembly0293
import D0ForestChunk1125
import D0ForestChunk1127
import D0ForestChunk1129
import D0ForestChunk1130
import D0ForestChunk1131
import D0ForestChunk1132
import D0ForestChunk1133
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1571233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 25)))
theorem cover_1571233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571233 := by
  apply coveredState_split_literal (state := state_1571233) 3
    state_1571234 state_1571635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571234
  · exact cover_1571635
#print axioms cover_1571233

def state_1571197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 12)))
theorem cover_1571197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571197 := by
  apply coveredState_split_literal (state := state_1571197) 4
    state_1571198 state_1571233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571198
  · exact cover_1571233
#print axioms cover_1571197

def state_1571185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
theorem cover_1571185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571185 := by
  apply coveredState_split_literal (state := state_1571185) 2
    state_1571186 state_1571197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571186
  · exact cover_1571197
#print axioms cover_1571185

def state_1571184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
theorem cover_1571184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571184 := by
  apply coveredState_split_literal (state := state_1571184) 1
    state_1571185 state_1571644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571185
  · exact cover_1571644
#print axioms cover_1571184

def state_1571174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
theorem cover_1571174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571174 := by
  apply coveredState_split_literal (state := state_1571174) 0
    state_1571175 state_1571184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571175
  · exact cover_1571184
#print axioms cover_1571174

def state_1571781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 52 else 52)))
theorem cover_1571781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571781 := by
  apply coveredState_split_literal (state := state_1571781) 0
    state_1571782 state_1571837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571782
  · exact cover_1571837
#print axioms cover_1571781

def state_1571780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 52 else 26)))
theorem cover_1571780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571780 := by
  apply coveredState_split_literal (state := state_1571780) 4
    state_1571781 state_1571852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571781
  · exact cover_1571852
#print axioms cover_1571780

def state_1571779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 26 else 26)))
theorem cover_1571779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571779 := by
  apply coveredState_split_literal (state := state_1571779) 3
    state_1571780 state_1571855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571780
  · exact cover_1571855
#print axioms cover_1571779

def state_1571769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
theorem cover_1571769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571769 := by
  apply coveredState_split_literal (state := state_1571769) 2
    state_1571770 state_1571779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571770
  · exact cover_1571779
#print axioms cover_1571769

def state_1571768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
theorem cover_1571768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571768 := by
  apply coveredState_split_literal (state := state_1571768) 1
    state_1571769 state_1571874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571769
  · exact cover_1571874
#print axioms cover_1571768

def state_1571718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
theorem cover_1571718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571718 := by
  apply coveredState_split_literal (state := state_1571718) 0
    state_1571719 state_1571768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571719
  · exact cover_1571768
#print axioms cover_1571718

def state_1571717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 13)))
theorem cover_1571717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571717 := by
  apply coveredState_split_literal (state := state_1571717) 4
    state_1571718 state_1571905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571718
  · exact cover_1571905
#print axioms cover_1571717

def state_1571716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 13)))
theorem cover_1571716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571716 := by
  apply coveredState_split_literal (state := state_1571716) 3
    state_1571717 state_1571910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571717
  · exact cover_1571910
#print axioms cover_1571716

def state_1571700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_1571700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571700 := by
  apply coveredState_split_literal (state := state_1571700) 2
    state_1571701 state_1571716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571701
  · exact cover_1571716
#print axioms cover_1571700

def state_1571699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_1571699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571699 := by
  apply coveredState_split_literal (state := state_1571699) 1
    state_1571700 state_1571939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571700
  · exact cover_1571939
#print axioms cover_1571699

def state_1571679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_1571679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571679 := by
  apply coveredState_split_literal (state := state_1571679) 0
    state_1571680 state_1571699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571680
  · exact cover_1571699
#print axioms cover_1571679

def state_1571173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 6)))
theorem cover_1571173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571173 := by
  apply coveredState_split_literal (state := state_1571173) 4
    state_1571174 state_1571679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1571174
  · exact cover_1571679
#print axioms cover_1571173

def state_1570679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_1570679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570679 := by
  apply coveredState_split_literal (state := state_1570679) 3
    state_1570680 state_1571173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570680
  · exact cover_1571173
#print axioms cover_1570679

def state_1570651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1570651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570651 := by
  apply coveredState_split_literal (state := state_1570651) 2
    state_1570652 state_1570679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570652
  · exact cover_1570679
#print axioms cover_1570651

def state_1570650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1570650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570650 := by
  apply coveredState_split_literal (state := state_1570650) 4
    state_1570651 state_1571982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570651
  · exact cover_1571982
#print axioms cover_1570650

def state_1570649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1570649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570649 := by
  apply coveredState_split_literal (state := state_1570649) 3
    state_1570650 state_1572013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570650
  · exact cover_1572013
#print axioms cover_1570649

def state_1570635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1570635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570635 := by
  apply coveredState_split_literal (state := state_1570635) 2
    state_1570636 state_1570649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570636
  · exact cover_1570649
#print axioms cover_1570635

def state_1570634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1570634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570634 := by
  apply coveredState_split_literal (state := state_1570634) 1
    state_1570635 state_1572062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570635
  · exact cover_1572062
#print axioms cover_1570634

def state_1572152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
theorem cover_1572152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572152 := by
  apply coveredState_split_literal (state := state_1572152) 1
    state_1572153 state_1572204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572153
  · exact cover_1572204
#print axioms cover_1572152

def state_1572151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 6)))
theorem cover_1572151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572151 := by
  apply coveredState_split_literal (state := state_1572151) 4
    state_1572152 state_1572231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572152
  · exact cover_1572231
#print axioms cover_1572151

def state_1572135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_1572135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572135 := by
  apply coveredState_split_literal (state := state_1572135) 3
    state_1572136 state_1572151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572136
  · exact cover_1572151
#print axioms cover_1572135

def state_1572125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1572125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572125 := by
  apply coveredState_split_literal (state := state_1572125) 2
    state_1572126 state_1572135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572126
  · exact cover_1572135
#print axioms cover_1572125

def state_1572124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1572124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572124 := by
  apply coveredState_split_literal (state := state_1572124) 0
    state_1572125 state_1572290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572125
  · exact cover_1572290
#print axioms cover_1572124

def state_1572123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1572123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572123 := by
  apply coveredState_split_literal (state := state_1572123) 4
    state_1572124 state_1572301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572124
  · exact cover_1572301
#print axioms cover_1572123

def state_1572351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_1572351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572351 := by
  apply coveredState_split_literal (state := state_1572351) 0
    state_1572352 state_1572413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572352
  · exact cover_1572413
#print axioms cover_1572351

def state_1572350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_1572350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572350 := by
  apply coveredState_split_literal (state := state_1572350) 4
    state_1572351 state_1572442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572351
  · exact cover_1572442
#print axioms cover_1572350

def state_1572122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1572122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572122 := by
  apply coveredState_split_literal (state := state_1572122) 3
    state_1572123 state_1572350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572123
  · exact cover_1572350
#print axioms cover_1572122
end Mub6.Numerical.CircleFullD0.Forest
