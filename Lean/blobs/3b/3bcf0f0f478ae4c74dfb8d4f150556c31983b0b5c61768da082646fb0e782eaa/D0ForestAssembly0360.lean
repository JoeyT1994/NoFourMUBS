import D0FullInterface
import D0ForestAssembly0359
import D0ForestChunk1399
import D0ForestChunk1400
import D0ForestChunk1401
import D0ForestChunk1402
import D0ForestChunk1403
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1636515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 38)))
theorem cover_1636515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636515 := by
  apply coveredState_split_literal (state := state_1636515) 1
    state_1636516 state_1636529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636516
  · exact cover_1636529
#print axioms cover_1636515

def state_1636473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 38)))
theorem cover_1636473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636473 := by
  apply coveredState_split_literal (state := state_1636473) 0
    state_1636474 state_1636515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636474
  · exact cover_1636515
#print axioms cover_1636473

def state_1636626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 39)))
theorem cover_1636626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636626 := by
  apply coveredState_split_literal (state := state_1636626) 1
    state_1636627 state_1636648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636627
  · exact cover_1636648
#print axioms cover_1636626

def state_1636610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 39)))
theorem cover_1636610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636610 := by
  apply coveredState_split_literal (state := state_1636610) 0
    state_1636611 state_1636626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636611
  · exact cover_1636626
#print axioms cover_1636610

def state_1636472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 19)))
theorem cover_1636472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636472 := by
  apply coveredState_split_literal (state := state_1636472) 4
    state_1636473 state_1636610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636473
  · exact cover_1636610
#print axioms cover_1636472

def state_1636702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 38)))
theorem cover_1636702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636702 := by
  apply coveredState_split_literal (state := state_1636702) 0
    state_1636703 state_1636714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636703
  · exact cover_1636714
#print axioms cover_1636702

def state_1636811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 101) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 39)))
theorem cover_1636811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636811 := by
  apply coveredState_split_literal (state := state_1636811) 3
    state_1636812 state_1636819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636812
  · exact cover_1636819
#print axioms cover_1636811

def state_1636777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 39)))
theorem cover_1636777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636777 := by
  apply coveredState_split_literal (state := state_1636777) 1
    state_1636778 state_1636811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636778
  · exact cover_1636811
#print axioms cover_1636777

def state_1636771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 39)))
theorem cover_1636771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636771 := by
  apply coveredState_split_literal (state := state_1636771) 0
    state_1636772 state_1636777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636772
  · exact cover_1636777
#print axioms cover_1636771

def state_1636701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 19)))
theorem cover_1636701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636701 := by
  apply coveredState_split_literal (state := state_1636701) 4
    state_1636702 state_1636771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636702
  · exact cover_1636771
#print axioms cover_1636701

def state_1636471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 19)))
theorem cover_1636471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636471 := by
  apply coveredState_split_literal (state := state_1636471) 2
    state_1636472 state_1636701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636472
  · exact cover_1636701
#print axioms cover_1636471

def state_1636880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 19)))
theorem cover_1636880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636880 := by
  apply coveredState_split_literal (state := state_1636880) 2
    state_1636881 state_1636924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636881
  · exact cover_1636924
#print axioms cover_1636880

def state_1636470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
theorem cover_1636470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636470 := by
  apply coveredState_split_literal (state := state_1636470) 3
    state_1636471 state_1636880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636471
  · exact cover_1636880
#print axioms cover_1636470

def state_1637002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 38)))
theorem cover_1637002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637002 := by
  apply coveredState_split_literal (state := state_1637002) 3
    state_1637003 state_1637044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637003
  · exact cover_1637044
#print axioms cover_1637002

def state_1636972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 38)))
theorem cover_1636972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636972 := by
  apply coveredState_split_literal (state := state_1636972) 0
    state_1636973 state_1637002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636973
  · exact cover_1637002
#print axioms cover_1636972

