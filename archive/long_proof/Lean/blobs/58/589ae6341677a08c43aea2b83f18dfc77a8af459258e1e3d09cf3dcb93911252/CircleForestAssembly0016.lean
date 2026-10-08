import CircleFullInterface
import CircleForestAssembly0015
import CircleForestChunk0063
import CircleForestChunk0064
import CircleForestChunk0065
import CircleForestChunk0066
import CircleForestChunk0067
import CircleForestChunk0068
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_15140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_15140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15140 := by
  apply coveredState_split_literal (state := state_15140) 2
    state_15141 state_15192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15141
  · exact cover_15192
#print axioms cover_15140

def state_15139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_15139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15139 := by
  apply coveredState_split_literal (state := state_15139) 1
    state_15140 state_15207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15140
  · exact cover_15207
#print axioms cover_15139

def state_15061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_15061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15061 := by
  apply coveredState_split_literal (state := state_15061) 0
    state_15062 state_15139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15062
  · exact cover_15139
#print axioms cover_15061

def state_14743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_14743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14743 := by
  apply coveredState_split_literal (state := state_14743) 4
    state_14744 state_15061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14744
  · exact cover_15061
#print axioms cover_14743

def state_14535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_14535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14535 := by
  apply coveredState_split_literal (state := state_14535) 3
    state_14536 state_14743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_14536
  · exact cover_14743
#print axioms cover_14535

def state_13667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_13667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13667 := by
  apply coveredState_split_literal (state := state_13667) 2
    state_13668 state_14535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_13668
  · exact cover_14535
#print axioms cover_13667

def state_15247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_15247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15247 := by
  apply coveredState_split_literal (state := state_15247) 0
    state_15248 state_15289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15248
  · exact cover_15289
#print axioms cover_15247

def state_15340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_15340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15340 := by
  apply coveredState_split_literal (state := state_15340) 2
    state_15341 state_15386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15341
  · exact cover_15386
#print axioms cover_15340

def state_15339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_15339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15339 := by
  apply coveredState_split_literal (state := state_15339) 1
    state_15340 state_15439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15340
  · exact cover_15439
#print axioms cover_15339

def state_15509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_15509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15509 := by
  apply coveredState_split_literal (state := state_15509) 3
    state_15510 state_15569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15510
  · exact cover_15569
#print axioms cover_15509

def state_15467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_15467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15467 := by
  apply coveredState_split_literal (state := state_15467) 2
    state_15468 state_15509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15468
  · exact cover_15509
#print axioms cover_15467

def state_15580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_15580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15580 := by
  apply coveredState_split_literal (state := state_15580) 2
    state_15581 state_15586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15581
  · exact cover_15586
#print axioms cover_15580

def state_15466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_15466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15466 := by
  apply coveredState_split_literal (state := state_15466) 1
    state_15467 state_15580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15467
  · exact cover_15580
#print axioms cover_15466

def state_15338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_15338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15338 := by
  apply coveredState_split_literal (state := state_15338) 0
    state_15339 state_15466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15339
  · exact cover_15466
#print axioms cover_15338

def state_15246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_15246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15246 := by
  apply coveredState_split_literal (state := state_15246) 4
    state_15247 state_15338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15247
  · exact cover_15338
#print axioms cover_15246

def state_15648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_15648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15648 := by
  apply coveredState_split_literal (state := state_15648) 0
    state_15649 state_15698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15649
  · exact cover_15698
#print axioms cover_15648

def state_15762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_15762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15762 := by
  apply coveredState_split_literal (state := state_15762) 1
    state_15763 state_15792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15763
  · exact cover_15792
#print axioms cover_15762

def state_15835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_15835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15835 := by
  apply coveredState_split_literal (state := state_15835) 1
    state_15836 state_15893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15836
  · exact cover_15893
#print axioms cover_15835

def state_15761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_15761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15761 := by
  apply coveredState_split_literal (state := state_15761) 0
    state_15762 state_15835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15762
  · exact cover_15835
#print axioms cover_15761

def state_15647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_15647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15647 := by
  apply coveredState_split_literal (state := state_15647) 4
    state_15648 state_15761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15648
  · exact cover_15761
#print axioms cover_15647

def state_15245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_15245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15245 := by
  apply coveredState_split_literal (state := state_15245) 3
    state_15246 state_15647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15246
  · exact cover_15647
#print axioms cover_15245

def state_15949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_15949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15949 := by
  apply coveredState_split_literal (state := state_15949) 0
    state_15950 state_15993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15950
  · exact cover_15993
#print axioms cover_15949

def state_15948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_15948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15948 := by
  apply coveredState_split_literal (state := state_15948) 4
    state_15949 state_16028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15949
  · exact cover_16028
#print axioms cover_15948

def state_15947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_15947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15947 := by
  apply coveredState_split_literal (state := state_15947) 3
    state_15948 state_16051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15948
  · exact cover_16051
#print axioms cover_15947

def state_16076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
theorem cover_16076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16076 := by
  apply coveredState_split_literal (state := state_16076) 0
    state_16077 state_16110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16077
  · exact cover_16110
#print axioms cover_16076

def state_16075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_16075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16075 := by
  apply coveredState_split_literal (state := state_16075) 4
    state_16076 state_16143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16076
  · exact cover_16143
#print axioms cover_16075

def state_16182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 4)))
theorem cover_16182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16182 := by
  apply coveredState_split_literal (state := state_16182) 2
    state_16183 state_16226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16183
  · exact cover_16226
#print axioms cover_16182

def state_16181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_16181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16181 := by
  apply coveredState_split_literal (state := state_16181) 3
    state_16182 state_16247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16182
  · exact cover_16247
#print axioms cover_16181

def state_16159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_16159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16159 := by
  apply coveredState_split_literal (state := state_16159) 1
    state_16160 state_16181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16160
  · exact cover_16181
#print axioms cover_16159

def state_16145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_16145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16145 := by
  apply coveredState_split_literal (state := state_16145) 0
    state_16146 state_16159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16146
  · exact cover_16159
#print axioms cover_16145

def state_16144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_16144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16144 := by
  apply coveredState_split_literal (state := state_16144) 4
    state_16145 state_16256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16145
  · exact cover_16256
#print axioms cover_16144

def state_16074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_16074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16074 := by
  apply coveredState_split_literal (state := state_16074) 3
    state_16075 state_16144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16075
  · exact cover_16144
#print axioms cover_16074
end Mub6.Numerical.CircleFullPrototype.Forest
