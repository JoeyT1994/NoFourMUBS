import D0FullInterface
import D0ForestAssembly0230
import D0ForestChunk0876
import D0ForestChunk0877
import D0ForestChunk0878
import D0ForestChunk0879
import D0ForestChunk0880
import D0ForestChunk0881
import D0ForestChunk0882
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1511106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 83 else (if j.val < 4 then 211 else 121)))
theorem cover_1511106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511106 := by
  apply coveredState_split_literal (state := state_1511106) 2
    state_1511107 state_1511116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511107
  · exact cover_1511116
#print axioms cover_1511106

def state_1511104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
theorem cover_1511104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511104 := by
  apply coveredState_split_literal (state := state_1511104) 3
    state_1511105 state_1511106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511105
  · exact cover_1511106
#print axioms cover_1511104

def state_1511200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 210 else 121)))
theorem cover_1511200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511200 := by
  apply coveredState_split_literal (state := state_1511200) 2
    state_1511201 state_1511218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511201
  · exact cover_1511218
#print axioms cover_1511200

def state_1511199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
theorem cover_1511199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511199 := by
  apply coveredState_split_literal (state := state_1511199) 3
    state_1511200 state_1511271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511200
  · exact cover_1511271
#print axioms cover_1511199

def state_1511103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
theorem cover_1511103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511103 := by
  apply coveredState_split_literal (state := state_1511103) 1
    state_1511104 state_1511199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511104
  · exact cover_1511199
#print axioms cover_1511103

def state_1510923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
theorem cover_1510923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510923 := by
  apply coveredState_split_literal (state := state_1510923) 0
    state_1510924 state_1511103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510924
  · exact cover_1511103
#print axioms cover_1510923

def state_1510877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 60)))
theorem cover_1510877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510877 := by
  apply coveredState_split_literal (state := state_1510877) 4
    state_1510878 state_1510923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510878
  · exact cover_1510923
#print axioms cover_1510877

def state_1510847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 60)))
theorem cover_1510847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510847 := by
  apply coveredState_split_literal (state := state_1510847) 2
    state_1510848 state_1510877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510848
  · exact cover_1510877
#print axioms cover_1510847

def state_1510587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1510587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510587 := by
  apply coveredState_split_literal (state := state_1510587) 3
    state_1510588 state_1510847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510588
  · exact cover_1510847
#print axioms cover_1510587

def state_1511332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1511332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511332 := by
  apply coveredState_split_literal (state := state_1511332) 3
    state_1511333 state_1511392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511333
  · exact cover_1511392
#print axioms cover_1511332

def state_1510586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1510586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510586 := by
  apply coveredState_split_literal (state := state_1510586) 1
    state_1510587 state_1511332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510587
  · exact cover_1511332
#print axioms cover_1510586

def state_1510585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1510585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510585 := by
  apply coveredState_split_literal (state := state_1510585) 0
    state_1510586 state_1511431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510586
  · exact cover_1511431
#print axioms cover_1510585

def state_1511493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 61)))
theorem cover_1511493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511493 := by
  apply coveredState_split_literal (state := state_1511493) 2
    state_1511494 state_1511547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511494
  · exact cover_1511547
#print axioms cover_1511493

def state_1511636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
theorem cover_1511636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511636 := by
  apply coveredState_split_literal (state := state_1511636) 3
    state_1511637 state_1511676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511637
  · exact cover_1511676
#print axioms cover_1511636

def state_1511602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
theorem cover_1511602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511602 := by
  apply coveredState_split_literal (state := state_1511602) 1
    state_1511603 state_1511636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511603
  · exact cover_1511636
#print axioms cover_1511602

def state_1511745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
theorem cover_1511745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511745 := by
  apply coveredState_split_literal (state := state_1511745) 3
    state_1511746 state_1511795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511746
  · exact cover_1511795
#print axioms cover_1511745

def state_1511725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
theorem cover_1511725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511725 := by
  apply coveredState_split_literal (state := state_1511725) 1
    state_1511726 state_1511745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511726
  · exact cover_1511745
#print axioms cover_1511725

def state_1511601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
theorem cover_1511601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511601 := by
  apply coveredState_split_literal (state := state_1511601) 0
    state_1511602 state_1511725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511602
  · exact cover_1511725
#print axioms cover_1511601

def state_1511600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 61)))
theorem cover_1511600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511600 := by
  apply coveredState_split_literal (state := state_1511600) 4
    state_1511601 state_1511858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511601
  · exact cover_1511858
#print axioms cover_1511600

def state_1511582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 61)))
theorem cover_1511582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511582 := by
  apply coveredState_split_literal (state := state_1511582) 2
    state_1511583 state_1511600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511583
  · exact cover_1511600
#print axioms cover_1511582

def state_1511492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
theorem cover_1511492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511492 := by
  apply coveredState_split_literal (state := state_1511492) 3
    state_1511493 state_1511582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511493
  · exact cover_1511582
#print axioms cover_1511492

def state_1511869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 61)))
theorem cover_1511869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511869 := by
  apply coveredState_split_literal (state := state_1511869) 4
    state_1511870 state_1511925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511870
  · exact cover_1511925
#print axioms cover_1511869

def state_1511868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 61)))
theorem cover_1511868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511868 := by
  apply coveredState_split_literal (state := state_1511868) 2
    state_1511869 state_1511938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511869
  · exact cover_1511938
#print axioms cover_1511868

def state_1512017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 89) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
theorem cover_1512017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512017 := by
  apply coveredState_split_literal (state := state_1512017) 1
    state_1512018 state_1512071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512018
  · exact cover_1512071
#print axioms cover_1512017

def state_1512083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 178) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
theorem cover_1512083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512083 := by
  apply coveredState_split_literal (state := state_1512083) 3
    state_1512084 state_1512125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512084
  · exact cover_1512125
#print axioms cover_1512083

def state_1512082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 89) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
theorem cover_1512082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512082 := by
  apply coveredState_split_literal (state := state_1512082) 1
    state_1512083 state_1512160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512083
  · exact cover_1512160
#print axioms cover_1512082

def state_1512016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
theorem cover_1512016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512016 := by
  apply coveredState_split_literal (state := state_1512016) 0
    state_1512017 state_1512082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512017
  · exact cover_1512082
#print axioms cover_1512016

def state_1512015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 61)))
theorem cover_1512015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512015 := by
  apply coveredState_split_literal (state := state_1512015) 4
    state_1512016 state_1512175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512016
  · exact cover_1512175
#print axioms cover_1512015

def state_1511997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 61)))
theorem cover_1511997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511997 := by
  apply coveredState_split_literal (state := state_1511997) 2
    state_1511998 state_1512015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511998
  · exact cover_1512015
#print axioms cover_1511997

def state_1511867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
theorem cover_1511867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511867 := by
  apply coveredState_split_literal (state := state_1511867) 3
    state_1511868 state_1511997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511868
  · exact cover_1511997
#print axioms cover_1511867

def state_1511491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
theorem cover_1511491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511491 := by
  apply coveredState_split_literal (state := state_1511491) 1
    state_1511492 state_1511867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511492
  · exact cover_1511867
#print axioms cover_1511491

def state_1512218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
theorem cover_1512218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512218 := by
  apply coveredState_split_literal (state := state_1512218) 1
    state_1512219 state_1512246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512219
  · exact cover_1512246
#print axioms cover_1512218
end Mub6.Numerical.CircleFullD0.Forest
