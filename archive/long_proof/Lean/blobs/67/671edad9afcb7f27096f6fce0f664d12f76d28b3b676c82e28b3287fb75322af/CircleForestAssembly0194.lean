import CircleFullInterface
import CircleForestAssembly0193
import CircleForestChunk0726
import CircleForestChunk0727
import CircleForestChunk0728
import CircleForestChunk0729
import CircleForestChunk0730
import CircleForestChunk0731
import CircleForestChunk0732
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1474764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
theorem cover_1474764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474764 := by
  apply coveredState_split_literal (state := state_1474764) 0
    state_1474765 state_1475210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474765
  · exact cover_1475210
#print axioms cover_1474764

def state_1474763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 28)))
theorem cover_1474763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474763 := by
  apply coveredState_split_literal (state := state_1474763) 2
    state_1474764 state_1475225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474764
  · exact cover_1475225
#print axioms cover_1474763

def state_1475284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 88 else 116)))
theorem cover_1475284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475284 := by
  apply coveredState_split_literal (state := state_1475284) 0
    state_1475285 state_1475326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475285
  · exact cover_1475326
#print axioms cover_1475284

def state_1475282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 88 else 116)))
theorem cover_1475282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475282 := by
  apply coveredState_split_literal (state := state_1475282) 2
    state_1475283 state_1475284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475283
  · exact cover_1475284
#print axioms cover_1475282

def state_1475281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 88 else 58)))
theorem cover_1475281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475281 := by
  apply coveredState_split_literal (state := state_1475281) 4
    state_1475282 state_1475357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475282
  · exact cover_1475357
#print axioms cover_1475281

def state_1475417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 131 else (if j.val < 4 then 178 else 232)))
theorem cover_1475417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475417 := by
  apply coveredState_split_literal (state := state_1475417) 0
    state_1475418 state_1475439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475418
  · exact cover_1475439
#print axioms cover_1475417

def state_1475415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 65 else (if j.val < 4 then 178 else 232)))
theorem cover_1475415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475415 := by
  apply coveredState_split_literal (state := state_1475415) 2
    state_1475416 state_1475417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475416
  · exact cover_1475417
#print axioms cover_1475415

def state_1475414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 65 else (if j.val < 4 then 178 else 116)))
theorem cover_1475414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475414 := by
  apply coveredState_split_literal (state := state_1475414) 4
    state_1475415 state_1475498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475415
  · exact cover_1475498
#print axioms cover_1475414

def state_1475413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 178 else 116)))
theorem cover_1475413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475413 := by
  apply coveredState_split_literal (state := state_1475413) 1
    state_1475414 state_1475515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475414
  · exact cover_1475515
#print axioms cover_1475413

def state_1475571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 116)))
theorem cover_1475571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475571 := by
  apply coveredState_split_literal (state := state_1475571) 4
    state_1475572 state_1475619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475572
  · exact cover_1475619
#print axioms cover_1475571

def state_1475570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 116)))
theorem cover_1475570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475570 := by
  apply coveredState_split_literal (state := state_1475570) 1
    state_1475571 state_1475648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475571
  · exact cover_1475648
#print axioms cover_1475570

def state_1475412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 89 else 116)))
theorem cover_1475412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475412 := by
  apply coveredState_split_literal (state := state_1475412) 3
    state_1475413 state_1475570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475413
  · exact cover_1475570
#print axioms cover_1475412

def state_1475700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 178 else 116)))
theorem cover_1475700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475700 := by
  apply coveredState_split_literal (state := state_1475700) 1
    state_1475701 state_1475754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475701
  · exact cover_1475754
#print axioms cover_1475700

def state_1475800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 116)))
theorem cover_1475800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475800 := by
  apply coveredState_split_literal (state := state_1475800) 4
    state_1475801 state_1475842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475801
  · exact cover_1475842
#print axioms cover_1475800

def state_1475879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 116)))
theorem cover_1475879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475879 := by
  apply coveredState_split_literal (state := state_1475879) 4
    state_1475880 state_1475897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475880
  · exact cover_1475897
