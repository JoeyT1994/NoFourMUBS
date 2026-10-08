import D0FullInterface
import D0ForestAssembly0231
import D0ForestChunk0874
import D0ForestChunk0882
import D0ForestChunk0883
import D0ForestChunk0884
import D0ForestChunk0885
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1511490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
theorem cover_1511490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511490 := by
  apply coveredState_split_literal (state := state_1511490) 0
    state_1511491 state_1512218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511491
  · exact cover_1512218
#print axioms cover_1511490

def state_1510584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 30)))
theorem cover_1510584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510584 := by
  apply coveredState_split_literal (state := state_1510584) 4
    state_1510585 state_1511490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510585
  · exact cover_1511490
#print axioms cover_1510584

def state_1510530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 30)))
theorem cover_1510530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510530 := by
  apply coveredState_split_literal (state := state_1510530) 2
    state_1510531 state_1510584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510531
  · exact cover_1510584
#print axioms cover_1510530

def state_1512369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 121)))
theorem cover_1512369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512369 := by
  apply coveredState_split_literal (state := state_1512369) 1
    state_1512370 state_1512415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512370
  · exact cover_1512415
#print axioms cover_1512369

def state_1512327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 121)))
theorem cover_1512327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512327 := by
  apply coveredState_split_literal (state := state_1512327) 0
    state_1512328 state_1512369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512328
  · exact cover_1512369
#print axioms cover_1512327

def state_1512317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 60)))
theorem cover_1512317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512317 := by
  apply coveredState_split_literal (state := state_1512317) 4
    state_1512318 state_1512327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512318
  · exact cover_1512327
#print axioms cover_1512317

def state_1512311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 106 else 60)))
theorem cover_1512311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512311 := by
  apply coveredState_split_literal (state := state_1512311) 2
    state_1512312 state_1512317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512312
  · exact cover_1512317
#print axioms cover_1512311

def state_1512310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 60)))
theorem cover_1512310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512310 := by
  apply coveredState_split_literal (state := state_1512310) 3
    state_1512311 state_1512434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512311
  · exact cover_1512434
#print axioms cover_1512310

def state_1512309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 60)))
theorem cover_1512309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512309 := by
  apply coveredState_split_literal (state := state_1512309) 1
    state_1512310 state_1512441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512310
  · exact cover_1512441
#print axioms cover_1512309

def state_1512308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 60)))
theorem cover_1512308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512308 := by
  apply coveredState_split_literal (state := state_1512308) 0
    state_1512309 state_1512456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512309
  · exact cover_1512456
#print axioms cover_1512308

def state_1512514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 61)))
theorem cover_1512514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512514 := by
  apply coveredState_split_literal (state := state_1512514) 3
    state_1512515 state_1512576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512515
  · exact cover_1512576
#print axioms cover_1512514

def state_1512470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 61)))
theorem cover_1512470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512470 := by
  apply coveredState_split_literal (state := state_1512470) 1
    state_1512471 state_1512514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512471
  · exact cover_1512514
#print axioms cover_1512470

def state_1512469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 61)))
theorem cover_1512469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512469 := by
  apply coveredState_split_literal (state := state_1512469) 0
    state_1512470 state_1512583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512470
  · exact cover_1512583
#print axioms cover_1512469

def state_1512307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 30)))
theorem cover_1512307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512307 := by
  apply coveredState_split_literal (state := state_1512307) 4
    state_1512308 state_1512469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512308
  · exact cover_1512469
#print axioms cover_1512307

def state_1512303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 30)))
theorem cover_1512303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512303 := by
  apply coveredState_split_literal (state := state_1512303) 2
    state_1512304 state_1512307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512304
  · exact cover_1512307
#print axioms cover_1512303

def state_1510529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1510529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510529 := by
  apply coveredState_split_literal (state := state_1510529) 3
    state_1510530 state_1512303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510530
  · exact cover_1512303
#print axioms cover_1510529

def state_1512615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 90) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
theorem cover_1512615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512615 := by
  apply coveredState_split_literal (state := state_1512615) 3
    state_1512616 state_1512651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512616
  · exact cover_1512651
#print axioms cover_1512615

def state_1512614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
theorem cover_1512614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512614 := by
  apply coveredState_split_literal (state := state_1512614) 1
    state_1512615 state_1512688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512615
  · exact cover_1512688
#print axioms cover_1512614

def state_1512613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
theorem cover_1512613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512613 := by
  apply coveredState_split_literal (state := state_1512613) 0
    state_1512614 state_1512697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512614
  · exact cover_1512697
#print axioms cover_1512613

def state_1512599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 30)))
theorem cover_1512599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512599 := by
  apply coveredState_split_literal (state := state_1512599) 4
    state_1512600 state_1512613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512600
  · exact cover_1512613
#print axioms cover_1512599

def state_1512593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 30)))
theorem cover_1512593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512593 := by
  apply coveredState_split_literal (state := state_1512593) 2
    state_1512594 state_1512599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512594
  · exact cover_1512599
#print axioms cover_1512593

def state_1512592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1512592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512592 := by
  apply coveredState_split_literal (state := state_1512592) 3
    state_1512593 state_1512724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512593
  · exact cover_1512724
#print axioms cover_1512592

def state_1510528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1510528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510528 := by
  apply coveredState_split_literal (state := state_1510528) 1
    state_1510529 state_1512592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510529
  · exact cover_1512592
#print axioms cover_1510528

def state_1510527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1510527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510527 := by
  apply coveredState_split_literal (state := state_1510527) 0
    state_1510528 state_1512747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510528
  · exact cover_1512747
#print axioms cover_1510527

def state_1512837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 62)))
theorem cover_1512837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512837 := by
  apply coveredState_split_literal (state := state_1512837) 0
    state_1512838 state_1512873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512838
  · exact cover_1512873
#print axioms cover_1512837

def state_1512836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 31)))
theorem cover_1512836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512836 := by
  apply coveredState_split_literal (state := state_1512836) 4
    state_1512837 state_1512902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512837
  · exact cover_1512902
#print axioms cover_1512836

def state_1512828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 31)))
theorem cover_1512828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512828 := by
  apply coveredState_split_literal (state := state_1512828) 2
    state_1512829 state_1512836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512829
  · exact cover_1512836
#print axioms cover_1512828

def state_1512827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 31)))
theorem cover_1512827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512827 := by
  apply coveredState_split_literal (state := state_1512827) 3
    state_1512828 state_1512905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512828
  · exact cover_1512905
#print axioms cover_1512827

def state_1512793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 31)))
theorem cover_1512793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512793 := by
  apply coveredState_split_literal (state := state_1512793) 1
    state_1512794 state_1512827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512794
  · exact cover_1512827
#print axioms cover_1512793

def state_1512792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 31)))
theorem cover_1512792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512792 := by
  apply coveredState_split_literal (state := state_1512792) 0
    state_1512793 state_1512940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512793
  · exact cover_1512940
#print axioms cover_1512792

def state_1510526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 15)))
theorem cover_1510526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510526 := by
  apply coveredState_split_literal (state := state_1510526) 4
    state_1510527 state_1512792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510527
  · exact cover_1512792
#print axioms cover_1510526

def state_1510525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 15)))
theorem cover_1510525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510525 := by
  apply coveredState_split_literal (state := state_1510525) 3
    state_1510526 state_1512949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510526
  · exact cover_1512949
#print axioms cover_1510525
end Mub6.Numerical.CircleFullD0.Forest
