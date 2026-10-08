import D0FullInterface
import D0ForestAssembly0001
import D0ForestChunk0008
import D0ForestChunk0009
import D0ForestChunk0010
import D0ForestChunk0011
import D0ForestChunk0012
import D0ForestChunk0013
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_939568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_939568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939568 := by
  apply coveredState_split_literal (state := state_939568) 1
    state_939569 state_939640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939569
  · exact cover_939640
#print axioms cover_939568

def state_939528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_939528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939528 := by
  apply coveredState_split_literal (state := state_939528) 0
    state_939529 state_939568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939529
  · exact cover_939568
#print axioms cover_939528

def state_939698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_939698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939698 := by
  apply coveredState_split_literal (state := state_939698) 3
    state_939699 state_939762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939699
  · exact cover_939762
#print axioms cover_939698

def state_939696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_939696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939696 := by
  apply coveredState_split_literal (state := state_939696) 2
    state_939697 state_939698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939697
  · exact cover_939698
#print axioms cover_939696

def state_939789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_939789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939789 := by
  apply coveredState_split_literal (state := state_939789) 1
    state_939790 state_939849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939790
  · exact cover_939849
#print axioms cover_939789

def state_939775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_939775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939775 := by
  apply coveredState_split_literal (state := state_939775) 0
    state_939776 state_939789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939776
  · exact cover_939789
#print axioms cover_939775

def state_939774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_939774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939774 := by
  apply coveredState_split_literal (state := state_939774) 4
    state_939775 state_939876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939775
  · exact cover_939876
#print axioms cover_939774

def state_939773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_939773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939773 := by
  apply coveredState_split_literal (state := state_939773) 3
    state_939774 state_939925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939774
  · exact cover_939925
#print axioms cover_939773

def state_939767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_939767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939767 := by
  apply coveredState_split_literal (state := state_939767) 2
    state_939768 state_939773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939768
  · exact cover_939773
#print axioms cover_939767

def state_939695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_939695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939695 := by
  apply coveredState_split_literal (state := state_939695) 1
    state_939696 state_939767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939696
  · exact cover_939767
#print axioms cover_939695

def state_939685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_939685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939685 := by
  apply coveredState_split_literal (state := state_939685) 0
    state_939686 state_939695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939686
  · exact cover_939695
#print axioms cover_939685

def state_939527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_939527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939527 := by
  apply coveredState_split_literal (state := state_939527) 4
    state_939528 state_939685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939528
  · exact cover_939685
#print axioms cover_939527

def state_940044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_940044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940044 := by
  apply coveredState_split_literal (state := state_940044) 1
    state_940045 state_940056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940045
  · exact cover_940056
#print axioms cover_940044

def state_940022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_940022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940022 := by
  apply coveredState_split_literal (state := state_940022) 4
    state_940023 state_940044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940023
  · exact cover_940044
#print axioms cover_940022

def state_939998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_939998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939998 := by
  apply coveredState_split_literal (state := state_939998) 3
    state_939999 state_940022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939999
  · exact cover_940022
#print axioms cover_939998

def state_939956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_939956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939956 := by
  apply coveredState_split_literal (state := state_939956) 2
    state_939957 state_939998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939957
  · exact cover_939998
#print axioms cover_939956

def state_939936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_939936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939936 := by
  apply coveredState_split_literal (state := state_939936) 1
    state_939937 state_939956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939937
  · exact cover_939956
#print axioms cover_939936

def state_940137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_940137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940137 := by
  apply coveredState_split_literal (state := state_940137) 4
    state_940138 state_940173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940138
  · exact cover_940173
#print axioms cover_940137

def state_940136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_940136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940136 := by
  apply coveredState_split_literal (state := state_940136) 3
    state_940137 state_940202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940137
  · exact cover_940202
#print axioms cover_940136

def state_940135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_940135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940135 := by
  apply coveredState_split_literal (state := state_940135) 2
    state_940136 state_940239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940136
  · exact cover_940239
#print axioms cover_940135

def state_940111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_940111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940111 := by
  apply coveredState_split_literal (state := state_940111) 1
    state_940112 state_940135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940112
  · exact cover_940135
#print axioms cover_940111

def state_939935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_939935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939935 := by
  apply coveredState_split_literal (state := state_939935) 0
    state_939936 state_940111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939936
  · exact cover_940111
#print axioms cover_939935

def state_940296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_940296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940296 := by
  apply coveredState_split_literal (state := state_940296) 0
    state_940297 state_940320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940297
  · exact cover_940320
#print axioms cover_940296

def state_939934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_939934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939934 := by
  apply coveredState_split_literal (state := state_939934) 4
    state_939935 state_940296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939935
  · exact cover_940296
#print axioms cover_939934

def state_939526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_939526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939526 := by
  apply coveredState_split_literal (state := state_939526) 3
    state_939527 state_939934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939527
  · exact cover_939934
#print axioms cover_939526

def state_940371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_940371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940371 := by
  apply coveredState_split_literal (state := state_940371) 2
    state_940372 state_940395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940372
  · exact cover_940395
#print axioms cover_940371

def state_940500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_940500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940500 := by
  apply coveredState_split_literal (state := state_940500) 1
    state_940501 state_940542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940501
  · exact cover_940542
#print axioms cover_940500

def state_940494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_940494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940494 := by
  apply coveredState_split_literal (state := state_940494) 4
    state_940495 state_940500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940495
  · exact cover_940500
#print axioms cover_940494

def state_940472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_940472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940472 := by
  apply coveredState_split_literal (state := state_940472) 3
    state_940473 state_940494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940473
  · exact cover_940494
#print axioms cover_940472

def state_940436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_940436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940436 := by
  apply coveredState_split_literal (state := state_940436) 2
    state_940437 state_940472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940437
  · exact cover_940472
#print axioms cover_940436

def state_940370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_940370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940370 := by
  apply coveredState_split_literal (state := state_940370) 1
    state_940371 state_940436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940371
  · exact cover_940436
#print axioms cover_940370

def state_940572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_940572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940572 := by
  apply coveredState_split_literal (state := state_940572) 2
    state_940573 state_940630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940573
  · exact cover_940630
#print axioms cover_940572
end Mub6.Numerical.CircleFullD0.Forest
