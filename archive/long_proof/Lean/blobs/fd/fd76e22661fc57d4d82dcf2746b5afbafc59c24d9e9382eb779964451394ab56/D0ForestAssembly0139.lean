import D0FullInterface
import D0ForestAssembly0138
import D0ForestChunk0539
import D0ForestChunk0540
import D0ForestChunk0541
import D0ForestChunk0542
import D0ForestChunk0543
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1318345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 101)))
theorem cover_1318345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318345 := by
  apply coveredState_split_literal (state := state_1318345) 2
    state_1318346 state_1318395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318346
  · exact cover_1318395
#print axioms cover_1318345

def state_1318339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 101)))
theorem cover_1318339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318339 := by
  apply coveredState_split_literal (state := state_1318339) 3
    state_1318340 state_1318345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318340
  · exact cover_1318345
#print axioms cover_1318339

def state_1318333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1318333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318333 := by
  apply coveredState_split_literal (state := state_1318333) 4
    state_1318334 state_1318339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318334
  · exact cover_1318339
#print axioms cover_1318333

def state_1318167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1318167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318167 := by
  apply coveredState_split_literal (state := state_1318167) 0
    state_1318168 state_1318333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318168
  · exact cover_1318333
#print axioms cover_1318167

def state_1318166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1318166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318166 := by
  apply coveredState_split_literal (state := state_1318166) 1
    state_1318167 state_1318474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318167
  · exact cover_1318474
#print axioms cover_1318166

def state_1318136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
theorem cover_1318136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318136 := by
  apply coveredState_split_literal (state := state_1318136) 2
    state_1318137 state_1318166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318137
  · exact cover_1318166
#print axioms cover_1318136

def state_1318534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 102)))
theorem cover_1318534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318534 := by
  apply coveredState_split_literal (state := state_1318534) 2
    state_1318535 state_1318550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318535
  · exact cover_1318550
#print axioms cover_1318534

def state_1318533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 51)))
theorem cover_1318533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318533 := by
  apply coveredState_split_literal (state := state_1318533) 4
    state_1318534 state_1318601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318534
  · exact cover_1318601
#print axioms cover_1318533

def state_1318517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1318517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318517 := by
  apply coveredState_split_literal (state := state_1318517) 3
    state_1318518 state_1318533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318518
  · exact cover_1318533
#print axioms cover_1318517

def state_1318697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 204)))
theorem cover_1318697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318697 := by
  apply coveredState_split_literal (state := state_1318697) 3
    state_1318698 state_1318745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318698
  · exact cover_1318745
#print axioms cover_1318697

def state_1318696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1318696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318696 := by
  apply coveredState_split_literal (state := state_1318696) 4
    state_1318697 state_1318792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318697
  · exact cover_1318792
#print axioms cover_1318696

def state_1318825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1318825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318825 := by
  apply coveredState_split_literal (state := state_1318825) 4
    state_1318826 state_1318869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318826
  · exact cover_1318869
#print axioms cover_1318825

def state_1318695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1318695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318695 := by
  apply coveredState_split_literal (state := state_1318695) 0
    state_1318696 state_1318825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318696
  · exact cover_1318825
#print axioms cover_1318695

def state_1318667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1318667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318667 := by
  apply coveredState_split_literal (state := state_1318667) 1
    state_1318668 state_1318695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318668
  · exact cover_1318695
#print axioms cover_1318667

def state_1318625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 102)))
theorem cover_1318625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318625 := by
  apply coveredState_split_literal (state := state_1318625) 2
    state_1318626 state_1318667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318626
  · exact cover_1318667
#print axioms cover_1318625

def state_1318624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 51)))
theorem cover_1318624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318624 := by
  apply coveredState_split_literal (state := state_1318624) 4
    state_1318625 state_1318898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318625
  · exact cover_1318898
#print axioms cover_1318624

def state_1318602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1318602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318602 := by
  apply coveredState_split_literal (state := state_1318602) 3
    state_1318603 state_1318624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318603
  · exact cover_1318624
#print axioms cover_1318602

def state_1318516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1318516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318516 := by
  apply coveredState_split_literal (state := state_1318516) 0
    state_1318517 state_1318602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318517
  · exact cover_1318602
#print axioms cover_1318516

def state_1319050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 205)))
theorem cover_1319050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319050 := by
  apply coveredState_split_literal (state := state_1319050) 3
    state_1319051 state_1319084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319051
  · exact cover_1319084
#print axioms cover_1319050

def state_1319002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1319002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319002 := by
  apply coveredState_split_literal (state := state_1319002) 4
    state_1319003 state_1319050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319003
  · exact cover_1319050
#print axioms cover_1319002

def state_1319147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 205)))
theorem cover_1319147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319147 := by
  apply coveredState_split_literal (state := state_1319147) 3
    state_1319148 state_1319173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319148
  · exact cover_1319173
#print axioms cover_1319147

def state_1319117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1319117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319117 := by
  apply coveredState_split_literal (state := state_1319117) 4
    state_1319118 state_1319147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319118
  · exact cover_1319147
#print axioms cover_1319117

def state_1319001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1319001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319001 := by
  apply coveredState_split_literal (state := state_1319001) 0
    state_1319002 state_1319117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319002
  · exact cover_1319117
#print axioms cover_1319001

def state_1319000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1319000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319000 := by
  apply coveredState_split_literal (state := state_1319000) 1
    state_1319001 state_1319230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1319001
  · exact cover_1319230
#print axioms cover_1319000

def state_1318988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 102)))
theorem cover_1318988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318988 := by
  apply coveredState_split_literal (state := state_1318988) 2
    state_1318989 state_1319000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318989
  · exact cover_1319000
#print axioms cover_1318988

def state_1318987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 51)))
theorem cover_1318987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318987 := by
  apply coveredState_split_literal (state := state_1318987) 4
    state_1318988 state_1319243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318988
  · exact cover_1319243
#print axioms cover_1318987

def state_1318957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1318957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318957 := by
  apply coveredState_split_literal (state := state_1318957) 3
    state_1318958 state_1318987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318958
  · exact cover_1318987
#print axioms cover_1318957

def state_1318917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1318917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318917 := by
  apply coveredState_split_literal (state := state_1318917) 0
    state_1318918 state_1318957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318918
  · exact cover_1318957
#print axioms cover_1318917

def state_1318515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1318515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318515 := by
  apply coveredState_split_literal (state := state_1318515) 1
    state_1318516 state_1318917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318516
  · exact cover_1318917
#print axioms cover_1318515

def state_1318513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 51)))
theorem cover_1318513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318513 := by
  apply coveredState_split_literal (state := state_1318513) 2
    state_1318514 state_1318515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318514
  · exact cover_1318515
#print axioms cover_1318513

def state_1318135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1318135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318135 := by
  apply coveredState_split_literal (state := state_1318135) 4
    state_1318136 state_1318513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318136
  · exact cover_1318513
#print axioms cover_1318135

def state_1318103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1318103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318103 := by
  apply coveredState_split_literal (state := state_1318103) 3
    state_1318104 state_1318135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1318104
  · exact cover_1318135
#print axioms cover_1318103
end Mub6.Numerical.CircleFullD0.Forest
