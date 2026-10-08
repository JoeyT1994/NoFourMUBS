import D0FullInterface
import D0ForestAssembly0365
import D0ForestChunk1424
import D0ForestChunk1425
import D0ForestChunk1426
import D0ForestChunk1427
import D0ForestChunk1428
import D0ForestChunk1429
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1642638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
theorem cover_1642638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642638 := by
  apply coveredState_split_literal (state := state_1642638) 4
    state_1642639 state_1642658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642639
  · exact cover_1642658
#print axioms cover_1642638

def state_1642630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
theorem cover_1642630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642630 := by
  apply coveredState_split_literal (state := state_1642630) 0
    state_1642631 state_1642638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642631
  · exact cover_1642638
#print axioms cover_1642630

def state_1642602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 40)))
theorem cover_1642602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642602 := by
  apply coveredState_split_literal (state := state_1642602) 3
    state_1642603 state_1642630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642603
  · exact cover_1642630
#print axioms cover_1642602

def state_1642751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
theorem cover_1642751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642751 := by
  apply coveredState_split_literal (state := state_1642751) 0
    state_1642752 state_1642755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642752
  · exact cover_1642755
#print axioms cover_1642751

def state_1642727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 40)))
theorem cover_1642727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642727 := by
  apply coveredState_split_literal (state := state_1642727) 3
    state_1642728 state_1642751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642728
  · exact cover_1642751
#print axioms cover_1642727

def state_1642601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 40)))
theorem cover_1642601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642601 := by
  apply coveredState_split_literal (state := state_1642601) 1
    state_1642602 state_1642727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642602
  · exact cover_1642727
#print axioms cover_1642601

def state_1642816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 41)))
theorem cover_1642816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642816 := by
  apply coveredState_split_literal (state := state_1642816) 1
    state_1642817 state_1642856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642817
  · exact cover_1642856
#print axioms cover_1642816

def state_1642600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 20)))
theorem cover_1642600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642600 := by
  apply coveredState_split_literal (state := state_1642600) 4
    state_1642601 state_1642816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642601
  · exact cover_1642816
#print axioms cover_1642600

def state_1642104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 20)))
theorem cover_1642104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642104 := by
  apply coveredState_split_literal (state := state_1642104) 2
    state_1642105 state_1642600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642105
  · exact cover_1642600
#print axioms cover_1642104

def state_1642904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 40)))
theorem cover_1642904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642904 := by
  apply coveredState_split_literal (state := state_1642904) 0
    state_1642905 state_1642966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642905
  · exact cover_1642966
#print axioms cover_1642904

def state_1642884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 40)))
theorem cover_1642884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642884 := by
  apply coveredState_split_literal (state := state_1642884) 3
    state_1642885 state_1642904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642885
  · exact cover_1642904
#print axioms cover_1642884

def state_1642883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 40)))
theorem cover_1642883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642883 := by
  apply coveredState_split_literal (state := state_1642883) 1
    state_1642884 state_1642971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642884
  · exact cover_1642971
#print axioms cover_1642883

def state_1642882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 20)))
theorem cover_1642882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642882 := by
  apply coveredState_split_literal (state := state_1642882) 4
    state_1642883 state_1642992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642883
  · exact cover_1642992
#print axioms cover_1642882

def state_1643012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 102 else 40)))
theorem cover_1643012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643012 := by
  apply coveredState_split_literal (state := state_1643012) 0
    state_1643013 state_1643076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643013
  · exact cover_1643076
#print axioms cover_1643012

def state_1643093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 80)))
theorem cover_1643093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643093 := by
  apply coveredState_split_literal (state := state_1643093) 2
    state_1643094 state_1643135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643094
  · exact cover_1643135
#print axioms cover_1643093

def state_1643183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 118 else (if j.val < 4 then 103 else 81)))
theorem cover_1643183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643183 := by
  apply coveredState_split_literal (state := state_1643183) 1
    state_1643184 state_1643221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643184
  · exact cover_1643221
