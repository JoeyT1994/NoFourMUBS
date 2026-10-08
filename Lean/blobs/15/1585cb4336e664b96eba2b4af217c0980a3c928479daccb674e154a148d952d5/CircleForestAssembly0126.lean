import CircleFullInterface
import CircleForestAssembly0125
import CircleForestChunk0497
import CircleForestChunk0498
import CircleForestChunk0499
import CircleForestChunk0500
import CircleForestChunk0501
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_280617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_280617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280617 := by
  apply coveredState_split_literal (state := state_280617) 1
    state_280618 state_280689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280618
  · exact cover_280689
#print axioms cover_280617

def state_280521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_280521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280521 := by
  apply coveredState_split_literal (state := state_280521) 0
    state_280522 state_280617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280522
  · exact cover_280617
#print axioms cover_280521

def state_280301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_280301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280301 := by
  apply coveredState_split_literal (state := state_280301) 4
    state_280302 state_280521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280302
  · exact cover_280521
#print axioms cover_280301

def state_280061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_280061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280061 := by
  apply coveredState_split_literal (state := state_280061) 3
    state_280062 state_280301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280062
  · exact cover_280301
#print axioms cover_280061

def state_280952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_280952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280952 := by
  apply coveredState_split_literal (state := state_280952) 4
    state_280953 state_280986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280953
  · exact cover_280986
#print axioms cover_280952

def state_280936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_280936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280936 := by
  apply coveredState_split_literal (state := state_280936) 3
    state_280937 state_280952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280937
  · exact cover_280952
#print axioms cover_280936

def state_280060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_280060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280060 := by
  apply coveredState_split_literal (state := state_280060) 2
    state_280061 state_280936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280061
  · exact cover_280936
#print axioms cover_280060

def state_281024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_281024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281024 := by
  apply coveredState_split_literal (state := state_281024) 3
    state_281025 state_281030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281025
  · exact cover_281030
#print axioms cover_281024

def state_281109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_281109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281109 := by
  apply coveredState_split_literal (state := state_281109) 0
    state_281110 state_281159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281110
  · exact cover_281159
#print axioms cover_281109

def state_281108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_281108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281108 := by
  apply coveredState_split_literal (state := state_281108) 2
    state_281109 state_281178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281109
  · exact cover_281178
#print axioms cover_281108

def state_281107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_281107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281107 := by
  apply coveredState_split_literal (state := state_281107) 1
    state_281108 state_281207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281108
  · exact cover_281207
#print axioms cover_281107

def state_281101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_281101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281101 := by
  apply coveredState_split_literal (state := state_281101) 4
    state_281102 state_281107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281102
  · exact cover_281107
#print axioms cover_281101

def state_281093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_281093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281093 := by
  apply coveredState_split_literal (state := state_281093) 3
    state_281094 state_281101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281094
  · exact cover_281101
#print axioms cover_281093

def state_281023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_281023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281023 := by
  apply coveredState_split_literal (state := state_281023) 0
    state_281024 state_281093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281024
  · exact cover_281093
#print axioms cover_281023

def state_281019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_281019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281019 := by
  apply coveredState_split_literal (state := state_281019) 4
    state_281020 state_281023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281020
  · exact cover_281023
#print axioms cover_281019

def state_281218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_281218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281218 := by
  apply coveredState_split_literal (state := state_281218) 2
    state_281219 state_281268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281219
  · exact cover_281268
#print axioms cover_281218

def state_281217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_281217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281217 := by
  apply coveredState_split_literal (state := state_281217) 1
    state_281218 state_281313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281218
  · exact cover_281313
#print axioms cover_281217

def state_281215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_281215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281215 := by
  apply coveredState_split_literal (state := state_281215) 4
    state_281216 state_281217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281216
  · exact cover_281217
#print axioms cover_281215

def state_281517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 47)))
theorem cover_281517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281517 := by
  apply coveredState_split_literal (state := state_281517) 4
    state_281518 state_281551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281518
  · exact cover_281551
#print axioms cover_281517

def state_281516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 47)))
theorem cover_281516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281516 := by
  apply coveredState_split_literal (state := state_281516) 2
    state_281517 state_281594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281517
  · exact cover_281594
#print axioms cover_281516

def state_281632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 47)))
theorem cover_281632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281632 := by
  apply coveredState_split_literal (state := state_281632) 4
    state_281633 state_281650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281633
  · exact cover_281650
#print axioms cover_281632

def state_281631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 47)))
theorem cover_281631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281631 := by
  apply coveredState_split_literal (state := state_281631) 2
    state_281632 state_281707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281632
  · exact cover_281707
#print axioms cover_281631

def state_281515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 47)))
theorem cover_281515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281515 := by
  apply coveredState_split_literal (state := state_281515) 3
    state_281516 state_281631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281516
  · exact cover_281631
#print axioms cover_281515

def state_281752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 47)))
theorem cover_281752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281752 := by
  apply coveredState_split_literal (state := state_281752) 2
    state_281753 state_281794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281753
  · exact cover_281794
#print axioms cover_281752

def state_281738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 47)))
theorem cover_281738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281738 := by
  apply coveredState_split_literal (state := state_281738) 3
    state_281739 state_281752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281739
  · exact cover_281752
#print axioms cover_281738

def state_281514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 47)))
theorem cover_281514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281514 := by
  apply coveredState_split_literal (state := state_281514) 1
    state_281515 state_281738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281515
  · exact cover_281738
#print axioms cover_281514

def state_281458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 47)))
theorem cover_281458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281458 := by
  apply coveredState_split_literal (state := state_281458) 0
    state_281459 state_281514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281459
  · exact cover_281514
#print axioms cover_281458

def state_281394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 23)))
theorem cover_281394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281394 := by
  apply coveredState_split_literal (state := state_281394) 4
    state_281395 state_281458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281395
  · exact cover_281458
#print axioms cover_281394

def state_281352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 23)))
theorem cover_281352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281352 := by
  apply coveredState_split_literal (state := state_281352) 2
    state_281353 state_281394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281353
  · exact cover_281394
#print axioms cover_281352

def state_281351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
theorem cover_281351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281351 := by
  apply coveredState_split_literal (state := state_281351) 3
    state_281352 state_281819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281352
  · exact cover_281819
#print axioms cover_281351

def state_281350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
theorem cover_281350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281350 := by
  apply coveredState_split_literal (state := state_281350) 1
    state_281351 state_281868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281351
  · exact cover_281868
#print axioms cover_281350

def state_281328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_281328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281328 := by
  apply coveredState_split_literal (state := state_281328) 4
    state_281329 state_281350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281329
  · exact cover_281350
#print axioms cover_281328
end Mub6.Numerical.CircleFullPrototype.Forest
