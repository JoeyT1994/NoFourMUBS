import CircleFullInterface
import CircleForestAssembly0119
import CircleForestAssembly0120
import CircleForestChunk0479
import CircleForestChunk0480
import CircleForestChunk0481
import CircleForestChunk0482
import CircleForestChunk0483
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_276482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
theorem cover_276482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276482 := by
  apply coveredState_split_literal (state := state_276482) 3
    state_276483 state_276500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276483
  · exact cover_276500
#print axioms cover_276482

def state_276481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
theorem cover_276481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276481 := by
  apply coveredState_split_literal (state := state_276481) 1
    state_276482 state_276605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276482
  · exact cover_276605
#print axioms cover_276481

def state_276480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
theorem cover_276480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276480 := by
  apply coveredState_split_literal (state := state_276480) 0
    state_276481 state_276610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276481
  · exact cover_276610
#print axioms cover_276480

def state_276470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 18)))
theorem cover_276470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276470 := by
  apply coveredState_split_literal (state := state_276470) 2
    state_276471 state_276480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276471
  · exact cover_276480
#print axioms cover_276470

def state_276469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 9)))
theorem cover_276469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276469 := by
  apply coveredState_split_literal (state := state_276469) 4
    state_276470 state_276617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276470
  · exact cover_276617
#print axioms cover_276469

def state_276625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 18)))
theorem cover_276625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276625 := by
  apply coveredState_split_literal (state := state_276625) 2
    state_276626 state_276631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276626
  · exact cover_276631
#print axioms cover_276625

def state_276624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 9)))
theorem cover_276624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276624 := by
  apply coveredState_split_literal (state := state_276624) 4
    state_276625 state_276694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276625
  · exact cover_276694
#print axioms cover_276624

def state_276468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 9)))
theorem cover_276468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276468 := by
  apply coveredState_split_literal (state := state_276468) 3
    state_276469 state_276624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276469
  · exact cover_276624
#print axioms cover_276468

def state_276414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 9)))
theorem cover_276414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276414 := by
  apply coveredState_split_literal (state := state_276414) 1
    state_276415 state_276468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276415
  · exact cover_276468
#print axioms cover_276414

def state_275750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 9)))
theorem cover_275750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275750 := by
  apply coveredState_split_literal (state := state_275750) 0
    state_275751 state_276414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275751
  · exact cover_276414
#print axioms cover_275750

def state_274140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 4)))
theorem cover_274140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274140 := by
  apply coveredState_split_literal (state := state_274140) 4
    state_274141 state_275750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274141
  · exact cover_275750
#print axioms cover_274140

def state_276715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 15 else 4)))
theorem cover_276715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276715 := by
  apply coveredState_split_literal (state := state_276715) 4
    state_276716 state_276761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276716
  · exact cover_276761
#print axioms cover_276715

def state_274139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 4)))
theorem cover_274139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274139 := by
  apply coveredState_split_literal (state := state_274139) 3
    state_274140 state_276715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274140
  · exact cover_276715
#print axioms cover_274139

def state_276965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 91) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
theorem cover_276965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276965 := by
  apply coveredState_split_literal (state := state_276965) 3
    state_276966 state_277013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276966
  · exact cover_277013
#print axioms cover_276965

def state_276947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
theorem cover_276947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276947 := by
  apply coveredState_split_literal (state := state_276947) 1
    state_276948 state_276965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276948
  · exact cover_276965
#print axioms cover_276947

def state_276937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
theorem cover_276937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276937 := by
  apply coveredState_split_literal (state := state_276937) 0
    state_276938 state_276947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276938
  · exact cover_276947
#print axioms cover_276937

def state_276917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 17)))
theorem cover_276917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276917 := by
  apply coveredState_split_literal (state := state_276917) 4
    state_276918 state_276937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276918
  · exact cover_276937
#print axioms cover_276917

def state_276916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 17)))
theorem cover_276916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276916 := by
  apply coveredState_split_literal (state := state_276916) 2
    state_276917 state_277034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276917
  · exact cover_277034
#print axioms cover_276916

def state_276858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
theorem cover_276858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276858 := by
  apply coveredState_split_literal (state := state_276858) 3
    state_276859 state_276916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276859
  · exact cover_276916
#print axioms cover_276858

def state_276840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
theorem cover_276840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276840 := by
  apply coveredState_split_literal (state := state_276840) 1
    state_276841 state_276858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276841
  · exact cover_276858
#print axioms cover_276840

def state_276826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
theorem cover_276826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276826 := by
  apply coveredState_split_literal (state := state_276826) 0
    state_276827 state_276840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276827
  · exact cover_276840
#print axioms cover_276826

def state_276802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 8)))
theorem cover_276802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276802 := by
  apply coveredState_split_literal (state := state_276802) 4
    state_276803 state_276826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276803
  · exact cover_276826
#print axioms cover_276802

def state_276801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 8)))
theorem cover_276801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276801 := by
  apply coveredState_split_literal (state := state_276801) 3
    state_276802 state_277041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276802
  · exact cover_277041
#print axioms cover_276801

def state_276800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 8)))
theorem cover_276800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276800 := by
  apply coveredState_split_literal (state := state_276800) 2
    state_276801 state_277076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276801
  · exact cover_277076
#print axioms cover_276800

def state_276799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 8)))
theorem cover_276799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276799 := by
  apply coveredState_split_literal (state := state_276799) 1
    state_276800 state_277095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276800
  · exact cover_277095
#print axioms cover_276799

def state_277266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 91) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
theorem cover_277266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277266 := by
  apply coveredState_split_literal (state := state_277266) 3
    state_277267 state_277292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277267
  · exact cover_277292
#print axioms cover_277266

def state_277244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
theorem cover_277244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277244 := by
  apply coveredState_split_literal (state := state_277244) 1
    state_277245 state_277266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277245
  · exact cover_277266
#print axioms cover_277244

def state_277243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
theorem cover_277243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277243 := by
  apply coveredState_split_literal (state := state_277243) 0
    state_277244 state_277349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277244
  · exact cover_277349
#print axioms cover_277243

def state_277219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 17)))
theorem cover_277219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277219 := by
  apply coveredState_split_literal (state := state_277219) 4
    state_277220 state_277243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277220
  · exact cover_277243
#print axioms cover_277219

def state_277218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 17)))
theorem cover_277218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277218 := by
  apply coveredState_split_literal (state := state_277218) 2
    state_277219 state_277362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277219
  · exact cover_277362
#print axioms cover_277218

def state_277204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
theorem cover_277204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277204 := by
  apply coveredState_split_literal (state := state_277204) 3
    state_277205 state_277218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277205
  · exact cover_277218
#print axioms cover_277204

def state_277176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
theorem cover_277176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277176 := by
  apply coveredState_split_literal (state := state_277176) 1
    state_277177 state_277204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277177
  · exact cover_277204
#print axioms cover_277176
end Mub6.Numerical.CircleFullPrototype.Forest
