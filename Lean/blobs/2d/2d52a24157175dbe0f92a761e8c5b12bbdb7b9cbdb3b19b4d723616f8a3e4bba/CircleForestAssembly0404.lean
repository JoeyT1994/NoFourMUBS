import CircleFullInterface
import CircleForestAssembly0403
import CircleForestChunk1573
import CircleForestChunk1574
import CircleForestChunk1575
import CircleForestChunk1576
import CircleForestChunk1577
import CircleForestChunk1578
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2250893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 26)))
theorem cover_2250893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250893 := by
  apply coveredState_split_literal (state := state_2250893) 4
    state_2250894 state_2250935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250894
  · exact cover_2250935
#print axioms cover_2250893

def state_2251088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 53)))
theorem cover_2251088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251088 := by
  apply coveredState_split_literal (state := state_2251088) 0
    state_2251089 state_2251108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251089
  · exact cover_2251108
#print axioms cover_2251088

def state_2251086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 26)))
theorem cover_2251086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251086 := by
  apply coveredState_split_literal (state := state_2251086) 4
    state_2251087 state_2251088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251087
  · exact cover_2251088
#print axioms cover_2251086

def state_2250892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
theorem cover_2250892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250892 := by
  apply coveredState_split_literal (state := state_2250892) 2
    state_2250893 state_2251086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250893
  · exact cover_2251086
#print axioms cover_2250892

def state_2250874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
theorem cover_2250874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250874 := by
  apply coveredState_split_literal (state := state_2250874) 1
    state_2250875 state_2250892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250875
  · exact cover_2250892
#print axioms cover_2250874

def state_2251167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 26)))
theorem cover_2251167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251167 := by
  apply coveredState_split_literal (state := state_2251167) 2
    state_2251168 state_2251209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251168
  · exact cover_2251209
#print axioms cover_2251167

def state_2251161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 26)))
theorem cover_2251161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251161 := by
  apply coveredState_split_literal (state := state_2251161) 1
    state_2251162 state_2251167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251162
  · exact cover_2251167
#print axioms cover_2251161

def state_2250873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
theorem cover_2250873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250873 := by
  apply coveredState_split_literal (state := state_2250873) 3
    state_2250874 state_2251161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250874
  · exact cover_2251161
#print axioms cover_2250873

def state_2250803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
theorem cover_2250803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250803 := by
  apply coveredState_split_literal (state := state_2250803) 0
    state_2250804 state_2250873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250804
  · exact cover_2250873
#print axioms cover_2250803

def state_2251315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
theorem cover_2251315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251315 := by
  apply coveredState_split_literal (state := state_2251315) 0
    state_2251316 state_2251373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251316
  · exact cover_2251373
#print axioms cover_2251315

def state_2251277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 27)))
theorem cover_2251277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251277 := by
  apply coveredState_split_literal (state := state_2251277) 4
    state_2251278 state_2251315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251278
  · exact cover_2251315
#print axioms cover_2251277

def state_2251235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
theorem cover_2251235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251235 := by
  apply coveredState_split_literal (state := state_2251235) 2
    state_2251236 state_2251277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251236
  · exact cover_2251277
#print axioms cover_2251235

def state_2251448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2251448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251448 := by
  apply coveredState_split_literal (state := state_2251448) 1
    state_2251449 state_2251494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251449
  · exact cover_2251494
#print axioms cover_2251448

def state_2251447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
theorem cover_2251447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251447 := by
  apply coveredState_split_literal (state := state_2251447) 3
    state_2251448 state_2251551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251448
  · exact cover_2251551
#print axioms cover_2251447

def state_2251413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
theorem cover_2251413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251413 := by
  apply coveredState_split_literal (state := state_2251413) 0
    state_2251414 state_2251447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251414
  · exact cover_2251447
#print axioms cover_2251413

def state_2251621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 55)))
theorem cover_2251621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251621 := by
  apply coveredState_split_literal (state := state_2251621) 1
    state_2251622 state_2251683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251622
  · exact cover_2251683
