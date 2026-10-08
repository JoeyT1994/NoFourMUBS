import CircleFullInterface
import CircleForestAssembly0186
import CircleForestChunk0700
import CircleForestChunk0701
import CircleForestChunk0702
import CircleForestChunk0703
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1468697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1468697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468697 := by
  apply coveredState_split_literal (state := state_1468697) 4
    state_1468698 state_1468865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468698
  · exact cover_1468865
#print axioms cover_1468697

def state_1466585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1466585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466585 := by
  apply coveredState_split_literal (state := state_1466585) 3
    state_1466586 state_1468697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1466586
  · exact cover_1468697
#print axioms cover_1466585

def state_1469127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
theorem cover_1469127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469127 := by
  apply coveredState_split_literal (state := state_1469127) 1
    state_1469128 state_1469143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469128
  · exact cover_1469143
#print axioms cover_1469127

def state_1469113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
theorem cover_1469113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469113 := by
  apply coveredState_split_literal (state := state_1469113) 0
    state_1469114 state_1469127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469114
  · exact cover_1469127
#print axioms cover_1469113

def state_1469112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 8)))
theorem cover_1469112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469112 := by
  apply coveredState_split_literal (state := state_1469112) 4
    state_1469113 state_1469192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469113
  · exact cover_1469192
#print axioms cover_1469112

def state_1469207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 16)))
theorem cover_1469207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469207 := by
  apply coveredState_split_literal (state := state_1469207) 4
    state_1469208 state_1469263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469208
  · exact cover_1469263
#print axioms cover_1469207

def state_1469206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
theorem cover_1469206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469206 := by
  apply coveredState_split_literal (state := state_1469206) 3
    state_1469207 state_1469272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469207
  · exact cover_1469272
#print axioms cover_1469206

def state_1469202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1469202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469202 := by
  apply coveredState_split_literal (state := state_1469202) 2
    state_1469203 state_1469206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469203
  · exact cover_1469206
#print axioms cover_1469202

def state_1469196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1469196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469196 := by
  apply coveredState_split_literal (state := state_1469196) 1
    state_1469197 state_1469202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469197
  · exact cover_1469202
#print axioms cover_1469196

def state_1469194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1469194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469194 := by
  apply coveredState_split_literal (state := state_1469194) 0
    state_1469195 state_1469196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469195
  · exact cover_1469196
#print axioms cover_1469194

def state_1469193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 8)))
theorem cover_1469193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469193 := by
  apply coveredState_split_literal (state := state_1469193) 4
    state_1469194 state_1469273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469194
  · exact cover_1469273
#print axioms cover_1469193

def state_1469111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
theorem cover_1469111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469111 := by
  apply coveredState_split_literal (state := state_1469111) 3
    state_1469112 state_1469193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469112
  · exact cover_1469193
#print axioms cover_1469111

def state_1469097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1469097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469097 := by
  apply coveredState_split_literal (state := state_1469097) 2
    state_1469098 state_1469111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469098
  · exact cover_1469111
#print axioms cover_1469097

def state_1469083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1469083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469083 := by
  apply coveredState_split_literal (state := state_1469083) 1
    state_1469084 state_1469097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469084
  · exact cover_1469097
#print axioms cover_1469083

def state_1469075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1469075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469075 := by
  apply coveredState_split_literal (state := state_1469075) 0
    state_1469076 state_1469083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469076
  · exact cover_1469083
#print axioms cover_1469075

def state_1469074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 4)))
theorem cover_1469074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469074 := by
  apply coveredState_split_literal (state := state_1469074) 4
    state_1469075 state_1469274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469075
  · exact cover_1469274
#print axioms cover_1469074

def state_1469062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
theorem cover_1469062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469062 := by
  apply coveredState_split_literal (state := state_1469062) 3
    state_1469063 state_1469074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469063
  · exact cover_1469074
#print axioms cover_1469062

def state_1469061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1469061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469061 := by
  apply coveredState_split_literal (state := state_1469061) 2
    state_1469062 state_1469283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469062
  · exact cover_1469283
#print axioms cover_1469061

def state_1469494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 16)))
theorem cover_1469494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469494 := by
  apply coveredState_split_literal (state := state_1469494) 4
    state_1469495 state_1469558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469495
  · exact cover_1469558
#print axioms cover_1469494

def state_1469493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
theorem cover_1469493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469493 := by
  apply coveredState_split_literal (state := state_1469493) 3
    state_1469494 state_1469601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469494
  · exact cover_1469601
#print axioms cover_1469493

def state_1469492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
theorem cover_1469492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469492 := by
  apply coveredState_split_literal (state := state_1469492) 1
    state_1469493 state_1469610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469493
  · exact cover_1469610
#print axioms cover_1469492

def state_1469478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1469478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469478 := by
  apply coveredState_split_literal (state := state_1469478) 2
    state_1469479 state_1469492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469479
  · exact cover_1469492
#print axioms cover_1469478

def state_1469476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1469476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469476 := by
  apply coveredState_split_literal (state := state_1469476) 0
    state_1469477 state_1469478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469477
  · exact cover_1469478
#print axioms cover_1469476

def state_1469475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 8)))
theorem cover_1469475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469475 := by
  apply coveredState_split_literal (state := state_1469475) 4
    state_1469476 state_1469611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469476
  · exact cover_1469611
#print axioms cover_1469475

def state_1469413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
theorem cover_1469413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469413 := by
  apply coveredState_split_literal (state := state_1469413) 3
    state_1469414 state_1469475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469414
  · exact cover_1469475
#print axioms cover_1469413

def state_1469412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
theorem cover_1469412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469412 := by
  apply coveredState_split_literal (state := state_1469412) 1
    state_1469413 state_1469662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469413
  · exact cover_1469662
#print axioms cover_1469412

def state_1469378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1469378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469378 := by
  apply coveredState_split_literal (state := state_1469378) 2
    state_1469379 state_1469412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469379
  · exact cover_1469412
#print axioms cover_1469378

def state_1469370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1469370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469370 := by
  apply coveredState_split_literal (state := state_1469370) 0
    state_1469371 state_1469378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469371
  · exact cover_1469378
#print axioms cover_1469370

def state_1469725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 9)))
theorem cover_1469725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469725 := by
  apply coveredState_split_literal (state := state_1469725) 1
    state_1469726 state_1469747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469726
  · exact cover_1469747
#print axioms cover_1469725

def state_1469689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 9)))
theorem cover_1469689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469689 := by
  apply coveredState_split_literal (state := state_1469689) 2
    state_1469690 state_1469725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469690
  · exact cover_1469725
#print axioms cover_1469689

def state_1469677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 9)))
theorem cover_1469677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469677 := by
  apply coveredState_split_literal (state := state_1469677) 0
    state_1469678 state_1469689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469678
  · exact cover_1469689
#print axioms cover_1469677

def state_1469369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 4)))
theorem cover_1469369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469369 := by
  apply coveredState_split_literal (state := state_1469369) 4
    state_1469370 state_1469677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469370
  · exact cover_1469677
#print axioms cover_1469369
end Mub6.Numerical.CircleFullD0.Forest
