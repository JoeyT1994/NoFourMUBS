import D0FullInterface
import D0ForestAssembly0151
import D0ForestAssembly0159
import D0ForestAssembly0160
import D0ForestChunk0612
import D0ForestChunk0615
import D0ForestChunk0616
import D0ForestChunk0617
import D0ForestChunk0618
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1335717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_1335717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335717 := by
  apply coveredState_split_literal (state := state_1335717) 4
    state_1335718 state_1336449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335718
  · exact cover_1336449
#print axioms cover_1335717

def state_1335716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_1335716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335716 := by
  apply coveredState_split_literal (state := state_1335716) 3
    state_1335717 state_1336462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335717
  · exact cover_1336462
#print axioms cover_1335716

def state_1335678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1335678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335678 := by
  apply coveredState_split_literal (state := state_1335678) 2
    state_1335679 state_1335716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335679
  · exact cover_1335716
#print axioms cover_1335678

def state_1336540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_1336540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336540 := by
  apply coveredState_split_literal (state := state_1336540) 3
    state_1336541 state_1336592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336541
  · exact cover_1336592
#print axioms cover_1336540

def state_1336539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_1336539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336539 := by
  apply coveredState_split_literal (state := state_1336539) 1
    state_1336540 state_1336609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336540
  · exact cover_1336609
#print axioms cover_1336539

def state_1336513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_1336513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336513 := by
  apply coveredState_split_literal (state := state_1336513) 0
    state_1336514 state_1336539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336514
  · exact cover_1336539
#print axioms cover_1336513

def state_1336512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_1336512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336512 := by
  apply coveredState_split_literal (state := state_1336512) 4
    state_1336513 state_1336624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336513
  · exact cover_1336624
#print axioms cover_1336512

def state_1336633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1336633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336633 := by
  apply coveredState_split_literal (state := state_1336633) 1
    state_1336634 state_1336649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336634
  · exact cover_1336649
#print axioms cover_1336633

def state_1336632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1336632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336632 := by
  apply coveredState_split_literal (state := state_1336632) 0
    state_1336633 state_1336702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336633
  · exact cover_1336702
#print axioms cover_1336632

def state_1336631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_1336631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336631 := by
  apply coveredState_split_literal (state := state_1336631) 4
    state_1336632 state_1336733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336632
  · exact cover_1336733
#print axioms cover_1336631

def state_1336511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_1336511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336511 := by
  apply coveredState_split_literal (state := state_1336511) 3
    state_1336512 state_1336631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336512
  · exact cover_1336631
#print axioms cover_1336511

def state_1336469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1336469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336469 := by
  apply coveredState_split_literal (state := state_1336469) 2
    state_1336470 state_1336511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336470
  · exact cover_1336511
#print axioms cover_1336469

def state_1335677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1335677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335677 := by
  apply coveredState_split_literal (state := state_1335677) 1
    state_1335678 state_1336469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335678
  · exact cover_1336469
#print axioms cover_1335677

def state_1336742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1336742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336742 := by
  apply coveredState_split_literal (state := state_1336742) 1
    state_1336743 state_1336758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336743
  · exact cover_1336758
#print axioms cover_1336742

def state_1335676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1335676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335676 := by
  apply coveredState_split_literal (state := state_1335676) 0
    state_1335677 state_1336742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335677
  · exact cover_1336742
#print axioms cover_1335676

def state_1335428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1335428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335428 := by
  apply coveredState_split_literal (state := state_1335428) 4
    state_1335429 state_1335676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335429
  · exact cover_1335676
#print axioms cover_1335428

def state_1327470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1327470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327470 := by
  apply coveredState_split_literal (state := state_1327470) 3
    state_1327471 state_1335428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1327471
  · exact cover_1335428
#print axioms cover_1327470

def state_1325998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1325998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325998 := by
  apply coveredState_split_literal (state := state_1325998) 2
    state_1325999 state_1327470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325999
  · exact cover_1327470
#print axioms cover_1325998

def state_1336846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1336846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336846 := by
  apply coveredState_split_literal (state := state_1336846) 3
    state_1336847 state_1336906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336847
  · exact cover_1336906
#print axioms cover_1336846

def state_1336812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1336812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336812 := by
  apply coveredState_split_literal (state := state_1336812) 2
    state_1336813 state_1336846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336813
  · exact cover_1336846
#print axioms cover_1336812

def state_1336811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1336811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336811 := by
  apply coveredState_split_literal (state := state_1336811) 1
    state_1336812 state_1336919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336812
  · exact cover_1336919
#print axioms cover_1336811

def state_1336988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 10)))
theorem cover_1336988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336988 := by
  apply coveredState_split_literal (state := state_1336988) 3
    state_1336989 state_1337040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336989
  · exact cover_1337040
#print axioms cover_1336988

def state_1336987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 10)))
theorem cover_1336987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336987 := by
  apply coveredState_split_literal (state := state_1336987) 0
    state_1336988 state_1337055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336988
  · exact cover_1337055
#print axioms cover_1336987

def state_1337071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 48) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
theorem cover_1337071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337071 := by
  apply coveredState_split_literal (state := state_1337071) 4
    state_1337072 state_1337135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337072
  · exact cover_1337135
#print axioms cover_1337071

def state_1337070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
theorem cover_1337070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337070 := by
  apply coveredState_split_literal (state := state_1337070) 1
    state_1337071 state_1337136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337071
  · exact cover_1337136
#print axioms cover_1337070

def state_1337069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
theorem cover_1337069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337069 := by
  apply coveredState_split_literal (state := state_1337069) 3
    state_1337070 state_1337137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337070
  · exact cover_1337137
#print axioms cover_1337069

def state_1337214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 43 else (if j.val < 4 then 33 else 44)))
theorem cover_1337214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337214 := by
  apply coveredState_split_literal (state := state_1337214) 1
    state_1337215 state_1337268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337215
  · exact cover_1337268
#print axioms cover_1337214

def state_1337164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 43 else (if j.val < 4 then 16 else 44)))
theorem cover_1337164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337164 := by
  apply coveredState_split_literal (state := state_1337164) 3
    state_1337165 state_1337214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337165
  · exact cover_1337214
#print axioms cover_1337164

def state_1337163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 43 else (if j.val < 4 then 16 else 44)))
theorem cover_1337163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337163 := by
  apply coveredState_split_literal (state := state_1337163) 0
    state_1337164 state_1337281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337164
  · exact cover_1337281
#print axioms cover_1337163

def state_1337161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 44)))
theorem cover_1337161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337161 := by
  apply coveredState_split_literal (state := state_1337161) 2
    state_1337162 state_1337163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337162
  · exact cover_1337163
#print axioms cover_1337161

def state_1337160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
theorem cover_1337160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337160 := by
  apply coveredState_split_literal (state := state_1337160) 4
    state_1337161 state_1337282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337161
  · exact cover_1337282
#print axioms cover_1337160

def state_1337159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
theorem cover_1337159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337159 := by
  apply coveredState_split_literal (state := state_1337159) 1
    state_1337160 state_1337331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337160
  · exact cover_1337331
#print axioms cover_1337159
end Mub6.Numerical.CircleFullD0.Forest
