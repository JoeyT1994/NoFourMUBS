import D0FullInterface
import D0ForestAssembly0374
import D0ForestChunk1460
import D0ForestChunk1461
import D0ForestChunk1462
import D0ForestChunk1463
import D0ForestChunk1464
import D0ForestChunk1465
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1651559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 44)))
theorem cover_1651559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651559 := by
  apply coveredState_split_literal (state := state_1651559) 0
    state_1651560 state_1651569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651560
  · exact cover_1651569
#print axioms cover_1651559

def state_1651638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 45)))
theorem cover_1651638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651638 := by
  apply coveredState_split_literal (state := state_1651638) 2
    state_1651639 state_1651698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651639
  · exact cover_1651698
#print axioms cover_1651638

def state_1651628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 45)))
theorem cover_1651628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651628 := by
  apply coveredState_split_literal (state := state_1651628) 0
    state_1651629 state_1651638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651629
  · exact cover_1651638
#print axioms cover_1651628

def state_1651558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1651558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651558 := by
  apply coveredState_split_literal (state := state_1651558) 4
    state_1651559 state_1651628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651559
  · exact cover_1651628
#print axioms cover_1651558

def state_1651805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 54 else 44)))
theorem cover_1651805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651805 := by
  apply coveredState_split_literal (state := state_1651805) 1
    state_1651806 state_1651859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651806
  · exact cover_1651859
#print axioms cover_1651805

def state_1651804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 27 else 44)))
theorem cover_1651804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651804 := by
  apply coveredState_split_literal (state := state_1651804) 3
    state_1651805 state_1651912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651805
  · exact cover_1651912
#print axioms cover_1651804

def state_1651746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 44)))
theorem cover_1651746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651746 := by
  apply coveredState_split_literal (state := state_1651746) 2
    state_1651747 state_1651804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651747
  · exact cover_1651804
#print axioms cover_1651746

def state_1651728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 44)))
theorem cover_1651728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651728 := by
  apply coveredState_split_literal (state := state_1651728) 0
    state_1651729 state_1651746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651729
  · exact cover_1651746
#print axioms cover_1651728

def state_1651932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 27 else 45)))
theorem cover_1651932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651932 := by
  apply coveredState_split_literal (state := state_1651932) 3
    state_1651933 state_1651964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651933
  · exact cover_1651964
#print axioms cover_1651932

def state_1651931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 45)))
theorem cover_1651931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651931 := by
  apply coveredState_split_literal (state := state_1651931) 2
    state_1651932 state_1651997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651932
  · exact cover_1651997
#print axioms cover_1651931

def state_1651923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 45)))
theorem cover_1651923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651923 := by
  apply coveredState_split_literal (state := state_1651923) 0
    state_1651924 state_1651931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651924
  · exact cover_1651931
#print axioms cover_1651923

def state_1651727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1651727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651727 := by
  apply coveredState_split_literal (state := state_1651727) 4
    state_1651728 state_1651923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651728
  · exact cover_1651923
#print axioms cover_1651727

def state_1651557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1651557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651557 := by
  apply coveredState_split_literal (state := state_1651557) 1
    state_1651558 state_1651727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651558
  · exact cover_1651727
#print axioms cover_1651557

def state_1651471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 22)))
theorem cover_1651471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651471 := by
  apply coveredState_split_literal (state := state_1651471) 2
    state_1651472 state_1651557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651472
  · exact cover_1651557
#print axioms cover_1651471

def state_1651393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_1651393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651393 := by
  apply coveredState_split_literal (state := state_1651393) 3
    state_1651394 state_1651471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651394
  · exact cover_1651471
#print axioms cover_1651393

def state_1651379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_1651379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651379 := by
  apply coveredState_split_literal (state := state_1651379) 0
    state_1651380 state_1651393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651380
  · exact cover_1651393
#print axioms cover_1651379

def state_1652128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 23)))
theorem cover_1652128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652128 := by
  apply coveredState_split_literal (state := state_1652128) 1
    state_1652129 state_1652160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652129
  · exact cover_1652160
#print axioms cover_1652128

def state_1652070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 23)))
theorem cover_1652070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652070 := by
  apply coveredState_split_literal (state := state_1652070) 2
    state_1652071 state_1652128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652071
  · exact cover_1652128
#print axioms cover_1652070

def state_1652066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
theorem cover_1652066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652066 := by
  apply coveredState_split_literal (state := state_1652066) 3
    state_1652067 state_1652070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652067
  · exact cover_1652070
#print axioms cover_1652066

def state_1652058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
theorem cover_1652058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652058 := by
  apply coveredState_split_literal (state := state_1652058) 0
    state_1652059 state_1652066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652059
  · exact cover_1652066
#print axioms cover_1652058

def state_1651378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_1651378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651378 := by
  apply coveredState_split_literal (state := state_1651378) 4
    state_1651379 state_1652058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651379
  · exact cover_1652058
#print axioms cover_1651378

def state_1652300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1652300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652300 := by
  apply coveredState_split_literal (state := state_1652300) 1
    state_1652301 state_1652362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652301
  · exact cover_1652362
#print axioms cover_1652300

def state_1652278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 22)))
theorem cover_1652278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652278 := by
  apply coveredState_split_literal (state := state_1652278) 2
    state_1652279 state_1652300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652279
  · exact cover_1652300
#print axioms cover_1652278

def state_1652226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_1652226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652226 := by
  apply coveredState_split_literal (state := state_1652226) 3
    state_1652227 state_1652278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652227
  · exact cover_1652278
#print axioms cover_1652226

def state_1652216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_1652216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652216 := by
  apply coveredState_split_literal (state := state_1652216) 0
    state_1652217 state_1652226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652217
  · exact cover_1652226
#print axioms cover_1652216

def state_1652215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_1652215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652215 := by
  apply coveredState_split_literal (state := state_1652215) 4
    state_1652216 state_1652365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652216
  · exact cover_1652365
#print axioms cover_1652215

def state_1651377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_1651377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651377 := by
  apply coveredState_split_literal (state := state_1651377) 1
    state_1651378 state_1652215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651378
  · exact cover_1652215
#print axioms cover_1651377

def state_1652425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
theorem cover_1652425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652425 := by
  apply coveredState_split_literal (state := state_1652425) 4
    state_1652426 state_1652481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652426
  · exact cover_1652481
#print axioms cover_1652425

def state_1652401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
theorem cover_1652401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652401 := by
  apply coveredState_split_literal (state := state_1652401) 1
    state_1652402 state_1652425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652402
  · exact cover_1652425
#print axioms cover_1652401

def state_1652400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 22)))
theorem cover_1652400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652400 := by
  apply coveredState_split_literal (state := state_1652400) 2
    state_1652401 state_1652498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652401
  · exact cover_1652498
#print axioms cover_1652400

def state_1652398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
theorem cover_1652398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652398 := by
  apply coveredState_split_literal (state := state_1652398) 3
    state_1652399 state_1652400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652399
  · exact cover_1652400
#print axioms cover_1652398

def state_1652396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
theorem cover_1652396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652396 := by
  apply coveredState_split_literal (state := state_1652396) 0
    state_1652397 state_1652398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652397
  · exact cover_1652398
#print axioms cover_1652396
end Mub6.Numerical.CircleFullD0.Forest