#print axioms cover_1643183

def state_1643280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 119 else (if j.val < 4 then 103 else 81)))
theorem cover_1643280 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643280 := by
  apply coveredState_split_literal (state := state_1643280) 1
    state_1643281 state_1643332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643281
  · exact cover_1643332
#print axioms cover_1643280

def state_1643182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 81)))
theorem cover_1643182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643182 := by
  apply coveredState_split_literal (state := state_1643182) 2
    state_1643183 state_1643280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643183
  · exact cover_1643280
#print axioms cover_1643182

def state_1643092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
theorem cover_1643092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643092 := by
  apply coveredState_split_literal (state := state_1643092) 4
    state_1643093 state_1643182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643093
  · exact cover_1643182
#print axioms cover_1643092

def state_1643379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
theorem cover_1643379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643379 := by
  apply coveredState_split_literal (state := state_1643379) 4
    state_1643380 state_1643425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643380
  · exact cover_1643425
#print axioms cover_1643379

def state_1643091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
theorem cover_1643091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643091 := by
  apply coveredState_split_literal (state := state_1643091) 0
    state_1643092 state_1643379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643092
  · exact cover_1643379
#print axioms cover_1643091

def state_1643011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 40)))
theorem cover_1643011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643011 := by
  apply coveredState_split_literal (state := state_1643011) 3
    state_1643012 state_1643091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643012
  · exact cover_1643091
#print axioms cover_1643011

def state_1643474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 80)))
theorem cover_1643474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643474 := by
  apply coveredState_split_literal (state := state_1643474) 2
    state_1643475 state_1643510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643475
  · exact cover_1643510
#print axioms cover_1643474

def state_1643473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
theorem cover_1643473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643473 := by
  apply coveredState_split_literal (state := state_1643473) 4
    state_1643474 state_1643545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643474
  · exact cover_1643545
#print axioms cover_1643473

def state_1643472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
theorem cover_1643472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643472 := by
  apply coveredState_split_literal (state := state_1643472) 0
    state_1643473 state_1643602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643473
  · exact cover_1643602
#print axioms cover_1643472

def state_1643458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 40)))
theorem cover_1643458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643458 := by
  apply coveredState_split_literal (state := state_1643458) 3
    state_1643459 state_1643472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643459
  · exact cover_1643472
#print axioms cover_1643458

def state_1643010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 40)))
theorem cover_1643010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643010 := by
  apply coveredState_split_literal (state := state_1643010) 1
    state_1643011 state_1643458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643011
  · exact cover_1643458
#print axioms cover_1643010

def state_1643620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 118 else (if j.val < 4 then 103 else 41)))
theorem cover_1643620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643620 := by
  apply coveredState_split_literal (state := state_1643620) 4
    state_1643621 state_1643680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643621
  · exact cover_1643680
#print axioms cover_1643620

def state_1643619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 41)))
theorem cover_1643619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643619 := by
  apply coveredState_split_literal (state := state_1643619) 2
    state_1643620 state_1643687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643620
  · exact cover_1643687
#print axioms cover_1643619

def state_1643618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 41)))
theorem cover_1643618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643618 := by
  apply coveredState_split_literal (state := state_1643618) 0
    state_1643619 state_1643734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643619
  · exact cover_1643734
#print axioms cover_1643618

def state_1643612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 41)))
theorem cover_1643612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643612 := by
  apply coveredState_split_literal (state := state_1643612) 3
    state_1643613 state_1643618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643613
  · exact cover_1643618
#print axioms cover_1643612

def state_1643611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 41)))
theorem cover_1643611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643611 := by
  apply coveredState_split_literal (state := state_1643611) 1
    state_1643612 state_1643745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643612
  · exact cover_1643745
#print axioms cover_1643611
end Mub6.Numerical.CircleFullD0.Forest
