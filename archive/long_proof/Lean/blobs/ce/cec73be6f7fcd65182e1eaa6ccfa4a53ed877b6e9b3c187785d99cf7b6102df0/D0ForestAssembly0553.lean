import D0FullInterface
import D0ForestAssembly0552
import D0ForestChunk2185
import D0ForestChunk2186
import D0ForestChunk2187
import D0ForestChunk2188
import D0ForestChunk2189
import D0ForestChunk2190
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2605045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2605045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605045 := by
  apply coveredState_split_literal (state := state_2605045) 1
    state_2605046 state_2605077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605046
  · exact cover_2605077
#print axioms cover_2605045

def state_2604945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2604945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604945 := by
  apply coveredState_split_literal (state := state_2604945) 0
    state_2604946 state_2605045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604946
  · exact cover_2605045
#print axioms cover_2604945

def state_2605285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2605285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605285 := by
  apply coveredState_split_literal (state := state_2605285) 1
    state_2605286 state_2605297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605286
  · exact cover_2605297
#print axioms cover_2605285

def state_2605284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2605284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605284 := by
  apply coveredState_split_literal (state := state_2605284) 0
    state_2605285 state_2605354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605285
  · exact cover_2605354
#print axioms cover_2605284

def state_2604944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2604944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604944 := by
  apply coveredState_split_literal (state := state_2604944) 4
    state_2604945 state_2605284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604945
  · exact cover_2605284
#print axioms cover_2604944

def state_2605384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2605384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605384 := by
  apply coveredState_split_literal (state := state_2605384) 0
    state_2605385 state_2605426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605385
  · exact cover_2605426
#print axioms cover_2605384

def state_2605485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2605485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605485 := by
  apply coveredState_split_literal (state := state_2605485) 0
    state_2605486 state_2605531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605486
  · exact cover_2605531
#print axioms cover_2605485

def state_2605383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2605383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605383 := by
  apply coveredState_split_literal (state := state_2605383) 4
    state_2605384 state_2605485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605384
  · exact cover_2605485
#print axioms cover_2605383

def state_2604943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2604943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604943 := by
  apply coveredState_split_literal (state := state_2604943) 3
    state_2604944 state_2605383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2604944
  · exact cover_2605383
#print axioms cover_2604943

def state_2603975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2603975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603975 := by
  apply coveredState_split_literal (state := state_2603975) 2
    state_2603976 state_2604943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603976
  · exact cover_2604943
#print axioms cover_2603975

def state_2605583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2605583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605583 := by
  apply coveredState_split_literal (state := state_2605583) 2
    state_2605584 state_2605609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605584
  · exact cover_2605609
#print axioms cover_2605583

def state_2605582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2605582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605582 := by
  apply coveredState_split_literal (state := state_2605582) 1
    state_2605583 state_2605660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605583
  · exact cover_2605660
#print axioms cover_2605582

def state_2605581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2605581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605581 := by
  apply coveredState_split_literal (state := state_2605581) 0
    state_2605582 state_2605667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605582
  · exact cover_2605667
#print axioms cover_2605581

def state_2605684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
theorem cover_2605684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605684 := by
  apply coveredState_split_literal (state := state_2605684) 1
    state_2605685 state_2605710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605685
  · exact cover_2605710
#print axioms cover_2605684

def state_2605683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
theorem cover_2605683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605683 := by
  apply coveredState_split_literal (state := state_2605683) 0
    state_2605684 state_2605749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605684
  · exact cover_2605749
#print axioms cover_2605683

def state_2605682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
theorem cover_2605682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605682 := by
  apply coveredState_split_literal (state := state_2605682) 4
    state_2605683 state_2605772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605683
  · exact cover_2605772
#print axioms cover_2605682

def state_2605681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_2605681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605681 := by
  apply coveredState_split_literal (state := state_2605681) 3
    state_2605682 state_2605803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605682
  · exact cover_2605803
#print axioms cover_2605681

def state_2605680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2605680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605680 := by
  apply coveredState_split_literal (state := state_2605680) 2
    state_2605681 state_2605828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605681
  · exact cover_2605828
#print axioms cover_2605680

def state_2605858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_2605858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605858 := by
  apply coveredState_split_literal (state := state_2605858) 3
    state_2605859 state_2605918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605859
  · exact cover_2605918
#print axioms cover_2605858

def state_2605857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2605857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605857 := by
  apply coveredState_split_literal (state := state_2605857) 2
    state_2605858 state_2605927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605858
  · exact cover_2605927
#print axioms cover_2605857

def state_2605679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2605679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605679 := by
  apply coveredState_split_literal (state := state_2605679) 1
    state_2605680 state_2605857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605680
  · exact cover_2605857
#print axioms cover_2605679

def state_2605964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2605964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605964 := by
  apply coveredState_split_literal (state := state_2605964) 1
    state_2605965 state_2606012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605965
  · exact cover_2606012
#print axioms cover_2605964

def state_2605678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2605678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605678 := by
  apply coveredState_split_literal (state := state_2605678) 0
    state_2605679 state_2605964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605679
  · exact cover_2605964
#print axioms cover_2605678

def state_2605580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2605580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605580 := by
  apply coveredState_split_literal (state := state_2605580) 4
    state_2605581 state_2605678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605581
  · exact cover_2605678
#print axioms cover_2605580

def state_2606035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2606035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606035 := by
  apply coveredState_split_literal (state := state_2606035) 1
    state_2606036 state_2606075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606036
  · exact cover_2606075
#print axioms cover_2606035

def state_2606034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2606034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606034 := by
  apply coveredState_split_literal (state := state_2606034) 0
    state_2606035 state_2606104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606035
  · exact cover_2606104
#print axioms cover_2606034

def state_2606137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2606137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606137 := by
  apply coveredState_split_literal (state := state_2606137) 0
    state_2606138 state_2606201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606138
  · exact cover_2606201
#print axioms cover_2606137

def state_2606033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2606033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606033 := by
  apply coveredState_split_literal (state := state_2606033) 4
    state_2606034 state_2606137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606034
  · exact cover_2606137
#print axioms cover_2606033

def state_2605579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2605579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605579 := by
  apply coveredState_split_literal (state := state_2605579) 3
    state_2605580 state_2606033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605580
  · exact cover_2606033
#print axioms cover_2605579

def state_2606235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_2606235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606235 := by
  apply coveredState_split_literal (state := state_2606235) 0
    state_2606236 state_2606269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606236
  · exact cover_2606269
#print axioms cover_2606235

def state_2606234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_2606234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606234 := by
  apply coveredState_split_literal (state := state_2606234) 4
    state_2606235 state_2606324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606235
  · exact cover_2606324
#print axioms cover_2606234

def state_2606233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_2606233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606233 := by
  apply coveredState_split_literal (state := state_2606233) 3
    state_2606234 state_2606341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606234
  · exact cover_2606341
#print axioms cover_2606233
end Mub6.Numerical.CircleFullD0.Forest
