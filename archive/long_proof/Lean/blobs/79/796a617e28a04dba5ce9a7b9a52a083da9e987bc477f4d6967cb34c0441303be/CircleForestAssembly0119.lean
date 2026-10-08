import CircleFullInterface
import CircleForestAssembly0118
import CircleForestChunk0473
import CircleForestChunk0474
import CircleForestChunk0475
import CircleForestChunk0476
import CircleForestChunk0477
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_274376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_274376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274376 := by
  apply coveredState_split_literal (state := state_274376) 1
    state_274377 state_274444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274377
  · exact cover_274444
#print axioms cover_274376

def state_274304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_274304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274304 := by
  apply coveredState_split_literal (state := state_274304) 0
    state_274305 state_274376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274305
  · exact cover_274376
#print axioms cover_274304

def state_274236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 8)))
theorem cover_274236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274236 := by
  apply coveredState_split_literal (state := state_274236) 4
    state_274237 state_274304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274237
  · exact cover_274304
#print axioms cover_274236

def state_274144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 8)))
theorem cover_274144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274144 := by
  apply coveredState_split_literal (state := state_274144) 2
    state_274145 state_274236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274145
  · exact cover_274236
#print axioms cover_274144

def state_275009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 8)))
theorem cover_275009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275009 := by
  apply coveredState_split_literal (state := state_275009) 2
    state_275010 state_275019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275010
  · exact cover_275019
#print axioms cover_275009

def state_274143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 8)))
theorem cover_274143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274143 := by
  apply coveredState_split_literal (state := state_274143) 3
    state_274144 state_275009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274144
  · exact cover_275009
#print axioms cover_274143

def state_275125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 17)))
theorem cover_275125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275125 := by
  apply coveredState_split_literal (state := state_275125) 2
    state_275126 state_275161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275126
  · exact cover_275161
#print axioms cover_275125

def state_275242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 35)))
theorem cover_275242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275242 := by
  apply coveredState_split_literal (state := state_275242) 1
    state_275243 state_275304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275243
  · exact cover_275304
#print axioms cover_275242

def state_275232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 17)))
theorem cover_275232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275232 := by
  apply coveredState_split_literal (state := state_275232) 4
    state_275233 state_275242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275233
  · exact cover_275242
#print axioms cover_275232

def state_275202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 17)))
theorem cover_275202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275202 := by
  apply coveredState_split_literal (state := state_275202) 2
    state_275203 state_275232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275203
  · exact cover_275232
#print axioms cover_275202

def state_275124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_275124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275124 := by
  apply coveredState_split_literal (state := state_275124) 3
    state_275125 state_275202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275125
  · exact cover_275202
#print axioms cover_275124

def state_275104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_275104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275104 := by
  apply coveredState_split_literal (state := state_275104) 0
    state_275105 state_275124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275105
  · exact cover_275124
#print axioms cover_275104

def state_275103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_275103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275103 := by
  apply coveredState_split_literal (state := state_275103) 1
    state_275104 state_275315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275104
  · exact cover_275315
#print axioms cover_275103

def state_275095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 8)))
theorem cover_275095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275095 := by
  apply coveredState_split_literal (state := state_275095) 4
    state_275096 state_275103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275096
  · exact cover_275103
#print axioms cover_275095

def state_275077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 8)))
theorem cover_275077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275077 := by
  apply coveredState_split_literal (state := state_275077) 2
    state_275078 state_275095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275078
  · exact cover_275095
#print axioms cover_275077

def state_275076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 8)))
theorem cover_275076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275076 := by
  apply coveredState_split_literal (state := state_275076) 3
    state_275077 state_275332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275077
  · exact cover_275332
#print axioms cover_275076

def state_274142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 8)))
theorem cover_274142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274142 := by
  apply coveredState_split_literal (state := state_274142) 1
    state_274143 state_275076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274143
  · exact cover_275076
#print axioms cover_274142

def state_275421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 17)))
theorem cover_275421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275421 := by
  apply coveredState_split_literal (state := state_275421) 2
    state_275422 state_275433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275422
  · exact cover_275433
#print axioms cover_275421

def state_275536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 35)))
theorem cover_275536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275536 := by
  apply coveredState_split_literal (state := state_275536) 0
    state_275537 state_275598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275537
  · exact cover_275598
#print axioms cover_275536

def state_275508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 17)))
theorem cover_275508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275508 := by
  apply coveredState_split_literal (state := state_275508) 4
    state_275509 state_275536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275509
  · exact cover_275536
#print axioms cover_275508

def state_275496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 17)))
theorem cover_275496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275496 := by
  apply coveredState_split_literal (state := state_275496) 2
    state_275497 state_275508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275497
  · exact cover_275508
#print axioms cover_275496

def state_275420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_275420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275420 := by
  apply coveredState_split_literal (state := state_275420) 3
    state_275421 state_275496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275421
  · exact cover_275496
#print axioms cover_275420

def state_275400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_275400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275400 := by
  apply coveredState_split_literal (state := state_275400) 1
    state_275401 state_275420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275401
  · exact cover_275420
#print axioms cover_275400

def state_275399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_275399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275399 := by
  apply coveredState_split_literal (state := state_275399) 0
    state_275400 state_275613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275400
  · exact cover_275613
#print axioms cover_275399

def state_275383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 8)))
theorem cover_275383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275383 := by
  apply coveredState_split_literal (state := state_275383) 4
    state_275384 state_275399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275384
  · exact cover_275399
#print axioms cover_275383

def state_275373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 8)))
theorem cover_275373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275373 := by
  apply coveredState_split_literal (state := state_275373) 2
    state_275374 state_275383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275374
  · exact cover_275383
#print axioms cover_275373

def state_275372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 8)))
theorem cover_275372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275372 := by
  apply coveredState_split_literal (state := state_275372) 3
    state_275373 state_275632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275373
  · exact cover_275632
#print axioms cover_275372

def state_275669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 8)))
theorem cover_275669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275669 := by
  apply coveredState_split_literal (state := state_275669) 3
    state_275670 state_275729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275670
  · exact cover_275729
#print axioms cover_275669

def state_275371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 8)))
theorem cover_275371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275371 := by
  apply coveredState_split_literal (state := state_275371) 1
    state_275372 state_275669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275372
  · exact cover_275669
#print axioms cover_275371

def state_274141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 8)))
theorem cover_274141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274141 := by
  apply coveredState_split_literal (state := state_274141) 0
    state_274142 state_275371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274142
  · exact cover_275371
#print axioms cover_274141

def state_275913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 91) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
theorem cover_275913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275913 := by
  apply coveredState_split_literal (state := state_275913) 3
    state_275914 state_275961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275914
  · exact cover_275961
#print axioms cover_275913

def state_275905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
theorem cover_275905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275905 := by
  apply coveredState_split_literal (state := state_275905) 1
    state_275906 state_275913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275906
  · exact cover_275913
#print axioms cover_275905
end Mub6.Numerical.CircleFullPrototype.Forest
