import D0FullInterface
import D0ForestAssembly0244
import D0ForestChunk0932
import D0ForestChunk0933
import D0ForestChunk0934
import D0ForestChunk0935
import D0ForestChunk0936
import D0ForestChunk0937
import D0ForestChunk0938
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1523878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1523878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523878 := by
  apply coveredState_split_literal (state := state_1523878) 0
    state_1523879 state_1524320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523879
  · exact cover_1524320
#print axioms cover_1523878

def state_1523877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1523877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523877 := by
  apply coveredState_split_literal (state := state_1523877) 3
    state_1523878 state_1524333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523878
  · exact cover_1524333
#print axioms cover_1523877

def state_1524388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 88 else (if j.val < 4 then 65 else 88)))
theorem cover_1524388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524388 := by
  apply coveredState_split_literal (state := state_1524388) 0
    state_1524389 state_1524430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524389
  · exact cover_1524430
#print axioms cover_1524388

def state_1524386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 88)))
theorem cover_1524386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524386 := by
  apply coveredState_split_literal (state := state_1524386) 3
    state_1524387 state_1524388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524387
  · exact cover_1524388
#print axioms cover_1524386

def state_1524385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 88)))
theorem cover_1524385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524385 := by
  apply coveredState_split_literal (state := state_1524385) 1
    state_1524386 state_1524463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524386
  · exact cover_1524463
#print axioms cover_1524385

def state_1524384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 44)))
theorem cover_1524384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524384 := by
  apply coveredState_split_literal (state := state_1524384) 4
    state_1524385 state_1524488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524385
  · exact cover_1524488
#print axioms cover_1524384

def state_1524587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 232) else (if j.val < 3 then 178 else (if j.val < 4 then 131 else 176)))
theorem cover_1524587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524587 := by
  apply coveredState_split_literal (state := state_1524587) 0
    state_1524588 state_1524609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524588
  · exact cover_1524609
#print axioms cover_1524587

def state_1524585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 232) else (if j.val < 3 then 178 else (if j.val < 4 then 65 else 176)))
theorem cover_1524585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524585 := by
  apply coveredState_split_literal (state := state_1524585) 3
    state_1524586 state_1524587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524586
  · exact cover_1524587
#print axioms cover_1524585

def state_1524584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 178 else (if j.val < 4 then 65 else 176)))
theorem cover_1524584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524584 := by
  apply coveredState_split_literal (state := state_1524584) 1
    state_1524585 state_1524668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524585
  · exact cover_1524668
#print axioms cover_1524584

def state_1524583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 178 else (if j.val < 4 then 65 else 88)))
theorem cover_1524583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524583 := by
  apply coveredState_split_literal (state := state_1524583) 4
    state_1524584 state_1524685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524584
  · exact cover_1524685
#print axioms cover_1524583

def state_1524741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 176)))
theorem cover_1524741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524741 := by
  apply coveredState_split_literal (state := state_1524741) 1
    state_1524742 state_1524789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524742
  · exact cover_1524789
#print axioms cover_1524741

def state_1524740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 88)))
theorem cover_1524740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524740 := by
  apply coveredState_split_literal (state := state_1524740) 4
    state_1524741 state_1524818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524741
  · exact cover_1524818
#print axioms cover_1524740

def state_1524582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 65 else 88)))
theorem cover_1524582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524582 := by
  apply coveredState_split_literal (state := state_1524582) 2
    state_1524583 state_1524740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524583
  · exact cover_1524740
#print axioms cover_1524582

def state_1524870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 178 else (if j.val < 4 then 65 else 88)))
theorem cover_1524870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524870 := by
  apply coveredState_split_literal (state := state_1524870) 4
    state_1524871 state_1524924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524871
  · exact cover_1524924
#print axioms cover_1524870

def state_1524970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 176)))
theorem cover_1524970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524970 := by
  apply coveredState_split_literal (state := state_1524970) 1
    state_1524971 state_1525012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524971
  · exact cover_1525012
