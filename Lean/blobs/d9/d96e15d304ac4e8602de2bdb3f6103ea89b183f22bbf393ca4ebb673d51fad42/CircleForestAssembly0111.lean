import CircleFullInterface
import CircleForestAssembly0110
import CircleForestChunk0438
import CircleForestChunk0439
import CircleForestChunk0440
import CircleForestChunk0441
import CircleForestChunk0442
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_180976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 14)))
theorem cover_180976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180976 := by
  apply coveredState_split_literal (state := state_180976) 4
    state_180977 state_180998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180977
  · exact cover_180998
#print axioms cover_180976

def state_181120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 99 else (if j.val < 4 then 60 else 59)))
theorem cover_181120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181120 := by
  apply coveredState_split_literal (state := state_181120) 0
    state_181121 state_181162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181121
  · exact cover_181162
#print axioms cover_181120

def state_181116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 49 else (if j.val < 4 then 60 else 59)))
theorem cover_181116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181116 := by
  apply coveredState_split_literal (state := state_181116) 2
    state_181117 state_181120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181117
  · exact cover_181120
#print axioms cover_181116

def state_181110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 60 else 59)))
theorem cover_181110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181110 := by
  apply coveredState_split_literal (state := state_181110) 1
    state_181111 state_181116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181111
  · exact cover_181116
#print axioms cover_181110

def state_181109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 59)))
theorem cover_181109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181109 := by
  apply coveredState_split_literal (state := state_181109) 3
    state_181110 state_181187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181110
  · exact cover_181187
#print axioms cover_181109

def state_181091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
theorem cover_181091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181091 := by
  apply coveredState_split_literal (state := state_181091) 4
    state_181092 state_181109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181092
  · exact cover_181109
#print axioms cover_181091

def state_181090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
theorem cover_181090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181090 := by
  apply coveredState_split_literal (state := state_181090) 0
    state_181091 state_181196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181091
  · exact cover_181196
#print axioms cover_181090

def state_181084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 29)))
theorem cover_181084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181084 := by
  apply coveredState_split_literal (state := state_181084) 2
    state_181085 state_181090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181085
  · exact cover_181090
#print axioms cover_181084

def state_181076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 29)))
theorem cover_181076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181076 := by
  apply coveredState_split_literal (state := state_181076) 1
    state_181077 state_181084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181077
  · exact cover_181084
#print axioms cover_181076

def state_181075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 29)))
theorem cover_181075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181075 := by
  apply coveredState_split_literal (state := state_181075) 3
    state_181076 state_181213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181076
  · exact cover_181213
#print axioms cover_181075

def state_181067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 14)))
theorem cover_181067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181067 := by
  apply coveredState_split_literal (state := state_181067) 4
    state_181068 state_181075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181068
  · exact cover_181075
#print axioms cover_181067

def state_180975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 14)))
theorem cover_180975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180975 := by
  apply coveredState_split_literal (state := state_180975) 0
    state_180976 state_181067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180976
  · exact cover_181067
#print axioms cover_180975

def state_180974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 14)))
theorem cover_180974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180974 := by
  apply coveredState_split_literal (state := state_180974) 2
    state_180975 state_181222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180975
  · exact cover_181222
#print axioms cover_180974

def state_181329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
theorem cover_181329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181329 := by
  apply coveredState_split_literal (state := state_181329) 4
    state_181330 state_181347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181330
  · exact cover_181347
#print axioms cover_181329

def state_181317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
theorem cover_181317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181317 := by
  apply coveredState_split_literal (state := state_181317) 0
    state_181318 state_181329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181318
  · exact cover_181329
#print axioms cover_181317

def state_181316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
theorem cover_181316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181316 := by
  apply coveredState_split_literal (state := state_181316) 1
    state_181317 state_181404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181317
  · exact cover_181404
#print axioms cover_181316

def state_181298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 29)))
theorem cover_181298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181298 := by
  apply coveredState_split_literal (state := state_181298) 2
    state_181299 state_181316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181299
  · exact cover_181316
#print axioms cover_181298

def state_181297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 29)))
theorem cover_181297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181297 := by
  apply coveredState_split_literal (state := state_181297) 3
    state_181298 state_181407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181298
  · exact cover_181407
#print axioms cover_181297

def state_181277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 14)))
theorem cover_181277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181277 := by
  apply coveredState_split_literal (state := state_181277) 4
    state_181278 state_181297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181278
  · exact cover_181297
#print axioms cover_181277

def state_181463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 100) else (if j.val < 3 then 99 else (if j.val < 4 then 60 else 59)))
theorem cover_181463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181463 := by
  apply coveredState_split_literal (state := state_181463) 0
    state_181464 state_181521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181464
  · exact cover_181521
#print axioms cover_181463

def state_181462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 99 else (if j.val < 4 then 60 else 59)))
theorem cover_181462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181462 := by
  apply coveredState_split_literal (state := state_181462) 1
    state_181463 state_181546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181463
  · exact cover_181546
#print axioms cover_181462

def state_181448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 60 else 59)))
theorem cover_181448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181448 := by
  apply coveredState_split_literal (state := state_181448) 2
    state_181449 state_181462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181449
  · exact cover_181462
#print axioms cover_181448

def state_181447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 59)))
theorem cover_181447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181447 := by
  apply coveredState_split_literal (state := state_181447) 3
    state_181448 state_181567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181448
  · exact cover_181567
#print axioms cover_181447

def state_181435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
theorem cover_181435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181435 := by
  apply coveredState_split_literal (state := state_181435) 4
    state_181436 state_181447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181436
  · exact cover_181447
#print axioms cover_181435

def state_181434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
theorem cover_181434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181434 := by
  apply coveredState_split_literal (state := state_181434) 0
    state_181435 state_181590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181435
  · exact cover_181590
#print axioms cover_181434

def state_181433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
theorem cover_181433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181433 := by
  apply coveredState_split_literal (state := state_181433) 1
    state_181434 state_181603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181434
  · exact cover_181603
#print axioms cover_181433

def state_181423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 29)))
theorem cover_181423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181423 := by
  apply coveredState_split_literal (state := state_181423) 2
    state_181424 state_181433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181424
  · exact cover_181433
#print axioms cover_181423

def state_181422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 29)))
theorem cover_181422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181422 := by
  apply coveredState_split_literal (state := state_181422) 3
    state_181423 state_181630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181423
  · exact cover_181630
#print axioms cover_181422

def state_181410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 14)))
theorem cover_181410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181410 := by
  apply coveredState_split_literal (state := state_181410) 4
    state_181411 state_181422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181411
  · exact cover_181422
#print axioms cover_181410

def state_181276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 14)))
theorem cover_181276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181276 := by
  apply coveredState_split_literal (state := state_181276) 0
    state_181277 state_181410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181277
  · exact cover_181410
#print axioms cover_181276

def state_181720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 100) else (if j.val < 3 then 100 else (if j.val < 4 then 60 else 59)))
theorem cover_181720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181720 := by
  apply coveredState_split_literal (state := state_181720) 0
    state_181721 state_181742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181721
  · exact cover_181742
#print axioms cover_181720

def state_181719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 100) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 59)))
theorem cover_181719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181719 := by
  apply coveredState_split_literal (state := state_181719) 2
    state_181720 state_181789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181720
  · exact cover_181789
#print axioms cover_181719
end Mub6.Numerical.CircleFullPrototype.Forest
