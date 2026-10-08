import D0FullInterface
import D0ForestAssembly0498
import D0ForestChunk1960
import D0ForestChunk1962
import D0ForestChunk1963
import D0ForestChunk1964
import D0ForestChunk1965
import D0ForestChunk1966
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2551527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
theorem cover_2551527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551527 := by
  apply coveredState_split_literal (state := state_2551527) 2
    state_2551528 state_2551583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551528
  · exact cover_2551583
#print axioms cover_2551527

def state_2551525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_2551525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551525 := by
  apply coveredState_split_literal (state := state_2551525) 4
    state_2551526 state_2551527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551526
  · exact cover_2551527
#print axioms cover_2551525

def state_2551519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2551519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551519 := by
  apply coveredState_split_literal (state := state_2551519) 3
    state_2551520 state_2551525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551520
  · exact cover_2551525
#print axioms cover_2551519

def state_2551517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2551517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551517 := by
  apply coveredState_split_literal (state := state_2551517) 1
    state_2551518 state_2551519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551518
  · exact cover_2551519
#print axioms cover_2551517

def state_2551027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2551027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551027 := by
  apply coveredState_split_literal (state := state_2551027) 0
    state_2551028 state_2551517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551028
  · exact cover_2551517
#print axioms cover_2551027

def state_2551025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_2551025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551025 := by
  apply coveredState_split_literal (state := state_2551025) 4
    state_2551026 state_2551027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551026
  · exact cover_2551027
#print axioms cover_2551025

def state_2551756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_2551756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551756 := by
  apply coveredState_split_literal (state := state_2551756) 2
    state_2551757 state_2551806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551757
  · exact cover_2551806
#print axioms cover_2551756

def state_2551746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_2551746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551746 := by
  apply coveredState_split_literal (state := state_2551746) 0
    state_2551747 state_2551756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551747
  · exact cover_2551756
#print axioms cover_2551746

def state_2551724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_2551724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551724 := by
  apply coveredState_split_literal (state := state_2551724) 4
    state_2551725 state_2551746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551725
  · exact cover_2551746
#print axioms cover_2551724

def state_2551842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 46)))
theorem cover_2551842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551842 := by
  apply coveredState_split_literal (state := state_2551842) 2
    state_2551843 state_2551870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551843
  · exact cover_2551870
#print axioms cover_2551842

def state_2551832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 46)))
theorem cover_2551832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551832 := by
  apply coveredState_split_literal (state := state_2551832) 0
    state_2551833 state_2551842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551833
  · exact cover_2551842
#print axioms cover_2551832

def state_2552016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 57 else 47)))
theorem cover_2552016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552016 := by
  apply coveredState_split_literal (state := state_2552016) 1
    state_2552017 state_2552076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552017
  · exact cover_2552076
#print axioms cover_2552016

def state_2551966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 28 else 47)))
theorem cover_2551966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551966 := by
  apply coveredState_split_literal (state := state_2551966) 3
    state_2551967 state_2552016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551967
  · exact cover_2552016
#print axioms cover_2551966

def state_2552094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 56 else 47)))
theorem cover_2552094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552094 := by
  apply coveredState_split_literal (state := state_2552094) 1
    state_2552095 state_2552116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552095
  · exact cover_2552116
#print axioms cover_2552094

def state_2552172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
theorem cover_2552172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552172 := by
  apply coveredState_split_literal (state := state_2552172) 4
    state_2552173 state_2552188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552173
  · exact cover_2552188
#print axioms cover_2552172

def state_2552251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
theorem cover_2552251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552251 := by
  apply coveredState_split_literal (state := state_2552251) 4
    state_2552252 state_2552313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552252
  · exact cover_2552313
#print axioms cover_2552251

def state_2552171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
theorem cover_2552171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552171 := by
  apply coveredState_split_literal (state := state_2552171) 1
    state_2552172 state_2552251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552172
  · exact cover_2552251
#print axioms cover_2552171

def state_2552093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 47)))
theorem cover_2552093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552093 := by
  apply coveredState_split_literal (state := state_2552093) 3
    state_2552094 state_2552171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552094
  · exact cover_2552171
#print axioms cover_2552093

def state_2551965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_2551965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551965 := by
  apply coveredState_split_literal (state := state_2551965) 2
    state_2551966 state_2552093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551966
  · exact cover_2552093
#print axioms cover_2551965

def state_2551919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_2551919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551919 := by
  apply coveredState_split_literal (state := state_2551919) 0
    state_2551920 state_2551965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551920
  · exact cover_2551965
#print axioms cover_2551919

def state_2551831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_2551831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551831 := by
  apply coveredState_split_literal (state := state_2551831) 4
    state_2551832 state_2551919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551832
  · exact cover_2551919
#print axioms cover_2551831

def state_2551723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_2551723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551723 := by
  apply coveredState_split_literal (state := state_2551723) 1
    state_2551724 state_2551831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551724
  · exact cover_2551831
#print axioms cover_2551723

def state_2552370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 47)))
theorem cover_2552370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552370 := by
  apply coveredState_split_literal (state := state_2552370) 2
    state_2552371 state_2552422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552371
  · exact cover_2552422
#print axioms cover_2552370

def state_2552364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 47)))
theorem cover_2552364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552364 := by
  apply coveredState_split_literal (state := state_2552364) 0
    state_2552365 state_2552370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552365
  · exact cover_2552370
#print axioms cover_2552364

def state_2552350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
theorem cover_2552350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552350 := by
  apply coveredState_split_literal (state := state_2552350) 4
    state_2552351 state_2552364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552351
  · exact cover_2552364
#print axioms cover_2552350

def state_2552324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
theorem cover_2552324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552324 := by
  apply coveredState_split_literal (state := state_2552324) 1
    state_2552325 state_2552350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552325
  · exact cover_2552350
#print axioms cover_2552324

def state_2551722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 23)))
theorem cover_2551722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551722 := by
  apply coveredState_split_literal (state := state_2551722) 3
    state_2551723 state_2552324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551723
  · exact cover_2552324
#print axioms cover_2551722

def state_2552502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2552502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552502 := by
  apply coveredState_split_literal (state := state_2552502) 3
    state_2552503 state_2552554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552503
  · exact cover_2552554
#print axioms cover_2552502

def state_2552496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2552496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552496 := by
  apply coveredState_split_literal (state := state_2552496) 0
    state_2552497 state_2552502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552497
  · exact cover_2552502
#print axioms cover_2552496

def state_2552472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2552472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552472 := by
  apply coveredState_split_literal (state := state_2552472) 4
    state_2552473 state_2552496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552473
  · exact cover_2552496
#print axioms cover_2552472

def state_2552456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2552456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552456 := by
  apply coveredState_split_literal (state := state_2552456) 1
    state_2552457 state_2552472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552457
  · exact cover_2552472
#print axioms cover_2552456

def state_2552455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 23)))
theorem cover_2552455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552455 := by
  apply coveredState_split_literal (state := state_2552455) 3
    state_2552456 state_2552589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552456
  · exact cover_2552589
#print axioms cover_2552455
end Mub6.Numerical.CircleFullD0.Forest
