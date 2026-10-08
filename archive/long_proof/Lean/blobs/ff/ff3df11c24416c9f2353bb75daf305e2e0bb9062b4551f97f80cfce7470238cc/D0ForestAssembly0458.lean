import D0FullInterface
import D0ForestAssembly0457
import D0ForestChunk1795
import D0ForestChunk1796
import D0ForestChunk1797
import D0ForestChunk1798
import D0ForestChunk1799
import D0ForestChunk1800
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2304139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
theorem cover_2304139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304139 := by
  apply coveredState_split_literal (state := state_2304139) 0
    state_2304140 state_2304215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304140
  · exact cover_2304215
#print axioms cover_2304139

def state_2304138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 46)))
theorem cover_2304138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304138 := by
  apply coveredState_split_literal (state := state_2304138) 4
    state_2304139 state_2304220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304139
  · exact cover_2304220
#print axioms cover_2304138

def state_2304246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 92)))
theorem cover_2304246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304246 := by
  apply coveredState_split_literal (state := state_2304246) 3
    state_2304247 state_2304308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304247
  · exact cover_2304308
#print axioms cover_2304246

def state_2304245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 92)))
theorem cover_2304245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304245 := by
  apply coveredState_split_literal (state := state_2304245) 1
    state_2304246 state_2304347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304246
  · exact cover_2304347
#print axioms cover_2304245

def state_2304244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 92)))
theorem cover_2304244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304244 := by
  apply coveredState_split_literal (state := state_2304244) 0
    state_2304245 state_2304388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304245
  · exact cover_2304388
#print axioms cover_2304244

def state_2304243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 46)))
theorem cover_2304243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304243 := by
  apply coveredState_split_literal (state := state_2304243) 4
    state_2304244 state_2304423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304244
  · exact cover_2304423
#print axioms cover_2304243

def state_2304137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 55 else 46)))
theorem cover_2304137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304137 := by
  apply coveredState_split_literal (state := state_2304137) 2
    state_2304138 state_2304243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304138
  · exact cover_2304243
#print axioms cover_2304137

def state_2304025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2304025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304025 := by
  apply coveredState_split_literal (state := state_2304025) 3
    state_2304026 state_2304137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304026
  · exact cover_2304137
#print axioms cover_2304025

def state_2304024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2304024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304024 := by
  apply coveredState_split_literal (state := state_2304024) 1
    state_2304025 state_2304464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304025
  · exact cover_2304464
#print axioms cover_2304024

def state_2304023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2304023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304023 := by
  apply coveredState_split_literal (state := state_2304023) 0
    state_2304024 state_2304489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304024
  · exact cover_2304489
#print axioms cover_2304023

def state_2304022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 23)))
theorem cover_2304022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304022 := by
  apply coveredState_split_literal (state := state_2304022) 4
    state_2304023 state_2304508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304023
  · exact cover_2304508
#print axioms cover_2304022

def state_2303992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 23)))
theorem cover_2303992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303992 := by
  apply coveredState_split_literal (state := state_2303992) 2
    state_2303993 state_2304022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303993
  · exact cover_2304022
#print axioms cover_2303992

def state_2303990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2303990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303990 := by
  apply coveredState_split_literal (state := state_2303990) 3
    state_2303991 state_2303992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303991
  · exact cover_2303992
#print axioms cover_2303990

def state_2303989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2303989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303989 := by
  apply coveredState_split_literal (state := state_2303989) 1
    state_2303990 state_2304541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303990
  · exact cover_2304541
#print axioms cover_2303989

def state_2303373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2303373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303373 := by
  apply coveredState_split_literal (state := state_2303373) 4
    state_2303374 state_2303989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303374
  · exact cover_2303989
#print axioms cover_2303373

def state_2303372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_2303372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303372 := by
  apply coveredState_split_literal (state := state_2303372) 0
    state_2303373 state_2304542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303373
  · exact cover_2304542
#print axioms cover_2303372

def state_2304593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
theorem cover_2304593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304593 := by
  apply coveredState_split_literal (state := state_2304593) 1
    state_2304594 state_2304613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304594
  · exact cover_2304613
#print axioms cover_2304593

def state_2304756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 54 else 91)))
theorem cover_2304756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304756 := by
  apply coveredState_split_literal (state := state_2304756) 3
    state_2304757 state_2304764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304757
  · exact cover_2304764
#print axioms cover_2304756

def state_2304708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
theorem cover_2304708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304708 := by
  apply coveredState_split_literal (state := state_2304708) 2
    state_2304709 state_2304756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304709
  · exact cover_2304756
#print axioms cover_2304708

def state_2304696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
theorem cover_2304696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304696 := by
  apply coveredState_split_literal (state := state_2304696) 1
    state_2304697 state_2304708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304697
  · exact cover_2304708
#print axioms cover_2304696

def state_2304695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
theorem cover_2304695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304695 := by
  apply coveredState_split_literal (state := state_2304695) 0
    state_2304696 state_2304823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304696
  · exact cover_2304823
#print axioms cover_2304695

def state_2304675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 45)))
theorem cover_2304675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304675 := by
  apply coveredState_split_literal (state := state_2304675) 4
    state_2304676 state_2304695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304676
  · exact cover_2304695
#print axioms cover_2304675

def state_2304898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 111 else 90)))
theorem cover_2304898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304898 := by
  apply coveredState_split_literal (state := state_2304898) 2
    state_2304899 state_2304934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304899
  · exact cover_2304934
#print axioms cover_2304898

def state_2304840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
theorem cover_2304840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304840 := by
  apply coveredState_split_literal (state := state_2304840) 3
    state_2304841 state_2304898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304841
  · exact cover_2304898
#print axioms cover_2304840

def state_2304830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
theorem cover_2304830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304830 := by
  apply coveredState_split_literal (state := state_2304830) 1
    state_2304831 state_2304840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304831
  · exact cover_2304840
#print axioms cover_2304830

def state_2304829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
theorem cover_2304829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304829 := by
  apply coveredState_split_literal (state := state_2304829) 0
    state_2304830 state_2304969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304830
  · exact cover_2304969
#print axioms cover_2304829

def state_2304984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
theorem cover_2304984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304984 := by
  apply coveredState_split_literal (state := state_2304984) 3
    state_2304985 state_2305018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2304985
  · exact cover_2305018
#print axioms cover_2304984

def state_2305065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 110 else 91)))
theorem cover_2305065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305065 := by
  apply coveredState_split_literal (state := state_2305065) 4
    state_2305066 state_2305113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305066
  · exact cover_2305113
#print axioms cover_2305065

def state_2305164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 110 else 91)))
theorem cover_2305164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305164 := by
  apply coveredState_split_literal (state := state_2305164) 4
    state_2305165 state_2305224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305165
  · exact cover_2305224
#print axioms cover_2305164

def state_2305064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 110 else 91)))
theorem cover_2305064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305064 := by
  apply coveredState_split_literal (state := state_2305064) 2
    state_2305065 state_2305164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305065
  · exact cover_2305164
#print axioms cover_2305064

def state_2305261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 111 else 91)))
theorem cover_2305261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305261 := by
  apply coveredState_split_literal (state := state_2305261) 2
    state_2305262 state_2305309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305262
  · exact cover_2305309
#print axioms cover_2305261

def state_2305063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
theorem cover_2305063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305063 := by
  apply coveredState_split_literal (state := state_2305063) 3
    state_2305064 state_2305261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2305064
  · exact cover_2305261
#print axioms cover_2305063
end Mub6.Numerical.CircleFullD0.Forest
