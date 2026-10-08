import CircleFullInterface
import CircleForestAssembly0074
import CircleForestChunk0299
import CircleForestChunk0300
import CircleForestChunk0301
import CircleForestChunk0302
import CircleForestChunk0303
import CircleForestChunk0304
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_146991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_146991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146991 := by
  apply coveredState_split_literal (state := state_146991) 3
    state_146992 state_147273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146992
  · exact cover_147273
#print axioms cover_146991

def state_146469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_146469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146469 := by
  apply coveredState_split_literal (state := state_146469) 2
    state_146470 state_146991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146470
  · exact cover_146991
#print axioms cover_146469

def state_147348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 13)))
theorem cover_147348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147348 := by
  apply coveredState_split_literal (state := state_147348) 1
    state_147349 state_147410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147349
  · exact cover_147410
#print axioms cover_147348

def state_147342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 6)))
theorem cover_147342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147342 := by
  apply coveredState_split_literal (state := state_147342) 4
    state_147343 state_147348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147343
  · exact cover_147348
#print axioms cover_147342

def state_147439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 26 else 13)))
theorem cover_147439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147439 := by
  apply coveredState_split_literal (state := state_147439) 4
    state_147440 state_147467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147440
  · exact cover_147467
#print axioms cover_147439

def state_147438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 13 else 13)))
theorem cover_147438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147438 := by
  apply coveredState_split_literal (state := state_147438) 3
    state_147439 state_147508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147439
  · exact cover_147508
#print axioms cover_147438

def state_147430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
theorem cover_147430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147430 := by
  apply coveredState_split_literal (state := state_147430) 2
    state_147431 state_147438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147431
  · exact cover_147438
#print axioms cover_147430

def state_147418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
theorem cover_147418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147418 := by
  apply coveredState_split_literal (state := state_147418) 0
    state_147419 state_147430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147419
  · exact cover_147430
#print axioms cover_147418

def state_147417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
theorem cover_147417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147417 := by
  apply coveredState_split_literal (state := state_147417) 1
    state_147418 state_147563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147418
  · exact cover_147563
#print axioms cover_147417

def state_147415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 6)))
theorem cover_147415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147415 := by
  apply coveredState_split_literal (state := state_147415) 4
    state_147416 state_147417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147416
  · exact cover_147417
#print axioms cover_147415

def state_147341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
theorem cover_147341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147341 := by
  apply coveredState_split_literal (state := state_147341) 3
    state_147342 state_147415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147342
  · exact cover_147415
#print axioms cover_147341

def state_147323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_147323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147323 := by
  apply coveredState_split_literal (state := state_147323) 2
    state_147324 state_147341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147324
  · exact cover_147341
#print axioms cover_147323

def state_147303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_147303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147303 := by
  apply coveredState_split_literal (state := state_147303) 0
    state_147304 state_147323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147304
  · exact cover_147323
#print axioms cover_147303

def state_147302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_147302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147302 := by
  apply coveredState_split_literal (state := state_147302) 4
    state_147303 state_147566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147303
  · exact cover_147566
#print axioms cover_147302

def state_147301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_147301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147301 := by
  apply coveredState_split_literal (state := state_147301) 3
    state_147302 state_147585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147302
  · exact cover_147585
#print axioms cover_147301

def state_147891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 53 else 27)))
theorem cover_147891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147891 := by
  apply coveredState_split_literal (state := state_147891) 2
    state_147892 state_147937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147892
  · exact cover_147937
#print axioms cover_147891

def state_147827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 53 else 27)))
theorem cover_147827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147827 := by
  apply coveredState_split_literal (state := state_147827) 1
    state_147828 state_147891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147828
  · exact cover_147891
#print axioms cover_147827

def state_147813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 27)))
theorem cover_147813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147813 := by
  apply coveredState_split_literal (state := state_147813) 3
    state_147814 state_147827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147814
  · exact cover_147827
#print axioms cover_147813

def state_147801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 27)))
theorem cover_147801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147801 := by
  apply coveredState_split_literal (state := state_147801) 0
    state_147802 state_147813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147802
  · exact cover_147813
#print axioms cover_147801

def state_147800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 27)))
theorem cover_147800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147800 := by
  apply coveredState_split_literal (state := state_147800) 2
    state_147801 state_147958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147801
  · exact cover_147958
#print axioms cover_147800

def state_147799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 27)))
theorem cover_147799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147799 := by
  apply coveredState_split_literal (state := state_147799) 1
    state_147800 state_147959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147800
  · exact cover_147959
#print axioms cover_147799

def state_147737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 13)))
theorem cover_147737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147737 := by
  apply coveredState_split_literal (state := state_147737) 4
    state_147738 state_147799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147738
  · exact cover_147799
#print axioms cover_147737

def state_148020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 53)))
theorem cover_148020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148020 := by
  apply coveredState_split_literal (state := state_148020) 2
    state_148021 state_148082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148021
  · exact cover_148082
#print axioms cover_148020

def state_148019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 53)))
theorem cover_148019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148019 := by
  apply coveredState_split_literal (state := state_148019) 1
    state_148020 state_148127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148020
  · exact cover_148127
#print axioms cover_148019

def state_148007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 26)))
theorem cover_148007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148007 := by
  apply coveredState_split_literal (state := state_148007) 4
    state_148008 state_148019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148008
  · exact cover_148019
#print axioms cover_148007

def state_147997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 26)))
theorem cover_147997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147997 := by
  apply coveredState_split_literal (state := state_147997) 0
    state_147998 state_148007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147998
  · exact cover_148007
#print axioms cover_147997

def state_147996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 26)))
theorem cover_147996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147996 := by
  apply coveredState_split_literal (state := state_147996) 2
    state_147997 state_148150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147997
  · exact cover_148150
#print axioms cover_147996

def state_147995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 26)))
theorem cover_147995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147995 := by
  apply coveredState_split_literal (state := state_147995) 1
    state_147996 state_148183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_147996
  · exact cover_148183
#print axioms cover_147995

def state_148237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
theorem cover_148237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148237 := by
  apply coveredState_split_literal (state := state_148237) 2
    state_148238 state_148277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148238
  · exact cover_148277
#print axioms cover_148237

def state_148353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 54 else 27)))
theorem cover_148353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148353 := by
  apply coveredState_split_literal (state := state_148353) 4
    state_148354 state_148395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148354
  · exact cover_148395
#print axioms cover_148353

def state_148352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 27 else 27)))
theorem cover_148352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148352 := by
  apply coveredState_split_literal (state := state_148352) 3
    state_148353 state_148422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148353
  · exact cover_148422
#print axioms cover_148352

def state_148312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
theorem cover_148312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148312 := by
  apply coveredState_split_literal (state := state_148312) 2
    state_148313 state_148352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_148313
  · exact cover_148352
#print axioms cover_148312
end Mub6.Numerical.CircleFullPrototype.Forest
