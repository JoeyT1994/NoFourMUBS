import D0FullInterface
import D0ForestAssembly0264
import D0ForestChunk1013
import D0ForestChunk1015
import D0ForestChunk1016
import D0ForestChunk1017
import D0ForestChunk1018
import D0ForestChunk1019
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1543676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
theorem cover_1543676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543676 := by
  apply coveredState_split_literal (state := state_1543676) 2
    state_1543677 state_1543714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543677
  · exact cover_1543714
#print axioms cover_1543676

def state_1543650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
theorem cover_1543650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543650 := by
  apply coveredState_split_literal (state := state_1543650) 0
    state_1543651 state_1543676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543651
  · exact cover_1543676
#print axioms cover_1543650

def state_1544099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 41)))
theorem cover_1544099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544099 := by
  apply coveredState_split_literal (state := state_1544099) 1
    state_1544100 state_1544151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544100
  · exact cover_1544151
#print axioms cover_1544099

def state_1544059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 41)))
theorem cover_1544059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544059 := by
  apply coveredState_split_literal (state := state_1544059) 2
    state_1544060 state_1544099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544060
  · exact cover_1544099
#print axioms cover_1544059

def state_1544017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 41)))
theorem cover_1544017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544017 := by
  apply coveredState_split_literal (state := state_1544017) 0
    state_1544018 state_1544059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544018
  · exact cover_1544059
#print axioms cover_1544017

def state_1544007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 20)))
theorem cover_1544007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544007 := by
  apply coveredState_split_literal (state := state_1544007) 4
    state_1544008 state_1544017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544008
  · exact cover_1544017
#print axioms cover_1544007

def state_1544006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 20)))
theorem cover_1544006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544006 := by
  apply coveredState_split_literal (state := state_1544006) 3
    state_1544007 state_1544174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544007
  · exact cover_1544174
#print axioms cover_1544006

def state_1544005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 20)))
theorem cover_1544005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544005 := by
  apply coveredState_split_literal (state := state_1544005) 1
    state_1544006 state_1544193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544006
  · exact cover_1544193
#print axioms cover_1544005

def state_1543981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
theorem cover_1543981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543981 := by
  apply coveredState_split_literal (state := state_1543981) 2
    state_1543982 state_1544005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543982
  · exact cover_1544005
#print axioms cover_1543981

def state_1543963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
theorem cover_1543963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543963 := by
  apply coveredState_split_literal (state := state_1543963) 0
    state_1543964 state_1543981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543964
  · exact cover_1543981
#print axioms cover_1543963

def state_1543649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
theorem cover_1543649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543649 := by
  apply coveredState_split_literal (state := state_1543649) 1
    state_1543650 state_1543963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543650
  · exact cover_1543963
#print axioms cover_1543649

def state_1544244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 42)))
theorem cover_1544244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544244 := by
  apply coveredState_split_literal (state := state_1544244) 1
    state_1544245 state_1544296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544245
  · exact cover_1544296
#print axioms cover_1544244

def state_1544402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 101 else (if j.val < 4 then 80 else 86)))
theorem cover_1544402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544402 := by
  apply coveredState_split_literal (state := state_1544402) 1
    state_1544403 state_1544424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544403
  · exact cover_1544424
#print axioms cover_1544402

def state_1544401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 101 else (if j.val < 4 then 40 else 86)))
theorem cover_1544401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544401 := by
  apply coveredState_split_literal (state := state_1544401) 3
    state_1544402 state_1544477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544402
  · exact cover_1544477
#print axioms cover_1544401

def state_1544400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 101 else (if j.val < 4 then 40 else 43)))
theorem cover_1544400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544400 := by
  apply coveredState_split_literal (state := state_1544400) 4
    state_1544401 state_1544486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544401
  · exact cover_1544486
#print axioms cover_1544400

