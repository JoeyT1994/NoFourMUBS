import CircleFullInterface
import CircleForestAssembly0072
import CircleForestChunk0290
import CircleForestChunk0291
import CircleForestChunk0293
import CircleForestChunk0294
import CircleForestChunk0295
import CircleForestChunk0296
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1007457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 21)))
theorem cover_1007457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007457 := by
  apply coveredState_split_literal (state := state_1007457) 3
    state_1007458 state_1007637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007458
  · exact cover_1007637
#print axioms cover_1007457

def state_1007421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 10)))
theorem cover_1007421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007421 := by
  apply coveredState_split_literal (state := state_1007421) 4
    state_1007422 state_1007457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007422
  · exact cover_1007457
#print axioms cover_1007421

def state_1007420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_1007420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007420 := by
  apply coveredState_split_literal (state := state_1007420) 2
    state_1007421 state_1007930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007421
  · exact cover_1007930
#print axioms cover_1007420

def state_1007398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_1007398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007398 := by
  apply coveredState_split_literal (state := state_1007398) 1
    state_1007399 state_1007420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007399
  · exact cover_1007420
#print axioms cover_1007398

def state_1007178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
theorem cover_1007178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007178 := by
  apply coveredState_split_literal (state := state_1007178) 0
    state_1007179 state_1007398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007179
  · exact cover_1007398
#print axioms cover_1007178

def state_1008045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 21)))
theorem cover_1008045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008045 := by
  apply coveredState_split_literal (state := state_1008045) 0
    state_1008046 state_1008093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008046
  · exact cover_1008093
#print axioms cover_1008045

def state_1008044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 21)))
theorem cover_1008044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008044 := by
  apply coveredState_split_literal (state := state_1008044) 3
    state_1008045 state_1008114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008045
  · exact cover_1008114
#print axioms cover_1008044

def state_1008034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 10)))
theorem cover_1008034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008034 := by
  apply coveredState_split_literal (state := state_1008034) 4
    state_1008035 state_1008044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008035
  · exact cover_1008044
#print axioms cover_1008034

def state_1008033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_1008033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008033 := by
  apply coveredState_split_literal (state := state_1008033) 2
    state_1008034 state_1008119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008034
  · exact cover_1008119
#print axioms cover_1008033

def state_1008023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_1008023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008023 := by
  apply coveredState_split_literal (state := state_1008023) 1
    state_1008024 state_1008033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008024
  · exact cover_1008033
#print axioms cover_1008023

def state_1007971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_1007971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007971 := by
  apply coveredState_split_literal (state := state_1007971) 0
    state_1007972 state_1008023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007972
  · exact cover_1008023
#print axioms cover_1007971

def state_1007177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_1007177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007177 := by
  apply coveredState_split_literal (state := state_1007177) 3
    state_1007178 state_1007971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007178
  · exact cover_1007971
#print axioms cover_1007177

def state_1008224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 44)))
theorem cover_1008224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008224 := by
  apply coveredState_split_literal (state := state_1008224) 2
    state_1008225 state_1008286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008225
  · exact cover_1008286
#print axioms cover_1008224

def state_1008218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 44)))
theorem cover_1008218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008218 := by
  apply coveredState_split_literal (state := state_1008218) 1
    state_1008219 state_1008224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008219
  · exact cover_1008224
#print axioms cover_1008218

def state_1008194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 44)))
theorem cover_1008194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008194 := by
  apply coveredState_split_literal (state := state_1008194) 3
    state_1008195 state_1008218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008195
  · exact cover_1008218
#print axioms cover_1008194

def state_1008193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
theorem cover_1008193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008193 := by
  apply coveredState_split_literal (state := state_1008193) 4
    state_1008194 state_1008295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008194
  · exact cover_1008295
#print axioms cover_1008193

def state_1008192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
theorem cover_1008192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008192 := by
  apply coveredState_split_literal (state := state_1008192) 0
    state_1008193 state_1008306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008193
  · exact cover_1008306
#print axioms cover_1008192

def state_1008323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
theorem cover_1008323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008323 := by
  apply coveredState_split_literal (state := state_1008323) 3
    state_1008324 state_1008371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008324
  · exact cover_1008371
#print axioms cover_1008323

def state_1008322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_1008322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008322 := by
  apply coveredState_split_literal (state := state_1008322) 4
    state_1008323 state_1008392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008323
  · exact cover_1008392
#print axioms cover_1008322

def state_1008321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_1008321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008321 := by
  apply coveredState_split_literal (state := state_1008321) 0
    state_1008322 state_1008403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008322
  · exact cover_1008403
#print axioms cover_1008321

def state_1008191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
theorem cover_1008191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008191 := by
  apply coveredState_split_literal (state := state_1008191) 3
    state_1008192 state_1008321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008192
  · exact cover_1008321
#print axioms cover_1008191

def state_1008190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
theorem cover_1008190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008190 := by
  apply coveredState_split_literal (state := state_1008190) 2
    state_1008191 state_1008422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008191
  · exact cover_1008422
#print axioms cover_1008190

def state_1008182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
theorem cover_1008182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008182 := by
  apply coveredState_split_literal (state := state_1008182) 1
    state_1008183 state_1008190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008183
  · exact cover_1008190
#print axioms cover_1008182

def state_1008181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_1008181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008181 := by
  apply coveredState_split_literal (state := state_1008181) 4
    state_1008182 state_1008435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008182
  · exact cover_1008435
#print axioms cover_1008181

def state_1008149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_1008149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008149 := by
  apply coveredState_split_literal (state := state_1008149) 0
    state_1008150 state_1008181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008150
  · exact cover_1008181
#print axioms cover_1008149

def state_1008446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_1008446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008446 := by
  apply coveredState_split_literal (state := state_1008446) 0
    state_1008447 state_1008462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008447
  · exact cover_1008462
#print axioms cover_1008446

def state_1008148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_1008148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008148 := by
  apply coveredState_split_literal (state := state_1008148) 3
    state_1008149 state_1008446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008149
  · exact cover_1008446
#print axioms cover_1008148

def state_1007176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_1007176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007176 := by
  apply coveredState_split_literal (state := state_1007176) 4
    state_1007177 state_1008148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007177
  · exact cover_1008148
#print axioms cover_1007176

def state_1007175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1007175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007175 := by
  apply coveredState_split_literal (state := state_1007175) 2
    state_1007176 state_1008511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007176
  · exact cover_1008511
#print axioms cover_1007175

def state_1007151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1007151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007151 := by
  apply coveredState_split_literal (state := state_1007151) 1
    state_1007152 state_1007175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007152
  · exact cover_1007175
#print axioms cover_1007151

def state_1007081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1007081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007081 := by
  apply coveredState_split_literal (state := state_1007081) 0
    state_1007082 state_1007151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007082
  · exact cover_1007151
#print axioms cover_1007081

def state_1007021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_1007021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007021 := by
  apply coveredState_split_literal (state := state_1007021) 4
    state_1007022 state_1007081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1007022
  · exact cover_1007081
#print axioms cover_1007021
end Mub6.Numerical.CircleFullD0.Forest
