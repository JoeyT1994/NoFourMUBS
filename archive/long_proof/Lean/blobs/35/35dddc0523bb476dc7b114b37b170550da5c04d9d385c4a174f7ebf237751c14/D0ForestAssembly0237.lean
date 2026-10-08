import D0FullInterface
import D0ForestAssembly0229
import D0ForestAssembly0230
import D0ForestAssembly0232
import D0ForestAssembly0235
import D0ForestAssembly0236
import D0ForestChunk0903
import D0ForestChunk0904
import D0ForestChunk0905
import D0ForestChunk0906
import D0ForestChunk0907
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1515984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 15)))
theorem cover_1515984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515984 := by
  apply coveredState_split_literal (state := state_1515984) 4
    state_1515985 state_1516482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515985
  · exact cover_1516482
#print axioms cover_1515984

def state_1512984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 15)))
theorem cover_1512984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512984 := by
  apply coveredState_split_literal (state := state_1512984) 3
    state_1512985 state_1515984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512985
  · exact cover_1515984
#print axioms cover_1512984

def state_1510524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1510524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510524 := by
  apply coveredState_split_literal (state := state_1510524) 2
    state_1510525 state_1512984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510525
  · exact cover_1512984
#print axioms cover_1510524

def state_1517354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 15)))
theorem cover_1517354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517354 := by
  apply coveredState_split_literal (state := state_1517354) 3
    state_1517355 state_1517410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517355
  · exact cover_1517410
#print axioms cover_1517354

def state_1517462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
theorem cover_1517462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517462 := by
  apply coveredState_split_literal (state := state_1517462) 2
    state_1517463 state_1517522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517463
  · exact cover_1517522
#print axioms cover_1517462

def state_1517461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 46) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
theorem cover_1517461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517461 := by
  apply coveredState_split_literal (state := state_1517461) 0
    state_1517462 state_1517535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517462
  · exact cover_1517535
#print axioms cover_1517461

def state_1517460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
theorem cover_1517460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517460 := by
  apply coveredState_split_literal (state := state_1517460) 1
    state_1517461 state_1517556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517461
  · exact cover_1517556
#print axioms cover_1517460

def state_1517422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 15)))
theorem cover_1517422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517422 := by
  apply coveredState_split_literal (state := state_1517422) 4
    state_1517423 state_1517460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517423
  · exact cover_1517460
#print axioms cover_1517422

def state_1517676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 63)))
theorem cover_1517676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517676 := by
  apply coveredState_split_literal (state := state_1517676) 1
    state_1517677 state_1517738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517677
  · exact cover_1517738
#print axioms cover_1517676

def state_1517652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 31)))
theorem cover_1517652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517652 := by
  apply coveredState_split_literal (state := state_1517652) 4
    state_1517653 state_1517676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517653
  · exact cover_1517676
#print axioms cover_1517652

def state_1517768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 92) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 63)))
theorem cover_1517768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517768 := by
  apply coveredState_split_literal (state := state_1517768) 0
    state_1517769 state_1517774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517769
  · exact cover_1517774
#print axioms cover_1517768

def state_1517767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 63)))
theorem cover_1517767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517767 := by
  apply coveredState_split_literal (state := state_1517767) 1
    state_1517768 state_1517833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517768
  · exact cover_1517833
#print axioms cover_1517767

def state_1517755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 31)))
theorem cover_1517755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517755 := by
  apply coveredState_split_literal (state := state_1517755) 4
    state_1517756 state_1517767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517756
  · exact cover_1517767
#print axioms cover_1517755

def state_1517651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 27 else 31)))
theorem cover_1517651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517651 := by
  apply coveredState_split_literal (state := state_1517651) 3
    state_1517652 state_1517755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517652
  · exact cover_1517755
#print axioms cover_1517651

def state_1517607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
theorem cover_1517607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517607 := by
  apply coveredState_split_literal (state := state_1517607) 2
    state_1517608 state_1517651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517608
  · exact cover_1517651
