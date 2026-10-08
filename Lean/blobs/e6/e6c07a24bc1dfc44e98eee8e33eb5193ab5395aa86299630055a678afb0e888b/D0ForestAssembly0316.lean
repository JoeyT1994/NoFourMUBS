import D0FullInterface
import D0ForestAssembly0315
import D0ForestChunk1221
import D0ForestChunk1222
import D0ForestChunk1223
import D0ForestChunk1224
import D0ForestChunk1225
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1593424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 50)))
theorem cover_1593424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593424 := by
  apply coveredState_split_literal (state := state_1593424) 0
    state_1593425 state_1593576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593425
  · exact cover_1593576
#print axioms cover_1593424

def state_1593423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 25)))
theorem cover_1593423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593423 := by
  apply coveredState_split_literal (state := state_1593423) 4
    state_1593424 state_1593585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593424
  · exact cover_1593585
#print axioms cover_1593423

def state_1593684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 57 else 101)))
theorem cover_1593684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593684 := by
  apply coveredState_split_literal (state := state_1593684) 2
    state_1593685 state_1593744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593685
  · exact cover_1593744
#print axioms cover_1593684

def state_1593664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 57 else 50)))
theorem cover_1593664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593664 := by
  apply coveredState_split_literal (state := state_1593664) 4
    state_1593665 state_1593684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593665
  · exact cover_1593684
#print axioms cover_1593664

def state_1593634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
theorem cover_1593634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593634 := by
  apply coveredState_split_literal (state := state_1593634) 3
    state_1593635 state_1593664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593635
  · exact cover_1593664
#print axioms cover_1593634

def state_1593620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
theorem cover_1593620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593620 := by
  apply coveredState_split_literal (state := state_1593620) 1
    state_1593621 state_1593634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593621
  · exact cover_1593634
#print axioms cover_1593620

def state_1593619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
theorem cover_1593619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593619 := by
  apply coveredState_split_literal (state := state_1593619) 0
    state_1593620 state_1593753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593620
  · exact cover_1593753
#print axioms cover_1593619

def state_1593765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 51)))
theorem cover_1593765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593765 := by
  apply coveredState_split_literal (state := state_1593765) 1
    state_1593766 state_1593779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593766
  · exact cover_1593779
#print axioms cover_1593765

def state_1593764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 51)))
theorem cover_1593764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593764 := by
  apply coveredState_split_literal (state := state_1593764) 0
    state_1593765 state_1593838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593765
  · exact cover_1593838
#print axioms cover_1593764

def state_1593618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 25)))
theorem cover_1593618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593618 := by
  apply coveredState_split_literal (state := state_1593618) 4
    state_1593619 state_1593764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593619
  · exact cover_1593764
#print axioms cover_1593618

def state_1593422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 25)))
theorem cover_1593422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593422 := by
  apply coveredState_split_literal (state := state_1593422) 2
    state_1593423 state_1593618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593423
  · exact cover_1593618
#print axioms cover_1593422

def state_1593909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 58 else 50)))
theorem cover_1593909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593909 := by
  apply coveredState_split_literal (state := state_1593909) 2
    state_1593910 state_1593917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593910
  · exact cover_1593917
#print axioms cover_1593909

def state_1593908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 50)))
theorem cover_1593908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593908 := by
  apply coveredState_split_literal (state := state_1593908) 3
    state_1593909 state_1593980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593909
  · exact cover_1593980
#print axioms cover_1593908

def state_1593846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 50)))
theorem cover_1593846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593846 := by
  apply coveredState_split_literal (state := state_1593846) 1
    state_1593847 state_1593908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593847
  · exact cover_1593908
#print axioms cover_1593846

def state_1593989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 50)))
theorem cover_1593989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593989 := by
  apply coveredState_split_literal (state := state_1593989) 1
    state_1593990 state_1594031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593990
  · exact cover_1594031
#print axioms cover_1593989