#print axioms cover_1475879

def state_1475799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 116)))
theorem cover_1475799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475799 := by
  apply coveredState_split_literal (state := state_1475799) 1
    state_1475800 state_1475879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475800
  · exact cover_1475879
#print axioms cover_1475799

def state_1475699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 89 else 116)))
theorem cover_1475699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475699 := by
  apply coveredState_split_literal (state := state_1475699) 3
    state_1475700 state_1475799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475700
  · exact cover_1475799
#print axioms cover_1475699

def state_1475411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 89 else 116)))
theorem cover_1475411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475411 := by
  apply coveredState_split_literal (state := state_1475411) 0
    state_1475412 state_1475699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475412
  · exact cover_1475699
#print axioms cover_1475411

def state_1475381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 116)))
theorem cover_1475381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475381 := by
  apply coveredState_split_literal (state := state_1475381) 2
    state_1475382 state_1475411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475382
  · exact cover_1475411
#print axioms cover_1475381

def state_1475380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 58)))
theorem cover_1475380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475380 := by
  apply coveredState_split_literal (state := state_1475380) 4
    state_1475381 state_1475944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475381
  · exact cover_1475944
#print axioms cover_1475380

def state_1475280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
theorem cover_1475280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475280 := by
  apply coveredState_split_literal (state := state_1475280) 3
    state_1475281 state_1475380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475281
  · exact cover_1475380
#print axioms cover_1475280

def state_1476065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 58)))
theorem cover_1476065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476065 := by
  apply coveredState_split_literal (state := state_1476065) 4
    state_1476066 state_1476117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476066
  · exact cover_1476117
#print axioms cover_1476065

def state_1476003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
theorem cover_1476003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476003 := by
  apply coveredState_split_literal (state := state_1476003) 3
    state_1476004 state_1476065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476004
  · exact cover_1476065
#print axioms cover_1476003

def state_1475279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
theorem cover_1475279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475279 := by
  apply coveredState_split_literal (state := state_1475279) 1
    state_1475280 state_1476003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475280
  · exact cover_1476003
#print axioms cover_1475279

def state_1475278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
theorem cover_1475278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475278 := by
  apply coveredState_split_literal (state := state_1475278) 0
    state_1475279 state_1476160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475279
  · exact cover_1476160
#print axioms cover_1475278

def state_1476324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 232)))
theorem cover_1476324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476324 := by
  apply coveredState_split_literal (state := state_1476324) 2
    state_1476325 state_1476386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476325
  · exact cover_1476386
#print axioms cover_1476324

def state_1476323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 116)))
theorem cover_1476323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476323 := by
  apply coveredState_split_literal (state := state_1476323) 4
    state_1476324 state_1476395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476324
  · exact cover_1476395
#print axioms cover_1476323

def state_1476322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 116)))
theorem cover_1476322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476322 := by
  apply coveredState_split_literal (state := state_1476322) 1
    state_1476323 state_1476418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476323
  · exact cover_1476418
#print axioms cover_1476322

def state_1476262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 89 else 116)))
theorem cover_1476262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476262 := by
  apply coveredState_split_literal (state := state_1476262) 3
    state_1476263 state_1476322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476263
  · exact cover_1476322
#print axioms cover_1476262

def state_1476572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 233)))
theorem cover_1476572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476572 := by
  apply coveredState_split_literal (state := state_1476572) 2
    state_1476573 state_1476632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476573
  · exact cover_1476632
#print axioms cover_1476572

def state_1476516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 116)))
theorem cover_1476516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476516 := by
  apply coveredState_split_literal (state := state_1476516) 4
    state_1476517 state_1476572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476517
  · exact cover_1476572
#print axioms cover_1476516

def state_1476681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 233)))
theorem cover_1476681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476681 := by
  apply coveredState_split_literal (state := state_1476681) 2
    state_1476682 state_1476739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1476682
  · exact cover_1476739
#print axioms cover_1476681
end Mub6.Numerical.CircleFullD0.Forest
