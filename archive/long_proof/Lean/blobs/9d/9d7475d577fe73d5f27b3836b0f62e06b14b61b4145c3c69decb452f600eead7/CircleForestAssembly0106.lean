import CircleFullInterface
import CircleForestAssembly0105
import CircleForestChunk0425
import CircleForestChunk0426
import CircleForestChunk0427
import CircleForestChunk0428
import CircleForestChunk0429
import CircleForestChunk0430
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1039621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_1039621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039621 := by
  apply coveredState_split_literal (state := state_1039621) 3
    state_1039622 state_1039651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039622
  · exact cover_1039651
#print axioms cover_1039621

def state_1039577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1039577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039577 := by
  apply coveredState_split_literal (state := state_1039577) 2
    state_1039578 state_1039621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039578
  · exact cover_1039621
#print axioms cover_1039577

def state_1039539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1039539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039539 := by
  apply coveredState_split_literal (state := state_1039539) 1
    state_1039540 state_1039577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039540
  · exact cover_1039577
#print axioms cover_1039539

def state_1039538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1039538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039538 := by
  apply coveredState_split_literal (state := state_1039538) 0
    state_1039539 state_1039772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039539
  · exact cover_1039772
#print axioms cover_1039538

def state_1039366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_1039366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039366 := by
  apply coveredState_split_literal (state := state_1039366) 4
    state_1039367 state_1039538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039367
  · exact cover_1039538
#print axioms cover_1039366

def state_1039783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_1039783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039783 := by
  apply coveredState_split_literal (state := state_1039783) 4
    state_1039784 state_1039799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039784
  · exact cover_1039799
#print axioms cover_1039783

def state_1039365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1039365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039365 := by
  apply coveredState_split_literal (state := state_1039365) 3
    state_1039366 state_1039783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039366
  · exact cover_1039783
#print axioms cover_1039365

def state_1039861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_1039861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039861 := by
  apply coveredState_split_literal (state := state_1039861) 4
    state_1039862 state_1039889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039862
  · exact cover_1039889
#print axioms cover_1039861

def state_1039952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_1039952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039952 := by
  apply coveredState_split_literal (state := state_1039952) 1
    state_1039953 state_1039988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039953
  · exact cover_1039988
#print axioms cover_1039952

def state_1039951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_1039951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039951 := by
  apply coveredState_split_literal (state := state_1039951) 0
    state_1039952 state_1040033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039952
  · exact cover_1040033
#print axioms cover_1039951

def state_1040084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 28)))
theorem cover_1040084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040084 := by
  apply coveredState_split_literal (state := state_1040084) 2
    state_1040085 state_1040122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040085
  · exact cover_1040122
#print axioms cover_1040084

def state_1040083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 14)))
theorem cover_1040083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040083 := by
  apply coveredState_split_literal (state := state_1040083) 4
    state_1040084 state_1040167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040084
  · exact cover_1040167
#print axioms cover_1040083

def state_1040081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_1040081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040081 := by
  apply coveredState_split_literal (state := state_1040081) 3
    state_1040082 state_1040083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040082
  · exact cover_1040083
#print axioms cover_1040081

def state_1040079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_1040079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040079 := by
  apply coveredState_split_literal (state := state_1040079) 1
    state_1040080 state_1040081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040080
  · exact cover_1040081
#print axioms cover_1040079

def state_1040078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_1040078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040078 := by
  apply coveredState_split_literal (state := state_1040078) 0
    state_1040079 state_1040168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040079
  · exact cover_1040168
#print axioms cover_1040078

def state_1040077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 7)))
theorem cover_1040077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040077 := by
  apply coveredState_split_literal (state := state_1040077) 4
    state_1040078 state_1040169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040078
  · exact cover_1040169
#print axioms cover_1040077

def state_1040039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_1040039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040039 := by
  apply coveredState_split_literal (state := state_1040039) 2
    state_1040040 state_1040077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040040
  · exact cover_1040077
#print axioms cover_1040039

def state_1040038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_1040038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040038 := by
  apply coveredState_split_literal (state := state_1040038) 3
    state_1040039 state_1040170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040039
  · exact cover_1040170
#print axioms cover_1040038

def state_1040238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_1040238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040238 := by
  apply coveredState_split_literal (state := state_1040238) 3
    state_1040239 state_1040298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040239
  · exact cover_1040298
#print axioms cover_1040238

def state_1040237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_1040237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040237 := by
  apply coveredState_split_literal (state := state_1040237) 1
    state_1040238 state_1040319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040238
  · exact cover_1040319
#print axioms cover_1040237

def state_1040236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_1040236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040236 := by
  apply coveredState_split_literal (state := state_1040236) 0
    state_1040237 state_1040358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040237
  · exact cover_1040358
#print axioms cover_1040236

def state_1040235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
theorem cover_1040235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040235 := by
  apply coveredState_split_literal (state := state_1040235) 4
    state_1040236 state_1040369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040236
  · exact cover_1040369
#print axioms cover_1040235

def state_1040470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 57)))
theorem cover_1040470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040470 := by
  apply coveredState_split_literal (state := state_1040470) 2
    state_1040471 state_1040514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040471
  · exact cover_1040514
#print axioms cover_1040470

def state_1040460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 28)))
theorem cover_1040460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040460 := by
  apply coveredState_split_literal (state := state_1040460) 4
    state_1040461 state_1040470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040461
  · exact cover_1040470
#print axioms cover_1040460

def state_1040458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_1040458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040458 := by
  apply coveredState_split_literal (state := state_1040458) 3
    state_1040459 state_1040460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040459
  · exact cover_1040460
#print axioms cover_1040458

def state_1040457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_1040457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040457 := by
  apply coveredState_split_literal (state := state_1040457) 1
    state_1040458 state_1040577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040458
  · exact cover_1040577
#print axioms cover_1040457

def state_1040456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_1040456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040456 := by
  apply coveredState_split_literal (state := state_1040456) 0
    state_1040457 state_1040590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040457
  · exact cover_1040590
#print axioms cover_1040456

def state_1040404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 28)))
theorem cover_1040404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040404 := by
  apply coveredState_split_literal (state := state_1040404) 2
    state_1040405 state_1040456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040405
  · exact cover_1040456
#print axioms cover_1040404

def state_1040403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 14)))
theorem cover_1040403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040403 := by
  apply coveredState_split_literal (state := state_1040403) 4
    state_1040404 state_1040591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040404
  · exact cover_1040591
#print axioms cover_1040403

def state_1040387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_1040387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040387 := by
  apply coveredState_split_literal (state := state_1040387) 3
    state_1040388 state_1040403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040388
  · exact cover_1040403
#print axioms cover_1040387

def state_1040386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_1040386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040386 := by
  apply coveredState_split_literal (state := state_1040386) 1
    state_1040387 state_1040652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040387
  · exact cover_1040652
#print axioms cover_1040386

def state_1040385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_1040385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040385 := by
  apply coveredState_split_literal (state := state_1040385) 0
    state_1040386 state_1040685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040386
  · exact cover_1040685
#print axioms cover_1040385
end Mub6.Numerical.CircleFullD0.Forest
