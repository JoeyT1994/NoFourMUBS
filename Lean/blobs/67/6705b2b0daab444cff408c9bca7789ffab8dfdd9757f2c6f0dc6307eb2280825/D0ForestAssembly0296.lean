import D0FullInterface
import D0ForestAssembly0295
import D0ForestChunk1136
import D0ForestChunk1137
import D0ForestChunk1138
import D0ForestChunk1139
import D0ForestChunk1140
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1573279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_1573279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573279 := by
  apply coveredState_split_literal (state := state_1573279) 4
    state_1573280 state_1573281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573280
  · exact cover_1573281
#print axioms cover_1573279

def state_1573278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1573278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573278 := by
  apply coveredState_split_literal (state := state_1573278) 2
    state_1573279 state_1573382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573279
  · exact cover_1573382
#print axioms cover_1573278

def state_1573383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1573383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573383 := by
  apply coveredState_split_literal (state := state_1573383) 2
    state_1573384 state_1573431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573384
  · exact cover_1573431
#print axioms cover_1573383

def state_1573277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1573277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573277 := by
  apply coveredState_split_literal (state := state_1573277) 0
    state_1573278 state_1573383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573278
  · exact cover_1573383
#print axioms cover_1573277

def state_1573273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_1573273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573273 := by
  apply coveredState_split_literal (state := state_1573273) 4
    state_1573274 state_1573277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573274
  · exact cover_1573277
#print axioms cover_1573273

def state_1573189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1573189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573189 := by
  apply coveredState_split_literal (state := state_1573189) 3
    state_1573190 state_1573273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573190
  · exact cover_1573273
#print axioms cover_1573189

def state_1573188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1573188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573188 := by
  apply coveredState_split_literal (state := state_1573188) 2
    state_1573189 state_1573458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573189
  · exact cover_1573458
#print axioms cover_1573188

def state_1573481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1573481 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573481 := by
  apply coveredState_split_literal (state := state_1573481) 1
    state_1573482 state_1573493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573482
  · exact cover_1573493
#print axioms cover_1573481

def state_1573480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1573480 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573480 := by
  apply coveredState_split_literal (state := state_1573480) 0
    state_1573481 state_1573548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573481
  · exact cover_1573548
#print axioms cover_1573480

def state_1573561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1573561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573561 := by
  apply coveredState_split_literal (state := state_1573561) 2
    state_1573562 state_1573587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573562
  · exact cover_1573587
#print axioms cover_1573561

def state_1573674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 5)))
theorem cover_1573674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573674 := by
  apply coveredState_split_literal (state := state_1573674) 4
    state_1573675 state_1573708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573675
  · exact cover_1573708
#print axioms cover_1573674

def state_1573652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
theorem cover_1573652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573652 := by
  apply coveredState_split_literal (state := state_1573652) 3
    state_1573653 state_1573674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573653
  · exact cover_1573674
#print axioms cover_1573652

def state_1573644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1573644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573644 := by
  apply coveredState_split_literal (state := state_1573644) 2
    state_1573645 state_1573652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573645
  · exact cover_1573652
#print axioms cover_1573644

def state_1573560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1573560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573560 := by
  apply coveredState_split_literal (state := state_1573560) 1
    state_1573561 state_1573644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573561
  · exact cover_1573644
#print axioms cover_1573560

def state_1573559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
theorem cover_1573559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573559 := by
  apply coveredState_split_literal (state := state_1573559) 0
    state_1573560 state_1573765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573560
  · exact cover_1573765
#print axioms cover_1573559

def state_1573479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1573479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573479 := by
  apply coveredState_split_literal (state := state_1573479) 4
    state_1573480 state_1573559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573480
  · exact cover_1573559
#print axioms cover_1573479

def state_1573793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_1573793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573793 := by
  apply coveredState_split_literal (state := state_1573793) 4
    state_1573794 state_1573795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573794
  · exact cover_1573795
#print axioms cover_1573793

def state_1573863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 23)))
theorem cover_1573863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573863 := by
  apply coveredState_split_literal (state := state_1573863) 0
    state_1573864 state_1573875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573864
  · exact cover_1573875
#print axioms cover_1573863

def state_1573861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 11)))
theorem cover_1573861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573861 := by
  apply coveredState_split_literal (state := state_1573861) 4
    state_1573862 state_1573863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573862
  · exact cover_1573863
#print axioms cover_1573861

def state_1573860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
theorem cover_1573860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573860 := by
  apply coveredState_split_literal (state := state_1573860) 3
    state_1573861 state_1573934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573861
  · exact cover_1573934
#print axioms cover_1573860

def state_1573858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_1573858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573858 := by
  apply coveredState_split_literal (state := state_1573858) 4
    state_1573859 state_1573860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573859
  · exact cover_1573860
#print axioms cover_1573858

def state_1573792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1573792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573792 := by
  apply coveredState_split_literal (state := state_1573792) 2
    state_1573793 state_1573858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573793
  · exact cover_1573858
#print axioms cover_1573792

def state_1573993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 23)))
theorem cover_1573993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573993 := by
  apply coveredState_split_literal (state := state_1573993) 3
    state_1573994 state_1574045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573994
  · exact cover_1574045
#print axioms cover_1573993

def state_1573985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 23)))
theorem cover_1573985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573985 := by
  apply coveredState_split_literal (state := state_1573985) 2
    state_1573986 state_1573993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573986
  · exact cover_1573993
#print axioms cover_1573985

def state_1573975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 23)))
theorem cover_1573975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573975 := by
  apply coveredState_split_literal (state := state_1573975) 0
    state_1573976 state_1573985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573976
  · exact cover_1573985
#print axioms cover_1573975

def state_1573961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 11)))
theorem cover_1573961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573961 := by
  apply coveredState_split_literal (state := state_1573961) 4
    state_1573962 state_1573975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573962
  · exact cover_1573975
#print axioms cover_1573961

def state_1573960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 11)))
theorem cover_1573960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573960 := by
  apply coveredState_split_literal (state := state_1573960) 1
    state_1573961 state_1574082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573961
  · exact cover_1574082
#print axioms cover_1573960

def state_1573959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
theorem cover_1573959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573959 := by
  apply coveredState_split_literal (state := state_1573959) 3
    state_1573960 state_1574121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573960
  · exact cover_1574121
#print axioms cover_1573959

def state_1573953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_1573953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573953 := by
  apply coveredState_split_literal (state := state_1573953) 4
    state_1573954 state_1573959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573954
  · exact cover_1573959
#print axioms cover_1573953

def state_1573951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1573951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573951 := by
  apply coveredState_split_literal (state := state_1573951) 2
    state_1573952 state_1573953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573952
  · exact cover_1573953
#print axioms cover_1573951

def state_1573791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1573791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573791 := by
  apply coveredState_split_literal (state := state_1573791) 1
    state_1573792 state_1573951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573792
  · exact cover_1573951
#print axioms cover_1573791

def state_1574225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 11)))
theorem cover_1574225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574225 := by
  apply coveredState_split_literal (state := state_1574225) 0
    state_1574226 state_1574283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574226
  · exact cover_1574283
#print axioms cover_1574225
end Mub6.Numerical.CircleFullD0.Forest
