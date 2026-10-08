import CircleFullInterface
import CircleForestAssembly0022
import CircleForestChunk0091
import CircleForestChunk0092
import CircleForestChunk0093
import CircleForestChunk0094
import CircleForestChunk0095
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_22010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 42)))
theorem cover_22010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22010 := by
  apply coveredState_split_literal (state := state_22010) 3
    state_22011 state_22032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22011
  · exact cover_22032
#print axioms cover_22010

def state_21980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 42)))
theorem cover_21980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21980 := by
  apply coveredState_split_literal (state := state_21980) 0
    state_21981 state_22010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21981
  · exact cover_22010
#print axioms cover_21980

def state_21979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 21)))
theorem cover_21979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21979 := by
  apply coveredState_split_literal (state := state_21979) 4
    state_21980 state_22133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21980
  · exact cover_22133
#print axioms cover_21979

def state_21978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 21)))
theorem cover_21978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21978 := by
  apply coveredState_split_literal (state := state_21978) 2
    state_21979 state_22142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21979
  · exact cover_22142
#print axioms cover_21978

def state_21977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 21)))
theorem cover_21977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21977 := by
  apply coveredState_split_literal (state := state_21977) 1
    state_21978 state_22147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21978
  · exact cover_22147
#print axioms cover_21977

def state_22192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 61) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 42)))
theorem cover_22192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22192 := by
  apply coveredState_split_literal (state := state_22192) 2
    state_22193 state_22246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22193
  · exact cover_22246
#print axioms cover_22192

def state_22176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 42)))
theorem cover_22176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22176 := by
  apply coveredState_split_literal (state := state_22176) 1
    state_22177 state_22192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22177
  · exact cover_22192
#print axioms cover_22176

def state_22168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 42)))
theorem cover_22168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22168 := by
  apply coveredState_split_literal (state := state_22168) 3
    state_22169 state_22176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22169
  · exact cover_22176
#print axioms cover_22168

def state_22167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 42)))
theorem cover_22167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22167 := by
  apply coveredState_split_literal (state := state_22167) 0
    state_22168 state_22267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22168
  · exact cover_22267
#print axioms cover_22167

def state_22166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 21)))
theorem cover_22166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22166 := by
  apply coveredState_split_literal (state := state_22166) 4
    state_22167 state_22286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22167
  · exact cover_22286
#print axioms cover_22166

def state_22165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 21)))
theorem cover_22165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22165 := by
  apply coveredState_split_literal (state := state_22165) 2
    state_22166 state_22289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22166
  · exact cover_22289
#print axioms cover_22165

def state_22290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 21)))
theorem cover_22290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22290 := by
  apply coveredState_split_literal (state := state_22290) 2
    state_22291 state_22352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22291
  · exact cover_22352
#print axioms cover_22290

def state_22164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 21)))
theorem cover_22164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22164 := by
  apply coveredState_split_literal (state := state_22164) 1
    state_22165 state_22290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22165
  · exact cover_22290
#print axioms cover_22164

def state_21976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 21)))
theorem cover_21976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21976 := by
  apply coveredState_split_literal (state := state_21976) 0
    state_21977 state_22164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21977
  · exact cover_22164
#print axioms cover_21976

def state_21308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 10)))
theorem cover_21308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21308 := by
  apply coveredState_split_literal (state := state_21308) 4
    state_21309 state_21976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21309
  · exact cover_21976
#print axioms cover_21308

def state_22413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 60) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 41)))
theorem cover_22413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22413 := by
  apply coveredState_split_literal (state := state_22413) 2
    state_22414 state_22453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22414
  · exact cover_22453
#print axioms cover_22413

def state_22412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 41)))
theorem cover_22412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22412 := by
  apply coveredState_split_literal (state := state_22412) 1
    state_22413 state_22496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22413
  · exact cover_22496
#print axioms cover_22412

def state_22392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 20)))
theorem cover_22392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22392 := by
  apply coveredState_split_literal (state := state_22392) 4
    state_22393 state_22412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22393
  · exact cover_22412
#print axioms cover_22392

def state_22366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 20)))
theorem cover_22366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22366 := by
  apply coveredState_split_literal (state := state_22366) 0
    state_22367 state_22392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22367
  · exact cover_22392
#print axioms cover_22366

def state_22365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 20)))
theorem cover_22365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22365 := by
  apply coveredState_split_literal (state := state_22365) 3
    state_22366 state_22513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22366
  · exact cover_22513
#print axioms cover_22365

def state_22364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
theorem cover_22364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22364 := by
  apply coveredState_split_literal (state := state_22364) 2
    state_22365 state_22524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22365
  · exact cover_22524
#print axioms cover_22364

def state_22363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
theorem cover_22363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22363 := by
  apply coveredState_split_literal (state := state_22363) 1
    state_22364 state_22537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22364
  · exact cover_22537
#print axioms cover_22363

def state_22559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 60) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 41)))
theorem cover_22559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22559 := by
  apply coveredState_split_literal (state := state_22559) 2
    state_22560 state_22571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22560
  · exact cover_22571
#print axioms cover_22559

def state_22558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 41)))
theorem cover_22558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22558 := by
  apply coveredState_split_literal (state := state_22558) 1
    state_22559 state_22624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22559
  · exact cover_22624
#print axioms cover_22558

def state_22550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 20)))
theorem cover_22550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22550 := by
  apply coveredState_split_literal (state := state_22550) 4
    state_22551 state_22558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22551
  · exact cover_22558
#print axioms cover_22550

def state_22549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 20)))
theorem cover_22549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22549 := by
  apply coveredState_split_literal (state := state_22549) 0
    state_22550 state_22649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22550
  · exact cover_22649
#print axioms cover_22549

def state_22548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 20)))
theorem cover_22548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22548 := by
  apply coveredState_split_literal (state := state_22548) 3
    state_22549 state_22668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22549
  · exact cover_22668
#print axioms cover_22548

def state_22547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
theorem cover_22547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22547 := by
  apply coveredState_split_literal (state := state_22547) 2
    state_22548 state_22671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22548
  · exact cover_22671
#print axioms cover_22547

def state_22546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
theorem cover_22546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22546 := by
  apply coveredState_split_literal (state := state_22546) 1
    state_22547 state_22732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22547
  · exact cover_22732
#print axioms cover_22546

def state_22362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
theorem cover_22362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22362 := by
  apply coveredState_split_literal (state := state_22362) 0
    state_22363 state_22546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22363
  · exact cover_22546
#print axioms cover_22362

def state_22758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 42)))
theorem cover_22758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22758 := by
  apply coveredState_split_literal (state := state_22758) 1
    state_22759 state_22792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22759
  · exact cover_22792
#print axioms cover_22758

def state_22750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 42)))
theorem cover_22750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22750 := by
  apply coveredState_split_literal (state := state_22750) 0
    state_22751 state_22758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22751
  · exact cover_22758
#print axioms cover_22750
end Mub6.Numerical.CircleFullPrototype.Forest
