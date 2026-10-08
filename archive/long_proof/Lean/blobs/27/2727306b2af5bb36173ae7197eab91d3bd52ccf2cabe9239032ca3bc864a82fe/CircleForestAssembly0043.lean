import CircleFullInterface
import CircleForestAssembly0041
import CircleForestAssembly0042
import CircleForestChunk0163
import CircleForestChunk0165
import CircleForestChunk0168
import CircleForestChunk0169
import CircleForestChunk0170
import CircleForestChunk0171
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_61189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 18)))
theorem cover_61189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61189 := by
  apply coveredState_split_literal (state := state_61189) 3
    state_61190 state_61751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61190
  · exact cover_61751
#print axioms cover_61189

def state_61188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_61188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61188 := by
  apply coveredState_split_literal (state := state_61188) 4
    state_61189 state_61830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61189
  · exact cover_61830
#print axioms cover_61188

def state_61156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_61156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61156 := by
  apply coveredState_split_literal (state := state_61156) 1
    state_61157 state_61188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61157
  · exact cover_61188
#print axioms cover_61156

def state_61108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_61108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61108 := by
  apply coveredState_split_literal (state := state_61108) 0
    state_61109 state_61156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61109
  · exact cover_61156
#print axioms cover_61108

def state_61010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_61010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61010 := by
  apply coveredState_split_literal (state := state_61010) 2
    state_61011 state_61108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61011
  · exact cover_61108
#print axioms cover_61010

def state_61009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_61009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61009 := by
  apply coveredState_split_literal (state := state_61009) 3
    state_61010 state_61861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61010
  · exact cover_61861
#print axioms cover_61009

def state_60511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_60511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60511 := by
  apply coveredState_split_literal (state := state_60511) 4
    state_60512 state_61009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60512
  · exact cover_61009
#print axioms cover_60511

def state_60495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_60495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60495 := by
  apply coveredState_split_literal (state := state_60495) 1
    state_60496 state_60511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60496
  · exact cover_60511
#print axioms cover_60495

def state_60475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_60475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60475 := by
  apply coveredState_split_literal (state := state_60475) 0
    state_60476 state_60495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60476
  · exact cover_60495
#print axioms cover_60475

def state_60474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_60474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60474 := by
  apply coveredState_split_literal (state := state_60474) 3
    state_60475 state_61910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60475
  · exact cover_61910
#print axioms cover_60474

def state_60386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_60386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60386 := by
  apply coveredState_split_literal (state := state_60386) 2
    state_60387 state_60474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60387
  · exact cover_60474
#print axioms cover_60386

def state_60385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_60385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60385 := by
  apply coveredState_split_literal (state := state_60385) 4
    state_60386 state_61929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60386
  · exact cover_61929
#print axioms cover_60385

def state_60384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_60384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60384 := by
  apply coveredState_split_literal (state := state_60384) 3
    state_60385 state_61964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60385
  · exact cover_61964
#print axioms cover_60384

def state_61993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
theorem cover_61993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61993 := by
  apply coveredState_split_literal (state := state_61993) 4
    state_61994 state_62043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61994
  · exact cover_62043
#print axioms cover_61993

def state_61992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_61992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61992 := by
  apply coveredState_split_literal (state := state_61992) 2
    state_61993 state_62082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61993
  · exact cover_62082
#print axioms cover_61992

def state_61990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_61990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61990 := by
  apply coveredState_split_literal (state := state_61990) 1
    state_61991 state_61992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61991
  · exact cover_61992
#print axioms cover_61990

def state_61976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_61976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61976 := by
  apply coveredState_split_literal (state := state_61976) 0
    state_61977 state_61990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61977
  · exact cover_61990
#print axioms cover_61976

def state_61975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_61975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61975 := by
  apply coveredState_split_literal (state := state_61975) 3
    state_61976 state_62083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61976
  · exact cover_62083
#print axioms cover_61975

def state_61974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_61974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61974 := by
  apply coveredState_split_literal (state := state_61974) 4
    state_61975 state_62096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61975
  · exact cover_62096
#print axioms cover_61974

def state_61973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_61973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61973 := by
  apply coveredState_split_literal (state := state_61973) 3
    state_61974 state_62105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61974
  · exact cover_62105
#print axioms cover_61973

def state_60383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_60383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60383 := by
  apply coveredState_split_literal (state := state_60383) 2
    state_60384 state_61973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60384
  · exact cover_61973
#print axioms cover_60383

def state_62288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 18)))
theorem cover_62288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62288 := by
  apply coveredState_split_literal (state := state_62288) 3
    state_62289 state_62352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62289
  · exact cover_62352
#print axioms cover_62288

def state_62287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_62287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62287 := by
  apply coveredState_split_literal (state := state_62287) 4
    state_62288 state_62393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62288
  · exact cover_62393
#print axioms cover_62287

def state_62257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_62257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62257 := by
  apply coveredState_split_literal (state := state_62257) 0
    state_62258 state_62287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62258
  · exact cover_62287
#print axioms cover_62257

def state_62231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_62231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62231 := by
  apply coveredState_split_literal (state := state_62231) 2
    state_62232 state_62257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62232
  · exact cover_62257
#print axioms cover_62231

def state_62230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_62230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62230 := by
  apply coveredState_split_literal (state := state_62230) 1
    state_62231 state_62408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62231
  · exact cover_62408
#print axioms cover_62230

def state_62229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_62229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62229 := by
  apply coveredState_split_literal (state := state_62229) 3
    state_62230 state_62421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62230
  · exact cover_62421
#print axioms cover_62229

def state_62175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_62175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62175 := by
  apply coveredState_split_literal (state := state_62175) 4
    state_62176 state_62229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62176
  · exact cover_62229
#print axioms cover_62175

def state_62139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_62139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62139 := by
  apply coveredState_split_literal (state := state_62139) 0
    state_62140 state_62175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62140
  · exact cover_62175
#print axioms cover_62139

def state_62138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_62138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62138 := by
  apply coveredState_split_literal (state := state_62138) 3
    state_62139 state_62452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62139
  · exact cover_62452
#print axioms cover_62138

def state_62114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_62114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62114 := by
  apply coveredState_split_literal (state := state_62114) 2
    state_62115 state_62138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62115
  · exact cover_62138
#print axioms cover_62114

def state_62113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_62113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62113 := by
  apply coveredState_split_literal (state := state_62113) 1
    state_62114 state_62455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_62114
  · exact cover_62455
#print axioms cover_62113
end Mub6.Numerical.CircleFullPrototype.Forest
