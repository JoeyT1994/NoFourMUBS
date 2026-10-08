import D0FullInterface
import D0ForestAssembly0112
import D0ForestChunk0447
import D0ForestChunk0448
import D0ForestChunk0449
import D0ForestChunk0450
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1044976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
theorem cover_1044976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044976 := by
  apply coveredState_split_literal (state := state_1044976) 2
    state_1044977 state_1045036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044977
  · exact cover_1045036
#print axioms cover_1044976

def state_1044975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_1044975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044975 := by
  apply coveredState_split_literal (state := state_1044975) 4
    state_1044976 state_1045057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044976
  · exact cover_1045057
#print axioms cover_1044975

def state_1044974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_1044974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044974 := by
  apply coveredState_split_literal (state := state_1044974) 0
    state_1044975 state_1045092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044975
  · exact cover_1045092
#print axioms cover_1044974

def state_1045188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_1045188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045188 := by
  apply coveredState_split_literal (state := state_1045188) 3
    state_1045189 state_1045232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045189
  · exact cover_1045232
#print axioms cover_1045188

def state_1045178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_1045178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045178 := by
  apply coveredState_split_literal (state := state_1045178) 1
    state_1045179 state_1045188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045179
  · exact cover_1045188
#print axioms cover_1045178

def state_1045176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 44)))
theorem cover_1045176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045176 := by
  apply coveredState_split_literal (state := state_1045176) 2
    state_1045177 state_1045178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045177
  · exact cover_1045178
#print axioms cover_1045176

def state_1045175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_1045175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045175 := by
  apply coveredState_split_literal (state := state_1045175) 4
    state_1045176 state_1045295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045176
  · exact cover_1045295
#print axioms cover_1045175

def state_1045174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_1045174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045174 := by
  apply coveredState_split_literal (state := state_1045174) 0
    state_1045175 state_1045308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045175
  · exact cover_1045308
#print axioms cover_1045174

def state_1045122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_1045122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045122 := by
  apply coveredState_split_literal (state := state_1045122) 3
    state_1045123 state_1045174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045123
  · exact cover_1045174
#print axioms cover_1045122

def state_1045121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_1045121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045121 := by
  apply coveredState_split_literal (state := state_1045121) 1
    state_1045122 state_1045309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045122
  · exact cover_1045309
#print axioms cover_1045121

def state_1045105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 22)))
theorem cover_1045105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045105 := by
  apply coveredState_split_literal (state := state_1045105) 2
    state_1045106 state_1045121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045106
  · exact cover_1045121
#print axioms cover_1045105

def state_1045104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_1045104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045104 := by
  apply coveredState_split_literal (state := state_1045104) 4
    state_1045105 state_1045370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045105
  · exact cover_1045370
#print axioms cover_1045104

def state_1045103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_1045103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045103 := by
  apply coveredState_split_literal (state := state_1045103) 0
    state_1045104 state_1045403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045104
  · exact cover_1045403
#print axioms cover_1045103

def state_1044973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_1044973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044973 := by
  apply coveredState_split_literal (state := state_1044973) 3
    state_1044974 state_1045103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044974
  · exact cover_1045103
#print axioms cover_1044973

def state_1044972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_1044972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044972 := by
  apply coveredState_split_literal (state := state_1044972) 1
    state_1044973 state_1045410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044973
  · exact cover_1045410
#print axioms cover_1044972

def state_1044848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_1044848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044848 := by
  apply coveredState_split_literal (state := state_1044848) 4
    state_1044849 state_1044972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044849
  · exact cover_1044972
#print axioms cover_1044848

def state_1045517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_1045517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045517 := by
  apply coveredState_split_literal (state := state_1045517) 3
    state_1045518 state_1045527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045518
  · exact cover_1045527
#print axioms cover_1045517

def state_1045515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
theorem cover_1045515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045515 := by
  apply coveredState_split_literal (state := state_1045515) 1
    state_1045516 state_1045517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045516
  · exact cover_1045517
#print axioms cover_1045515

def state_1045514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 22)))
theorem cover_1045514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045514 := by
  apply coveredState_split_literal (state := state_1045514) 4
    state_1045515 state_1045582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045515
  · exact cover_1045582
#print axioms cover_1045514

def state_1045513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_1045513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045513 := by
  apply coveredState_split_literal (state := state_1045513) 2
    state_1045514 state_1045585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045514
  · exact cover_1045585
#print axioms cover_1045513

def state_1045512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_1045512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045512 := by
  apply coveredState_split_literal (state := state_1045512) 0
    state_1045513 state_1045590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045513
  · exact cover_1045590
#print axioms cover_1045512

def state_1045510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_1045510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045510 := by
  apply coveredState_split_literal (state := state_1045510) 3
    state_1045511 state_1045512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045511
  · exact cover_1045512
#print axioms cover_1045510

def state_1045594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_1045594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045594 := by
  apply coveredState_split_literal (state := state_1045594) 2
    state_1045595 state_1045644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045595
  · exact cover_1045644
#print axioms cover_1045594

def state_1045593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
theorem cover_1045593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045593 := by
  apply coveredState_split_literal (state := state_1045593) 0
    state_1045594 state_1045659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045594
  · exact cover_1045659
#print axioms cover_1045593

def state_1045591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_1045591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045591 := by
  apply coveredState_split_literal (state := state_1045591) 3
    state_1045592 state_1045593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045592
  · exact cover_1045593
#print axioms cover_1045591

def state_1045509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 22)))
theorem cover_1045509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045509 := by
  apply coveredState_split_literal (state := state_1045509) 1
    state_1045510 state_1045591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045510
  · exact cover_1045591
#print axioms cover_1045509

def state_1045508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 11)))
theorem cover_1045508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045508 := by
  apply coveredState_split_literal (state := state_1045508) 4
    state_1045509 state_1045672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045509
  · exact cover_1045672
#print axioms cover_1045508

def state_1045507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
theorem cover_1045507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045507 := by
  apply coveredState_split_literal (state := state_1045507) 2
    state_1045508 state_1045685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045508
  · exact cover_1045685
#print axioms cover_1045507

def state_1045506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
theorem cover_1045506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045506 := by
  apply coveredState_split_literal (state := state_1045506) 0
    state_1045507 state_1045698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045507
  · exact cover_1045698
#print axioms cover_1045506

def state_1045496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_1045496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045496 := by
  apply coveredState_split_literal (state := state_1045496) 3
    state_1045497 state_1045506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045497
  · exact cover_1045506
#print axioms cover_1045496

def state_1045495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
theorem cover_1045495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045495 := by
  apply coveredState_split_literal (state := state_1045495) 1
    state_1045496 state_1045705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045496
  · exact cover_1045705
#print axioms cover_1045495

def state_1045433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
theorem cover_1045433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045433 := by
  apply coveredState_split_literal (state := state_1045433) 4
    state_1045434 state_1045495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045434
  · exact cover_1045495
#print axioms cover_1045433
end Mub6.Numerical.CircleFullD0.Forest
