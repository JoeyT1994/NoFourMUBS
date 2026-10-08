import D0FullInterface
import D0ForestAssembly0095
import D0ForestChunk0383
import D0ForestChunk0384
import D0ForestChunk0385
import D0ForestChunk0386
import D0ForestChunk0387
import D0ForestChunk0388
import D0ForestChunk0389
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1029610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 49) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1029610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029610 := by
  apply coveredState_split_literal (state := state_1029610) 2
    state_1029611 state_1029630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029611
  · exact cover_1029630
#print axioms cover_1029610

def state_1029578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1029578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029578 := by
  apply coveredState_split_literal (state := state_1029578) 1
    state_1029579 state_1029610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029579
  · exact cover_1029610
#print axioms cover_1029578

def state_1029842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
theorem cover_1029842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029842 := by
  apply coveredState_split_literal (state := state_1029842) 1
    state_1029843 state_1029880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029843
  · exact cover_1029880
#print axioms cover_1029842

def state_1029841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
theorem cover_1029841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029841 := by
  apply coveredState_split_literal (state := state_1029841) 0
    state_1029842 state_1029935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029842
  · exact cover_1029935
#print axioms cover_1029841

def state_1029942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 61)))
theorem cover_1029942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029942 := by
  apply coveredState_split_literal (state := state_1029942) 0
    state_1029943 state_1030004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029943
  · exact cover_1030004
#print axioms cover_1029942

def state_1029840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 30)))
theorem cover_1029840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029840 := by
  apply coveredState_split_literal (state := state_1029840) 4
    state_1029841 state_1029942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029841
  · exact cover_1029942
#print axioms cover_1029840

def state_1030011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 60)))
theorem cover_1030011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030011 := by
  apply coveredState_split_literal (state := state_1030011) 1
    state_1030012 state_1030045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030012
  · exact cover_1030045
#print axioms cover_1030011

def state_1030010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 60)))
theorem cover_1030010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030010 := by
  apply coveredState_split_literal (state := state_1030010) 0
    state_1030011 state_1030094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030011
  · exact cover_1030094
#print axioms cover_1030010

def state_1030009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 30)))
theorem cover_1030009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030009 := by
  apply coveredState_split_literal (state := state_1030009) 4
    state_1030010 state_1030111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030010
  · exact cover_1030111
#print axioms cover_1030009

def state_1029839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 30)))
theorem cover_1029839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029839 := by
  apply coveredState_split_literal (state := state_1029839) 3
    state_1029840 state_1030009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029840
  · exact cover_1030009
#print axioms cover_1029839

def state_1029805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1029805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029805 := by
  apply coveredState_split_literal (state := state_1029805) 2
    state_1029806 state_1029839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029806
  · exact cover_1029839
#print axioms cover_1029805

def state_1029785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1029785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029785 := by
  apply coveredState_split_literal (state := state_1029785) 1
    state_1029786 state_1029805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029786
  · exact cover_1029805
#print axioms cover_1029785

def state_1029577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1029577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029577 := by
  apply coveredState_split_literal (state := state_1029577) 0
    state_1029578 state_1029785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029578
  · exact cover_1029785
#print axioms cover_1029577

def state_1029576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 15)))
theorem cover_1029576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029576 := by
  apply coveredState_split_literal (state := state_1029576) 4
    state_1029577 state_1030172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029577
  · exact cover_1030172
#print axioms cover_1029576

def state_1029575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 15)))
theorem cover_1029575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029575 := by
  apply coveredState_split_literal (state := state_1029575) 3
    state_1029576 state_1030203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029576
  · exact cover_1030203
#print axioms cover_1029575

def state_1029567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1029567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029567 := by
  apply coveredState_split_literal (state := state_1029567) 2
    state_1029568 state_1029575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029568
  · exact cover_1029575
#print axioms cover_1029567

def state_1030294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 30)))
theorem cover_1030294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030294 := by
  apply coveredState_split_literal (state := state_1030294) 3
    state_1030295 state_1030352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030295
  · exact cover_1030352
#print axioms cover_1030294

def state_1030270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1030270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030270 := by
  apply coveredState_split_literal (state := state_1030270) 2
    state_1030271 state_1030294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030271
  · exact cover_1030294
#print axioms cover_1030270

def state_1030269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1030269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030269 := by
  apply coveredState_split_literal (state := state_1030269) 1
    state_1030270 state_1030367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030270
  · exact cover_1030367
#print axioms cover_1030269

def state_1030434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 61)))
theorem cover_1030434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030434 := by
  apply coveredState_split_literal (state := state_1030434) 2
    state_1030435 state_1030460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030435
  · exact cover_1030460
#print axioms cover_1030434

def state_1030433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 61)))
theorem cover_1030433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030433 := by
  apply coveredState_split_literal (state := state_1030433) 1
    state_1030434 state_1030507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030434
  · exact cover_1030507
#print axioms cover_1030433

def state_1030432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 61)))
theorem cover_1030432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030432 := by
  apply coveredState_split_literal (state := state_1030432) 0
    state_1030433 state_1030538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030433
  · exact cover_1030538
#print axioms cover_1030432

def state_1030410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 30)))
theorem cover_1030410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030410 := by
  apply coveredState_split_literal (state := state_1030410) 4
    state_1030411 state_1030432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030411
  · exact cover_1030432
#print axioms cover_1030410

def state_1030674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 100) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 123)))
theorem cover_1030674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030674 := by
  apply coveredState_split_literal (state := state_1030674) 1
    state_1030675 state_1030698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030675
  · exact cover_1030698
#print axioms cover_1030674

def state_1030662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 123)))
theorem cover_1030662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030662 := by
  apply coveredState_split_literal (state := state_1030662) 0
    state_1030663 state_1030674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030663
  · exact cover_1030674
#print axioms cover_1030662

def state_1030618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 61)))
theorem cover_1030618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030618 := by
  apply coveredState_split_literal (state := state_1030618) 4
    state_1030619 state_1030662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030619
  · exact cover_1030662
#print axioms cover_1030618

def state_1030617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 61)))
theorem cover_1030617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030617 := by
  apply coveredState_split_literal (state := state_1030617) 3
    state_1030618 state_1030751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030618
  · exact cover_1030751
#print axioms cover_1030617

def state_1030589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 61)))
theorem cover_1030589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030589 := by
  apply coveredState_split_literal (state := state_1030589) 2
    state_1030590 state_1030617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030590
  · exact cover_1030617
#print axioms cover_1030589

def state_1030588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 61)))
theorem cover_1030588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030588 := by
  apply coveredState_split_literal (state := state_1030588) 1
    state_1030589 state_1030784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030589
  · exact cover_1030784
#print axioms cover_1030588

def state_1030848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 100) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 61)))
theorem cover_1030848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030848 := by
  apply coveredState_split_literal (state := state_1030848) 2
    state_1030849 state_1030870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030849
  · exact cover_1030870
#print axioms cover_1030848

def state_1030929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 61)))
theorem cover_1030929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030929 := by
  apply coveredState_split_literal (state := state_1030929) 2
    state_1030930 state_1030945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030930
  · exact cover_1030945
#print axioms cover_1030929

def state_1030847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 61)))
theorem cover_1030847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030847 := by
  apply coveredState_split_literal (state := state_1030847) 1
    state_1030848 state_1030929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030848
  · exact cover_1030929
#print axioms cover_1030847
end Mub6.Numerical.CircleFullD0.Forest
