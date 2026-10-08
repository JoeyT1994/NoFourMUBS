import D0FullInterface
import D0ForestAssembly0064
import D0ForestChunk0261
import D0ForestChunk0262
import D0ForestChunk0263
import D0ForestChunk0264
import D0ForestChunk0265
import D0ForestChunk0266
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1000428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 88)))
theorem cover_1000428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000428 := by
  apply coveredState_split_literal (state := state_1000428) 3
    state_1000429 state_1000644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000429
  · exact cover_1000644
#print axioms cover_1000428

def state_1000685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 89)))
theorem cover_1000685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000685 := by
  apply coveredState_split_literal (state := state_1000685) 4
    state_1000686 state_1000743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000686
  · exact cover_1000743
#print axioms cover_1000685

def state_1000677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 89)))
theorem cover_1000677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000677 := by
  apply coveredState_split_literal (state := state_1000677) 0
    state_1000678 state_1000685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000678
  · exact cover_1000685
#print axioms cover_1000677

def state_1000661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 89)))
theorem cover_1000661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000661 := by
  apply coveredState_split_literal (state := state_1000661) 2
    state_1000662 state_1000677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000662
  · exact cover_1000677
#print axioms cover_1000661

def state_1000660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 89)))
theorem cover_1000660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000660 := by
  apply coveredState_split_literal (state := state_1000660) 1
    state_1000661 state_1000754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000661
  · exact cover_1000754
#print axioms cover_1000660

def state_1000659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 89)))
theorem cover_1000659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000659 := by
  apply coveredState_split_literal (state := state_1000659) 3
    state_1000660 state_1000787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000660
  · exact cover_1000787
#print axioms cover_1000659

def state_1000427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
theorem cover_1000427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000427 := by
  apply coveredState_split_literal (state := state_1000427) 4
    state_1000428 state_1000659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000428
  · exact cover_1000659
#print axioms cover_1000427

def state_1000409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
theorem cover_1000409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000409 := by
  apply coveredState_split_literal (state := state_1000409) 0
    state_1000410 state_1000427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000410
  · exact cover_1000427
#print axioms cover_1000409

def state_1000399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 44)))
theorem cover_1000399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000399 := by
  apply coveredState_split_literal (state := state_1000399) 2
    state_1000400 state_1000409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000400
  · exact cover_1000409
#print axioms cover_1000399

def state_1000235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 44)))
theorem cover_1000235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000235 := by
  apply coveredState_split_literal (state := state_1000235) 1
    state_1000236 state_1000399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000236
  · exact cover_1000399
#print axioms cover_1000235

def state_1000234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 44)))
theorem cover_1000234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000234 := by
  apply coveredState_split_literal (state := state_1000234) 3
    state_1000235 state_1000798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000235
  · exact cover_1000798
#print axioms cover_1000234

def state_1000233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_1000233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000233 := by
  apply coveredState_split_literal (state := state_1000233) 4
    state_1000234 state_1000823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000234
  · exact cover_1000823
#print axioms cover_1000233

def state_1000213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_1000213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000213 := by
  apply coveredState_split_literal (state := state_1000213) 0
    state_1000214 state_1000233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000214
  · exact cover_1000233
#print axioms cover_1000213

def state_1000203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 22)))
theorem cover_1000203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000203 := by
  apply coveredState_split_literal (state := state_1000203) 2
    state_1000204 state_1000213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000204
  · exact cover_1000213
#print axioms cover_1000203

def state_1000202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_1000202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000202 := by
  apply coveredState_split_literal (state := state_1000202) 3
    state_1000203 state_1000884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000203
  · exact cover_1000884
#print axioms cover_1000202

def state_1000174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_1000174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000174 := by
  apply coveredState_split_literal (state := state_1000174) 1
    state_1000175 state_1000202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000175
  · exact cover_1000202
#print axioms cover_1000174

def state_1000173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_1000173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000173 := by
  apply coveredState_split_literal (state := state_1000173) 4
    state_1000174 state_1000893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000174
  · exact cover_1000893
#print axioms cover_1000173

def state_1000939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
theorem cover_1000939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000939 := by
  apply coveredState_split_literal (state := state_1000939) 4
    state_1000940 state_1000993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000940
  · exact cover_1000993
#print axioms cover_1000939

def state_1000938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
theorem cover_1000938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000938 := by
  apply coveredState_split_literal (state := state_1000938) 0
    state_1000939 state_1001006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000939
  · exact cover_1001006
#print axioms cover_1000938

def state_1000936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 44)))
theorem cover_1000936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000936 := by
  apply coveredState_split_literal (state := state_1000936) 2
    state_1000937 state_1000938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000937
  · exact cover_1000938
#print axioms cover_1000936

def state_1001095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 177)))
theorem cover_1001095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001095 := by
  apply coveredState_split_literal (state := state_1001095) 2
    state_1001096 state_1001105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001096
  · exact cover_1001105
#print axioms cover_1001095

def state_1001094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 177)))
theorem cover_1001094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001094 := by
  apply coveredState_split_literal (state := state_1001094) 1
    state_1001095 state_1001162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001095
  · exact cover_1001162
#print axioms cover_1001094

def state_1001056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 177)))
theorem cover_1001056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001056 := by
  apply coveredState_split_literal (state := state_1001056) 3
    state_1001057 state_1001094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001057
  · exact cover_1001094
#print axioms cover_1001056

def state_1001054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 88)))
theorem cover_1001054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001054 := by
  apply coveredState_split_literal (state := state_1001054) 4
    state_1001055 state_1001056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001055
  · exact cover_1001056
#print axioms cover_1001054

def state_1001053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 88)))
theorem cover_1001053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001053 := by
  apply coveredState_split_literal (state := state_1001053) 0
    state_1001054 state_1001169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001054
  · exact cover_1001169
#print axioms cover_1001053

def state_1001037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 88)))
theorem cover_1001037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001037 := by
  apply coveredState_split_literal (state := state_1001037) 2
    state_1001038 state_1001053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001038
  · exact cover_1001053
#print axioms cover_1001037

def state_1001036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 88)))
theorem cover_1001036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001036 := by
  apply coveredState_split_literal (state := state_1001036) 1
    state_1001037 state_1001186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001037
  · exact cover_1001186
#print axioms cover_1001036

def state_1001194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 88)))
theorem cover_1001194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001194 := by
  apply coveredState_split_literal (state := state_1001194) 2
    state_1001195 state_1001204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001195
  · exact cover_1001204
#print axioms cover_1001194

def state_1001193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 88)))
theorem cover_1001193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001193 := by
  apply coveredState_split_literal (state := state_1001193) 1
    state_1001194 state_1001267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001194
  · exact cover_1001267
#print axioms cover_1001193

def state_1001035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 88)))
theorem cover_1001035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001035 := by
  apply coveredState_split_literal (state := state_1001035) 3
    state_1001036 state_1001193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001036
  · exact cover_1001193
#print axioms cover_1001035

def state_1001288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 178)))
theorem cover_1001288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001288 := by
  apply coveredState_split_literal (state := state_1001288) 3
    state_1001289 state_1001316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001289
  · exact cover_1001316
#print axioms cover_1001288

def state_1001287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 89)))
theorem cover_1001287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001287 := by
  apply coveredState_split_literal (state := state_1001287) 4
    state_1001288 state_1001355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001288
  · exact cover_1001355
#print axioms cover_1001287
end Mub6.Numerical.CircleFullD0.Forest