#print axioms cover_2251621

def state_2251620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
theorem cover_2251620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251620 := by
  apply coveredState_split_literal (state := state_2251620) 3
    state_2251621 state_2251714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251621
  · exact cover_2251714
#print axioms cover_2251620

def state_2251582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
theorem cover_2251582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251582 := by
  apply coveredState_split_literal (state := state_2251582) 0
    state_2251583 state_2251620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251583
  · exact cover_2251620
#print axioms cover_2251582

def state_2251412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 27)))
theorem cover_2251412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251412 := by
  apply coveredState_split_literal (state := state_2251412) 4
    state_2251413 state_2251582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251413
  · exact cover_2251582
#print axioms cover_2251412

def state_2251386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
theorem cover_2251386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251386 := by
  apply coveredState_split_literal (state := state_2251386) 2
    state_2251387 state_2251412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251387
  · exact cover_2251412
#print axioms cover_2251386

def state_2251234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
theorem cover_2251234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251234 := by
  apply coveredState_split_literal (state := state_2251234) 1
    state_2251235 state_2251386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251235
  · exact cover_2251386
#print axioms cover_2251234

def state_2251233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
theorem cover_2251233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251233 := by
  apply coveredState_split_literal (state := state_2251233) 3
    state_2251234 state_2251727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251234
  · exact cover_2251727
#print axioms cover_2251233

def state_2251890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 108)))
theorem cover_2251890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251890 := by
  apply coveredState_split_literal (state := state_2251890) 0
    state_2251891 state_2251912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251891
  · exact cover_2251912
#print axioms cover_2251890

def state_2251889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 54)))
theorem cover_2251889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251889 := by
  apply coveredState_split_literal (state := state_2251889) 4
    state_2251890 state_2251967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251890
  · exact cover_2251967
#print axioms cover_2251889

def state_2252047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 68 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 109)))
theorem cover_2252047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252047 := by
  apply coveredState_split_literal (state := state_2252047) 3
    state_2252048 state_2252109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252048
  · exact cover_2252109
#print axioms cover_2252047

def state_2252136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 207) else (if j.val < 3 then 174 else (if j.val < 4 then 184 else 109)))
theorem cover_2252136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252136 := by
  apply coveredState_split_literal (state := state_2252136) 4
    state_2252137 state_2252176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252137
  · exact cover_2252176
#print axioms cover_2252136

def state_2252135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 207) else (if j.val < 3 then 87 else (if j.val < 4 then 184 else 109)))
theorem cover_2252135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252135 := by
  apply coveredState_split_literal (state := state_2252135) 2
    state_2252136 state_2252201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252136
  · exact cover_2252201
#print axioms cover_2252135

def state_2252123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 184 else 109)))
theorem cover_2252123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252123 := by
  apply coveredState_split_literal (state := state_2252123) 1
    state_2252124 state_2252135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252124
  · exact cover_2252135
#print axioms cover_2252123

def state_2252122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 109)))
theorem cover_2252122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252122 := by
  apply coveredState_split_literal (state := state_2252122) 3
    state_2252123 state_2252228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252123
  · exact cover_2252228
#print axioms cover_2252122

def state_2252046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 109)))
theorem cover_2252046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252046 := by
  apply coveredState_split_literal (state := state_2252046) 0
    state_2252047 state_2252122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252047
  · exact cover_2252122
#print axioms cover_2252046

def state_2252030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 54)))
theorem cover_2252030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252030 := by
  apply coveredState_split_literal (state := state_2252030) 4
    state_2252031 state_2252046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2252031
  · exact cover_2252046
#print axioms cover_2252030

def state_2251888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2251888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251888 := by
  apply coveredState_split_literal (state := state_2251888) 2
    state_2251889 state_2252030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251889
  · exact cover_2252030
#print axioms cover_2251888
end Mub6.Numerical.CircleFullD0.Forest
