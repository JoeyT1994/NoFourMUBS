import D0FullInterface
import D0ForestAssembly0194
import D0ForestAssembly0196
import D0ForestChunk0741
import D0ForestChunk0742
import D0ForestChunk0743
import D0ForestChunk0744
import D0ForestChunk0745
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1478506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 45 else 58)))
theorem cover_1478506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478506 := by
  apply coveredState_split_literal (state := state_1478506) 0
    state_1478507 state_1478658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478507
  · exact cover_1478658
#print axioms cover_1478506

def state_1478505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 58)))
theorem cover_1478505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478505 := by
  apply coveredState_split_literal (state := state_1478505) 2
    state_1478506 state_1478917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478506
  · exact cover_1478917
#print axioms cover_1478505

def state_1478999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 59)))
theorem cover_1478999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478999 := by
  apply coveredState_split_literal (state := state_1478999) 1
    state_1479000 state_1479047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479000
  · exact cover_1479047
#print axioms cover_1478999

def state_1478967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 45 else 59)))
theorem cover_1478967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478967 := by
  apply coveredState_split_literal (state := state_1478967) 3
    state_1478968 state_1478999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478968
  · exact cover_1478999
#print axioms cover_1478967

def state_1478951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 45 else 59)))
theorem cover_1478951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478951 := by
  apply coveredState_split_literal (state := state_1478951) 0
    state_1478952 state_1478967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478952
  · exact cover_1478967
#print axioms cover_1478951

def state_1478950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 59)))
theorem cover_1478950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478950 := by
  apply coveredState_split_literal (state := state_1478950) 2
    state_1478951 state_1479072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478951
  · exact cover_1479072
#print axioms cover_1478950

def state_1478504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 29)))
theorem cover_1478504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478504 := by
  apply coveredState_split_literal (state := state_1478504) 4
    state_1478505 state_1478950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478505
  · exact cover_1478950
#print axioms cover_1478504

def state_1478438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
theorem cover_1478438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478438 := by
  apply coveredState_split_literal (state := state_1478438) 3
    state_1478439 state_1478504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478439
  · exact cover_1478504
#print axioms cover_1478438

def state_1478437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
theorem cover_1478437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478437 := by
  apply coveredState_split_literal (state := state_1478437) 1
    state_1478438 state_1479093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478438
  · exact cover_1479093
#print axioms cover_1478437

def state_1479139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 29)))
theorem cover_1479139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479139 := by
  apply coveredState_split_literal (state := state_1479139) 4
    state_1479140 state_1479155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479140
  · exact cover_1479155
#print axioms cover_1479139

def state_1479135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
theorem cover_1479135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479135 := by
  apply coveredState_split_literal (state := state_1479135) 3
    state_1479136 state_1479139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479136
  · exact cover_1479139
#print axioms cover_1479135

def state_1479134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
theorem cover_1479134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479134 := by
  apply coveredState_split_literal (state := state_1479134) 1
    state_1479135 state_1479212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479135
  · exact cover_1479212
#print axioms cover_1479134

def state_1478436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
theorem cover_1478436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478436 := by
  apply coveredState_split_literal (state := state_1478436) 0
    state_1478437 state_1479134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478437
  · exact cover_1479134
#print axioms cover_1478436

def state_1475272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 29)))
theorem cover_1475272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475272 := by
  apply coveredState_split_literal (state := state_1475272) 2
    state_1475273 state_1478436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475273
  · exact cover_1478436
#print axioms cover_1475272

def state_1474762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
theorem cover_1474762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474762 := by
  apply coveredState_split_literal (state := state_1474762) 4
    state_1474763 state_1475272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474763
  · exact cover_1475272
#print axioms cover_1474762

def state_1479387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 58)))
theorem cover_1479387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479387 := by
  apply coveredState_split_literal (state := state_1479387) 3
    state_1479388 state_1479437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479388
  · exact cover_1479437
#print axioms cover_1479387

def state_1479369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 58)))
theorem cover_1479369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479369 := by
  apply coveredState_split_literal (state := state_1479369) 0
    state_1479370 state_1479387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479370
  · exact cover_1479387
#print axioms cover_1479369

def state_1479307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 58)))
theorem cover_1479307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479307 := by
  apply coveredState_split_literal (state := state_1479307) 2
    state_1479308 state_1479369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479308
  · exact cover_1479369
#print axioms cover_1479307

def state_1479471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 46 else 59)))
theorem cover_1479471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479471 := by
  apply coveredState_split_literal (state := state_1479471) 0
    state_1479472 state_1479477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479472
  · exact cover_1479477
#print axioms cover_1479471

def state_1479546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 59)))
theorem cover_1479546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479546 := by
  apply coveredState_split_literal (state := state_1479546) 3
    state_1479547 state_1479602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479547
  · exact cover_1479602
#print axioms cover_1479546

def state_1479538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 59)))
theorem cover_1479538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479538 := by
  apply coveredState_split_literal (state := state_1479538) 0
    state_1479539 state_1479546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479539
  · exact cover_1479546
#print axioms cover_1479538

def state_1479470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 59)))
theorem cover_1479470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479470 := by
  apply coveredState_split_literal (state := state_1479470) 2
    state_1479471 state_1479538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479471
  · exact cover_1479538
#print axioms cover_1479470

def state_1479306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 29)))
theorem cover_1479306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479306 := by
  apply coveredState_split_literal (state := state_1479306) 4
    state_1479307 state_1479470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479307
  · exact cover_1479470
#print axioms cover_1479306

def state_1479305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 29)))
theorem cover_1479305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479305 := by
  apply coveredState_split_literal (state := state_1479305) 1
    state_1479306 state_1479639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479306
  · exact cover_1479639
#print axioms cover_1479305

def state_1479304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 29)))
theorem cover_1479304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479304 := by
  apply coveredState_split_literal (state := state_1479304) 3
    state_1479305 state_1479672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479305
  · exact cover_1479672
#print axioms cover_1479304

def state_1479746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 59)))
theorem cover_1479746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479746 := by
  apply coveredState_split_literal (state := state_1479746) 3
    state_1479747 state_1479786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479747
  · exact cover_1479786
#print axioms cover_1479746

def state_1479745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 59)))
theorem cover_1479745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479745 := by
  apply coveredState_split_literal (state := state_1479745) 0
    state_1479746 state_1479839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479746
  · exact cover_1479839
#print axioms cover_1479745

def state_1479731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 59)))
theorem cover_1479731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479731 := by
  apply coveredState_split_literal (state := state_1479731) 2
    state_1479732 state_1479745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479732
  · exact cover_1479745
#print axioms cover_1479731

def state_1479693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 29)))
theorem cover_1479693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479693 := by
  apply coveredState_split_literal (state := state_1479693) 4
    state_1479694 state_1479731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479694
  · exact cover_1479731
#print axioms cover_1479693

def state_1479692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 29)))
theorem cover_1479692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479692 := by
  apply coveredState_split_literal (state := state_1479692) 1
    state_1479693 state_1479848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479693
  · exact cover_1479848
#print axioms cover_1479692

def state_1479691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 29)))
theorem cover_1479691 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479691 := by
  apply coveredState_split_literal (state := state_1479691) 3
    state_1479692 state_1479867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479692
  · exact cover_1479867
#print axioms cover_1479691

def state_1479303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 29)))
theorem cover_1479303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479303 := by
  apply coveredState_split_literal (state := state_1479303) 0
    state_1479304 state_1479691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479304
  · exact cover_1479691
#print axioms cover_1479303
end Mub6.Numerical.CircleFullD0.Forest