#print axioms cover_1517607

def state_1517848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 27 else 31)))
theorem cover_1517848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517848 := by
  apply coveredState_split_literal (state := state_1517848) 3
    state_1517849 state_1517906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517849
  · exact cover_1517906
#print axioms cover_1517848

def state_1517840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 46) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
theorem cover_1517840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517840 := by
  apply coveredState_split_literal (state := state_1517840) 2
    state_1517841 state_1517848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517841
  · exact cover_1517848
#print axioms cover_1517840

def state_1517606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 46) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
theorem cover_1517606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517606 := by
  apply coveredState_split_literal (state := state_1517606) 0
    state_1517607 state_1517840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517607
  · exact cover_1517840
#print axioms cover_1517606

def state_1517605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
theorem cover_1517605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517605 := by
  apply coveredState_split_literal (state := state_1517605) 1
    state_1517606 state_1517927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517606
  · exact cover_1517927
#print axioms cover_1517605

def state_1517579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 15)))
theorem cover_1517579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517579 := by
  apply coveredState_split_literal (state := state_1517579) 4
    state_1517580 state_1517605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517580
  · exact cover_1517605
#print axioms cover_1517579

def state_1517421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 15)))
theorem cover_1517421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517421 := by
  apply coveredState_split_literal (state := state_1517421) 3
    state_1517422 state_1517579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517422
  · exact cover_1517579
#print axioms cover_1517421

def state_1517353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1517353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517353 := by
  apply coveredState_split_literal (state := state_1517353) 2
    state_1517354 state_1517421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517354
  · exact cover_1517421
#print axioms cover_1517353

def state_1510523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1510523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510523 := by
  apply coveredState_split_literal (state := state_1510523) 1
    state_1510524 state_1517353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510524
  · exact cover_1517353
#print axioms cover_1510523

def state_1509577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1509577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509577 := by
  apply coveredState_split_literal (state := state_1509577) 0
    state_1509578 state_1510523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509578
  · exact cover_1510523
#print axioms cover_1509577

def state_1509305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_1509305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509305 := by
  apply coveredState_split_literal (state := state_1509305) 4
    state_1509306 state_1509577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509306
  · exact cover_1509577
#print axioms cover_1509305

def state_1507545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
theorem cover_1507545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507545 := by
  apply coveredState_split_literal (state := state_1507545) 3
    state_1507546 state_1509305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507546
  · exact cover_1509305
#print axioms cover_1507545

def state_1518103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 31)))
theorem cover_1518103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518103 := by
  apply coveredState_split_literal (state := state_1518103) 1
    state_1518104 state_1518119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518104
  · exact cover_1518119
#print axioms cover_1518103

def state_1518102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 31)))
theorem cover_1518102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518102 := by
  apply coveredState_split_literal (state := state_1518102) 0
    state_1518103 state_1518174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518103
  · exact cover_1518174
#print axioms cover_1518102

def state_1518070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 15)))
theorem cover_1518070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518070 := by
  apply coveredState_split_literal (state := state_1518070) 4
    state_1518071 state_1518102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518071
  · exact cover_1518102
#print axioms cover_1518070

def state_1518054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 15)))
theorem cover_1518054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518054 := by
  apply coveredState_split_literal (state := state_1518054) 3
    state_1518055 state_1518070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518055
  · exact cover_1518070
#print axioms cover_1518054

def state_1518053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 15)))
theorem cover_1518053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518053 := by
  apply coveredState_split_literal (state := state_1518053) 2
    state_1518054 state_1518199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518054
  · exact cover_1518199
#print axioms cover_1518053

def state_1518221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 31)))
theorem cover_1518221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518221 := by
  apply coveredState_split_literal (state := state_1518221) 2
    state_1518222 state_1518281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518222
  · exact cover_1518281
#print axioms cover_1518221
end Mub6.Numerical.CircleFullD0.Forest
