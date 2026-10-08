import D0FullInterface
import D0ForestAssembly0024
import D0ForestChunk0052
import D0ForestChunk0053
import D0ForestChunk0054
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2582287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2582287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582287 := by
  apply coveredState_split_literal (state := state_2582287) 0
    state_2582288 state_2582927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582288
  · exact cover_2582927
#print axioms cover_2582287

def state_2582286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2582286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582286 := by
  apply coveredState_split_literal (state := state_2582286) 4
    state_2582287 state_2584464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582287
  · exact cover_2584464
#print axioms cover_2582286

def state_2582285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2582285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582285 := by
  apply coveredState_split_literal (state := state_2582285) 3
    state_2582286 state_2584597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582286
  · exact cover_2584597
#print axioms cover_2582285

def state_2582271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2582271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582271 := by
  apply coveredState_split_literal (state := state_2582271) 2
    state_2582272 state_2582285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582272
  · exact cover_2582285
#print axioms cover_2582271

def state_2576617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2576617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576617 := by
  apply coveredState_split_literal (state := state_2576617) 1
    state_2576618 state_2582271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576618
  · exact cover_2582271
#print axioms cover_2576617

def state_2576616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2576616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576616 := by
  apply coveredState_split_literal (state := state_2576616) 0
    state_2576617 state_2584622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576617
  · exact cover_2584622
#print axioms cover_2576616

def state_2576615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2576615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576615 := by
  apply coveredState_split_literal (state := state_2576615) 4
    state_2576616 state_2584795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576616
  · exact cover_2584795
#print axioms cover_2576615

def state_2573593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2573593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573593 := by
  apply coveredState_split_literal (state := state_2573593) 3
    state_2573594 state_2576615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573594
  · exact cover_2576615
#print axioms cover_2573593

def state_2585010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 9)))
theorem cover_2585010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585010 := by
  apply coveredState_split_literal (state := state_2585010) 3
    state_2585011 state_2585446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585011
  · exact cover_2585446
#print axioms cover_2585010

def state_2585009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
theorem cover_2585009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585009 := by
  apply coveredState_split_literal (state := state_2585009) 2
    state_2585010 state_2586191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585010
  · exact cover_2586191
#print axioms cover_2585009

def state_2584959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
theorem cover_2584959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584959 := by
  apply coveredState_split_literal (state := state_2584959) 0
    state_2584960 state_2585009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584960
  · exact cover_2585009
#print axioms cover_2584959

def state_2584947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_2584947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584947 := by
  apply coveredState_split_literal (state := state_2584947) 4
    state_2584948 state_2584959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584948
  · exact cover_2584959
#print axioms cover_2584947

def state_2587026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 38)))
theorem cover_2587026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587026 := by
  apply coveredState_split_literal (state := state_2587026) 1
    state_2587027 state_2587302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587027
  · exact cover_2587302
#print axioms cover_2587026

def state_2587025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2587025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587025 := by
  apply coveredState_split_literal (state := state_2587025) 4
    state_2587026 state_2588085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587026
  · exact cover_2588085
#print axioms cover_2587025

def state_2586967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2586967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586967 := by
  apply coveredState_split_literal (state := state_2586967) 0
    state_2586968 state_2587025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586968
  · exact cover_2587025
#print axioms cover_2586967

def state_2586665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 19)))
theorem cover_2586665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586665 := by
  apply coveredState_split_literal (state := state_2586665) 3
    state_2586666 state_2586967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586666
  · exact cover_2586967
#print axioms cover_2586665

def state_2586664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
theorem cover_2586664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586664 := by
  apply coveredState_split_literal (state := state_2586664) 2
    state_2586665 state_2588426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586665
  · exact cover_2588426
#print axioms cover_2586664

def state_2586444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2586444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586444 := by
  apply coveredState_split_literal (state := state_2586444) 4
    state_2586445 state_2586664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586445
  · exact cover_2586664
#print axioms cover_2586444

def state_2586443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2586443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586443 := by
  apply coveredState_split_literal (state := state_2586443) 1
    state_2586444 state_2588667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586444
  · exact cover_2588667
#print axioms cover_2586443

def state_2586397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 9)))
theorem cover_2586397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586397 := by
  apply coveredState_split_literal (state := state_2586397) 3
    state_2586398 state_2586443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586398
  · exact cover_2586443
#print axioms cover_2586397

def state_2586396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
theorem cover_2586396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586396 := by
  apply coveredState_split_literal (state := state_2586396) 2
    state_2586397 state_2588990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586397
  · exact cover_2588990
