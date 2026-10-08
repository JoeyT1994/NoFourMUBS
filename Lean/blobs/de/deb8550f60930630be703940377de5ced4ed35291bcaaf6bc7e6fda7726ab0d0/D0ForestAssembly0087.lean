import D0FullInterface
import D0ForestAssembly0086
import D0ForestChunk0346
import D0ForestChunk0347
import D0ForestChunk0349
import D0ForestChunk0350
import D0ForestChunk0351
import D0ForestChunk0352
import D0ForestChunk0353
import D0ForestChunk0354
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1021041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1021041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021041 := by
  apply coveredState_split_literal (state := state_1021041) 4
    state_1021042 state_1021123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021042
  · exact cover_1021123
#print axioms cover_1021041

def state_1020781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1020781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020781 := by
  apply coveredState_split_literal (state := state_1020781) 0
    state_1020782 state_1021041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020782
  · exact cover_1021041
#print axioms cover_1020781

def state_1020747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1020747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020747 := by
  apply coveredState_split_literal (state := state_1020747) 1
    state_1020748 state_1020781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020748
  · exact cover_1020781
#print axioms cover_1020747

def state_1020603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
theorem cover_1020603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020603 := by
  apply coveredState_split_literal (state := state_1020603) 2
    state_1020604 state_1020747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020604
  · exact cover_1020747
#print axioms cover_1020603

def state_1021192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 51)))
theorem cover_1021192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021192 := by
  apply coveredState_split_literal (state := state_1021192) 2
    state_1021193 state_1021210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021193
  · exact cover_1021210
#print axioms cover_1021192

def state_1020602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1020602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020602 := by
  apply coveredState_split_literal (state := state_1020602) 4
    state_1020603 state_1021192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020603
  · exact cover_1021192
#print axioms cover_1020602

def state_1020560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1020560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020560 := by
  apply coveredState_split_literal (state := state_1020560) 3
    state_1020561 state_1020602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020561
  · exact cover_1020602
#print axioms cover_1020560

def state_1020454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1020454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020454 := by
  apply coveredState_split_literal (state := state_1020454) 0
    state_1020455 state_1020560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1020455
  · exact cover_1020560
#print axioms cover_1020454

def state_1021278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1021278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021278 := by
  apply coveredState_split_literal (state := state_1021278) 4
    state_1021279 state_1021314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021279
  · exact cover_1021314
#print axioms cover_1021278

def state_1021258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1021258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021258 := by
  apply coveredState_split_literal (state := state_1021258) 3
    state_1021259 state_1021278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021259
  · exact cover_1021278
#print axioms cover_1021258

def state_1021388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 51)))
theorem cover_1021388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021388 := by
  apply coveredState_split_literal (state := state_1021388) 2
    state_1021389 state_1021408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021389
  · exact cover_1021408
#print axioms cover_1021388

def state_1021344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
theorem cover_1021344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021344 := by
  apply coveredState_split_literal (state := state_1021344) 4
    state_1021345 state_1021388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021345
  · exact cover_1021388
#print axioms cover_1021344

def state_1021466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
theorem cover_1021466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021466 := by
  apply coveredState_split_literal (state := state_1021466) 0
    state_1021467 state_1021510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021467
  · exact cover_1021510
#print axioms cover_1021466

def state_1021465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
theorem cover_1021465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021465 := by
  apply coveredState_split_literal (state := state_1021465) 1
    state_1021466 state_1021557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021466
  · exact cover_1021557
#print axioms cover_1021465

def state_1021692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
theorem cover_1021692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021692 := by
  apply coveredState_split_literal (state := state_1021692) 4
    state_1021693 state_1021736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021693
  · exact cover_1021736
#print axioms cover_1021692

def state_1021678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
theorem cover_1021678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021678 := by
  apply coveredState_split_literal (state := state_1021678) 0
    state_1021679 state_1021692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021679
  · exact cover_1021692
#print axioms cover_1021678

def state_1021677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
theorem cover_1021677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021677 := by
  apply coveredState_split_literal (state := state_1021677) 1
    state_1021678 state_1021767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021678
  · exact cover_1021767
#print axioms cover_1021677

def state_1021676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 101)))
theorem cover_1021676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021676 := by
  apply coveredState_split_literal (state := state_1021676) 2
    state_1021677 state_1021786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021677
  · exact cover_1021786
#print axioms cover_1021676

def state_1021638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 101)))
theorem cover_1021638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021638 := by
  apply coveredState_split_literal (state := state_1021638) 3
    state_1021639 state_1021676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021639
  · exact cover_1021676
#print axioms cover_1021638

def state_1021582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1021582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021582 := by
  apply coveredState_split_literal (state := state_1021582) 4
    state_1021583 state_1021638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021583
  · exact cover_1021638
#print axioms cover_1021582

def state_1021880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 101)))
theorem cover_1021880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021880 := by
  apply coveredState_split_literal (state := state_1021880) 2
    state_1021881 state_1021922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021881
  · exact cover_1021922
#print axioms cover_1021880

def state_1021948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
theorem cover_1021948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021948 := by
  apply coveredState_split_literal (state := state_1021948) 4
    state_1021949 state_1021998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021949
  · exact cover_1021998
#print axioms cover_1021948

def state_1021947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
theorem cover_1021947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021947 := by
  apply coveredState_split_literal (state := state_1021947) 0
    state_1021948 state_1022027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021948
  · exact cover_1022027
#print axioms cover_1021947

def state_1022035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
theorem cover_1022035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022035 := by
  apply coveredState_split_literal (state := state_1022035) 4
    state_1022036 state_1022043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022036
  · exact cover_1022043
#print axioms cover_1022035

def state_1022034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 125) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
theorem cover_1022034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022034 := by
  apply coveredState_split_literal (state := state_1022034) 0
    state_1022035 state_1022106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022035
  · exact cover_1022106
#print axioms cover_1022034

def state_1021946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
theorem cover_1021946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021946 := by
  apply coveredState_split_literal (state := state_1021946) 1
    state_1021947 state_1022034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021947
  · exact cover_1022034
#print axioms cover_1021946

def state_1022175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 203)))
theorem cover_1022175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022175 := by
  apply coveredState_split_literal (state := state_1022175) 3
    state_1022176 state_1022199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022176
  · exact cover_1022199
#print axioms cover_1022175

def state_1022119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
theorem cover_1022119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022119 := by
  apply coveredState_split_literal (state := state_1022119) 4
    state_1022120 state_1022175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022120
  · exact cover_1022175
#print axioms cover_1022119

def state_1022118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
theorem cover_1022118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022118 := by
  apply coveredState_split_literal (state := state_1022118) 0
    state_1022119 state_1022260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022119
  · exact cover_1022260
#print axioms cover_1022118

def state_1022340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 203)))
theorem cover_1022340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022340 := by
  apply coveredState_split_literal (state := state_1022340) 2
    state_1022341 state_1022404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022341
  · exact cover_1022404
#print axioms cover_1022340

def state_1022292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 203)))
theorem cover_1022292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022292 := by
  apply coveredState_split_literal (state := state_1022292) 3
    state_1022293 state_1022340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022293
  · exact cover_1022340
#print axioms cover_1022292

def state_1022286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
theorem cover_1022286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022286 := by
  apply coveredState_split_literal (state := state_1022286) 4
    state_1022287 state_1022292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022287
  · exact cover_1022292
#print axioms cover_1022286
end Mub6.Numerical.CircleFullD0.Forest
