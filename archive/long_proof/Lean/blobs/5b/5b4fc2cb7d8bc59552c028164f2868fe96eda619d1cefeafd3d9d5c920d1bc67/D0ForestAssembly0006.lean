import D0FullInterface
import D0ForestAssembly0005
import D0ForestChunk0026
import D0ForestChunk0027
import D0ForestChunk0028
import D0ForestChunk0029
import D0ForestChunk0030
import D0ForestChunk0031
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_943803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 52)))
theorem cover_943803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943803 := by
  apply coveredState_split_literal (state := state_943803) 4
    state_943804 state_943811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943804
  · exact cover_943811
#print axioms cover_943803

def state_943721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 52)))
theorem cover_943721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943721 := by
  apply coveredState_split_literal (state := state_943721) 2
    state_943722 state_943803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943722
  · exact cover_943803
#print axioms cover_943721

def state_943720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 52)))
theorem cover_943720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943720 := by
  apply coveredState_split_literal (state := state_943720) 0
    state_943721 state_943892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943721
  · exact cover_943892
#print axioms cover_943720

def state_943640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 52)))
theorem cover_943640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943640 := by
  apply coveredState_split_literal (state := state_943640) 3
    state_943641 state_943720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943641
  · exact cover_943720
#print axioms cover_943640

def state_943492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 52)))
theorem cover_943492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943492 := by
  apply coveredState_split_literal (state := state_943492) 1
    state_943493 state_943640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943493
  · exact cover_943640
#print axioms cover_943492

def state_943987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 53)))
theorem cover_943987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943987 := by
  apply coveredState_split_literal (state := state_943987) 0
    state_943988 state_944045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943988
  · exact cover_944045
#print axioms cover_943987

def state_943951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 53)))
theorem cover_943951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943951 := by
  apply coveredState_split_literal (state := state_943951) 3
    state_943952 state_943987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943952
  · exact cover_943987
#print axioms cover_943951

def state_943943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 53)))
theorem cover_943943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943943 := by
  apply coveredState_split_literal (state := state_943943) 1
    state_943944 state_943951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943944
  · exact cover_943951
#print axioms cover_943943

def state_943491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 26)))
theorem cover_943491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943491 := by
  apply coveredState_split_literal (state := state_943491) 4
    state_943492 state_943943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943492
  · exact cover_943943
#print axioms cover_943491

def state_944131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 33 else 52)))
theorem cover_944131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944131 := by
  apply coveredState_split_literal (state := state_944131) 0
    state_944132 state_944167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944132
  · exact cover_944167
#print axioms cover_944131

def state_944123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 52)))
theorem cover_944123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944123 := by
  apply coveredState_split_literal (state := state_944123) 3
    state_944124 state_944131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944124
  · exact cover_944131
#print axioms cover_944123

def state_944093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 52)))
theorem cover_944093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944093 := by
  apply coveredState_split_literal (state := state_944093) 1
    state_944094 state_944123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944094
  · exact cover_944123
#print axioms cover_944093

def state_944092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 26)))
theorem cover_944092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944092 := by
  apply coveredState_split_literal (state := state_944092) 4
    state_944093 state_944208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944093
  · exact cover_944208
#print axioms cover_944092

def state_943490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 26)))
theorem cover_943490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943490 := by
  apply coveredState_split_literal (state := state_943490) 2
    state_943491 state_944092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943491
  · exact cover_944092
#print axioms cover_943490

def state_943374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 26)))
theorem cover_943374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943374 := by
  apply coveredState_split_literal (state := state_943374) 0
    state_943375 state_943490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943375
  · exact cover_943490
#print axioms cover_943374

def state_944311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 52)))
theorem cover_944311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944311 := by
  apply coveredState_split_literal (state := state_944311) 1
    state_944312 state_944327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944312
  · exact cover_944327
#print axioms cover_944311

def state_944310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 26)))
theorem cover_944310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944310 := by
  apply coveredState_split_literal (state := state_944310) 4
    state_944311 state_944380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944311
  · exact cover_944380
#print axioms cover_944310

def state_944467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 52)))
theorem cover_944467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944467 := by
  apply coveredState_split_literal (state := state_944467) 0
    state_944468 state_944491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944468
  · exact cover_944491
#print axioms cover_944467

def state_944466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 52)))
theorem cover_944466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944466 := by
  apply coveredState_split_literal (state := state_944466) 3
    state_944467 state_944536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944467
  · exact cover_944536
#print axioms cover_944466

def state_944434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 52)))
theorem cover_944434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944434 := by
  apply coveredState_split_literal (state := state_944434) 1
    state_944435 state_944466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944435
  · exact cover_944466
#print axioms cover_944434

def state_944563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
theorem cover_944563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944563 := by
  apply coveredState_split_literal (state := state_944563) 2
    state_944564 state_944617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944564
  · exact cover_944617
#print axioms cover_944563

def state_944632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
theorem cover_944632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944632 := by
  apply coveredState_split_literal (state := state_944632) 2
    state_944633 state_944676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944633
  · exact cover_944676
#print axioms cover_944632

def state_944562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
theorem cover_944562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944562 := by
  apply coveredState_split_literal (state := state_944562) 0
    state_944563 state_944632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944563
  · exact cover_944632
#print axioms cover_944562

def state_944561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 53)))
theorem cover_944561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944561 := by
  apply coveredState_split_literal (state := state_944561) 3
    state_944562 state_944709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944562
  · exact cover_944709
#print axioms cover_944561

def state_944553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 53)))
theorem cover_944553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944553 := by
  apply coveredState_split_literal (state := state_944553) 1
    state_944554 state_944561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944554
  · exact cover_944561
#print axioms cover_944553

def state_944433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 26)))
theorem cover_944433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944433 := by
  apply coveredState_split_literal (state := state_944433) 4
    state_944434 state_944553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944434
  · exact cover_944553
#print axioms cover_944433

def state_944309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
theorem cover_944309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944309 := by
  apply coveredState_split_literal (state := state_944309) 2
    state_944310 state_944433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944310
  · exact cover_944433
#print axioms cover_944309

def state_944245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
theorem cover_944245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944245 := by
  apply coveredState_split_literal (state := state_944245) 0
    state_944246 state_944309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944246
  · exact cover_944309
#print axioms cover_944245

def state_943373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 26)))
theorem cover_943373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943373 := by
  apply coveredState_split_literal (state := state_943373) 3
    state_943374 state_944245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943374
  · exact cover_944245
#print axioms cover_943373

def state_943372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_943372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943372 := by
  apply coveredState_split_literal (state := state_943372) 4
    state_943373 state_944742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943373
  · exact cover_944742
#print axioms cover_943372

def state_944778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 26)))
theorem cover_944778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944778 := by
  apply coveredState_split_literal (state := state_944778) 2
    state_944779 state_944842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944779
  · exact cover_944842
#print axioms cover_944778

def state_945006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 106)))
theorem cover_945006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945006 := by
  apply coveredState_split_literal (state := state_945006) 3
    state_945007 state_945014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945007
  · exact cover_945014
#print axioms cover_945006
end Mub6.Numerical.CircleFullD0.Forest
