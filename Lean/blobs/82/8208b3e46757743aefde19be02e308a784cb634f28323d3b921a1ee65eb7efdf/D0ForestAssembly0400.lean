import D0FullInterface
import D0ForestAssembly0398
import D0ForestAssembly0399
import D0ForestChunk1553
import D0ForestChunk1558
import D0ForestChunk1559
import D0ForestChunk1560
import D0ForestChunk1561
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2246686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 24)))
theorem cover_2246686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246686 := by
  apply coveredState_split_literal (state := state_2246686) 4
    state_2246687 state_2247376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246687
  · exact cover_2247376
#print axioms cover_2246686

def state_2246426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_2246426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246426 := by
  apply coveredState_split_literal (state := state_2246426) 3
    state_2246427 state_2246686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246427
  · exact cover_2246686
#print axioms cover_2246426

def state_2246354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_2246354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246354 := by
  apply coveredState_split_literal (state := state_2246354) 2
    state_2246355 state_2246426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246355
  · exact cover_2246426
#print axioms cover_2246354

def state_2247615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 24)))
theorem cover_2247615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247615 := by
  apply coveredState_split_literal (state := state_2247615) 4
    state_2247616 state_2247679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247616
  · exact cover_2247679
#print axioms cover_2247615

def state_2247587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_2247587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247587 := by
  apply coveredState_split_literal (state := state_2247587) 3
    state_2247588 state_2247615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247588
  · exact cover_2247615
#print axioms cover_2247587

def state_2247555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_2247555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247555 := by
  apply coveredState_split_literal (state := state_2247555) 2
    state_2247556 state_2247587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247556
  · exact cover_2247587
#print axioms cover_2247555

def state_2246353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_2246353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246353 := by
  apply coveredState_split_literal (state := state_2246353) 0
    state_2246354 state_2247555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246354
  · exact cover_2247555
#print axioms cover_2246353

def state_2246352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 12)))
theorem cover_2246352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246352 := by
  apply coveredState_split_literal (state := state_2246352) 4
    state_2246353 state_2247686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246353
  · exact cover_2247686
#print axioms cover_2246352

def state_2246282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_2246282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246282 := by
  apply coveredState_split_literal (state := state_2246282) 3
    state_2246283 state_2246352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246283
  · exact cover_2246352
#print axioms cover_2246282

def state_2246258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_2246258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246258 := by
  apply coveredState_split_literal (state := state_2246258) 1
    state_2246259 state_2246282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246259
  · exact cover_2246282
#print axioms cover_2246258

def state_2246234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_2246234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246234 := by
  apply coveredState_split_literal (state := state_2246234) 2
    state_2246235 state_2246258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246235
  · exact cover_2246258
#print axioms cover_2246234

def state_2245920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_2245920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245920 := by
  apply coveredState_split_literal (state := state_2245920) 0
    state_2245921 state_2246234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245921
  · exact cover_2246234
#print axioms cover_2245920

def state_2245919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_2245919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245919 := by
  apply coveredState_split_literal (state := state_2245919) 4
    state_2245920 state_2247697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245920
  · exact cover_2247697
#print axioms cover_2245919

def state_2245839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_2245839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245839 := by
  apply coveredState_split_literal (state := state_2245839) 3
    state_2245840 state_2245919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245840
  · exact cover_2245919
#print axioms cover_2245839

def state_2247824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
theorem cover_2247824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247824 := by
  apply coveredState_split_literal (state := state_2247824) 2
    state_2247825 state_2247884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247825
  · exact cover_2247884
#print axioms cover_2247824

def state_2247823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
theorem cover_2247823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247823 := by
  apply coveredState_split_literal (state := state_2247823) 1
    state_2247824 state_2247923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247824
  · exact cover_2247923
#print axioms cover_2247823

def state_2247980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 39 else (if j.val < 4 then 94 else 49)))
theorem cover_2247980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247980 := by
  apply coveredState_split_literal (state := state_2247980) 4
    state_2247981 state_2248016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247981
  · exact cover_2248016
#print axioms cover_2247980

def state_2247979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 49)))
theorem cover_2247979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247979 := by
  apply coveredState_split_literal (state := state_2247979) 3
    state_2247980 state_2248045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247980
  · exact cover_2248045
#print axioms cover_2247979

def state_2247953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 49)))
theorem cover_2247953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247953 := by
  apply coveredState_split_literal (state := state_2247953) 0
    state_2247954 state_2247979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247954
  · exact cover_2247979
#print axioms cover_2247953

def state_2247927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 49)))
theorem cover_2247927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247927 := by
  apply coveredState_split_literal (state := state_2247927) 2
    state_2247928 state_2247953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247928
  · exact cover_2247953
#print axioms cover_2247927

def state_2247926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 49)))
theorem cover_2247926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247926 := by
  apply coveredState_split_literal (state := state_2247926) 1
    state_2247927 state_2248088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247927
  · exact cover_2248088
#print axioms cover_2247926

def state_2247822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 24)))
theorem cover_2247822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247822 := by
  apply coveredState_split_literal (state := state_2247822) 4
    state_2247823 state_2247926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247823
  · exact cover_2247926
#print axioms cover_2247822

def state_2247784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_2247784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247784 := by
  apply coveredState_split_literal (state := state_2247784) 3
    state_2247785 state_2247822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247785
  · exact cover_2247822
#print axioms cover_2247784

def state_2247782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_2247782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247782 := by
  apply coveredState_split_literal (state := state_2247782) 2
    state_2247783 state_2247784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247783
  · exact cover_2247784
#print axioms cover_2247782

def state_2248106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
theorem cover_2248106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248106 := by
  apply coveredState_split_literal (state := state_2248106) 2
    state_2248107 state_2248148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248107
  · exact cover_2248148
#print axioms cover_2248106

def state_2248105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
theorem cover_2248105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248105 := by
  apply coveredState_split_literal (state := state_2248105) 0
    state_2248106 state_2248193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248106
  · exact cover_2248193
#print axioms cover_2248105

def state_2248104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
theorem cover_2248104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248104 := by
  apply coveredState_split_literal (state := state_2248104) 1
    state_2248105 state_2248196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248105
  · exact cover_2248196
#print axioms cover_2248104

def state_2248103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 24)))
theorem cover_2248103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248103 := by
  apply coveredState_split_literal (state := state_2248103) 4
    state_2248104 state_2248197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248104
  · exact cover_2248197
#print axioms cover_2248103

def state_2248101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_2248101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248101 := by
  apply coveredState_split_literal (state := state_2248101) 3
    state_2248102 state_2248103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248102
  · exact cover_2248103
#print axioms cover_2248101

def state_2248095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_2248095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248095 := by
  apply coveredState_split_literal (state := state_2248095) 2
    state_2248096 state_2248101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248096
  · exact cover_2248101
#print axioms cover_2248095

def state_2247781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_2247781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247781 := by
  apply coveredState_split_literal (state := state_2247781) 0
    state_2247782 state_2248095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247782
  · exact cover_2248095
#print axioms cover_2247781

def state_2247780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_2247780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247780 := by
  apply coveredState_split_literal (state := state_2247780) 1
    state_2247781 state_2248254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2247781
  · exact cover_2248254
#print axioms cover_2247780
end Mub6.Numerical.CircleFullD0.Forest
