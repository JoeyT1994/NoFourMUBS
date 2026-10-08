import CircleFullInterface
import CircleForestAssembly0029
import CircleForestAssembly0030
import CircleForestChunk0115
import CircleForestChunk0116
import CircleForestChunk0121
import CircleForestChunk0122
import CircleForestChunk0123
import CircleForestChunk0124
import CircleForestChunk0125
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_50422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 13)))
theorem cover_50422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50422 := by
  apply coveredState_split_literal (state := state_50422) 3
    state_50423 state_50428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50423
  · exact cover_50428
#print axioms cover_50422

def state_49260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_49260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49260 := by
  apply coveredState_split_literal (state := state_49260) 2
    state_49261 state_50422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49261
  · exact cover_50422
#print axioms cover_49260

def state_49212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_49212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49212 := by
  apply coveredState_split_literal (state := state_49212) 1
    state_49213 state_49260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49213
  · exact cover_49260
#print axioms cover_49212

def state_49106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_49106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49106 := by
  apply coveredState_split_literal (state := state_49106) 0
    state_49107 state_49212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49107
  · exact cover_49212
#print axioms cover_49106

def state_49002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_49002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49002 := by
  apply coveredState_split_literal (state := state_49002) 4
    state_49003 state_49106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_49003
  · exact cover_49106
#print axioms cover_49002

def state_48974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_48974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48974 := by
  apply coveredState_split_literal (state := state_48974) 3
    state_48975 state_49002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48975
  · exact cover_49002
#print axioms cover_48974

def state_48973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_48973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48973 := by
  apply coveredState_split_literal (state := state_48973) 4
    state_48974 state_50653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48974
  · exact cover_50653
#print axioms cover_48973

def state_48957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_48957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48957 := by
  apply coveredState_split_literal (state := state_48957) 3
    state_48958 state_48973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48958
  · exact cover_48973
#print axioms cover_48957

def state_48956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_48956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48956 := by
  apply coveredState_split_literal (state := state_48956) 2
    state_48957 state_50712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48957
  · exact cover_50712
#print axioms cover_48956

def state_50830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_50830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50830 := by
  apply coveredState_split_literal (state := state_50830) 2
    state_50831 state_50894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50831
  · exact cover_50894
#print axioms cover_50830

def state_50802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_50802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50802 := by
  apply coveredState_split_literal (state := state_50802) 0
    state_50803 state_50830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50803
  · exact cover_50830
#print axioms cover_50802

def state_50778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_50778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50778 := by
  apply coveredState_split_literal (state := state_50778) 4
    state_50779 state_50802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50779
  · exact cover_50802
#print axioms cover_50778

def state_50762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_50762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50762 := by
  apply coveredState_split_literal (state := state_50762) 3
    state_50763 state_50778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50763
  · exact cover_50778
#print axioms cover_50762

def state_50761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_50761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50761 := by
  apply coveredState_split_literal (state := state_50761) 1
    state_50762 state_50931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50762
  · exact cover_50931
#print axioms cover_50761

def state_50963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_50963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50963 := by
  apply coveredState_split_literal (state := state_50963) 3
    state_50964 state_50983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50964
  · exact cover_50983
#print axioms cover_50963

def state_50962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_50962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50962 := by
  apply coveredState_split_literal (state := state_50962) 1
    state_50963 state_51036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50963
  · exact cover_51036
#print axioms cover_50962

def state_50760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_50760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50760 := by
  apply coveredState_split_literal (state := state_50760) 4
    state_50761 state_50962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50761
  · exact cover_50962
#print axioms cover_50760

def state_50750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_50750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50750 := by
  apply coveredState_split_literal (state := state_50750) 3
    state_50751 state_50760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50751
  · exact cover_50760
#print axioms cover_50750

def state_50749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_50749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50749 := by
  apply coveredState_split_literal (state := state_50749) 2
    state_50750 state_51071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_50750
  · exact cover_51071
#print axioms cover_50749

def state_48955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_48955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48955 := by
  apply coveredState_split_literal (state := state_48955) 1
    state_48956 state_50749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48956
  · exact cover_50749
#print axioms cover_48955

def state_51142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_51142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51142 := by
  apply coveredState_split_literal (state := state_51142) 2
    state_51143 state_51184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51143
  · exact cover_51184
#print axioms cover_51142

def state_51134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
theorem cover_51134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51134 := by
  apply coveredState_split_literal (state := state_51134) 1
    state_51135 state_51142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51135
  · exact cover_51142
#print axioms cover_51134

def state_51128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_51128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51128 := by
  apply coveredState_split_literal (state := state_51128) 4
    state_51129 state_51134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51129
  · exact cover_51134
#print axioms cover_51128

def state_51126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_51126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51126 := by
  apply coveredState_split_literal (state := state_51126) 3
    state_51127 state_51128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51127
  · exact cover_51128
#print axioms cover_51126

def state_51125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_51125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51125 := by
  apply coveredState_split_literal (state := state_51125) 0
    state_51126 state_51215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51126
  · exact cover_51215
#print axioms cover_51125

def state_51222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_51222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51222 := by
  apply coveredState_split_literal (state := state_51222) 0
    state_51223 state_51274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51223
  · exact cover_51274
#print axioms cover_51222

def state_51124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_51124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51124 := by
  apply coveredState_split_literal (state := state_51124) 4
    state_51125 state_51222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51125
  · exact cover_51222
#print axioms cover_51124

def state_51118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_51118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51118 := by
  apply coveredState_split_literal (state := state_51118) 3
    state_51119 state_51124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51119
  · exact cover_51124
#print axioms cover_51118

def state_51117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_51117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51117 := by
  apply coveredState_split_literal (state := state_51117) 2
    state_51118 state_51287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51118
  · exact cover_51287
#print axioms cover_51117

def state_51302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_51302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51302 := by
  apply coveredState_split_literal (state := state_51302) 2
    state_51303 state_51356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51303
  · exact cover_51356
#print axioms cover_51302

def state_51116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_51116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51116 := by
  apply coveredState_split_literal (state := state_51116) 1
    state_51117 state_51302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51117
  · exact cover_51302
#print axioms cover_51116

def state_48954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_48954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48954 := by
  apply coveredState_split_literal (state := state_48954) 0
    state_48955 state_51116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48955
  · exact cover_51116
#print axioms cover_48954
end Mub6.Numerical.CircleFullPrototype.Forest
