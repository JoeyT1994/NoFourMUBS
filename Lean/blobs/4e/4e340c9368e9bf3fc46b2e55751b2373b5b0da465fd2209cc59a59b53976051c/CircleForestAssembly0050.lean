import CircleFullInterface
import CircleForestAssembly0049
import CircleForestChunk0196
import CircleForestChunk0197
import CircleForestChunk0198
import CircleForestChunk0199
import CircleForestChunk0200
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_67526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_67526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67526 := by
  apply coveredState_split_literal (state := state_67526) 4
    state_67527 state_68346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67527
  · exact cover_68346
#print axioms cover_67526

def state_68434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_68434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68434 := by
  apply coveredState_split_literal (state := state_68434) 2
    state_68435 state_68462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68435
  · exact cover_68462
#print axioms cover_68434

def state_68433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_68433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68433 := by
  apply coveredState_split_literal (state := state_68433) 1
    state_68434 state_68503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68434
  · exact cover_68503
#print axioms cover_68433

def state_68560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_68560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68560 := by
  apply coveredState_split_literal (state := state_68560) 1
    state_68561 state_68594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68561
  · exact cover_68594
#print axioms cover_68560

def state_68432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_68432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68432 := by
  apply coveredState_split_literal (state := state_68432) 0
    state_68433 state_68560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68433
  · exact cover_68560
#print axioms cover_68432

def state_68634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_68634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68634 := by
  apply coveredState_split_literal (state := state_68634) 1
    state_68635 state_68664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68635
  · exact cover_68664
#print axioms cover_68634

def state_68633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_68633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68633 := by
  apply coveredState_split_literal (state := state_68633) 0
    state_68634 state_68717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68634
  · exact cover_68717
#print axioms cover_68633

def state_68431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_68431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68431 := by
  apply coveredState_split_literal (state := state_68431) 4
    state_68432 state_68633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68432
  · exact cover_68633
#print axioms cover_68431

def state_67525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_67525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67525 := by
  apply coveredState_split_literal (state := state_67525) 3
    state_67526 state_68431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67526
  · exact cover_68431
#print axioms cover_67525

def state_66445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_66445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66445 := by
  apply coveredState_split_literal (state := state_66445) 2
    state_66446 state_67525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66446
  · exact cover_67525
#print axioms cover_66445

def state_68949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 9)))
theorem cover_68949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68949 := by
  apply coveredState_split_literal (state := state_68949) 3
    state_68950 state_68987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68950
  · exact cover_68987
#print axioms cover_68949

def state_68948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 9)))
theorem cover_68948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68948 := by
  apply coveredState_split_literal (state := state_68948) 1
    state_68949 state_69036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68949
  · exact cover_69036
#print axioms cover_68948

def state_69075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 9)))
theorem cover_69075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69075 := by
  apply coveredState_split_literal (state := state_69075) 1
    state_69076 state_69117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69076
  · exact cover_69117
#print axioms cover_69075

def state_68947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 9)))
theorem cover_68947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68947 := by
  apply coveredState_split_literal (state := state_68947) 0
    state_68948 state_69075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68948
  · exact cover_69075
#print axioms cover_68947

def state_68933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 4)))
theorem cover_68933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68933 := by
  apply coveredState_split_literal (state := state_68933) 4
    state_68934 state_68947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68934
  · exact cover_68947
#print axioms cover_68933

def state_68911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 4)))
theorem cover_68911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68911 := by
  apply coveredState_split_literal (state := state_68911) 2
    state_68912 state_68933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68912
  · exact cover_68933
#print axioms cover_68911

def state_68847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_68847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68847 := by
  apply coveredState_split_literal (state := state_68847) 3
    state_68848 state_68911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68848
  · exact cover_68911
#print axioms cover_68847

def state_68846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_68846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68846 := by
  apply coveredState_split_literal (state := state_68846) 1
    state_68847 state_69142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68847
  · exact cover_69142
#print axioms cover_68846

def state_68845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_68845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68845 := by
  apply coveredState_split_literal (state := state_68845) 0
    state_68846 state_69183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68846
  · exact cover_69183
#print axioms cover_68845

def state_69251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 10)))
theorem cover_69251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69251 := by
  apply coveredState_split_literal (state := state_69251) 3
    state_69252 state_69261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69252
  · exact cover_69261
#print axioms cover_69251

def state_69250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 10)))
theorem cover_69250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69250 := by
  apply coveredState_split_literal (state := state_69250) 1
    state_69251 state_69322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69251
  · exact cover_69322
#print axioms cover_69250

def state_69359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 10)))
theorem cover_69359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69359 := by
  apply coveredState_split_literal (state := state_69359) 3
    state_69360 state_69369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69360
  · exact cover_69369
#print axioms cover_69359

def state_69333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 10)))
theorem cover_69333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69333 := by
  apply coveredState_split_literal (state := state_69333) 1
    state_69334 state_69359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69334
  · exact cover_69359
#print axioms cover_69333

def state_69249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 10)))
theorem cover_69249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69249 := by
  apply coveredState_split_literal (state := state_69249) 0
    state_69250 state_69333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69250
  · exact cover_69333
#print axioms cover_69249

def state_69245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 10)))
theorem cover_69245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69245 := by
  apply coveredState_split_literal (state := state_69245) 2
    state_69246 state_69249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69246
  · exact cover_69249
#print axioms cover_69245

def state_69244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_69244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69244 := by
  apply coveredState_split_literal (state := state_69244) 4
    state_69245 state_69426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69245
  · exact cover_69426
#print axioms cover_69244

def state_69230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_69230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69230 := by
  apply coveredState_split_literal (state := state_69230) 3
    state_69231 state_69244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69231
  · exact cover_69244
#print axioms cover_69230

def state_69229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_69229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69229 := by
  apply coveredState_split_literal (state := state_69229) 1
    state_69230 state_69435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69230
  · exact cover_69435
#print axioms cover_69229

def state_69228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_69228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69228 := by
  apply coveredState_split_literal (state := state_69228) 0
    state_69229 state_69460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69229
  · exact cover_69460
#print axioms cover_69228

def state_68844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_68844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68844 := by
  apply coveredState_split_literal (state := state_68844) 4
    state_68845 state_69228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68845
  · exact cover_69228
#print axioms cover_68844

def state_68782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_68782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68782 := by
  apply coveredState_split_literal (state := state_68782) 3
    state_68783 state_68844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68783
  · exact cover_68844
#print axioms cover_68782

def state_69534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_69534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69534 := by
  apply coveredState_split_literal (state := state_69534) 0
    state_69535 state_69582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69535
  · exact cover_69582
#print axioms cover_69534
end Mub6.Numerical.CircleFullPrototype.Forest
