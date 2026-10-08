import D0FullInterface
import D0ForestAssembly0378
import D0ForestAssembly0380
import D0ForestChunk1485
import D0ForestChunk1486
import D0ForestChunk1487
import D0ForestChunk1488
import D0ForestChunk1489
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1657134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
theorem cover_1657134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657134 := by
  apply coveredState_split_literal (state := state_1657134) 1
    state_1657135 state_1657270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657135
  · exact cover_1657270
#print axioms cover_1657134

def state_1657133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
theorem cover_1657133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657133 := by
  apply coveredState_split_literal (state := state_1657133) 0
    state_1657134 state_1657279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657134
  · exact cover_1657279
#print axioms cover_1657133

def state_1656381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 20)))
theorem cover_1656381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656381 := by
  apply coveredState_split_literal (state := state_1656381) 2
    state_1656382 state_1657133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656382
  · exact cover_1657133
#print axioms cover_1656381

def state_1657359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
theorem cover_1657359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657359 := by
  apply coveredState_split_literal (state := state_1657359) 1
    state_1657360 state_1657397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657360
  · exact cover_1657397
#print axioms cover_1657359

def state_1657358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 42)))
theorem cover_1657358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657358 := by
  apply coveredState_split_literal (state := state_1657358) 2
    state_1657359 state_1657428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657359
  · exact cover_1657428
#print axioms cover_1657358

def state_1657357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 21)))
theorem cover_1657357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657357 := by
  apply coveredState_split_literal (state := state_1657357) 4
    state_1657358 state_1657473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657358
  · exact cover_1657473
#print axioms cover_1657357

def state_1657333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1657333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657333 := by
  apply coveredState_split_literal (state := state_1657333) 3
    state_1657334 state_1657357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657334
  · exact cover_1657357
#print axioms cover_1657333

def state_1657332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1657332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657332 := by
  apply coveredState_split_literal (state := state_1657332) 1
    state_1657333 state_1657488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657333
  · exact cover_1657488
#print axioms cover_1657332

def state_1657331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1657331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657331 := by
  apply coveredState_split_literal (state := state_1657331) 0
    state_1657332 state_1657513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657332
  · exact cover_1657513
#print axioms cover_1657331

def state_1657330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 21)))
theorem cover_1657330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657330 := by
  apply coveredState_split_literal (state := state_1657330) 2
    state_1657331 state_1657532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657331
  · exact cover_1657532
#print axioms cover_1657330

def state_1656380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 10)))
theorem cover_1656380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656380 := by
  apply coveredState_split_literal (state := state_1656380) 4
    state_1656381 state_1657330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656381
  · exact cover_1657330
#print axioms cover_1656380

def state_1657569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 21)))
theorem cover_1657569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657569 := by
  apply coveredState_split_literal (state := state_1657569) 1
    state_1657570 state_1657617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657570
  · exact cover_1657617
#print axioms cover_1657569

def state_1657568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 21)))
theorem cover_1657568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657568 := by
  apply coveredState_split_literal (state := state_1657568) 0
    state_1657569 state_1657640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657569
  · exact cover_1657640
#print axioms cover_1657568

def state_1657567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 21)))
theorem cover_1657567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657567 := by
  apply coveredState_split_literal (state := state_1657567) 2
    state_1657568 state_1657657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657568
  · exact cover_1657657
#print axioms cover_1657567

def state_1657557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 10)))
theorem cover_1657557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657557 := by
  apply coveredState_split_literal (state := state_1657557) 4
    state_1657558 state_1657567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657558
  · exact cover_1657567
#print axioms cover_1657557

def state_1656379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1656379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656379 := by
  apply coveredState_split_literal (state := state_1656379) 3
    state_1656380 state_1657557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656380
  · exact cover_1657557
#print axioms cover_1656379

def state_1654333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1654333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654333 := by
  apply coveredState_split_literal (state := state_1654333) 1
    state_1654334 state_1656379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654334
  · exact cover_1656379
#print axioms cover_1654333

def state_1657696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1657696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657696 := by
  apply coveredState_split_literal (state := state_1657696) 1
    state_1657697 state_1657744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657697
  · exact cover_1657744
#print axioms cover_1657696

def state_1654332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1654332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654332 := by
  apply coveredState_split_literal (state := state_1654332) 0
    state_1654333 state_1657696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654333
  · exact cover_1657696
#print axioms cover_1654332

def state_1653938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
theorem cover_1653938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653938 := by
  apply coveredState_split_literal (state := state_1653938) 2
    state_1653939 state_1654332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653939
  · exact cover_1654332
#print axioms cover_1653938

def state_1657809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1657809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657809 := by
  apply coveredState_split_literal (state := state_1657809) 4
    state_1657810 state_1657835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657810
  · exact cover_1657835
#print axioms cover_1657809

def state_1657808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1657808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657808 := by
  apply coveredState_split_literal (state := state_1657808) 0
    state_1657809 state_1657874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657809
  · exact cover_1657874
#print axioms cover_1657808

def state_1657924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 45)))
theorem cover_1657924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657924 := by
  apply coveredState_split_literal (state := state_1657924) 2
    state_1657925 state_1657946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657925
  · exact cover_1657946
#print axioms cover_1657924

def state_1657878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1657878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657878 := by
  apply coveredState_split_literal (state := state_1657878) 4
    state_1657879 state_1657924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657879
  · exact cover_1657924
#print axioms cover_1657878

def state_1657877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1657877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657877 := by
  apply coveredState_split_literal (state := state_1657877) 0
    state_1657878 state_1657993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657878
  · exact cover_1657993
#print axioms cover_1657877

def state_1657807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
theorem cover_1657807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657807 := by
  apply coveredState_split_literal (state := state_1657807) 1
    state_1657808 state_1657877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657808
  · exact cover_1657877
#print axioms cover_1657807

def state_1657799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 22)))
theorem cover_1657799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657799 := by
  apply coveredState_split_literal (state := state_1657799) 2
    state_1657800 state_1657807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657800
  · exact cover_1657807
#print axioms cover_1657799

def state_1657785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_1657785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657785 := by
  apply coveredState_split_literal (state := state_1657785) 3
    state_1657786 state_1657799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657786
  · exact cover_1657799
#print axioms cover_1657785

def state_1658004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 23)))
theorem cover_1658004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658004 := by
  apply coveredState_split_literal (state := state_1658004) 1
    state_1658005 state_1658026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658005
  · exact cover_1658026
#print axioms cover_1658004

def state_1658002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 23)))
theorem cover_1658002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658002 := by
  apply coveredState_split_literal (state := state_1658002) 2
    state_1658003 state_1658004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658003
  · exact cover_1658004
#print axioms cover_1658002

def state_1658000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
theorem cover_1658000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658000 := by
  apply coveredState_split_literal (state := state_1658000) 3
    state_1658001 state_1658002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658001
  · exact cover_1658002
#print axioms cover_1658000

def state_1657784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_1657784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657784 := by
  apply coveredState_split_literal (state := state_1657784) 4
    state_1657785 state_1658000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1657785
  · exact cover_1658000
#print axioms cover_1657784
end Mub6.Numerical.CircleFullD0.Forest
