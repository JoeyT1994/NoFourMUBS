import D0FullInterface
import D0ForestAssembly0526
import D0ForestAssembly0527
import D0ForestChunk2067
import D0ForestChunk2073
import D0ForestChunk2076
import D0ForestChunk2082
import D0ForestChunk2083
import D0ForestChunk2084
import D0ForestChunk2085
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2580201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 37)))
theorem cover_2580201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580201 := by
  apply coveredState_split_literal (state := state_2580201) 2
    state_2580202 state_2580297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580202
  · exact cover_2580297
#print axioms cover_2580201

def state_2580017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2580017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580017 := by
  apply coveredState_split_literal (state := state_2580017) 4
    state_2580018 state_2580201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580018
  · exact cover_2580201
#print axioms cover_2580017

def state_2578963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2578963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578963 := by
  apply coveredState_split_literal (state := state_2578963) 1
    state_2578964 state_2580017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578964
  · exact cover_2580017
#print axioms cover_2578963

def state_2578905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2578905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578905 := by
  apply coveredState_split_literal (state := state_2578905) 0
    state_2578906 state_2578963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578906
  · exact cover_2578963
#print axioms cover_2578905

def state_2580414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
theorem cover_2580414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580414 := by
  apply coveredState_split_literal (state := state_2580414) 4
    state_2580415 state_2580472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580415
  · exact cover_2580472
#print axioms cover_2580414

def state_2580360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
theorem cover_2580360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580360 := by
  apply coveredState_split_literal (state := state_2580360) 1
    state_2580361 state_2580414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580361
  · exact cover_2580414
#print axioms cover_2580360

def state_2580356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
theorem cover_2580356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580356 := by
  apply coveredState_split_literal (state := state_2580356) 0
    state_2580357 state_2580360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580357
  · exact cover_2580360
#print axioms cover_2580356

def state_2578904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 18)))
theorem cover_2578904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578904 := by
  apply coveredState_split_literal (state := state_2578904) 3
    state_2578905 state_2580356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578905
  · exact cover_2580356
#print axioms cover_2578904

def state_2578520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 18)))
theorem cover_2578520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578520 := by
  apply coveredState_split_literal (state := state_2578520) 2
    state_2578521 state_2578904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578521
  · exact cover_2578904
#print axioms cover_2578520

def state_2580590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 48 else 38)))
theorem cover_2580590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580590 := by
  apply coveredState_split_literal (state := state_2580590) 3
    state_2580591 state_2580604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580591
  · exact cover_2580604
#print axioms cover_2580590

def state_2580558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 38)))
theorem cover_2580558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580558 := by
  apply coveredState_split_literal (state := state_2580558) 2
    state_2580559 state_2580590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580559
  · exact cover_2580590
#print axioms cover_2580558

def state_2580557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 19)))
theorem cover_2580557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580557 := by
  apply coveredState_split_literal (state := state_2580557) 4
    state_2580558 state_2580667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580558
  · exact cover_2580667
#print axioms cover_2580557

def state_2580556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 19)))
theorem cover_2580556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580556 := by
  apply coveredState_split_literal (state := state_2580556) 1
    state_2580557 state_2580674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580557
  · exact cover_2580674
#print axioms cover_2580556

def state_2580546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 19)))
theorem cover_2580546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580546 := by
  apply coveredState_split_literal (state := state_2580546) 0
    state_2580547 state_2580556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580547
  · exact cover_2580556
#print axioms cover_2580546

def state_2580545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 19)))
theorem cover_2580545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580545 := by
  apply coveredState_split_literal (state := state_2580545) 3
    state_2580546 state_2580725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580546
  · exact cover_2580725
#print axioms cover_2580545

def state_2580517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 19)))
theorem cover_2580517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580517 := by
  apply coveredState_split_literal (state := state_2580517) 2
    state_2580518 state_2580545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580518
  · exact cover_2580545
#print axioms cover_2580517

def state_2578519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2578519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578519 := by
  apply coveredState_split_literal (state := state_2578519) 4
    state_2578520 state_2580517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578520
  · exact cover_2580517
#print axioms cover_2578519

def state_2578219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2578219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578219 := by
  apply coveredState_split_literal (state := state_2578219) 1
    state_2578220 state_2578519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578220
  · exact cover_2578519
#print axioms cover_2578219

def state_2578218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 9)))
theorem cover_2578218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578218 := by
  apply coveredState_split_literal (state := state_2578218) 3
    state_2578219 state_2580772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578219
  · exact cover_2580772
#print axioms cover_2578218

def state_2578162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
theorem cover_2578162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578162 := by
  apply coveredState_split_literal (state := state_2578162) 2
    state_2578163 state_2578218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578163
  · exact cover_2578218
#print axioms cover_2578162

def state_2578126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
theorem cover_2578126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578126 := by
  apply coveredState_split_literal (state := state_2578126) 0
    state_2578127 state_2578162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578127
  · exact cover_2578162
#print axioms cover_2578126

def state_2576736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2576736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576736 := by
  apply coveredState_split_literal (state := state_2576736) 4
    state_2576737 state_2578126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576737
  · exact cover_2578126
#print axioms cover_2576736

def state_2576704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2576704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576704 := by
  apply coveredState_split_literal (state := state_2576704) 1
    state_2576705 state_2576736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576705
  · exact cover_2576736
#print axioms cover_2576704

def state_2576703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_2576703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576703 := by
  apply coveredState_split_literal (state := state_2576703) 3
    state_2576704 state_2580823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576704
  · exact cover_2580823
#print axioms cover_2576703

def state_2576639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2576639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576639 := by
  apply coveredState_split_literal (state := state_2576639) 2
    state_2576640 state_2576703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576640
  · exact cover_2576703
#print axioms cover_2576639

def state_2580889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
theorem cover_2580889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580889 := by
  apply coveredState_split_literal (state := state_2580889) 4
    state_2580890 state_2580939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580890
  · exact cover_2580939
#print axioms cover_2580889

def state_2580885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
theorem cover_2580885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580885 := by
  apply coveredState_split_literal (state := state_2580885) 1
    state_2580886 state_2580889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580886
  · exact cover_2580889
#print axioms cover_2580885

def state_2580884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
theorem cover_2580884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580884 := by
  apply coveredState_split_literal (state := state_2580884) 0
    state_2580885 state_2580956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580885
  · exact cover_2580956
#print axioms cover_2580884

def state_2580883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 12 else 8)))
theorem cover_2580883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580883 := by
  apply coveredState_split_literal (state := state_2580883) 3
    state_2580884 state_2580959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580884
  · exact cover_2580959
#print axioms cover_2580883

def state_2581031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
theorem cover_2581031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581031 := by
  apply coveredState_split_literal (state := state_2581031) 4
    state_2581032 state_2581051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581032
  · exact cover_2581051
#print axioms cover_2581031

def state_2581013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
theorem cover_2581013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581013 := by
  apply coveredState_split_literal (state := state_2581013) 1
    state_2581014 state_2581031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581014
  · exact cover_2581031
#print axioms cover_2581013

def state_2581012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
theorem cover_2581012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581012 := by
  apply coveredState_split_literal (state := state_2581012) 0
    state_2581013 state_2581104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581013
  · exact cover_2581104
#print axioms cover_2581012
end Mub6.Numerical.CircleFullD0.Forest
