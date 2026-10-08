import D0FullInterface
import D0ForestAssembly0094
import D0ForestAssembly0103
import D0ForestChunk0379
import D0ForestChunk0416
import D0ForestChunk0417
import D0ForestChunk0418
import D0ForestChunk0419
import D0ForestChunk0420
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1037540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_1037540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037540 := by
  apply coveredState_split_literal (state := state_1037540) 4
    state_1037541 state_1037554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037541
  · exact cover_1037554
#print axioms cover_1037540

def state_1037530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_1037530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037530 := by
  apply coveredState_split_literal (state := state_1037530) 3
    state_1037531 state_1037540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037531
  · exact cover_1037540
#print axioms cover_1037530

def state_1037294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1037294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037294 := by
  apply coveredState_split_literal (state := state_1037294) 2
    state_1037295 state_1037530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037295
  · exact cover_1037530
#print axioms cover_1037294

def state_1028530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1028530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028530 := by
  apply coveredState_split_literal (state := state_1028530) 1
    state_1028531 state_1037294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028531
  · exact cover_1037294
#print axioms cover_1028530

def state_1028484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1028484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028484 := by
  apply coveredState_split_literal (state := state_1028484) 0
    state_1028485 state_1028530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028485
  · exact cover_1028530
#print axioms cover_1028484

def state_1028428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_1028428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028428 := by
  apply coveredState_split_literal (state := state_1028428) 4
    state_1028429 state_1028484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028429
  · exact cover_1028484
#print axioms cover_1028428

def state_1037771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 15)))
theorem cover_1037771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037771 := by
  apply coveredState_split_literal (state := state_1037771) 0
    state_1037772 state_1037777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037772
  · exact cover_1037777
#print axioms cover_1037771

def state_1037741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 7)))
theorem cover_1037741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037741 := by
  apply coveredState_split_literal (state := state_1037741) 4
    state_1037742 state_1037771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037742
  · exact cover_1037771
#print axioms cover_1037741

def state_1037740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
theorem cover_1037740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037740 := by
  apply coveredState_split_literal (state := state_1037740) 3
    state_1037741 state_1037836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037741
  · exact cover_1037836
#print axioms cover_1037740

def state_1037716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1037716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037716 := by
  apply coveredState_split_literal (state := state_1037716) 2
    state_1037717 state_1037740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037717
  · exact cover_1037740
#print axioms cover_1037716

def state_1037839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1037839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037839 := by
  apply coveredState_split_literal (state := state_1037839) 2
    state_1037840 state_1037851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037840
  · exact cover_1037851
#print axioms cover_1037839

def state_1037715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1037715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037715 := by
  apply coveredState_split_literal (state := state_1037715) 1
    state_1037716 state_1037839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037716
  · exact cover_1037839
#print axioms cover_1037715

def state_1037705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_1037705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037705 := by
  apply coveredState_split_literal (state := state_1037705) 0
    state_1037706 state_1037715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037706
  · exact cover_1037715
#print axioms cover_1037705

def state_1037699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_1037699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037699 := by
  apply coveredState_split_literal (state := state_1037699) 4
    state_1037700 state_1037705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037700
  · exact cover_1037705
#print axioms cover_1037699

def state_1028427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1028427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028427 := by
  apply coveredState_split_literal (state := state_1028427) 3
    state_1028428 state_1037699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028428
  · exact cover_1037699
#print axioms cover_1028427

def state_1037965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_1037965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037965 := by
  apply coveredState_split_literal (state := state_1037965) 3
    state_1037966 state_1038023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037966
  · exact cover_1038023
#print axioms cover_1037965

def state_1037964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_1037964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037964 := by
  apply coveredState_split_literal (state := state_1037964) 1
    state_1037965 state_1038036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037965
  · exact cover_1038036
#print axioms cover_1037964

def state_1037954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_1037954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037954 := by
  apply coveredState_split_literal (state := state_1037954) 0
    state_1037955 state_1037964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037955
  · exact cover_1037964
#print axioms cover_1037954

def state_1037946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_1037946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037946 := by
  apply coveredState_split_literal (state := state_1037946) 4
    state_1037947 state_1037954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037947
  · exact cover_1037954
#print axioms cover_1037946

def state_1037906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_1037906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037906 := by
  apply coveredState_split_literal (state := state_1037906) 3
    state_1037907 state_1037946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1037907
  · exact cover_1037946
#print axioms cover_1037906

def state_1028426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1028426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028426 := by
  apply coveredState_split_literal (state := state_1028426) 2
    state_1028427 state_1037906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028427
  · exact cover_1037906
#print axioms cover_1028426

def state_1038057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1038057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038057 := by
  apply coveredState_split_literal (state := state_1038057) 2
    state_1038058 state_1038119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038058
  · exact cover_1038119
#print axioms cover_1038057

def state_1028425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1028425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028425 := by
  apply coveredState_split_literal (state := state_1028425) 1
    state_1028426 state_1038057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028426
  · exact cover_1038057
#print axioms cover_1028425

def state_1028391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1028391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028391 := by
  apply coveredState_split_literal (state := state_1028391) 0
    state_1028392 state_1028425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028392
  · exact cover_1028425
#print axioms cover_1028391

def state_1028305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1028305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028305 := by
  apply coveredState_split_literal (state := state_1028305) 4
    state_1028306 state_1028391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028306
  · exact cover_1028391
#print axioms cover_1028305

def state_1038186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1038186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038186 := by
  apply coveredState_split_literal (state := state_1038186) 2
    state_1038187 state_1038214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038187
  · exact cover_1038214
#print axioms cover_1038186

def state_1038185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1038185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038185 := by
  apply coveredState_split_literal (state := state_1038185) 1
    state_1038186 state_1038265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038186
  · exact cover_1038265
#print axioms cover_1038185

def state_1038137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1038137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038137 := by
  apply coveredState_split_literal (state := state_1038137) 0
    state_1038138 state_1038185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038138
  · exact cover_1038185
#print axioms cover_1038137

def state_1038323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1038323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038323 := by
  apply coveredState_split_literal (state := state_1038323) 1
    state_1038324 state_1038371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038324
  · exact cover_1038371
#print axioms cover_1038323

def state_1038388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1038388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038388 := by
  apply coveredState_split_literal (state := state_1038388) 1
    state_1038389 state_1038432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038389
  · exact cover_1038432
#print axioms cover_1038388

def state_1038322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1038322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038322 := by
  apply coveredState_split_literal (state := state_1038322) 0
    state_1038323 state_1038388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038323
  · exact cover_1038388
#print axioms cover_1038322

def state_1038136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1038136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038136 := by
  apply coveredState_split_literal (state := state_1038136) 4
    state_1038137 state_1038322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038137
  · exact cover_1038322
#print axioms cover_1038136
end Mub6.Numerical.CircleFullD0.Forest
