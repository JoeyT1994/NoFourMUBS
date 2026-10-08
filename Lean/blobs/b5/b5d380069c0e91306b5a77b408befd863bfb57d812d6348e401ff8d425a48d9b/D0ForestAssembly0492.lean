import D0FullInterface
import D0ForestAssembly0491
import D0ForestChunk1934
import D0ForestChunk1935
import D0ForestChunk1936
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2336792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_2336792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336792 := by
  apply coveredState_split_literal (state := state_2336792) 1
    state_2336793 state_2337288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336793
  · exact cover_2337288
#print axioms cover_2336792

def state_2336488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_2336488 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336488 := by
  apply coveredState_split_literal (state := state_2336488) 4
    state_2336489 state_2336792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336489
  · exact cover_2336792
#print axioms cover_2336488

def state_2337330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 21)))
theorem cover_2337330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337330 := by
  apply coveredState_split_literal (state := state_2337330) 0
    state_2337331 state_2337392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337331
  · exact cover_2337392
#print axioms cover_2337330

def state_2337322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 21)))
theorem cover_2337322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337322 := by
  apply coveredState_split_literal (state := state_2337322) 3
    state_2337323 state_2337330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337323
  · exact cover_2337330
#print axioms cover_2337322

def state_2337397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 21)))
theorem cover_2337397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337397 := by
  apply coveredState_split_literal (state := state_2337397) 3
    state_2337398 state_2337405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337398
  · exact cover_2337405
#print axioms cover_2337397

def state_2337321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 21)))
theorem cover_2337321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337321 := by
  apply coveredState_split_literal (state := state_2337321) 1
    state_2337322 state_2337397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337322
  · exact cover_2337397
#print axioms cover_2337321

def state_2337317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 10)))
theorem cover_2337317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337317 := by
  apply coveredState_split_literal (state := state_2337317) 4
    state_2337318 state_2337321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337318
  · exact cover_2337321
#print axioms cover_2337317

def state_2337316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 10)))
theorem cover_2337316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337316 := by
  apply coveredState_split_literal (state := state_2337316) 2
    state_2337317 state_2337466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337317
  · exact cover_2337466
#print axioms cover_2337316

def state_2337315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 10)))
theorem cover_2337315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337315 := by
  apply coveredState_split_literal (state := state_2337315) 0
    state_2337316 state_2337491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337316
  · exact cover_2337491
#print axioms cover_2337315

def state_2337299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
theorem cover_2337299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337299 := by
  apply coveredState_split_literal (state := state_2337299) 3
    state_2337300 state_2337315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337300
  · exact cover_2337315
#print axioms cover_2337299

def state_2337298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
theorem cover_2337298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337298 := by
  apply coveredState_split_literal (state := state_2337298) 1
    state_2337299 state_2337498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337299
  · exact cover_2337498
#print axioms cover_2337298

def state_2337549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
theorem cover_2337549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337549 := by
  apply coveredState_split_literal (state := state_2337549) 0
    state_2337550 state_2337603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337550
  · exact cover_2337603
#print axioms cover_2337549

def state_2337531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_2337531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337531 := by
  apply coveredState_split_literal (state := state_2337531) 3
    state_2337532 state_2337549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337532
  · exact cover_2337549
#print axioms cover_2337531

def state_2337529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_2337529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337529 := by
  apply coveredState_split_literal (state := state_2337529) 1
    state_2337530 state_2337531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337530
  · exact cover_2337531
#print axioms cover_2337529

def state_2337528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 22)))
theorem cover_2337528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337528 := by
  apply coveredState_split_literal (state := state_2337528) 4
    state_2337529 state_2337618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337529
  · exact cover_2337618
#print axioms cover_2337528

def state_2337527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_2337527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337527 := by
  apply coveredState_split_literal (state := state_2337527) 2
    state_2337528 state_2337619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337528
  · exact cover_2337619
#print axioms cover_2337527

def state_2337526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_2337526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337526 := by
  apply coveredState_split_literal (state := state_2337526) 0
    state_2337527 state_2337620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337527
  · exact cover_2337620
#print axioms cover_2337526

def state_2337522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_2337522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337522 := by
  apply coveredState_split_literal (state := state_2337522) 3
    state_2337523 state_2337526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337523
  · exact cover_2337526
#print axioms cover_2337522

def state_2337641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_2337641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337641 := by
  apply coveredState_split_literal (state := state_2337641) 3
    state_2337642 state_2337647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337642
  · exact cover_2337647
#print axioms cover_2337641

def state_2337640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_2337640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337640 := by
  apply coveredState_split_literal (state := state_2337640) 1
    state_2337641 state_2337706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337641
  · exact cover_2337706
#print axioms cover_2337640

def state_2337639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 22)))
theorem cover_2337639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337639 := by
  apply coveredState_split_literal (state := state_2337639) 4
    state_2337640 state_2337707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337640
  · exact cover_2337707
#print axioms cover_2337639

def state_2337638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_2337638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337638 := by
  apply coveredState_split_literal (state := state_2337638) 2
    state_2337639 state_2337720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337639
  · exact cover_2337720
#print axioms cover_2337638

def state_2337637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_2337637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337637 := by
  apply coveredState_split_literal (state := state_2337637) 0
    state_2337638 state_2337737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337638
  · exact cover_2337737
#print axioms cover_2337637

def state_2337631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_2337631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337631 := by
  apply coveredState_split_literal (state := state_2337631) 3
    state_2337632 state_2337637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337632
  · exact cover_2337637
#print axioms cover_2337631

def state_2337521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_2337521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337521 := by
  apply coveredState_split_literal (state := state_2337521) 1
    state_2337522 state_2337631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337522
  · exact cover_2337631
#print axioms cover_2337521

def state_2337520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 11)))
theorem cover_2337520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337520 := by
  apply coveredState_split_literal (state := state_2337520) 4
    state_2337521 state_2337744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337521
  · exact cover_2337744
#print axioms cover_2337520

def state_2337519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
theorem cover_2337519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337519 := by
  apply coveredState_split_literal (state := state_2337519) 2
    state_2337520 state_2337757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337520
  · exact cover_2337757
#print axioms cover_2337519

def state_2337518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
theorem cover_2337518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337518 := by
  apply coveredState_split_literal (state := state_2337518) 0
    state_2337519 state_2337772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337519
  · exact cover_2337772
#print axioms cover_2337518

def state_2337508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_2337508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337508 := by
  apply coveredState_split_literal (state := state_2337508) 3
    state_2337509 state_2337518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337509
  · exact cover_2337518
#print axioms cover_2337508

def state_2337507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_2337507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337507 := by
  apply coveredState_split_literal (state := state_2337507) 1
    state_2337508 state_2337781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337508
  · exact cover_2337781
#print axioms cover_2337507

def state_2337297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
theorem cover_2337297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337297 := by
  apply coveredState_split_literal (state := state_2337297) 4
    state_2337298 state_2337507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2337298
  · exact cover_2337507
#print axioms cover_2337297

def state_2336487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2336487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336487 := by
  apply coveredState_split_literal (state := state_2336487) 2
    state_2336488 state_2337297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2336488
  · exact cover_2337297
#print axioms cover_2336487
end Mub6.Numerical.CircleFullD0.Forest
