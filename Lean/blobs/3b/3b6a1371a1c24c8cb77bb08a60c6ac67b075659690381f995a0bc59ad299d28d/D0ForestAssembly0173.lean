import D0FullInterface
import D0ForestAssembly0172
import D0ForestChunk0658
import D0ForestChunk0659
import D0ForestChunk0660
import D0ForestChunk0661
import D0ForestChunk0662
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1458688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1458688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458688 := by
  apply coveredState_split_literal (state := state_1458688) 0
    state_1458689 state_1458712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458689
  · exact cover_1458712
#print axioms cover_1458688

def state_1458929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
theorem cover_1458929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458929 := by
  apply coveredState_split_literal (state := state_1458929) 0
    state_1458930 state_1458939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458930
  · exact cover_1458939
#print axioms cover_1458929

def state_1458928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_1458928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458928 := by
  apply coveredState_split_literal (state := state_1458928) 2
    state_1458929 state_1458996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458929
  · exact cover_1458996
#print axioms cover_1458928

def state_1458912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_1458912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458912 := by
  apply coveredState_split_literal (state := state_1458912) 1
    state_1458913 state_1458928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458913
  · exact cover_1458928
#print axioms cover_1458912

def state_1458884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_1458884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458884 := by
  apply coveredState_split_literal (state := state_1458884) 4
    state_1458885 state_1458912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458885
  · exact cover_1458912
#print axioms cover_1458884

def state_1458860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1458860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458860 := by
  apply coveredState_split_literal (state := state_1458860) 3
    state_1458861 state_1458884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458861
  · exact cover_1458884
#print axioms cover_1458860

def state_1458848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1458848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458848 := by
  apply coveredState_split_literal (state := state_1458848) 0
    state_1458849 state_1458860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458849
  · exact cover_1458860
#print axioms cover_1458848

def state_1458847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_1458847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458847 := by
  apply coveredState_split_literal (state := state_1458847) 4
    state_1458848 state_1459011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458848
  · exact cover_1459011
#print axioms cover_1458847

def state_1458833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_1458833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458833 := by
  apply coveredState_split_literal (state := state_1458833) 3
    state_1458834 state_1458847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458834
  · exact cover_1458847
#print axioms cover_1458833

def state_1458832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1458832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458832 := by
  apply coveredState_split_literal (state := state_1458832) 2
    state_1458833 state_1459032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458833
  · exact cover_1459032
#print axioms cover_1458832

def state_1459054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
theorem cover_1459054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459054 := by
  apply coveredState_split_literal (state := state_1459054) 1
    state_1459055 state_1459080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459055
  · exact cover_1459080
#print axioms cover_1459054

def state_1459048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
theorem cover_1459048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459048 := by
  apply coveredState_split_literal (state := state_1459048) 0
    state_1459049 state_1459054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459049
  · exact cover_1459054
#print axioms cover_1459048

def state_1459047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
theorem cover_1459047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459047 := by
  apply coveredState_split_literal (state := state_1459047) 4
    state_1459048 state_1459123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459048
  · exact cover_1459123
#print axioms cover_1459047

def state_1459146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1459146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459146 := by
  apply coveredState_split_literal (state := state_1459146) 3
    state_1459147 state_1459210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459147
  · exact cover_1459210
#print axioms cover_1459146

def state_1459145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1459145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459145 := by
  apply coveredState_split_literal (state := state_1459145) 1
    state_1459146 state_1459273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459146
  · exact cover_1459273
#print axioms cover_1459145

def state_1459139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1459139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459139 := by
  apply coveredState_split_literal (state := state_1459139) 0
    state_1459140 state_1459145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459140
  · exact cover_1459145
#print axioms cover_1459139

def state_1459347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 28)))
theorem cover_1459347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459347 := by
  apply coveredState_split_literal (state := state_1459347) 2
    state_1459348 state_1459405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459348
  · exact cover_1459405
#print axioms cover_1459347

def state_1459346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 14)))
theorem cover_1459346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459346 := by
  apply coveredState_split_literal (state := state_1459346) 4
    state_1459347 state_1459414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459347
  · exact cover_1459414
#print axioms cover_1459346

def state_1459344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1459344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459344 := by
  apply coveredState_split_literal (state := state_1459344) 3
    state_1459345 state_1459346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459345
  · exact cover_1459346
#print axioms cover_1459344

def state_1459342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1459342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459342 := by
  apply coveredState_split_literal (state := state_1459342) 1
    state_1459343 state_1459344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459343
  · exact cover_1459344
#print axioms cover_1459342

def state_1459340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1459340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459340 := by
  apply coveredState_split_literal (state := state_1459340) 0
    state_1459341 state_1459342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459341
  · exact cover_1459342
#print axioms cover_1459340

def state_1459339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 7)))
theorem cover_1459339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459339 := by
  apply coveredState_split_literal (state := state_1459339) 4
    state_1459340 state_1459415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459340
  · exact cover_1459415
#print axioms cover_1459339

def state_1459338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 7)))
theorem cover_1459338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459338 := by
  apply coveredState_split_literal (state := state_1459338) 2
    state_1459339 state_1459416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459339
  · exact cover_1459416
#print axioms cover_1459338

def state_1459526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
theorem cover_1459526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459526 := by
  apply coveredState_split_literal (state := state_1459526) 3
    state_1459527 state_1459552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459527
  · exact cover_1459552
#print axioms cover_1459526

def state_1459516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
theorem cover_1459516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459516 := by
  apply coveredState_split_literal (state := state_1459516) 0
    state_1459517 state_1459526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459517
  · exact cover_1459526
#print axioms cover_1459516

def state_1459515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 57)))
theorem cover_1459515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459515 := by
  apply coveredState_split_literal (state := state_1459515) 2
    state_1459516 state_1459601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459516
  · exact cover_1459601
#print axioms cover_1459515

def state_1459507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 28)))
theorem cover_1459507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459507 := by
  apply coveredState_split_literal (state := state_1459507) 4
    state_1459508 state_1459515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459508
  · exact cover_1459515
#print axioms cover_1459507

def state_1459483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 28)))
theorem cover_1459483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459483 := by
  apply coveredState_split_literal (state := state_1459483) 1
    state_1459484 state_1459507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459484
  · exact cover_1459507
#print axioms cover_1459483

def state_1459482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
theorem cover_1459482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459482 := by
  apply coveredState_split_literal (state := state_1459482) 3
    state_1459483 state_1459622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459483
  · exact cover_1459622
#print axioms cover_1459482

def state_1459472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
theorem cover_1459472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459472 := by
  apply coveredState_split_literal (state := state_1459472) 0
    state_1459473 state_1459482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459473
  · exact cover_1459482
#print axioms cover_1459472

def state_1459471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 28)))
theorem cover_1459471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459471 := by
  apply coveredState_split_literal (state := state_1459471) 2
    state_1459472 state_1459683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459472
  · exact cover_1459683
#print axioms cover_1459471

def state_1459715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1459715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459715 := by
  apply coveredState_split_literal (state := state_1459715) 3
    state_1459716 state_1459751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459716
  · exact cover_1459751
#print axioms cover_1459715
end Mub6.Numerical.CircleFullD0.Forest
