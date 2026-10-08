import CircleFullInterface
import CircleForestAssembly0324
import CircleForestAssembly0327
import CircleForestAssembly0329
import CircleForestChunk1275
import CircleForestChunk1277
import CircleForestChunk1279
import CircleForestChunk1280
import CircleForestChunk1281
import CircleForestChunk1282
import CircleForestChunk1283
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1607401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 30 else 50)))
theorem cover_1607401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607401 := by
  apply coveredState_split_literal (state := state_1607401) 3
    state_1607402 state_1607553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607402
  · exact cover_1607553
#print axioms cover_1607401

def state_1607201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
theorem cover_1607201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607201 := by
  apply coveredState_split_literal (state := state_1607201) 2
    state_1607202 state_1607401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607202
  · exact cover_1607401
#print axioms cover_1607201

def state_1607200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
theorem cover_1607200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607200 := by
  apply coveredState_split_literal (state := state_1607200) 1
    state_1607201 state_1607568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607201
  · exact cover_1607568
#print axioms cover_1607200

def state_1607186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
theorem cover_1607186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607186 := by
  apply coveredState_split_literal (state := state_1607186) 0
    state_1607187 state_1607200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607187
  · exact cover_1607200
#print axioms cover_1607186

def state_1607185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 25)))
theorem cover_1607185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607185 := by
  apply coveredState_split_literal (state := state_1607185) 4
    state_1607186 state_1607615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607186
  · exact cover_1607615
#print axioms cover_1607185

def state_1607184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
theorem cover_1607184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607184 := by
  apply coveredState_split_literal (state := state_1607184) 3
    state_1607185 state_1607654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607185
  · exact cover_1607654
#print axioms cover_1607184

def state_1607183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1607183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607183 := by
  apply coveredState_split_literal (state := state_1607183) 2
    state_1607184 state_1607675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607184
  · exact cover_1607675
#print axioms cover_1607183

def state_1606597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1606597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606597 := by
  apply coveredState_split_literal (state := state_1606597) 1
    state_1606598 state_1607183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606598
  · exact cover_1607183
#print axioms cover_1606597

def state_1606585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1606585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606585 := by
  apply coveredState_split_literal (state := state_1606585) 0
    state_1606586 state_1606597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606586
  · exact cover_1606597
#print axioms cover_1606585

def state_1605497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1605497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605497 := by
  apply coveredState_split_literal (state := state_1605497) 4
    state_1605498 state_1606585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605498
  · exact cover_1606585
#print axioms cover_1605497

def state_1601397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1601397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601397 := by
  apply coveredState_split_literal (state := state_1601397) 3
    state_1601398 state_1605497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601398
  · exact cover_1605497
#print axioms cover_1601397

def state_1607718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 13)))
theorem cover_1607718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607718 := by
  apply coveredState_split_literal (state := state_1607718) 2
    state_1607719 state_1607780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607719
  · exact cover_1607780
#print axioms cover_1607718

def state_1607717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 13)))
theorem cover_1607717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607717 := by
  apply coveredState_split_literal (state := state_1607717) 1
    state_1607718 state_1607787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607718
  · exact cover_1607787
#print axioms cover_1607717

def state_1607701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 13)))
theorem cover_1607701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607701 := by
  apply coveredState_split_literal (state := state_1607701) 0
    state_1607702 state_1607717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607702
  · exact cover_1607717
#print axioms cover_1607701

def state_1607700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
theorem cover_1607700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607700 := by
  apply coveredState_split_literal (state := state_1607700) 3
    state_1607701 state_1607810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607701
  · exact cover_1607810
#print axioms cover_1607700

def state_1601396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1601396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601396 := by
  apply coveredState_split_literal (state := state_1601396) 4
    state_1601397 state_1607700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601397
  · exact cover_1607700
#print axioms cover_1601396

def state_1597134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1597134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597134 := by
  apply coveredState_split_literal (state := state_1597134) 2
    state_1597135 state_1601396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597135
  · exact cover_1601396
#print axioms cover_1597134

def state_1607878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 24)))
theorem cover_1607878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607878 := by
  apply coveredState_split_literal (state := state_1607878) 3
    state_1607879 state_1607906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607879
  · exact cover_1607906
#print axioms cover_1607878

def state_1607956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 24)))
theorem cover_1607956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607956 := by
  apply coveredState_split_literal (state := state_1607956) 4
    state_1607957 state_1608000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607957
  · exact cover_1608000
#print axioms cover_1607956

def state_1608043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
theorem cover_1608043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608043 := by
  apply coveredState_split_literal (state := state_1608043) 0
    state_1608044 state_1608053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608044
  · exact cover_1608053
#print axioms cover_1608043

def state_1608122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
theorem cover_1608122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608122 := by
  apply coveredState_split_literal (state := state_1608122) 3
    state_1608123 state_1608182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608123
  · exact cover_1608182
#print axioms cover_1608122

def state_1608112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
theorem cover_1608112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608112 := by
  apply coveredState_split_literal (state := state_1608112) 0
    state_1608113 state_1608122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608113
  · exact cover_1608122
#print axioms cover_1608112

def state_1608042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
theorem cover_1608042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608042 := by
  apply coveredState_split_literal (state := state_1608042) 1
    state_1608043 state_1608112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608043
  · exact cover_1608112
#print axioms cover_1608042

def state_1608289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 59 else 49)))
theorem cover_1608289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608289 := by
  apply coveredState_split_literal (state := state_1608289) 4
    state_1608290 state_1608343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608290
  · exact cover_1608343
#print axioms cover_1608289

def state_1608288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 59 else 49)))
theorem cover_1608288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608288 := by
  apply coveredState_split_literal (state := state_1608288) 2
    state_1608289 state_1608396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608289
  · exact cover_1608396
#print axioms cover_1608288

def state_1608230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
theorem cover_1608230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608230 := by
  apply coveredState_split_literal (state := state_1608230) 3
    state_1608231 state_1608288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608231
  · exact cover_1608288
#print axioms cover_1608230

def state_1608212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
theorem cover_1608212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608212 := by
  apply coveredState_split_literal (state := state_1608212) 0
    state_1608213 state_1608230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608213
  · exact cover_1608230
#print axioms cover_1608212

def state_1608416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 58 else 49)))
theorem cover_1608416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608416 := by
  apply coveredState_split_literal (state := state_1608416) 2
    state_1608417 state_1608448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608417
  · exact cover_1608448
#print axioms cover_1608416

def state_1608415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
theorem cover_1608415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608415 := by
  apply coveredState_split_literal (state := state_1608415) 3
    state_1608416 state_1608481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608416
  · exact cover_1608481
#print axioms cover_1608415

def state_1608407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
theorem cover_1608407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608407 := by
  apply coveredState_split_literal (state := state_1608407) 0
    state_1608408 state_1608415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608408
  · exact cover_1608415
#print axioms cover_1608407

def state_1608211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
theorem cover_1608211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608211 := by
  apply coveredState_split_literal (state := state_1608211) 1
    state_1608212 state_1608407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608212
  · exact cover_1608407
#print axioms cover_1608211

def state_1608041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
theorem cover_1608041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608041 := by
  apply coveredState_split_literal (state := state_1608041) 4
    state_1608042 state_1608211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1608042
  · exact cover_1608211
#print axioms cover_1608041
end Mub6.Numerical.CircleFullD0.Forest
