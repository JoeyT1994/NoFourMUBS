import D0FullInterface
import D0ForestAssembly0525
import D0ForestChunk2068
import D0ForestChunk2070
import D0ForestChunk2073
import D0ForestChunk2074
import D0ForestChunk2075
import D0ForestChunk2076
import D0ForestChunk2077
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2577980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 17)))
theorem cover_2577980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577980 := by
  apply coveredState_split_literal (state := state_2577980) 3
    state_2577981 state_2578024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577981
  · exact cover_2578024
#print axioms cover_2577980

def state_2577438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 17)))
theorem cover_2577438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577438 := by
  apply coveredState_split_literal (state := state_2577438) 2
    state_2577439 state_2577980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577439
  · exact cover_2577980
#print axioms cover_2577438

def state_2577380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
theorem cover_2577380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577380 := by
  apply coveredState_split_literal (state := state_2577380) 4
    state_2577381 state_2577438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577381
  · exact cover_2577438
#print axioms cover_2577380

def state_2577316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
theorem cover_2577316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577316 := by
  apply coveredState_split_literal (state := state_2577316) 1
    state_2577317 state_2577380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577317
  · exact cover_2577380
#print axioms cover_2577316

def state_2577315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 8)))
theorem cover_2577315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577315 := by
  apply coveredState_split_literal (state := state_2577315) 3
    state_2577316 state_2578063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2577316
  · exact cover_2578063
#print axioms cover_2577315

def state_2576787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
theorem cover_2576787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576787 := by
  apply coveredState_split_literal (state := state_2576787) 2
    state_2576788 state_2577315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576788
  · exact cover_2577315
#print axioms cover_2576787

def state_2576737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
theorem cover_2576737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576737 := by
  apply coveredState_split_literal (state := state_2576737) 0
    state_2576738 state_2576787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576738
  · exact cover_2576787
#print axioms cover_2576737

def state_2578356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 48 else 37)))
theorem cover_2578356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578356 := by
  apply coveredState_split_literal (state := state_2578356) 3
    state_2578357 state_2578408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578357
  · exact cover_2578408
#print axioms cover_2578356

def state_2578324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 37)))
theorem cover_2578324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578324 := by
  apply coveredState_split_literal (state := state_2578324) 2
    state_2578325 state_2578356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578325
  · exact cover_2578356
#print axioms cover_2578324

def state_2578288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2578288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578288 := by
  apply coveredState_split_literal (state := state_2578288) 4
    state_2578289 state_2578324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578289
  · exact cover_2578324
#print axioms cover_2578288

def state_2578284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2578284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578284 := by
  apply coveredState_split_literal (state := state_2578284) 1
    state_2578285 state_2578288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578285
  · exact cover_2578288
#print axioms cover_2578284

def state_2578258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2578258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578258 := by
  apply coveredState_split_literal (state := state_2578258) 0
    state_2578259 state_2578284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578259
  · exact cover_2578284
#print axioms cover_2578258

def state_2578257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 18)))
theorem cover_2578257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578257 := by
  apply coveredState_split_literal (state := state_2578257) 3
    state_2578258 state_2578421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578258
  · exact cover_2578421
#print axioms cover_2578257

def state_2578221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 18)))
theorem cover_2578221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578221 := by
  apply coveredState_split_literal (state := state_2578221) 2
    state_2578222 state_2578257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578222
  · exact cover_2578257
#print axioms cover_2578221

def state_2578442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 19)))
theorem cover_2578442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578442 := by
  apply coveredState_split_literal (state := state_2578442) 2
    state_2578443 state_2578458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578443
  · exact cover_2578458
#print axioms cover_2578442

def state_2578220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2578220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578220 := by
  apply coveredState_split_literal (state := state_2578220) 4
    state_2578221 state_2578442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578221
  · exact cover_2578442
#print axioms cover_2578220

def state_2578534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 36)))
theorem cover_2578534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578534 := by
  apply coveredState_split_literal (state := state_2578534) 3
    state_2578535 state_2578598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578535
  · exact cover_2578598
#print axioms cover_2578534

def state_2578533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 18)))
theorem cover_2578533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578533 := by
  apply coveredState_split_literal (state := state_2578533) 4
    state_2578534 state_2578643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578534
  · exact cover_2578643
#print axioms cover_2578533

def state_2578731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 39) else (if j.val < 3 then 93 else (if j.val < 4 then 97 else 36)))
theorem cover_2578731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578731 := by
  apply coveredState_split_literal (state := state_2578731) 1
    state_2578732 state_2578789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578732
  · exact cover_2578789
#print axioms cover_2578731

def state_2578725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 93 else (if j.val < 4 then 97 else 36)))
theorem cover_2578725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578725 := by
  apply coveredState_split_literal (state := state_2578725) 0
    state_2578726 state_2578731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578726
  · exact cover_2578731
#print axioms cover_2578725

def state_2578713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 97 else 36)))
theorem cover_2578713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578713 := by
  apply coveredState_split_literal (state := state_2578713) 2
    state_2578714 state_2578725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578714
  · exact cover_2578725
#print axioms cover_2578713

def state_2578679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 36)))
theorem cover_2578679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578679 := by
  apply coveredState_split_literal (state := state_2578679) 3
    state_2578680 state_2578713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578680
  · exact cover_2578713
#print axioms cover_2578679

def state_2578678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 18)))
theorem cover_2578678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578678 := by
  apply coveredState_split_literal (state := state_2578678) 4
    state_2578679 state_2578806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578679
  · exact cover_2578806
#print axioms cover_2578678

def state_2578532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 18)))
theorem cover_2578532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578532 := by
  apply coveredState_split_literal (state := state_2578532) 1
    state_2578533 state_2578678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578533
  · exact cover_2578678
#print axioms cover_2578532

def state_2578522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 18)))
theorem cover_2578522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578522 := by
  apply coveredState_split_literal (state := state_2578522) 0
    state_2578523 state_2578532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578523
  · exact cover_2578532
#print axioms cover_2578522

def state_2578827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 18)))
theorem cover_2578827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578827 := by
  apply coveredState_split_literal (state := state_2578827) 1
    state_2578828 state_2578847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578828
  · exact cover_2578847
#print axioms cover_2578827

def state_2578823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 18)))
theorem cover_2578823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578823 := by
  apply coveredState_split_literal (state := state_2578823) 0
    state_2578824 state_2578827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578824
  · exact cover_2578827
#print axioms cover_2578823

def state_2578521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 18)))
theorem cover_2578521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578521 := by
  apply coveredState_split_literal (state := state_2578521) 3
    state_2578522 state_2578823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578522
  · exact cover_2578823
#print axioms cover_2578521

def state_2579007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 36)))
theorem cover_2579007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579007 := by
  apply coveredState_split_literal (state := state_2579007) 1
    state_2579008 state_2579039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579008
  · exact cover_2579039
#print axioms cover_2579007

def state_2578967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 36)))
theorem cover_2578967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578967 := by
  apply coveredState_split_literal (state := state_2578967) 0
    state_2578968 state_2579007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578968
  · exact cover_2579007
#print axioms cover_2578967

def state_2579124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
theorem cover_2579124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579124 := by
  apply coveredState_split_literal (state := state_2579124) 4
    state_2579125 state_2579138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579125
  · exact cover_2579138
#print axioms cover_2579124

def state_2579106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
theorem cover_2579106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579106 := by
  apply coveredState_split_literal (state := state_2579106) 1
    state_2579107 state_2579124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579107
  · exact cover_2579124
#print axioms cover_2579106
end Mub6.Numerical.CircleFullD0.Forest
