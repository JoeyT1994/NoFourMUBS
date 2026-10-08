import CircleFullInterface
import CircleForestAssembly0300
import CircleForestAssembly0307
import CircleForestAssembly0308
import CircleForestChunk1183
import CircleForestChunk1184
import CircleForestChunk1189
import CircleForestChunk1190
import CircleForestChunk1191
import CircleForestChunk1192
import CircleForestChunk1193
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1584704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
theorem cover_1584704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584704 := by
  apply coveredState_split_literal (state := state_1584704) 1
    state_1584705 state_1585506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584705
  · exact cover_1585506
#print axioms cover_1584704

def state_1584652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
theorem cover_1584652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584652 := by
  apply coveredState_split_literal (state := state_1584652) 0
    state_1584653 state_1584704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584653
  · exact cover_1584704
#print axioms cover_1584652

def state_1584651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 13)))
theorem cover_1584651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584651 := by
  apply coveredState_split_literal (state := state_1584651) 4
    state_1584652 state_1585983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584652
  · exact cover_1585983
#print axioms cover_1584651

def state_1586023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
theorem cover_1586023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586023 := by
  apply coveredState_split_literal (state := state_1586023) 2
    state_1586024 state_1586083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586024
  · exact cover_1586083
#print axioms cover_1586023

def state_1586009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
theorem cover_1586009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586009 := by
  apply coveredState_split_literal (state := state_1586009) 1
    state_1586010 state_1586023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586010
  · exact cover_1586023
#print axioms cover_1586009

def state_1586007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
theorem cover_1586007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586007 := by
  apply coveredState_split_literal (state := state_1586007) 0
    state_1586008 state_1586009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586008
  · exact cover_1586009
#print axioms cover_1586007

def state_1586006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 13)))
theorem cover_1586006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586006 := by
  apply coveredState_split_literal (state := state_1586006) 4
    state_1586007 state_1586120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586007
  · exact cover_1586120
#print axioms cover_1586006

def state_1584650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 13)))
theorem cover_1584650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584650 := by
  apply coveredState_split_literal (state := state_1584650) 3
    state_1584651 state_1586006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584651
  · exact cover_1586006
#print axioms cover_1584650

def state_1584649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_1584649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584649 := by
  apply coveredState_split_literal (state := state_1584649) 2
    state_1584650 state_1586121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584650
  · exact cover_1586121
#print axioms cover_1584649

def state_1586177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
theorem cover_1586177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586177 := by
  apply coveredState_split_literal (state := state_1586177) 1
    state_1586178 state_1586233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586178
  · exact cover_1586233
#print axioms cover_1586177

def state_1586169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
theorem cover_1586169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586169 := by
  apply coveredState_split_literal (state := state_1586169) 0
    state_1586170 state_1586177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586170
  · exact cover_1586177
#print axioms cover_1586169

def state_1586168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 13)))
theorem cover_1586168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586168 := by
  apply coveredState_split_literal (state := state_1586168) 4
    state_1586169 state_1586242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586169
  · exact cover_1586242
#print axioms cover_1586168

def state_1586273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
theorem cover_1586273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586273 := by
  apply coveredState_split_literal (state := state_1586273) 2
    state_1586274 state_1586311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586274
  · exact cover_1586311
#print axioms cover_1586273

def state_1586272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
theorem cover_1586272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586272 := by
  apply coveredState_split_literal (state := state_1586272) 1
    state_1586273 state_1586366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586273
  · exact cover_1586366
#print axioms cover_1586272

def state_1586262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
theorem cover_1586262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586262 := by
  apply coveredState_split_literal (state := state_1586262) 0
    state_1586263 state_1586272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586263
  · exact cover_1586272
#print axioms cover_1586262

def state_1586261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 13)))
theorem cover_1586261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586261 := by
  apply coveredState_split_literal (state := state_1586261) 4
    state_1586262 state_1586383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586262
  · exact cover_1586383
#print axioms cover_1586261

def state_1586167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 13)))
theorem cover_1586167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586167 := by
  apply coveredState_split_literal (state := state_1586167) 3
    state_1586168 state_1586261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586168
  · exact cover_1586261
#print axioms cover_1586167

def state_1586166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_1586166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586166 := by
  apply coveredState_split_literal (state := state_1586166) 2
    state_1586167 state_1586400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586167
  · exact cover_1586400
#print axioms cover_1586166

def state_1584648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_1584648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584648 := by
  apply coveredState_split_literal (state := state_1584648) 1
    state_1584649 state_1586166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584649
  · exact cover_1586166
#print axioms cover_1584648

def state_1584622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_1584622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584622 := by
  apply coveredState_split_literal (state := state_1584622) 0
    state_1584623 state_1584648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584623
  · exact cover_1584648
#print axioms cover_1584622

def state_1577176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 6)))
theorem cover_1577176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577176 := by
  apply coveredState_split_literal (state := state_1577176) 4
    state_1577177 state_1584622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577177
  · exact cover_1584622
#print axioms cover_1577176

def state_1576120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_1576120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576120 := by
  apply coveredState_split_literal (state := state_1576120) 3
    state_1576121 state_1577176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576121
  · exact cover_1577176
#print axioms cover_1576120

def state_1576119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1576119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576119 := by
  apply coveredState_split_literal (state := state_1576119) 2
    state_1576120 state_1586445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576120
  · exact cover_1586445
#print axioms cover_1576119

def state_1576118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_1576118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576118 := by
  apply coveredState_split_literal (state := state_1576118) 4
    state_1576119 state_1586508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576119
  · exact cover_1586508
#print axioms cover_1576118

def state_1586669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 12)))
theorem cover_1586669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586669 := by
  apply coveredState_split_literal (state := state_1586669) 4
    state_1586670 state_1586685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586670
  · exact cover_1586685
#print axioms cover_1586669

def state_1586605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_1586605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586605 := by
  apply coveredState_split_literal (state := state_1586605) 2
    state_1586606 state_1586669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586606
  · exact cover_1586669
#print axioms cover_1586605

def state_1586604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1586604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586604 := by
  apply coveredState_split_literal (state := state_1586604) 3
    state_1586605 state_1586736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586605
  · exact cover_1586736
#print axioms cover_1586604

def state_1586568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1586568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586568 := by
  apply coveredState_split_literal (state := state_1586568) 1
    state_1586569 state_1586604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586569
  · exact cover_1586604
#print axioms cover_1586568

def state_1586558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1586558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586558 := by
  apply coveredState_split_literal (state := state_1586558) 0
    state_1586559 state_1586568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586559
  · exact cover_1586568
#print axioms cover_1586558

def state_1586557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1586557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586557 := by
  apply coveredState_split_literal (state := state_1586557) 4
    state_1586558 state_1586741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586558
  · exact cover_1586741
#print axioms cover_1586557

def state_1586556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1586556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586556 := by
  apply coveredState_split_literal (state := state_1586556) 2
    state_1586557 state_1586788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586557
  · exact cover_1586788
#print axioms cover_1586556

def state_1586555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_1586555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586555 := by
  apply coveredState_split_literal (state := state_1586555) 4
    state_1586556 state_1586809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1586556
  · exact cover_1586809
#print axioms cover_1586555
end Mub6.Numerical.CircleFullD0.Forest
