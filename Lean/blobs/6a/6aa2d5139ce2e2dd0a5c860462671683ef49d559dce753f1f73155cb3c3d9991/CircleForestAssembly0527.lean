import CircleFullInterface
import CircleForestAssembly0526
import CircleForestChunk2077
import CircleForestChunk2078
import CircleForestChunk2079
import CircleForestChunk2080
import CircleForestChunk2081
import CircleForestChunk2082
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2579084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
theorem cover_2579084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579084 := by
  apply coveredState_split_literal (state := state_2579084) 0
    state_2579085 state_2579106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579085
  · exact cover_2579106
#print axioms cover_2579084

def state_2578966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 48 else 36)))
theorem cover_2578966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578966 := by
  apply coveredState_split_literal (state := state_2578966) 3
    state_2578967 state_2579084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578967
  · exact cover_2579084
#print axioms cover_2578966

def state_2578965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 36)))
theorem cover_2578965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578965 := by
  apply coveredState_split_literal (state := state_2578965) 2
    state_2578966 state_2579193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578966
  · exact cover_2579193
#print axioms cover_2578965

def state_2579264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 76) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 74)))
theorem cover_2579264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579264 := by
  apply coveredState_split_literal (state := state_2579264) 3
    state_2579265 state_2579320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579265
  · exact cover_2579320
#print axioms cover_2579264

def state_2579263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 76) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 37)))
theorem cover_2579263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579263 := by
  apply coveredState_split_literal (state := state_2579263) 4
    state_2579264 state_2579349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579264
  · exact cover_2579349
#print axioms cover_2579263

def state_2579435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 189 else (if j.val < 4 then 193 else 74)))
theorem cover_2579435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579435 := by
  apply coveredState_split_literal (state := state_2579435) 0
    state_2579436 state_2579479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579436
  · exact cover_2579479
#print axioms cover_2579435

def state_2579423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 94 else (if j.val < 4 then 193 else 74)))
theorem cover_2579423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579423 := by
  apply coveredState_split_literal (state := state_2579423) 2
    state_2579424 state_2579435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579424
  · exact cover_2579435
#print axioms cover_2579423

def state_2579379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 74)))
theorem cover_2579379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579379 := by
  apply coveredState_split_literal (state := state_2579379) 3
    state_2579380 state_2579423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579380
  · exact cover_2579423
#print axioms cover_2579379

def state_2579378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 37)))
theorem cover_2579378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579378 := by
  apply coveredState_split_literal (state := state_2579378) 4
    state_2579379 state_2579542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579379
  · exact cover_2579542
#print axioms cover_2579378

def state_2579262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 37)))
theorem cover_2579262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579262 := by
  apply coveredState_split_literal (state := state_2579262) 1
    state_2579263 state_2579378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579263
  · exact cover_2579378
#print axioms cover_2579262

def state_2579236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 37)))
theorem cover_2579236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579236 := by
  apply coveredState_split_literal (state := state_2579236) 0
    state_2579237 state_2579262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579237
  · exact cover_2579262
#print axioms cover_2579236

def state_2579235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 48 else 37)))
theorem cover_2579235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579235 := by
  apply coveredState_split_literal (state := state_2579235) 3
    state_2579236 state_2579573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579236
  · exact cover_2579573
#print axioms cover_2579235

def state_2579638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 37)))
theorem cover_2579638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579638 := by
  apply coveredState_split_literal (state := state_2579638) 1
    state_2579639 state_2579680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579639
  · exact cover_2579680
#print axioms cover_2579638

def state_2579715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 37)))
theorem cover_2579715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579715 := by
  apply coveredState_split_literal (state := state_2579715) 1
    state_2579716 state_2579763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579716
  · exact cover_2579763
#print axioms cover_2579715

def state_2579637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 37)))
theorem cover_2579637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579637 := by
  apply coveredState_split_literal (state := state_2579637) 0
    state_2579638 state_2579715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579638
  · exact cover_2579715
#print axioms cover_2579637

