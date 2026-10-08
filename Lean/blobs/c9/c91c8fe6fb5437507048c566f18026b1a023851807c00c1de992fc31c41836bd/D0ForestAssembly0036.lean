import D0FullInterface
import D0ForestAssembly0035
import D0ForestChunk0141
import D0ForestChunk0144
import D0ForestChunk0145
import D0ForestChunk0146
import D0ForestChunk0147
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_972251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
theorem cover_972251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972251 := by
  apply coveredState_split_literal (state := state_972251) 1
    state_972252 state_972369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972252
  · exact cover_972369
#print axioms cover_972251

def state_972213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 13)))
theorem cover_972213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972213 := by
  apply coveredState_split_literal (state := state_972213) 0
    state_972214 state_972251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972214
  · exact cover_972251
#print axioms cover_972213

def state_972211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 13)))
theorem cover_972211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972211 := by
  apply coveredState_split_literal (state := state_972211) 3
    state_972212 state_972213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972212
  · exact cover_972213
#print axioms cover_972211

def state_972210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 13)))
theorem cover_972210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972210 := by
  apply coveredState_split_literal (state := state_972210) 2
    state_972211 state_972370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972211
  · exact cover_972370
#print axioms cover_972210

def state_972208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_972208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972208 := by
  apply coveredState_split_literal (state := state_972208) 4
    state_972209 state_972210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972209
  · exact cover_972210
#print axioms cover_972208

def state_971464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_971464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971464 := by
  apply coveredState_split_literal (state := state_971464) 1
    state_971465 state_972208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971465
  · exact cover_972208
#print axioms cover_971464

def state_971414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_971414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971414 := by
  apply coveredState_split_literal (state := state_971414) 0
    state_971415 state_971464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971415
  · exact cover_971464
#print axioms cover_971414

def state_972378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 14)))
theorem cover_972378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972378 := by
  apply coveredState_split_literal (state := state_972378) 0
    state_972379 state_972392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972379
  · exact cover_972392
#print axioms cover_972378

def state_972377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 7)))
theorem cover_972377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972377 := by
  apply coveredState_split_literal (state := state_972377) 4
    state_972378 state_972443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972378
  · exact cover_972443
#print axioms cover_972377

def state_972375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 7)))
theorem cover_972375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972375 := by
  apply coveredState_split_literal (state := state_972375) 3
    state_972376 state_972377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972376
  · exact cover_972377
#print axioms cover_972375

def state_972374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
theorem cover_972374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972374 := by
  apply coveredState_split_literal (state := state_972374) 2
    state_972375 state_972446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972375
  · exact cover_972446
#print axioms cover_972374

def state_972512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 28)))
theorem cover_972512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972512 := by
  apply coveredState_split_literal (state := state_972512) 1
    state_972513 state_972558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972513
  · exact cover_972558
#print axioms cover_972512

def state_972490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 28)))
theorem cover_972490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972490 := by
  apply coveredState_split_literal (state := state_972490) 0
    state_972491 state_972512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972491
  · exact cover_972512
#print axioms cover_972490

def state_972489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 19 else 14)))
theorem cover_972489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972489 := by
  apply coveredState_split_literal (state := state_972489) 4
    state_972490 state_972597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972490
  · exact cover_972597
#print axioms cover_972489

def state_972481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 9 else 14)))
theorem cover_972481 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972481 := by
  apply coveredState_split_literal (state := state_972481) 3
    state_972482 state_972489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972482
  · exact cover_972489
#print axioms cover_972481

def state_972480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 14)))
theorem cover_972480 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972480 := by
  apply coveredState_split_literal (state := state_972480) 2
    state_972481 state_972606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972481
  · exact cover_972606
#print axioms cover_972480

def state_972479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 14)))
theorem cover_972479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972479 := by
  apply coveredState_split_literal (state := state_972479) 1
    state_972480 state_972619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972480
  · exact cover_972619
#print axioms cover_972479

def state_972477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 14)))
theorem cover_972477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972477 := by
  apply coveredState_split_literal (state := state_972477) 0
    state_972478 state_972479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972478
  · exact cover_972479
#print axioms cover_972477

def state_972476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 7)))
theorem cover_972476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972476 := by
  apply coveredState_split_literal (state := state_972476) 4
    state_972477 state_972638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972477
  · exact cover_972638
#print axioms cover_972476

def state_972464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 7)))
theorem cover_972464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972464 := by
  apply coveredState_split_literal (state := state_972464) 3
    state_972465 state_972476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972465
  · exact cover_972476
#print axioms cover_972464

def state_972463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
theorem cover_972463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972463 := by
  apply coveredState_split_literal (state := state_972463) 2
    state_972464 state_972645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972464
  · exact cover_972645
#print axioms cover_972463

def state_972373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
theorem cover_972373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972373 := by
  apply coveredState_split_literal (state := state_972373) 1
    state_972374 state_972463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972374
  · exact cover_972463
#print axioms cover_972373

def state_972371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
theorem cover_972371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972371 := by
  apply coveredState_split_literal (state := state_972371) 0
    state_972372 state_972373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972372
  · exact cover_972373
#print axioms cover_972371

def state_971413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_971413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971413 := by
  apply coveredState_split_literal (state := state_971413) 4
    state_971414 state_972371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971414
  · exact cover_972371
#print axioms cover_971413

def state_972665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_972665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972665 := by
  apply coveredState_split_literal (state := state_972665) 3
    state_972666 state_972727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972666
  · exact cover_972727
#print axioms cover_972665

def state_972664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_972664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972664 := by
  apply coveredState_split_literal (state := state_972664) 1
    state_972665 state_972730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972665
  · exact cover_972730
#print axioms cover_972664

def state_972813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
theorem cover_972813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972813 := by
  apply coveredState_split_literal (state := state_972813) 0
    state_972814 state_972835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972814
  · exact cover_972835
#print axioms cover_972813

def state_972892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
theorem cover_972892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972892 := by
  apply coveredState_split_literal (state := state_972892) 0
    state_972893 state_972908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972893
  · exact cover_972908
#print axioms cover_972892

def state_972812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 27)))
theorem cover_972812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972812 := by
  apply coveredState_split_literal (state := state_972812) 2
    state_972813 state_972892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972813
  · exact cover_972892
#print axioms cover_972812

def state_972802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 13)))
theorem cover_972802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972802 := by
  apply coveredState_split_literal (state := state_972802) 4
    state_972803 state_972812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972803
  · exact cover_972812
#print axioms cover_972802

def state_972801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
theorem cover_972801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972801 := by
  apply coveredState_split_literal (state := state_972801) 3
    state_972802 state_972961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972802
  · exact cover_972961
#print axioms cover_972801

def state_972753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
theorem cover_972753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972753 := by
  apply coveredState_split_literal (state := state_972753) 1
    state_972754 state_972801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972754
  · exact cover_972801
#print axioms cover_972753
end Mub6.Numerical.CircleFullD0.Forest