def state_1636971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 19)))
theorem cover_1636971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636971 := by
  apply coveredState_split_literal (state := state_1636971) 4
    state_1636972 state_1637103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636972
  · exact cover_1637103
#print axioms cover_1636971

def state_1637133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 38)))
theorem cover_1637133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637133 := by
  apply coveredState_split_literal (state := state_1637133) 3
    state_1637134 state_1637151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637134
  · exact cover_1637151
#print axioms cover_1637133

def state_1637127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 38)))
theorem cover_1637127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637127 := by
  apply coveredState_split_literal (state := state_1637127) 0
    state_1637128 state_1637133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637128
  · exact cover_1637133
#print axioms cover_1637127

def state_1637126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 19)))
theorem cover_1637126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637126 := by
  apply coveredState_split_literal (state := state_1637126) 4
    state_1637127 state_1637208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637127
  · exact cover_1637208
#print axioms cover_1637126

def state_1636970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 19)))
theorem cover_1636970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636970 := by
  apply coveredState_split_literal (state := state_1636970) 2
    state_1636971 state_1637126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636971
  · exact cover_1637126
#print axioms cover_1636970

def state_1637254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 51 else 19)))
theorem cover_1637254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637254 := by
  apply coveredState_split_literal (state := state_1637254) 4
    state_1637255 state_1637292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637255
  · exact cover_1637292
#print axioms cover_1637254

def state_1637253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 19)))
theorem cover_1637253 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637253 := by
  apply coveredState_split_literal (state := state_1637253) 2
    state_1637254 state_1637323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637254
  · exact cover_1637323
#print axioms cover_1637253

def state_1636969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
theorem cover_1636969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636969 := by
  apply coveredState_split_literal (state := state_1636969) 3
    state_1636970 state_1637253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636970
  · exact cover_1637253
#print axioms cover_1636969

def state_1636469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
theorem cover_1636469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636469 := by
  apply coveredState_split_literal (state := state_1636469) 1
    state_1636470 state_1636969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636470
  · exact cover_1636969
#print axioms cover_1636469

def state_1636147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 9)))
theorem cover_1636147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636147 := by
  apply coveredState_split_literal (state := state_1636147) 4
    state_1636148 state_1636469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636148
  · exact cover_1636469
#print axioms cover_1636147

def state_1637383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 19)))
theorem cover_1637383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637383 := by
  apply coveredState_split_literal (state := state_1637383) 3
    state_1637384 state_1637429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637384
  · exact cover_1637429
#print axioms cover_1637383

def state_1637382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 19)))
theorem cover_1637382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637382 := by
  apply coveredState_split_literal (state := state_1637382) 1
    state_1637383 state_1637464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637383
  · exact cover_1637464
#print axioms cover_1637382

def state_1637364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 9)))
theorem cover_1637364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637364 := by
  apply coveredState_split_literal (state := state_1637364) 4
    state_1637365 state_1637382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637365
  · exact cover_1637382
#print axioms cover_1637364

def state_1636146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1636146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636146 := by
  apply coveredState_split_literal (state := state_1636146) 2
    state_1636147 state_1637364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636147
  · exact cover_1637364
#print axioms cover_1636146

def state_1637499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 18)))
theorem cover_1637499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637499 := by
  apply coveredState_split_literal (state := state_1637499) 1
    state_1637500 state_1637543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637500
  · exact cover_1637543
#print axioms cover_1637499

def state_1637600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 38)))
theorem cover_1637600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637600 := by
  apply coveredState_split_literal (state := state_1637600) 1
    state_1637601 state_1637624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637601
  · exact cover_1637624
#print axioms cover_1637600

def state_1637599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 19)))
theorem cover_1637599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637599 := by
  apply coveredState_split_literal (state := state_1637599) 4
    state_1637600 state_1637669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637600
  · exact cover_1637669
#print axioms cover_1637599
end Mub6.Numerical.CircleFullD0.Forest
