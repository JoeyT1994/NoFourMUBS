import CircleFullInterface
import CircleForestAssembly0105
import CircleForestChunk0417
import CircleForestChunk0422
import CircleForestChunk0423
import CircleForestChunk0424
import CircleForestChunk0425
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_175750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_175750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175750 := by
  apply coveredState_split_literal (state := state_175750) 2
    state_175751 state_175778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175751
  · exact cover_175778
#print axioms cover_175750

def state_175714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_175714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175714 := by
  apply coveredState_split_literal (state := state_175714) 0
    state_175715 state_175750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175715
  · exact cover_175750
#print axioms cover_175714

def state_175713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_175713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175713 := by
  apply coveredState_split_literal (state := state_175713) 4
    state_175714 state_176961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175714
  · exact cover_176961
#print axioms cover_175713

def state_176975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 12)))
theorem cover_176975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176975 := by
  apply coveredState_split_literal (state := state_176975) 3
    state_176976 state_177017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176976
  · exact cover_177017
#print axioms cover_176975

def state_176973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_176973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176973 := by
  apply coveredState_split_literal (state := state_176973) 2
    state_176974 state_176975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176974
  · exact cover_176975
#print axioms cover_176973

def state_176971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_176971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176971 := by
  apply coveredState_split_literal (state := state_176971) 0
    state_176972 state_176973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176972
  · exact cover_176973
#print axioms cover_176971

def state_176970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_176970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176970 := by
  apply coveredState_split_literal (state := state_176970) 4
    state_176971 state_177066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176971
  · exact cover_177066
#print axioms cover_176970

def state_175712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_175712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175712 := by
  apply coveredState_split_literal (state := state_175712) 1
    state_175713 state_176970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175713
  · exact cover_176970
#print axioms cover_175712

def state_175711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_175711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175711 := by
  apply coveredState_split_literal (state := state_175711) 4
    state_175712 state_177067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175712
  · exact cover_177067
#print axioms cover_175711

def state_175659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_175659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175659 := by
  apply coveredState_split_literal (state := state_175659) 3
    state_175660 state_175711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175660
  · exact cover_175711
#print axioms cover_175659

def state_177069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_177069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177069 := by
  apply coveredState_split_literal (state := state_177069) 4
    state_177070 state_177101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177070
  · exact cover_177101
#print axioms cover_177069

def state_177229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 24)))
theorem cover_177229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177229 := by
  apply coveredState_split_literal (state := state_177229) 4
    state_177230 state_177277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177230
  · exact cover_177277
#print axioms cover_177229

def state_177228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 24)))
theorem cover_177228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177228 := by
  apply coveredState_split_literal (state := state_177228) 3
    state_177229 state_177296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177229
  · exact cover_177296
#print axioms cover_177228

def state_177212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 24)))
theorem cover_177212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177212 := by
  apply coveredState_split_literal (state := state_177212) 0
    state_177213 state_177228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177213
  · exact cover_177228
#print axioms cover_177212

def state_177211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 24)))
theorem cover_177211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177211 := by
  apply coveredState_split_literal (state := state_177211) 2
    state_177212 state_177339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177212
  · exact cover_177339
#print axioms cover_177211

def state_177210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 12)))
theorem cover_177210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177210 := by
  apply coveredState_split_literal (state := state_177210) 4
    state_177211 state_177350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177211
  · exact cover_177350
#print axioms cover_177210

def state_177182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 12)))
theorem cover_177182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177182 := by
  apply coveredState_split_literal (state := state_177182) 1
    state_177183 state_177210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177183
  · exact cover_177210
#print axioms cover_177182

def state_177164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
theorem cover_177164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177164 := by
  apply coveredState_split_literal (state := state_177164) 3
    state_177165 state_177182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177165
  · exact cover_177182
#print axioms cover_177164

def state_177138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
theorem cover_177138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177138 := by
  apply coveredState_split_literal (state := state_177138) 0
    state_177139 state_177164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177139
  · exact cover_177164
#print axioms cover_177138

def state_177137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 6)))
theorem cover_177137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177137 := by
  apply coveredState_split_literal (state := state_177137) 4
    state_177138 state_177361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177138
  · exact cover_177361
#print axioms cover_177137

def state_177384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 6)))
theorem cover_177384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177384 := by
  apply coveredState_split_literal (state := state_177384) 4
    state_177385 state_177402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177385
  · exact cover_177402
#print axioms cover_177384

def state_177136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_177136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177136 := by
  apply coveredState_split_literal (state := state_177136) 2
    state_177137 state_177384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177137
  · exact cover_177384
#print axioms cover_177136

def state_177458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 6)))
theorem cover_177458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177458 := by
  apply coveredState_split_literal (state := state_177458) 4
    state_177459 state_177514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177459
  · exact cover_177514
#print axioms cover_177458

def state_177457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_177457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177457 := by
  apply coveredState_split_literal (state := state_177457) 2
    state_177458 state_177529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177458
  · exact cover_177529
#print axioms cover_177457

def state_177135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_177135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177135 := by
  apply coveredState_split_literal (state := state_177135) 1
    state_177136 state_177457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177136
  · exact cover_177457
#print axioms cover_177135

def state_177568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 7)))
theorem cover_177568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177568 := by
  apply coveredState_split_literal (state := state_177568) 3
    state_177569 state_177622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177569
  · exact cover_177622
#print axioms cover_177568

def state_177634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 7)))
theorem cover_177634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177634 := by
  apply coveredState_split_literal (state := state_177634) 4
    state_177635 state_177688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177635
  · exact cover_177688
#print axioms cover_177634

def state_177633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 7)))
theorem cover_177633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177633 := by
  apply coveredState_split_literal (state := state_177633) 3
    state_177634 state_177699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177634
  · exact cover_177699
#print axioms cover_177633

def state_177567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 7)))
theorem cover_177567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177567 := by
  apply coveredState_split_literal (state := state_177567) 0
    state_177568 state_177633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177568
  · exact cover_177633
#print axioms cover_177567

def state_177557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_177557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177557 := by
  apply coveredState_split_literal (state := state_177557) 2
    state_177558 state_177567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177558
  · exact cover_177567
#print axioms cover_177557

def state_177556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_177556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177556 := by
  apply coveredState_split_literal (state := state_177556) 1
    state_177557 state_177746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177557
  · exact cover_177746
#print axioms cover_177556

def state_177134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_177134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177134 := by
  apply coveredState_split_literal (state := state_177134) 4
    state_177135 state_177556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_177135
  · exact cover_177556
#print axioms cover_177134
end Mub6.Numerical.CircleFullPrototype.Forest