#print axioms cover_2586396

def state_2586360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
theorem cover_2586360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586360 := by
  apply coveredState_split_literal (state := state_2586360) 0
    state_2586361 state_2586396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586361
  · exact cover_2586396
#print axioms cover_2586360

def state_2586344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_2586344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586344 := by
  apply coveredState_split_literal (state := state_2586344) 4
    state_2586345 state_2586360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586345
  · exact cover_2586360
#print axioms cover_2586344

def state_2584946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_2584946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584946 := by
  apply coveredState_split_literal (state := state_2584946) 1
    state_2584947 state_2586344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584947
  · exact cover_2586344
#print axioms cover_2584946

def state_2584892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
theorem cover_2584892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584892 := by
  apply coveredState_split_literal (state := state_2584892) 3
    state_2584893 state_2584946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584893
  · exact cover_2584946
#print axioms cover_2584892

def state_2584891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_2584891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584891 := by
  apply coveredState_split_literal (state := state_2584891) 2
    state_2584892 state_2589051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584892
  · exact cover_2589051
#print axioms cover_2584891

def state_2589105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_2589105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589105 := by
  apply coveredState_split_literal (state := state_2589105) 1
    state_2589106 state_2589477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589106
  · exact cover_2589477
#print axioms cover_2589105

def state_2589097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
theorem cover_2589097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589097 := by
  apply coveredState_split_literal (state := state_2589097) 3
    state_2589098 state_2589105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589098
  · exact cover_2589105
#print axioms cover_2589097

def state_2589096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_2589096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589096 := by
  apply coveredState_split_literal (state := state_2589096) 2
    state_2589097 state_2590372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589097
  · exact cover_2590372
#print axioms cover_2589096

def state_2584890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_2584890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584890 := by
  apply coveredState_split_literal (state := state_2584890) 0
    state_2584891 state_2589096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584891
  · exact cover_2589096
#print axioms cover_2584890

def state_2591081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
theorem cover_2591081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591081 := by
  apply coveredState_split_literal (state := state_2591081) 1
    state_2591082 state_2592057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591082
  · exact cover_2592057
#print axioms cover_2591081

def state_2591080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 5)))
theorem cover_2591080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591080 := by
  apply coveredState_split_literal (state := state_2591080) 4
    state_2591081 state_2592458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591081
  · exact cover_2592458
#print axioms cover_2591080

def state_2591042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 5)))
theorem cover_2591042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591042 := by
  apply coveredState_split_literal (state := state_2591042) 3
    state_2591043 state_2591080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591043
  · exact cover_2591080
#print axioms cover_2591042

def state_2591041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_2591041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591041 := by
  apply coveredState_split_literal (state := state_2591041) 2
    state_2591042 state_2592515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591042
  · exact cover_2592515
#print axioms cover_2591041

def state_2590385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_2590385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590385 := by
  apply coveredState_split_literal (state := state_2590385) 0
    state_2590386 state_2591041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590386
  · exact cover_2591041
#print axioms cover_2590385

def state_2584889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_2584889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584889 := by
  apply coveredState_split_literal (state := state_2584889) 4
    state_2584890 state_2590385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584890
  · exact cover_2590385
#print axioms cover_2584889

def state_2584873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_2584873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584873 := by
  apply coveredState_split_literal (state := state_2584873) 3
    state_2584874 state_2584889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584874
  · exact cover_2584889
#print axioms cover_2584873

def state_2584872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2584872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584872 := by
  apply coveredState_split_literal (state := state_2584872) 2
    state_2584873 state_2592594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584873
  · exact cover_2592594
#print axioms cover_2584872

def state_2584871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2584871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584871 := by
  apply coveredState_split_literal (state := state_2584871) 1
    state_2584872 state_2592617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584872
  · exact cover_2592617
#print axioms cover_2584871

def state_2584870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2584870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584870 := by
  apply coveredState_split_literal (state := state_2584870) 0
    state_2584871 state_2592902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584871
  · exact cover_2592902
#print axioms cover_2584870

def state_2584869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2584869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584869 := by
  apply coveredState_split_literal (state := state_2584869) 4
    state_2584870 state_2593085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584870
  · exact cover_2593085
#print axioms cover_2584869

def state_2593372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2593372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593372 := by
  apply coveredState_split_literal (state := state_2593372) 0
    state_2593373 state_2594010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593373
  · exact cover_2594010
#print axioms cover_2593372

