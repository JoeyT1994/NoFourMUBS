import D0FullInterface
import D0ForestAssembly0534
import D0ForestAssembly0536
import D0ForestChunk2101
import D0ForestChunk2107
import D0ForestChunk2118
import D0ForestChunk2119
import D0ForestChunk2120
import D0ForestChunk2121
import D0ForestChunk2122
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2586344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_2586344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586344 := by
  apply coveredState_split_literal (state := state_2586344) 4
    state_2586345 state_2586360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586345
  · exact cover_2586360
#print axioms cover_2586344

def state_2584946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_2584946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584946 := by
  apply coveredState_split_literal (state := state_2584946) 1
    state_2584947 state_2586344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584947
  · exact cover_2586344
#print axioms cover_2584946

def state_2584892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
theorem cover_2584892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584892 := by
  apply coveredState_split_literal (state := state_2584892) 3
    state_2584893 state_2584946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584893
  · exact cover_2584946
#print axioms cover_2584892

def state_2584891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_2584891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584891 := by
  apply coveredState_split_literal (state := state_2584891) 2
    state_2584892 state_2589051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584892
  · exact cover_2589051
#print axioms cover_2584891

def state_2589119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 19)))
theorem cover_2589119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589119 := by
  apply coveredState_split_literal (state := state_2589119) 1
    state_2589120 state_2589169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589120
  · exact cover_2589169
#print axioms cover_2589119

def state_2589115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 9)))
theorem cover_2589115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589115 := by
  apply coveredState_split_literal (state := state_2589115) 4
    state_2589116 state_2589119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589116
  · exact cover_2589119
#print axioms cover_2589115

def state_2589114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 9)))
theorem cover_2589114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589114 := by
  apply coveredState_split_literal (state := state_2589114) 0
    state_2589115 state_2589186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589115
  · exact cover_2589186
#print axioms cover_2589114

def state_2589243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 39)))
theorem cover_2589243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589243 := by
  apply coveredState_split_literal (state := state_2589243) 1
    state_2589244 state_2589263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589244
  · exact cover_2589263
#print axioms cover_2589243

def state_2589225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
theorem cover_2589225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589225 := by
  apply coveredState_split_literal (state := state_2589225) 4
    state_2589226 state_2589243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589226
  · exact cover_2589243
#print axioms cover_2589225

def state_2589224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
theorem cover_2589224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589224 := by
  apply coveredState_split_literal (state := state_2589224) 0
    state_2589225 state_2589316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589225
  · exact cover_2589316
#print axioms cover_2589224

def state_2589223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 19)))
theorem cover_2589223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589223 := by
  apply coveredState_split_literal (state := state_2589223) 3
    state_2589224 state_2589319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589224
  · exact cover_2589319
#print axioms cover_2589223

def state_2589348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 39)))
theorem cover_2589348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589348 := by
  apply coveredState_split_literal (state := state_2589348) 1
    state_2589349 state_2589374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589349
  · exact cover_2589374
#print axioms cover_2589348

def state_2589340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 19)))
theorem cover_2589340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589340 := by
  apply coveredState_split_literal (state := state_2589340) 4
    state_2589341 state_2589348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589341
  · exact cover_2589348
#print axioms cover_2589340

def state_2589339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 19)))
theorem cover_2589339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589339 := by
  apply coveredState_split_literal (state := state_2589339) 0
    state_2589340 state_2589413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589340
  · exact cover_2589413
#print axioms cover_2589339

def state_2589338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 19)))
theorem cover_2589338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589338 := by
  apply coveredState_split_literal (state := state_2589338) 3
    state_2589339 state_2589418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589339
  · exact cover_2589418
#print axioms cover_2589338

def state_2589222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
theorem cover_2589222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589222 := by
  apply coveredState_split_literal (state := state_2589222) 2
    state_2589223 state_2589338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589223
  · exact cover_2589338
#print axioms cover_2589222

def state_2589204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
theorem cover_2589204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589204 := by
  apply coveredState_split_literal (state := state_2589204) 1
    state_2589205 state_2589222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589205
  · exact cover_2589222
#print axioms cover_2589204

def state_2589190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2589190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589190 := by
  apply coveredState_split_literal (state := state_2589190) 4
    state_2589191 state_2589204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589191
  · exact cover_2589204
#print axioms cover_2589190

def state_2589189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2589189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589189 := by
  apply coveredState_split_literal (state := state_2589189) 0
    state_2589190 state_2589441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589190
  · exact cover_2589441
#print axioms cover_2589189

def state_2589113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 9)))
theorem cover_2589113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589113 := by
  apply coveredState_split_literal (state := state_2589113) 3
    state_2589114 state_2589189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589114
  · exact cover_2589189
#print axioms cover_2589113

def state_2589112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
theorem cover_2589112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589112 := by
  apply coveredState_split_literal (state := state_2589112) 2
    state_2589113 state_2589442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589113
  · exact cover_2589442
#print axioms cover_2589112

def state_2589106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_2589106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589106 := by
  apply coveredState_split_literal (state := state_2589106) 4
    state_2589107 state_2589112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589107
  · exact cover_2589112
#print axioms cover_2589106

def state_2589650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 47 else 38)))
theorem cover_2589650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589650 := by
  apply coveredState_split_literal (state := state_2589650) 3
    state_2589651 state_2589674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589651
  · exact cover_2589674
#print axioms cover_2589650

def state_2589649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 38)))
theorem cover_2589649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589649 := by
  apply coveredState_split_literal (state := state_2589649) 2
    state_2589650 state_2589735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589650
  · exact cover_2589735
#print axioms cover_2589649

def state_2589605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 38)))
theorem cover_2589605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589605 := by
  apply coveredState_split_literal (state := state_2589605) 1
    state_2589606 state_2589649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589606
  · exact cover_2589649
#print axioms cover_2589605

def state_2589810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 39)))
theorem cover_2589810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589810 := by
  apply coveredState_split_literal (state := state_2589810) 0
    state_2589811 state_2589864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589811
  · exact cover_2589864
#print axioms cover_2589810

def state_2589809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 47 else 39)))
theorem cover_2589809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589809 := by
  apply coveredState_split_literal (state := state_2589809) 3
    state_2589810 state_2589881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589810
  · exact cover_2589881
#print axioms cover_2589809

def state_2589775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 36) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 39)))
theorem cover_2589775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589775 := by
  apply coveredState_split_literal (state := state_2589775) 2
    state_2589776 state_2589809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589776
  · exact cover_2589809
#print axioms cover_2589775

def state_2589952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 47 else 39)))
theorem cover_2589952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589952 := by
  apply coveredState_split_literal (state := state_2589952) 3
    state_2589953 state_2589980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589953
  · exact cover_2589980
#print axioms cover_2589952

def state_2589900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 39)))
theorem cover_2589900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589900 := by
  apply coveredState_split_literal (state := state_2589900) 2
    state_2589901 state_2589952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589901
  · exact cover_2589952
#print axioms cover_2589900

def state_2589774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 39)))
theorem cover_2589774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589774 := by
  apply coveredState_split_literal (state := state_2589774) 1
    state_2589775 state_2589900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589775
  · exact cover_2589900
#print axioms cover_2589774

def state_2589604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2589604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589604 := by
  apply coveredState_split_literal (state := state_2589604) 4
    state_2589605 state_2589774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2589605
  · exact cover_2589774
#print axioms cover_2589604
end Mub6.Numerical.CircleFullD0.Forest
