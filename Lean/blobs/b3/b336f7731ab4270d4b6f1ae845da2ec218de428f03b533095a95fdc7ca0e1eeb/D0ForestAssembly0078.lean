import D0FullInterface
import D0ForestAssembly0074
import D0ForestAssembly0076
import D0ForestAssembly0077
import D0ForestChunk0296
import D0ForestChunk0311
import D0ForestChunk0312
import D0ForestChunk0313
import D0ForestChunk0314
import D0ForestChunk0315
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1012302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 47)))
theorem cover_1012302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012302 := by
  apply coveredState_split_literal (state := state_1012302) 1
    state_1012303 state_1012312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012303
  · exact cover_1012312
#print axioms cover_1012302

def state_1012301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 47)))
theorem cover_1012301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012301 := by
  apply coveredState_split_literal (state := state_1012301) 3
    state_1012302 state_1012377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012302
  · exact cover_1012377
#print axioms cover_1012301

def state_1012025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 23)))
theorem cover_1012025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012025 := by
  apply coveredState_split_literal (state := state_1012025) 4
    state_1012026 state_1012301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012026
  · exact cover_1012301
#print axioms cover_1012025

def state_1012024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 23)))
theorem cover_1012024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012024 := by
  apply coveredState_split_literal (state := state_1012024) 0
    state_1012025 state_1012402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012025
  · exact cover_1012402
#print axioms cover_1012024

def state_1012023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 23)))
theorem cover_1012023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012023 := by
  apply coveredState_split_literal (state := state_1012023) 2
    state_1012024 state_1012465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012024
  · exact cover_1012465
#print axioms cover_1012023

def state_1012536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 47)))
theorem cover_1012536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012536 := by
  apply coveredState_split_literal (state := state_1012536) 2
    state_1012537 state_1012576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012537
  · exact cover_1012576
#print axioms cover_1012536

def state_1012535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 47)))
theorem cover_1012535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012535 := by
  apply coveredState_split_literal (state := state_1012535) 1
    state_1012536 state_1012611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012536
  · exact cover_1012611
#print axioms cover_1012535

def state_1012534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 47)))
theorem cover_1012534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012534 := by
  apply coveredState_split_literal (state := state_1012534) 3
    state_1012535 state_1012622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012535
  · exact cover_1012622
#print axioms cover_1012534

def state_1012512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 23)))
theorem cover_1012512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012512 := by
  apply coveredState_split_literal (state := state_1012512) 4
    state_1012513 state_1012534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012513
  · exact cover_1012534
#print axioms cover_1012512

def state_1012511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 23)))
theorem cover_1012511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012511 := by
  apply coveredState_split_literal (state := state_1012511) 0
    state_1012512 state_1012623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012512
  · exact cover_1012623
#print axioms cover_1012511

def state_1012680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 23)))
theorem cover_1012680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012680 := by
  apply coveredState_split_literal (state := state_1012680) 0
    state_1012681 state_1012724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012681
  · exact cover_1012724
#print axioms cover_1012680

def state_1012510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 23)))
theorem cover_1012510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012510 := by
  apply coveredState_split_literal (state := state_1012510) 2
    state_1012511 state_1012680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012511
  · exact cover_1012680
#print axioms cover_1012510

def state_1012022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 23)))
theorem cover_1012022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012022 := by
  apply coveredState_split_literal (state := state_1012022) 1
    state_1012023 state_1012510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012023
  · exact cover_1012510
#print axioms cover_1012022

def state_1012776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 23)))
theorem cover_1012776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012776 := by
  apply coveredState_split_literal (state := state_1012776) 0
    state_1012777 state_1012814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012777
  · exact cover_1012814
#print axioms cover_1012776

def state_1012758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 23)))
theorem cover_1012758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012758 := by
  apply coveredState_split_literal (state := state_1012758) 2
    state_1012759 state_1012776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012759
  · exact cover_1012776
#print axioms cover_1012758

def state_1012845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 23)))
theorem cover_1012845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012845 := by
  apply coveredState_split_literal (state := state_1012845) 2
    state_1012846 state_1012865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012846
  · exact cover_1012865
#print axioms cover_1012845

def state_1012757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 23)))
theorem cover_1012757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012757 := by
  apply coveredState_split_literal (state := state_1012757) 1
    state_1012758 state_1012845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012758
  · exact cover_1012845
#print axioms cover_1012757

def state_1012021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
theorem cover_1012021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012021 := by
  apply coveredState_split_literal (state := state_1012021) 3
    state_1012022 state_1012757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012022
  · exact cover_1012757
#print axioms cover_1012021

def state_1010869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1010869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010869 := by
  apply coveredState_split_literal (state := state_1010869) 4
    state_1010870 state_1012021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010870
  · exact cover_1012021
#print axioms cover_1010869

def state_1010663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_1010663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010663 := by
  apply coveredState_split_literal (state := state_1010663) 0
    state_1010664 state_1010869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010664
  · exact cover_1010869
#print axioms cover_1010663

def state_1010265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1010265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010265 := by
  apply coveredState_split_literal (state := state_1010265) 2
    state_1010266 state_1010663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010266
  · exact cover_1010663
#print axioms cover_1010265

def state_1012910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1012910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012910 := by
  apply coveredState_split_literal (state := state_1012910) 2
    state_1012911 state_1012924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012911
  · exact cover_1012924
#print axioms cover_1012910

def state_1010264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1010264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010264 := by
  apply coveredState_split_literal (state := state_1010264) 1
    state_1010265 state_1012910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010265
  · exact cover_1012910
#print axioms cover_1010264

def state_1010126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_1010126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010126 := by
  apply coveredState_split_literal (state := state_1010126) 4
    state_1010127 state_1010264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010127
  · exact cover_1010264
#print axioms cover_1010126

def state_1008624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1008624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008624 := by
  apply coveredState_split_literal (state := state_1008624) 3
    state_1008625 state_1010126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008625
  · exact cover_1010126
#print axioms cover_1008624

def state_1008556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1008556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008556 := by
  apply coveredState_split_literal (state := state_1008556) 0
    state_1008557 state_1008624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008557
  · exact cover_1008624
#print axioms cover_1008556

def state_1008534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_1008534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008534 := by
  apply coveredState_split_literal (state := state_1008534) 4
    state_1008535 state_1008556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008535
  · exact cover_1008556
#print axioms cover_1008534

def state_1012998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_1012998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012998 := by
  apply coveredState_split_literal (state := state_1012998) 0
    state_1012999 state_1013012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012999
  · exact cover_1013012
#print axioms cover_1012998

def state_1012997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 10)))
theorem cover_1012997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012997 := by
  apply coveredState_split_literal (state := state_1012997) 3
    state_1012998 state_1013063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012998
  · exact cover_1013063
#print axioms cover_1012997

def state_1012995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
theorem cover_1012995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012995 := by
  apply coveredState_split_literal (state := state_1012995) 2
    state_1012996 state_1012997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012996
  · exact cover_1012997
#print axioms cover_1012995

def state_1012994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
theorem cover_1012994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012994 := by
  apply coveredState_split_literal (state := state_1012994) 1
    state_1012995 state_1013076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012995
  · exact cover_1013076
#print axioms cover_1012994

def state_1013136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_1013136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013136 := by
  apply coveredState_split_literal (state := state_1013136) 4
    state_1013137 state_1013182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013137
  · exact cover_1013182
#print axioms cover_1013136
end Mub6.Numerical.CircleFullD0.Forest
