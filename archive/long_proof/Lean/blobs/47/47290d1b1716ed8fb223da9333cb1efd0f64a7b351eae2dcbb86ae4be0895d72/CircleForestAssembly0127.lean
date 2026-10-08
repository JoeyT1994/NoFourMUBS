import CircleFullInterface
import CircleForestAssembly0126
import CircleForestChunk0498
import CircleForestChunk0499
import CircleForestChunk0501
import CircleForestChunk0502
import CircleForestChunk0503
import CircleForestChunk0504
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_281925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 47)))
theorem cover_281925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281925 := by
  apply coveredState_split_literal (state := state_281925) 3
    state_281926 state_281945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281926
  · exact cover_281945
#print axioms cover_281925

def state_281990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 47)))
theorem cover_281990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281990 := by
  apply coveredState_split_literal (state := state_281990) 3
    state_281991 state_282022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281991
  · exact cover_282022
#print axioms cover_281990

def state_281924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 47)))
theorem cover_281924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281924 := by
  apply coveredState_split_literal (state := state_281924) 1
    state_281925 state_281990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281925
  · exact cover_281990
#print axioms cover_281924

def state_281920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 23)))
theorem cover_281920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281920 := by
  apply coveredState_split_literal (state := state_281920) 4
    state_281921 state_281924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281921
  · exact cover_281924
#print axioms cover_281920

def state_281919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 23)))
theorem cover_281919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281919 := by
  apply coveredState_split_literal (state := state_281919) 0
    state_281920 state_282057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281920
  · exact cover_282057
#print axioms cover_281919

def state_281897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 23)))
theorem cover_281897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281897 := by
  apply coveredState_split_literal (state := state_281897) 2
    state_281898 state_281919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281898
  · exact cover_281919
#print axioms cover_281897

def state_281896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
theorem cover_281896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281896 := by
  apply coveredState_split_literal (state := state_281896) 3
    state_281897 state_282062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281897
  · exact cover_282062
#print axioms cover_281896

def state_281895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
theorem cover_281895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281895 := by
  apply coveredState_split_literal (state := state_281895) 1
    state_281896 state_282083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281896
  · exact cover_282083
#print axioms cover_281895

def state_281893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_281893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281893 := by
  apply coveredState_split_literal (state := state_281893) 4
    state_281894 state_281895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281894
  · exact cover_281895
#print axioms cover_281893

def state_281327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_281327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281327 := by
  apply coveredState_split_literal (state := state_281327) 0
    state_281328 state_281893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281328
  · exact cover_281893
#print axioms cover_281327

def state_281326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 11)))
theorem cover_281326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281326 := by
  apply coveredState_split_literal (state := state_281326) 3
    state_281327 state_282094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281327
  · exact cover_282094
#print axioms cover_281326

def state_282201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 95)))
theorem cover_282201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282201 := by
  apply coveredState_split_literal (state := state_282201) 0
    state_282202 state_282217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282202
  · exact cover_282217
#print axioms cover_282201

def state_282195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 47)))
theorem cover_282195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282195 := by
  apply coveredState_split_literal (state := state_282195) 4
    state_282196 state_282201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282196
  · exact cover_282201
#print axioms cover_282195

def state_282194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 47)))
theorem cover_282194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282194 := by
  apply coveredState_split_literal (state := state_282194) 2
    state_282195 state_282268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282195
  · exact cover_282268
#print axioms cover_282194

def state_282186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 47)))
theorem cover_282186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282186 := by
  apply coveredState_split_literal (state := state_282186) 3
    state_282187 state_282194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282187
  · exact cover_282194
#print axioms cover_282186

def state_282158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 47)))
theorem cover_282158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282158 := by
  apply coveredState_split_literal (state := state_282158) 1
    state_282159 state_282186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282159
  · exact cover_282186
#print axioms cover_282158

def state_282128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 47)))
theorem cover_282128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282128 := by
  apply coveredState_split_literal (state := state_282128) 0
    state_282129 state_282158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282129
  · exact cover_282158
#print axioms cover_282128

def state_282116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 23)))
theorem cover_282116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282116 := by
  apply coveredState_split_literal (state := state_282116) 4
    state_282117 state_282128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282117
  · exact cover_282128
#print axioms cover_282116

def state_282115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 23)))
theorem cover_282115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282115 := by
  apply coveredState_split_literal (state := state_282115) 3
    state_282116 state_282275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282116
  · exact cover_282275
#print axioms cover_282115

def state_282114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_282114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282114 := by
  apply coveredState_split_literal (state := state_282114) 2
    state_282115 state_282306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282115
  · exact cover_282306
#print axioms cover_282114

def state_282113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_282113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282113 := by
  apply coveredState_split_literal (state := state_282113) 1
    state_282114 state_282315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282114
  · exact cover_282315
#print axioms cover_282113

def state_282103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_282103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282103 := by
  apply coveredState_split_literal (state := state_282103) 4
    state_282104 state_282113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282104
  · exact cover_282113
#print axioms cover_282103

def state_282346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
theorem cover_282346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282346 := by
  apply coveredState_split_literal (state := state_282346) 1
    state_282347 state_282388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282347
  · exact cover_282388
#print axioms cover_282346

def state_282342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_282342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282342 := by
  apply coveredState_split_literal (state := state_282342) 4
    state_282343 state_282346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282343
  · exact cover_282346
#print axioms cover_282342

def state_282102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_282102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282102 := by
  apply coveredState_split_literal (state := state_282102) 0
    state_282103 state_282342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282103
  · exact cover_282342
#print axioms cover_282102

def state_282101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_282101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282101 := by
  apply coveredState_split_literal (state := state_282101) 3
    state_282102 state_282419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282102
  · exact cover_282419
#print axioms cover_282101

def state_281325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_281325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281325 := by
  apply coveredState_split_literal (state := state_281325) 2
    state_281326 state_282101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281326
  · exact cover_282101
#print axioms cover_281325

def state_281324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_281324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281324 := by
  apply coveredState_split_literal (state := state_281324) 1
    state_281325 state_282442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281325
  · exact cover_282442
#print axioms cover_281324

def state_281314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_281314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281314 := by
  apply coveredState_split_literal (state := state_281314) 4
    state_281315 state_281324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281315
  · exact cover_281324
#print axioms cover_281314

def state_281214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_281214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281214 := by
  apply coveredState_split_literal (state := state_281214) 0
    state_281215 state_281314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281215
  · exact cover_281314
#print axioms cover_281214

def state_281212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_281212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281212 := by
  apply coveredState_split_literal (state := state_281212) 4
    state_281213 state_281214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281213
  · exact cover_281214
#print axioms cover_281212

def state_281018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_281018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281018 := by
  apply coveredState_split_literal (state := state_281018) 3
    state_281019 state_281212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281019
  · exact cover_281212
#print axioms cover_281018
end Mub6.Numerical.CircleFullPrototype.Forest
