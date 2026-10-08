import CircleFullInterface
import CircleForestAssembly0081
import CircleForestChunk0327
import CircleForestChunk0328
import CircleForestChunk0329
import CircleForestChunk0330
import CircleForestChunk0331
import CircleForestChunk0332
import CircleForestChunk0333
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1015943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
theorem cover_1015943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015943 := by
  apply coveredState_split_literal (state := state_1015943) 0
    state_1015944 state_1016043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015944
  · exact cover_1016043
#print axioms cover_1015943

def state_1016069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
theorem cover_1016069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016069 := by
  apply coveredState_split_literal (state := state_1016069) 4
    state_1016070 state_1016123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016070
  · exact cover_1016123
#print axioms cover_1016069

def state_1016068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
theorem cover_1016068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016068 := by
  apply coveredState_split_literal (state := state_1016068) 0
    state_1016069 state_1016134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016069
  · exact cover_1016134
#print axioms cover_1016068

def state_1015942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
theorem cover_1015942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015942 := by
  apply coveredState_split_literal (state := state_1015942) 3
    state_1015943 state_1016068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015943
  · exact cover_1016068
#print axioms cover_1015942

def state_1016203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
theorem cover_1016203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016203 := by
  apply coveredState_split_literal (state := state_1016203) 0
    state_1016204 state_1016249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016204
  · exact cover_1016249
#print axioms cover_1016203

def state_1016147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
theorem cover_1016147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016147 := by
  apply coveredState_split_literal (state := state_1016147) 3
    state_1016148 state_1016203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016148
  · exact cover_1016203
#print axioms cover_1016147

def state_1015941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
theorem cover_1015941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015941 := by
  apply coveredState_split_literal (state := state_1015941) 1
    state_1015942 state_1016147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015942
  · exact cover_1016147
#print axioms cover_1015941

def state_1016359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 44)))
theorem cover_1016359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016359 := by
  apply coveredState_split_literal (state := state_1016359) 4
    state_1016360 state_1016413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016360
  · exact cover_1016413
#print axioms cover_1016359

def state_1016436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 44)))
theorem cover_1016436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016436 := by
  apply coveredState_split_literal (state := state_1016436) 4
    state_1016437 state_1016494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016437
  · exact cover_1016494
#print axioms cover_1016436

def state_1016358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 44)))
theorem cover_1016358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016358 := by
  apply coveredState_split_literal (state := state_1016358) 0
    state_1016359 state_1016436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016359
  · exact cover_1016436
#print axioms cover_1016358

def state_1016356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 44)))
theorem cover_1016356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016356 := by
  apply coveredState_split_literal (state := state_1016356) 3
    state_1016357 state_1016358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016357
  · exact cover_1016358
#print axioms cover_1016356

def state_1016308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 44)))
theorem cover_1016308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016308 := by
  apply coveredState_split_literal (state := state_1016308) 1
    state_1016309 state_1016356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016309
  · exact cover_1016356
#print axioms cover_1016308

def state_1015940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 44)))
theorem cover_1015940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015940 := by
  apply coveredState_split_literal (state := state_1015940) 2
    state_1015941 state_1016308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015941
  · exact cover_1016308
#print axioms cover_1015940

def state_1015939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
theorem cover_1015939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015939 := by
  apply coveredState_split_literal (state := state_1015939) 4
    state_1015940 state_1016519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015940
  · exact cover_1016519
#print axioms cover_1015939

def state_1015835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
theorem cover_1015835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015835 := by
  apply coveredState_split_literal (state := state_1015835) 0
    state_1015836 state_1015939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015836
  · exact cover_1015939
#print axioms cover_1015835

def state_1016714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 88)))
theorem cover_1016714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016714 := by
  apply coveredState_split_literal (state := state_1016714) 2
    state_1016715 state_1016778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016715
  · exact cover_1016778
#print axioms cover_1016714

def state_1016713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_1016713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016713 := by
  apply coveredState_split_literal (state := state_1016713) 4
    state_1016714 state_1016823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016714
  · exact cover_1016823
#print axioms cover_1016713

def state_1016833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 88)))
theorem cover_1016833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016833 := by
  apply coveredState_split_literal (state := state_1016833) 4
    state_1016834 state_1016887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016834
  · exact cover_1016887
#print axioms cover_1016833

def state_1016832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 88)))
theorem cover_1016832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016832 := by
  apply coveredState_split_literal (state := state_1016832) 0
    state_1016833 state_1016922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016833
  · exact cover_1016922
#print axioms cover_1016832

def state_1016936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
theorem cover_1016936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016936 := by
  apply coveredState_split_literal (state := state_1016936) 4
    state_1016937 state_1016998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016937
  · exact cover_1016998
#print axioms cover_1016936

def state_1016935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
theorem cover_1016935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016935 := by
  apply coveredState_split_literal (state := state_1016935) 0
    state_1016936 state_1017007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016936
  · exact cover_1017007
#print axioms cover_1016935

def state_1016831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
theorem cover_1016831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016831 := by
  apply coveredState_split_literal (state := state_1016831) 3
    state_1016832 state_1016935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016832
  · exact cover_1016935
#print axioms cover_1016831

def state_1016830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
theorem cover_1016830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016830 := by
  apply coveredState_split_literal (state := state_1016830) 1
    state_1016831 state_1017010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016831
  · exact cover_1017010
#print axioms cover_1016830

def state_1017093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
theorem cover_1017093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017093 := by
  apply coveredState_split_literal (state := state_1017093) 4
    state_1017094 state_1017147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017094
  · exact cover_1017147
#print axioms cover_1017093

def state_1017092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
theorem cover_1017092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017092 := by
  apply coveredState_split_literal (state := state_1017092) 0
    state_1017093 state_1017176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017093
  · exact cover_1017176
#print axioms cover_1017092

def state_1017062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
theorem cover_1017062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017062 := by
  apply coveredState_split_literal (state := state_1017062) 3
    state_1017063 state_1017092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017063
  · exact cover_1017092
#print axioms cover_1017062

def state_1017275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
theorem cover_1017275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017275 := by
  apply coveredState_split_literal (state := state_1017275) 4
    state_1017276 state_1017317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017276
  · exact cover_1017317
#print axioms cover_1017275

def state_1017217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
theorem cover_1017217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017217 := by
  apply coveredState_split_literal (state := state_1017217) 0
    state_1017218 state_1017275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017218
  · exact cover_1017275
#print axioms cover_1017217

def state_1017215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
theorem cover_1017215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017215 := by
  apply coveredState_split_literal (state := state_1017215) 3
    state_1017216 state_1017217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017216
  · exact cover_1017217
#print axioms cover_1017215

def state_1017061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
theorem cover_1017061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017061 := by
  apply coveredState_split_literal (state := state_1017061) 1
    state_1017062 state_1017215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017062
  · exact cover_1017215
#print axioms cover_1017061

def state_1016829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 88)))
theorem cover_1016829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016829 := by
  apply coveredState_split_literal (state := state_1016829) 2
    state_1016830 state_1017061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016830
  · exact cover_1017061
#print axioms cover_1016829

def state_1017364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 89)))
theorem cover_1017364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017364 := by
  apply coveredState_split_literal (state := state_1017364) 2
    state_1017365 state_1017396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017365
  · exact cover_1017396
#print axioms cover_1017364
end Mub6.Numerical.CircleFullD0.Forest