def state_1593845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 50)))
theorem cover_1593845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593845 := by
  apply coveredState_split_literal (state := state_1593845) 0
    state_1593846 state_1593989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593846
  · exact cover_1593989
#print axioms cover_1593845

def state_1593844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 25)))
theorem cover_1593844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593844 := by
  apply coveredState_split_literal (state := state_1593844) 4
    state_1593845 state_1594070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593845
  · exact cover_1594070
#print axioms cover_1593844

def state_1594187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 102 else (if j.val < 4 then 58 else 101)))
theorem cover_1594187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594187 := by
  apply coveredState_split_literal (state := state_1594187) 0
    state_1594188 state_1594227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594188
  · exact cover_1594227
#print axioms cover_1594187

def state_1594186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 101)))
theorem cover_1594186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594186 := by
  apply coveredState_split_literal (state := state_1594186) 2
    state_1594187 state_1594278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594187
  · exact cover_1594278
#print axioms cover_1594186

def state_1594154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 50)))
theorem cover_1594154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594154 := by
  apply coveredState_split_literal (state := state_1594154) 4
    state_1594155 state_1594186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594155
  · exact cover_1594186
#print axioms cover_1594154

def state_1594153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
theorem cover_1594153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594153 := by
  apply coveredState_split_literal (state := state_1594153) 3
    state_1594154 state_1594297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594154
  · exact cover_1594297
#print axioms cover_1594153

def state_1594127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
theorem cover_1594127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594127 := by
  apply coveredState_split_literal (state := state_1594127) 1
    state_1594128 state_1594153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594128
  · exact cover_1594153
#print axioms cover_1594127

def state_1594409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 100)))
theorem cover_1594409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594409 := by
  apply coveredState_split_literal (state := state_1594409) 2
    state_1594410 state_1594473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594410
  · exact cover_1594473
#print axioms cover_1594409

def state_1594408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 50)))
theorem cover_1594408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594408 := by
  apply coveredState_split_literal (state := state_1594408) 4
    state_1594409 state_1594480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594409
  · exact cover_1594480
#print axioms cover_1594408

def state_1594370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
theorem cover_1594370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594370 := by
  apply coveredState_split_literal (state := state_1594370) 3
    state_1594371 state_1594408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594371
  · exact cover_1594408
#print axioms cover_1594370

def state_1594360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
theorem cover_1594360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594360 := by
  apply coveredState_split_literal (state := state_1594360) 1
    state_1594361 state_1594370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594361
  · exact cover_1594370
#print axioms cover_1594360

def state_1594126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
theorem cover_1594126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594126 := by
  apply coveredState_split_literal (state := state_1594126) 0
    state_1594127 state_1594360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594127
  · exact cover_1594360
#print axioms cover_1594126

def state_1594552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 51)))
theorem cover_1594552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594552 := by
  apply coveredState_split_literal (state := state_1594552) 3
    state_1594553 state_1594610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594553
  · exact cover_1594610
#print axioms cover_1594552

def state_1594536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 51)))
theorem cover_1594536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594536 := by
  apply coveredState_split_literal (state := state_1594536) 1
    state_1594537 state_1594552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594537
  · exact cover_1594552
#print axioms cover_1594536

def state_1594535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 51)))
theorem cover_1594535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594535 := by
  apply coveredState_split_literal (state := state_1594535) 0
    state_1594536 state_1594623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594536
  · exact cover_1594623
#print axioms cover_1594535

def state_1594125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 25)))
theorem cover_1594125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594125 := by
  apply coveredState_split_literal (state := state_1594125) 4
    state_1594126 state_1594535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1594126
  · exact cover_1594535
#print axioms cover_1594125

def state_1593843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 25)))
theorem cover_1593843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593843 := by
  apply coveredState_split_literal (state := state_1593843) 2
    state_1593844 state_1594125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593844
  · exact cover_1594125
#print axioms cover_1593843
end Mub6.Numerical.CircleFullD0.Forest
