import D0FullInterface
import D0ForestAssembly0358
import D0ForestChunk1395
import D0ForestChunk1396
import D0ForestChunk1397
import D0ForestChunk1398
import D0ForestChunk1399
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1635485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 9)))
theorem cover_1635485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635485 := by
  apply coveredState_split_literal (state := state_1635485) 4
    state_1635486 state_1635501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635486
  · exact cover_1635501
#print axioms cover_1635485

def state_1635601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 19)))
theorem cover_1635601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635601 := by
  apply coveredState_split_literal (state := state_1635601) 0
    state_1635602 state_1635665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635602
  · exact cover_1635665
#print axioms cover_1635601

def state_1635702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 19)))
theorem cover_1635702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635702 := by
  apply coveredState_split_literal (state := state_1635702) 0
    state_1635703 state_1635724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635703
  · exact cover_1635724
#print axioms cover_1635702

def state_1635600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 19)))
theorem cover_1635600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635600 := by
  apply coveredState_split_literal (state := state_1635600) 3
    state_1635601 state_1635702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635601
  · exact cover_1635702
#print axioms cover_1635600

def state_1635574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 19)))
theorem cover_1635574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635574 := by
  apply coveredState_split_literal (state := state_1635574) 1
    state_1635575 state_1635600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635575
  · exact cover_1635600
#print axioms cover_1635574

def state_1635562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 9)))
theorem cover_1635562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635562 := by
  apply coveredState_split_literal (state := state_1635562) 4
    state_1635563 state_1635574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635563
  · exact cover_1635574
#print axioms cover_1635562

def state_1635484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1635484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635484 := by
  apply coveredState_split_literal (state := state_1635484) 2
    state_1635485 state_1635562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635485
  · exact cover_1635562
#print axioms cover_1635484

def state_1635358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1635358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635358 := by
  apply coveredState_split_literal (state := state_1635358) 0
    state_1635359 state_1635484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635359
  · exact cover_1635484
#print axioms cover_1635358

def state_1635212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1635212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635212 := by
  apply coveredState_split_literal (state := state_1635212) 3
    state_1635213 state_1635358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635213
  · exact cover_1635358
#print axioms cover_1635212

def state_1635785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 49 else 18)))
theorem cover_1635785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635785 := by
  apply coveredState_split_literal (state := state_1635785) 4
    state_1635786 state_1635811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635786
  · exact cover_1635811
#print axioms cover_1635785

def state_1635784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 49 else 18)))
theorem cover_1635784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635784 := by
  apply coveredState_split_literal (state := state_1635784) 2
    state_1635785 state_1635862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635785
  · exact cover_1635862
#print axioms cover_1635784

def state_1635870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 49 else 18)))
theorem cover_1635870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635870 := by
  apply coveredState_split_literal (state := state_1635870) 4
    state_1635871 state_1635904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635871
  · exact cover_1635904
#print axioms cover_1635870

def state_1635869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 49 else 18)))
theorem cover_1635869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635869 := by
  apply coveredState_split_literal (state := state_1635869) 2
    state_1635870 state_1635943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635870
  · exact cover_1635943
#print axioms cover_1635869

def state_1635783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 49 else 18)))
theorem cover_1635783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635783 := by
  apply coveredState_split_literal (state := state_1635783) 1
    state_1635784 state_1635869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635784
  · exact cover_1635869
#print axioms cover_1635783

def state_1635771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 24 else 18)))
theorem cover_1635771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635771 := by
  apply coveredState_split_literal (state := state_1635771) 3
    state_1635772 state_1635783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635772
  · exact cover_1635783
#print axioms cover_1635771

def state_1635956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 49 else 19)))
theorem cover_1635956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635956 := by
  apply coveredState_split_literal (state := state_1635956) 1
    state_1635957 state_1636008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635957
  · exact cover_1636008
#print axioms cover_1635956

def state_1635950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 24 else 19)))
theorem cover_1635950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635950 := by
  apply coveredState_split_literal (state := state_1635950) 3
    state_1635951 state_1635956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635951
  · exact cover_1635956
#print axioms cover_1635950

def state_1635770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 24 else 9)))
theorem cover_1635770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635770 := by
  apply coveredState_split_literal (state := state_1635770) 4
    state_1635771 state_1635950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635771
  · exact cover_1635950
#print axioms cover_1635770

def state_1635769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
theorem cover_1635769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635769 := by
  apply coveredState_split_literal (state := state_1635769) 2
    state_1635770 state_1636033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635770
  · exact cover_1636033
#print axioms cover_1635769

def state_1636045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 24 else 9)))
theorem cover_1636045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636045 := by
  apply coveredState_split_literal (state := state_1636045) 4
    state_1636046 state_1636105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636046
  · exact cover_1636105
#print axioms cover_1636045

def state_1636044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
theorem cover_1636044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636044 := by
  apply coveredState_split_literal (state := state_1636044) 2
    state_1636045 state_1636122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636045
  · exact cover_1636122
#print axioms cover_1636044

def state_1635768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
theorem cover_1635768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635768 := by
  apply coveredState_split_literal (state := state_1635768) 0
    state_1635769 state_1636044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635769
  · exact cover_1636044
#print axioms cover_1635768

def state_1636150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 18)))
theorem cover_1636150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636150 := by
  apply coveredState_split_literal (state := state_1636150) 2
    state_1636151 state_1636204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636151
  · exact cover_1636204
#print axioms cover_1636150

def state_1636149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 18)))
theorem cover_1636149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636149 := by
  apply coveredState_split_literal (state := state_1636149) 3
    state_1636150 state_1636229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636150
  · exact cover_1636229
#print axioms cover_1636149

def state_1636313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 100 else 37)))
theorem cover_1636313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636313 := by
  apply coveredState_split_literal (state := state_1636313) 1
    state_1636314 state_1636367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636314
  · exact cover_1636367
#print axioms cover_1636313

def state_1636312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 37)))
theorem cover_1636312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636312 := by
  apply coveredState_split_literal (state := state_1636312) 3
    state_1636313 state_1636384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636313
  · exact cover_1636384
#print axioms cover_1636312

def state_1636262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 37)))
theorem cover_1636262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636262 := by
  apply coveredState_split_literal (state := state_1636262) 0
    state_1636263 state_1636312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636263
  · exact cover_1636312
#print axioms cover_1636262

def state_1636238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 18)))
theorem cover_1636238 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636238 := by
  apply coveredState_split_literal (state := state_1636238) 4
    state_1636239 state_1636262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636239
  · exact cover_1636262
#print axioms cover_1636238

def state_1636237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 18)))
theorem cover_1636237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636237 := by
  apply coveredState_split_literal (state := state_1636237) 2
    state_1636238 state_1636411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636238
  · exact cover_1636411
#print axioms cover_1636237

def state_1636236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 18)))
theorem cover_1636236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636236 := by
  apply coveredState_split_literal (state := state_1636236) 3
    state_1636237 state_1636458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636237
  · exact cover_1636458
#print axioms cover_1636236

def state_1636148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 18)))
theorem cover_1636148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636148 := by
  apply coveredState_split_literal (state := state_1636148) 1
    state_1636149 state_1636236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636149
  · exact cover_1636236
#print axioms cover_1636148

def state_1636529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 101) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 38)))
theorem cover_1636529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636529 := by
  apply coveredState_split_literal (state := state_1636529) 3
    state_1636530 state_1636587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636530
  · exact cover_1636587
#print axioms cover_1636529
end Mub6.Numerical.CircleFullD0.Forest