def state_1544374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 43)))
theorem cover_1544374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544374 := by
  apply coveredState_split_literal (state := state_1544374) 2
    state_1544375 state_1544400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544375
  · exact cover_1544400
#print axioms cover_1544374

def state_1544358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 43)))
theorem cover_1544358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544358 := by
  apply coveredState_split_literal (state := state_1544358) 0
    state_1544359 state_1544374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544359
  · exact cover_1544374
#print axioms cover_1544358

def state_1544357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 43)))
theorem cover_1544357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544357 := by
  apply coveredState_split_literal (state := state_1544357) 3
    state_1544358 state_1544535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544358
  · exact cover_1544535
#print axioms cover_1544357

def state_1544355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 43)))
theorem cover_1544355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544355 := by
  apply coveredState_split_literal (state := state_1544355) 1
    state_1544356 state_1544357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544356
  · exact cover_1544357
#print axioms cover_1544355

def state_1544243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 21)))
theorem cover_1544243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544243 := by
  apply coveredState_split_literal (state := state_1544243) 4
    state_1544244 state_1544355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544244
  · exact cover_1544355
#print axioms cover_1544243

def state_1544592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 42)))
theorem cover_1544592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544592 := by
  apply coveredState_split_literal (state := state_1544592) 4
    state_1544593 state_1544656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544593
  · exact cover_1544656
#print axioms cover_1544592

def state_1544732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 117) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 84)))
theorem cover_1544732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544732 := by
  apply coveredState_split_literal (state := state_1544732) 0
    state_1544733 state_1544764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544733
  · exact cover_1544764
#print axioms cover_1544732

def state_1544708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 117) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 84)))
theorem cover_1544708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544708 := by
  apply coveredState_split_literal (state := state_1544708) 3
    state_1544709 state_1544732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544709
  · exact cover_1544732
#print axioms cover_1544708

def state_1544698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 84)))
theorem cover_1544698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544698 := by
  apply coveredState_split_literal (state := state_1544698) 1
    state_1544699 state_1544708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544699
  · exact cover_1544708
#print axioms cover_1544698

def state_1544697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 42)))
theorem cover_1544697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544697 := by
  apply coveredState_split_literal (state := state_1544697) 4
    state_1544698 state_1544805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544698
  · exact cover_1544805
#print axioms cover_1544697

def state_1544591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 42)))
theorem cover_1544591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544591 := by
  apply coveredState_split_literal (state := state_1544591) 2
    state_1544592 state_1544697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544592
  · exact cover_1544697
#print axioms cover_1544591

def state_1544539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 42)))
theorem cover_1544539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544539 := by
  apply coveredState_split_literal (state := state_1544539) 0
    state_1544540 state_1544591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544540
  · exact cover_1544591
#print axioms cover_1544539

def state_1544538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 42)))
theorem cover_1544538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544538 := by
  apply coveredState_split_literal (state := state_1544538) 3
    state_1544539 state_1544822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544539
  · exact cover_1544822
#print axioms cover_1544538

def state_1544919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 85)))
theorem cover_1544919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544919 := by
  apply coveredState_split_literal (state := state_1544919) 0
    state_1544920 state_1544967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544920
  · exact cover_1544967
#print axioms cover_1544919

def state_1544918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 85)))
theorem cover_1544918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544918 := by
  apply coveredState_split_literal (state := state_1544918) 1
    state_1544919 state_1544984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544919
  · exact cover_1544984
#print axioms cover_1544918

def state_1544917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 85)))
theorem cover_1544917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544917 := by
  apply coveredState_split_literal (state := state_1544917) 3
    state_1544918 state_1545001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544918
  · exact cover_1545001
#print axioms cover_1544917

def state_1544899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 42)))
theorem cover_1544899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544899 := by
  apply coveredState_split_literal (state := state_1544899) 4
    state_1544900 state_1544917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544900
  · exact cover_1544917
#print axioms cover_1544899
end Mub6.Numerical.CircleFullD0.Forest