def state_2593371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2593371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593371 := by
  apply coveredState_split_literal (state := state_2593371) 4
    state_2593372 state_2595033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593372
  · exact cover_2595033
#print axioms cover_2593371

def state_2593370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2593370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593370 := by
  apply coveredState_split_literal (state := state_2593370) 3
    state_2593371 state_2595606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593371
  · exact cover_2595606
#print axioms cover_2593370

def state_2593369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2593369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593369 := by
  apply coveredState_split_literal (state := state_2593369) 2
    state_2593370 state_2595609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593370
  · exact cover_2595609
#print axioms cover_2593369

def state_2595616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2595616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595616 := by
  apply coveredState_split_literal (state := state_2595616) 4
    state_2595617 state_2596184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595617
  · exact cover_2596184
#print axioms cover_2595616

def state_2595615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2595615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595615 := by
  apply coveredState_split_literal (state := state_2595615) 3
    state_2595616 state_2596803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595616
  · exact cover_2596803
#print axioms cover_2595615

def state_2595614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2595614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595614 := by
  apply coveredState_split_literal (state := state_2595614) 2
    state_2595615 state_2596818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2595615
  · exact cover_2596818
#print axioms cover_2595614

def state_2593368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2593368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593368 := by
  apply coveredState_split_literal (state := state_2593368) 1
    state_2593369 state_2595614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593369
  · exact cover_2595614
#print axioms cover_2593368

def state_2593367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2593367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593367 := by
  apply coveredState_split_literal (state := state_2593367) 0
    state_2593368 state_2596839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593368
  · exact cover_2596839
#print axioms cover_2593367

def state_2593366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2593366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593366 := by
  apply coveredState_split_literal (state := state_2593366) 4
    state_2593367 state_2597380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2593367
  · exact cover_2597380
#print axioms cover_2593366

def state_2584868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2584868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584868 := by
  apply coveredState_split_literal (state := state_2584868) 3
    state_2584869 state_2593366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584869
  · exact cover_2593366
#print axioms cover_2584868

def state_2573592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2573592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573592 := by
  apply coveredState_split_literal (state := state_2573592) 2
    state_2573593 state_2584868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573593
  · exact cover_2584868
#print axioms cover_2573592

def state_2599551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_2599551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599551 := by
  apply coveredState_split_literal (state := state_2599551) 2
    state_2599552 state_2600507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599552
  · exact cover_2600507
#print axioms cover_2599551

def state_2599550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_2599550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599550 := by
  apply coveredState_split_literal (state := state_2599550) 0
    state_2599551 state_2600604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599551
  · exact cover_2600604
#print axioms cover_2599550

def state_2599522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_2599522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599522 := by
  apply coveredState_split_literal (state := state_2599522) 4
    state_2599523 state_2599550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599523
  · exact cover_2599550
#print axioms cover_2599522

def state_2599521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2599521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599521 := by
  apply coveredState_split_literal (state := state_2599521) 3
    state_2599522 state_2600823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599522
  · exact cover_2600823
#print axioms cover_2599521

def state_2599520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2599520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599520 := by
  apply coveredState_split_literal (state := state_2599520) 2
    state_2599521 state_2600830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599521
  · exact cover_2600830
#print axioms cover_2599520

def state_2599402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2599402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599402 := by
  apply coveredState_split_literal (state := state_2599402) 1
    state_2599403 state_2599520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599403
  · exact cover_2599520
#print axioms cover_2599402

def state_2599401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2599401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599401 := by
  apply coveredState_split_literal (state := state_2599401) 0
    state_2599402 state_2600841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599402
  · exact cover_2600841
#print axioms cover_2599401

def state_2598913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2598913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598913 := by
  apply coveredState_split_literal (state := state_2598913) 4
    state_2598914 state_2599401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598914
  · exact cover_2599401
#print axioms cover_2598913

def state_2598719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2598719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598719 := by
  apply coveredState_split_literal (state := state_2598719) 3
    state_2598720 state_2598913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598720
  · exact cover_2598913
#print axioms cover_2598719

def state_2597847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2597847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597847 := by
  apply coveredState_split_literal (state := state_2597847) 2
    state_2597848 state_2598719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597848
  · exact cover_2598719
#print axioms cover_2597847

def state_2573591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2573591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573591 := by
  apply coveredState_split_literal (state := state_2573591) 1
    state_2573592 state_2597847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573592
  · exact cover_2597847
#print axioms cover_2573591
end Mub6.Numerical.CircleFullD0.Forest
