import CircleFullInterface
import CircleForestAssembly0023
import CircleForestChunk0098
import CircleForestChunk0099
import CircleForestChunk0100
import CircleForestChunk0101
import CircleForestChunk0102
import CircleForestChunk0103
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_961568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 55)))
theorem cover_961568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961568 := by
  apply coveredState_split_literal (state := state_961568) 4
    state_961569 state_961662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961569
  · exact cover_961662
#print axioms cover_961568

def state_961567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_961567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961567 := by
  apply coveredState_split_literal (state := state_961567) 2
    state_961568 state_961695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961568
  · exact cover_961695
#print axioms cover_961567

def state_961335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_961335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961335 := by
  apply coveredState_split_literal (state := state_961335) 1
    state_961336 state_961567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961336
  · exact cover_961567
#print axioms cover_961335

def state_961317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_961317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961317 := by
  apply coveredState_split_literal (state := state_961317) 0
    state_961318 state_961335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961318
  · exact cover_961335
#print axioms cover_961317

def state_961307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 55)))
theorem cover_961307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961307 := by
  apply coveredState_split_literal (state := state_961307) 3
    state_961308 state_961317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961308
  · exact cover_961317
#print axioms cover_961307

def state_961143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 27)))
theorem cover_961143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961143 := by
  apply coveredState_split_literal (state := state_961143) 4
    state_961144 state_961307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961144
  · exact cover_961307
#print axioms cover_961143

def state_961142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_961142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961142 := by
  apply coveredState_split_literal (state := state_961142) 2
    state_961143 state_961706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961143
  · exact cover_961706
#print axioms cover_961142

def state_961141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_961141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961141 := by
  apply coveredState_split_literal (state := state_961141) 1
    state_961142 state_961731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961142
  · exact cover_961731
#print axioms cover_961141

def state_961121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_961121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961121 := by
  apply coveredState_split_literal (state := state_961121) 0
    state_961122 state_961141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961122
  · exact cover_961141
#print axioms cover_961121

def state_961111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 27)))
theorem cover_961111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961111 := by
  apply coveredState_split_literal (state := state_961111) 3
    state_961112 state_961121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961112
  · exact cover_961121
#print axioms cover_961111

def state_961087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 13)))
theorem cover_961087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961087 := by
  apply coveredState_split_literal (state := state_961087) 4
    state_961088 state_961111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961088
  · exact cover_961111
#print axioms cover_961087

def state_961086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_961086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961086 := by
  apply coveredState_split_literal (state := state_961086) 2
    state_961087 state_961792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961087
  · exact cover_961792
#print axioms cover_961086

def state_961085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_961085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961085 := by
  apply coveredState_split_literal (state := state_961085) 1
    state_961086 state_961805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961086
  · exact cover_961805
#print axioms cover_961085

def state_961847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_961847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961847 := by
  apply coveredState_split_literal (state := state_961847) 1
    state_961848 state_961901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961848
  · exact cover_961901
#print axioms cover_961847

def state_961846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
theorem cover_961846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961846 := by
  apply coveredState_split_literal (state := state_961846) 0
    state_961847 state_961914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961847
  · exact cover_961914
#print axioms cover_961846

def state_961844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 54)))
theorem cover_961844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961844 := by
  apply coveredState_split_literal (state := state_961844) 3
    state_961845 state_961846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961845
  · exact cover_961846
#print axioms cover_961844

def state_962003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 220)))
theorem cover_962003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962003 := by
  apply coveredState_split_literal (state := state_962003) 3
    state_962004 state_962013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962004
  · exact cover_962013
#print axioms cover_962003

def state_962002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 110)))
theorem cover_962002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962002 := by
  apply coveredState_split_literal (state := state_962002) 4
    state_962003 state_962070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962003
  · exact cover_962070
#print axioms cover_962002

def state_961964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_961964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961964 := by
  apply coveredState_split_literal (state := state_961964) 2
    state_961965 state_962002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961965
  · exact cover_962002
#print axioms cover_961964

def state_961962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_961962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961962 := by
  apply coveredState_split_literal (state := state_961962) 1
    state_961963 state_961964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961963
  · exact cover_961964
#print axioms cover_961962

def state_961961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_961961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961961 := by
  apply coveredState_split_literal (state := state_961961) 0
    state_961962 state_962077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961962
  · exact cover_962077
#print axioms cover_961961

def state_961945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 110)))
theorem cover_961945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961945 := by
  apply coveredState_split_literal (state := state_961945) 3
    state_961946 state_961961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961946
  · exact cover_961961
#print axioms cover_961945

def state_961944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 55)))
theorem cover_961944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961944 := by
  apply coveredState_split_literal (state := state_961944) 4
    state_961945 state_962094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961945
  · exact cover_962094
#print axioms cover_961944

def state_962102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 110)))
theorem cover_962102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962102 := by
  apply coveredState_split_literal (state := state_962102) 3
    state_962103 state_962112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962103
  · exact cover_962112
#print axioms cover_962102

def state_962101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 55)))
theorem cover_962101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962101 := by
  apply coveredState_split_literal (state := state_962101) 4
    state_962102 state_962175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962102
  · exact cover_962175
#print axioms cover_962101

def state_961943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_961943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961943 := by
  apply coveredState_split_literal (state := state_961943) 2
    state_961944 state_962101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961944
  · exact cover_962101
#print axioms cover_961943

def state_962196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 178) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_962196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962196 := by
  apply coveredState_split_literal (state := state_962196) 2
    state_962197 state_962224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962197
  · exact cover_962224
#print axioms cover_962196

def state_962195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_962195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962195 := by
  apply coveredState_split_literal (state := state_962195) 1
    state_962196 state_962263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962196
  · exact cover_962263
#print axioms cover_962195

def state_962194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
theorem cover_962194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962194 := by
  apply coveredState_split_literal (state := state_962194) 0
    state_962195 state_962288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962195
  · exact cover_962288
#print axioms cover_962194

def state_962186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 110)))
theorem cover_962186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962186 := by
  apply coveredState_split_literal (state := state_962186) 3
    state_962187 state_962194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962187
  · exact cover_962194
#print axioms cover_962186

def state_962185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 55)))
theorem cover_962185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962185 := by
  apply coveredState_split_literal (state := state_962185) 4
    state_962186 state_962301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962186
  · exact cover_962301
#print axioms cover_962185

def state_962184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_962184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962184 := by
  apply coveredState_split_literal (state := state_962184) 2
    state_962185 state_962338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962185
  · exact cover_962338
#print axioms cover_962184
end Mub6.Numerical.CircleFullD0.Forest
