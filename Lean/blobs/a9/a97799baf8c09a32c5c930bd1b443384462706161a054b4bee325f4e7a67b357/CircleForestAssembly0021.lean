import CircleFullInterface
import CircleForestAssembly0020
import CircleForestChunk0083
import CircleForestChunk0084
import CircleForestChunk0085
import CircleForestChunk0086
import CircleForestChunk0087
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_20044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_20044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20044 := by
  apply coveredState_split_literal (state := state_20044) 1
    state_20045 state_20048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20045
  · exact cover_20048
#print axioms cover_20044

def state_19500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_19500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19500 := by
  apply coveredState_split_literal (state := state_19500) 0
    state_19501 state_20044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19501
  · exact cover_20044
#print axioms cover_19500

def state_19499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 10)))
theorem cover_19499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19499 := by
  apply coveredState_split_literal (state := state_19499) 4
    state_19500 state_20125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19500
  · exact cover_20125
#print axioms cover_19499

def state_20196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 20)))
theorem cover_20196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20196 := by
  apply coveredState_split_literal (state := state_20196) 0
    state_20197 state_20220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20197
  · exact cover_20220
#print axioms cover_20196

def state_20195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 20)))
theorem cover_20195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20195 := by
  apply coveredState_split_literal (state := state_20195) 3
    state_20196 state_20283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20196
  · exact cover_20283
#print axioms cover_20195

def state_20194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
theorem cover_20194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20194 := by
  apply coveredState_split_literal (state := state_20194) 2
    state_20195 state_20296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20195
  · exact cover_20296
#print axioms cover_20194

def state_20172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
theorem cover_20172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20172 := by
  apply coveredState_split_literal (state := state_20172) 1
    state_20173 state_20194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20173
  · exact cover_20194
#print axioms cover_20172

def state_20171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
theorem cover_20171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20171 := by
  apply coveredState_split_literal (state := state_20171) 0
    state_20172 state_20307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20172
  · exact cover_20307
#print axioms cover_20171

def state_20170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 10)))
theorem cover_20170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20170 := by
  apply coveredState_split_literal (state := state_20170) 4
    state_20171 state_20366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20171
  · exact cover_20366
#print axioms cover_20170

def state_19498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_19498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19498 := by
  apply coveredState_split_literal (state := state_19498) 3
    state_19499 state_20170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19499
  · exact cover_20170
#print axioms cover_19498

def state_18868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_18868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18868 := by
  apply coveredState_split_literal (state := state_18868) 2
    state_18869 state_19498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18869
  · exact cover_19498
#print axioms cover_18868

def state_20483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 60) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 41)))
theorem cover_20483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20483 := by
  apply coveredState_split_literal (state := state_20483) 0
    state_20484 state_20535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20484
  · exact cover_20535
#print axioms cover_20483

def state_20482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 41)))
theorem cover_20482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20482 := by
  apply coveredState_split_literal (state := state_20482) 1
    state_20483 state_20598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20483
  · exact cover_20598
#print axioms cover_20482

def state_20446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 20)))
theorem cover_20446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20446 := by
  apply coveredState_split_literal (state := state_20446) 4
    state_20447 state_20482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20447
  · exact cover_20482
#print axioms cover_20446

def state_20638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 113 else 60) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
theorem cover_20638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20638 := by
  apply coveredState_split_literal (state := state_20638) 2
    state_20639 state_20652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20639
  · exact cover_20652
#print axioms cover_20638

def state_20616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 60) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
theorem cover_20616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20616 := by
  apply coveredState_split_literal (state := state_20616) 0
    state_20617 state_20638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20617
  · exact cover_20638
#print axioms cover_20616

def state_20615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
theorem cover_20615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20615 := by
  apply coveredState_split_literal (state := state_20615) 1
    state_20616 state_20705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20616
  · exact cover_20705
#print axioms cover_20615

def state_20613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 20)))
theorem cover_20613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20613 := by
  apply coveredState_split_literal (state := state_20613) 4
    state_20614 state_20615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20614
  · exact cover_20615
#print axioms cover_20613

def state_20445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 20)))
theorem cover_20445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20445 := by
  apply coveredState_split_literal (state := state_20445) 3
    state_20446 state_20613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20446
  · exact cover_20613
#print axioms cover_20445

def state_20413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_20413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20413 := by
  apply coveredState_split_literal (state := state_20413) 2
    state_20414 state_20445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20414
  · exact cover_20445
#print axioms cover_20413

def state_20794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 60) else (if j.val < 3 then 119 else (if j.val < 4 then 41 else 41)))
theorem cover_20794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20794 := by
  apply coveredState_split_literal (state := state_20794) 3
    state_20795 state_20848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20795
  · exact cover_20848
#print axioms cover_20794

def state_20784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 60) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
theorem cover_20784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20784 := by
  apply coveredState_split_literal (state := state_20784) 2
    state_20785 state_20794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20785
  · exact cover_20794
#print axioms cover_20784

def state_20783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 60) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
theorem cover_20783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20783 := by
  apply coveredState_split_literal (state := state_20783) 0
    state_20784 state_20873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20784
  · exact cover_20873
#print axioms cover_20783

def state_20782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
theorem cover_20782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20782 := by
  apply coveredState_split_literal (state := state_20782) 1
    state_20783 state_20896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20783
  · exact cover_20896
#print axioms cover_20782

def state_20776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 20)))
theorem cover_20776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20776 := by
  apply coveredState_split_literal (state := state_20776) 4
    state_20777 state_20782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20777
  · exact cover_20782
#print axioms cover_20776

def state_20740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 20)))
theorem cover_20740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20740 := by
  apply coveredState_split_literal (state := state_20740) 3
    state_20741 state_20776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20741
  · exact cover_20776
#print axioms cover_20740

def state_20722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_20722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20722 := by
  apply coveredState_split_literal (state := state_20722) 2
    state_20723 state_20740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20723
  · exact cover_20740
#print axioms cover_20722

def state_20412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_20412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20412 := by
  apply coveredState_split_literal (state := state_20412) 0
    state_20413 state_20722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20413
  · exact cover_20722
#print axioms cover_20412

def state_20411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 15) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_20411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20411 := by
  apply coveredState_split_literal (state := state_20411) 1
    state_20412 state_20927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20412
  · exact cover_20927
#print axioms cover_20411

def state_20401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
theorem cover_20401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20401 := by
  apply coveredState_split_literal (state := state_20401) 2
    state_20402 state_20411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20402
  · exact cover_20411
#print axioms cover_20401

def state_20960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 15) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_20960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20960 := by
  apply coveredState_split_literal (state := state_20960) 1
    state_20961 state_21020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20961
  · exact cover_21020
#print axioms cover_20960

def state_20956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
theorem cover_20956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20956 := by
  apply coveredState_split_literal (state := state_20956) 2
    state_20957 state_20960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20957
  · exact cover_20960
#print axioms cover_20956
end Mub6.Numerical.CircleFullPrototype.Forest