def state_2579872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 190 else (if j.val < 4 then 97 else 74)))
theorem cover_2579872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579872 := by
  apply coveredState_split_literal (state := state_2579872) 3
    state_2579873 state_2579932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579873
  · exact cover_2579932
#print axioms cover_2579872

def state_2579871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 74)))
theorem cover_2579871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579871 := by
  apply coveredState_split_literal (state := state_2579871) 2
    state_2579872 state_2579939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579872
  · exact cover_2579939
#print axioms cover_2579871

def state_2579952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 75)))
theorem cover_2579952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579952 := by
  apply coveredState_split_literal (state := state_2579952) 2
    state_2579953 state_2579978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579953
  · exact cover_2579978
#print axioms cover_2579952

def state_2579870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 37)))
theorem cover_2579870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579870 := by
  apply coveredState_split_literal (state := state_2579870) 4
    state_2579871 state_2579952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579871
  · exact cover_2579952
#print axioms cover_2579870

def state_2579832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 37)))
theorem cover_2579832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579832 := by
  apply coveredState_split_literal (state := state_2579832) 1
    state_2579833 state_2579870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579833
  · exact cover_2579870
#print axioms cover_2579832

def state_2579824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 37)))
theorem cover_2579824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579824 := by
  apply coveredState_split_literal (state := state_2579824) 0
    state_2579825 state_2579832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579825
  · exact cover_2579832
#print axioms cover_2579824

def state_2579636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 48 else 37)))
theorem cover_2579636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579636 := by
  apply coveredState_split_literal (state := state_2579636) 3
    state_2579637 state_2579824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579637
  · exact cover_2579824
#print axioms cover_2579636

def state_2579234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 37)))
theorem cover_2579234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579234 := by
  apply coveredState_split_literal (state := state_2579234) 2
    state_2579235 state_2579636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2579235
  · exact cover_2579636
#print axioms cover_2579234

def state_2578964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2578964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578964 := by
  apply coveredState_split_literal (state := state_2578964) 4
    state_2578965 state_2579234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2578965
  · exact cover_2579234
#print axioms cover_2578964

def state_2580102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 78) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 73)))
theorem cover_2580102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580102 := by
  apply coveredState_split_literal (state := state_2580102) 2
    state_2580103 state_2580132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580103
  · exact cover_2580132
#print axioms cover_2580102

def state_2580078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 78) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
theorem cover_2580078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580078 := by
  apply coveredState_split_literal (state := state_2580078) 4
    state_2580079 state_2580102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580079
  · exact cover_2580102
#print axioms cover_2580078

def state_2580077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
theorem cover_2580077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580077 := by
  apply coveredState_split_literal (state := state_2580077) 1
    state_2580078 state_2580171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580078
  · exact cover_2580171
#print axioms cover_2580077

def state_2580059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
theorem cover_2580059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580059 := by
  apply coveredState_split_literal (state := state_2580059) 0
    state_2580060 state_2580077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580060
  · exact cover_2580077
#print axioms cover_2580059

def state_2580019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 48 else 36)))
theorem cover_2580019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580019 := by
  apply coveredState_split_literal (state := state_2580019) 3
    state_2580020 state_2580059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580020
  · exact cover_2580059
#print axioms cover_2580019

def state_2580018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 36)))
theorem cover_2580018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580018 := by
  apply coveredState_split_literal (state := state_2580018) 2
    state_2580019 state_2580172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580019
  · exact cover_2580172
#print axioms cover_2580018

def state_2580232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 37)))
theorem cover_2580232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580232 := by
  apply coveredState_split_literal (state := state_2580232) 0
    state_2580233 state_2580240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580233
  · exact cover_2580240
#print axioms cover_2580232

def state_2580202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 48 else 37)))
theorem cover_2580202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580202 := by
  apply coveredState_split_literal (state := state_2580202) 3
    state_2580203 state_2580232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580203
  · exact cover_2580232
#print axioms cover_2580202
end Mub6.Numerical.CircleFullD0.Forest