#print axioms cover_1524970

def state_1525049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 177)))
theorem cover_1525049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525049 := by
  apply coveredState_split_literal (state := state_1525049) 1
    state_1525050 state_1525067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525050
  · exact cover_1525067
#print axioms cover_1525049

def state_1524969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 88)))
theorem cover_1524969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524969 := by
  apply coveredState_split_literal (state := state_1524969) 4
    state_1524970 state_1525049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524970
  · exact cover_1525049
#print axioms cover_1524969

def state_1524869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 65 else 88)))
theorem cover_1524869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524869 := by
  apply coveredState_split_literal (state := state_1524869) 2
    state_1524870 state_1524969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524870
  · exact cover_1524969
#print axioms cover_1524869

def state_1524581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 65 else 88)))
theorem cover_1524581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524581 := by
  apply coveredState_split_literal (state := state_1524581) 0
    state_1524582 state_1524869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524582
  · exact cover_1524869
#print axioms cover_1524581

def state_1524551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 88)))
theorem cover_1524551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524551 := by
  apply coveredState_split_literal (state := state_1524551) 3
    state_1524552 state_1524581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524552
  · exact cover_1524581
#print axioms cover_1524551

def state_1524550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 88)))
theorem cover_1524550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524550 := by
  apply coveredState_split_literal (state := state_1524550) 1
    state_1524551 state_1525114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524551
  · exact cover_1525114
#print axioms cover_1524550

def state_1525173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 89)))
theorem cover_1525173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525173 := by
  apply coveredState_split_literal (state := state_1525173) 1
    state_1525174 state_1525225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525174
  · exact cover_1525225
#print axioms cover_1525173

def state_1524549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 44)))
theorem cover_1524549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524549 := by
  apply coveredState_split_literal (state := state_1524549) 4
    state_1524550 state_1525173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524550
  · exact cover_1525173
#print axioms cover_1524549

def state_1524383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1524383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524383 := by
  apply coveredState_split_literal (state := state_1524383) 2
    state_1524384 state_1524549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524384
  · exact cover_1524549
#print axioms cover_1524383

def state_1524382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1524382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524382 := by
  apply coveredState_split_literal (state := state_1524382) 0
    state_1524383 state_1525268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524383
  · exact cover_1525268
#print axioms cover_1524382

def state_1525452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 232) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 176)))
theorem cover_1525452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525452 := by
  apply coveredState_split_literal (state := state_1525452) 3
    state_1525453 state_1525514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525453
  · exact cover_1525514
#print axioms cover_1525452

def state_1525451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 176)))
theorem cover_1525451 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525451 := by
  apply coveredState_split_literal (state := state_1525451) 1
    state_1525452 state_1525523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525452
  · exact cover_1525523
#print axioms cover_1525451

def state_1525450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 88)))
theorem cover_1525450 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525450 := by
  apply coveredState_split_literal (state := state_1525450) 4
    state_1525451 state_1525546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525451
  · exact cover_1525546
#print axioms cover_1525450

def state_1525390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 66 else 88)))
theorem cover_1525390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525390 := by
  apply coveredState_split_literal (state := state_1525390) 2
    state_1525391 state_1525450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525391
  · exact cover_1525450
#print axioms cover_1525390

def state_1525700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 233) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 176)))
theorem cover_1525700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525700 := by
  apply coveredState_split_literal (state := state_1525700) 3
    state_1525701 state_1525760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525701
  · exact cover_1525760
#print axioms cover_1525700

def state_1525644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 176)))
theorem cover_1525644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525644 := by
  apply coveredState_split_literal (state := state_1525644) 1
    state_1525645 state_1525700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525645
  · exact cover_1525700
#print axioms cover_1525644

def state_1525809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 233) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 177)))
theorem cover_1525809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525809 := by
  apply coveredState_split_literal (state := state_1525809) 3
    state_1525810 state_1525867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1525810
  · exact cover_1525867
#print axioms cover_1525809
end Mub6.Numerical.CircleFullD0.Forest
