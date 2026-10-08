import CircleFullInterface
import CircleForestAssembly0173
import CircleForestAssembly0174
import CircleForestChunk0658
import CircleForestChunk0660
import CircleForestChunk0664
import CircleForestChunk0665
import CircleForestChunk0666
import CircleForestChunk0667
import CircleForestChunk0668
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1460381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
theorem cover_1460381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460381 := by
  apply coveredState_split_literal (state := state_1460381) 0
    state_1460382 state_1460395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460382
  · exact cover_1460395
#print axioms cover_1460381

def state_1460380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 58)))
theorem cover_1460380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460380 := by
  apply coveredState_split_literal (state := state_1460380) 2
    state_1460381 state_1460500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460381
  · exact cover_1460500
#print axioms cover_1460380

def state_1460379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 29)))
theorem cover_1460379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460379 := by
  apply coveredState_split_literal (state := state_1460379) 4
    state_1460380 state_1460543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460380
  · exact cover_1460543
#print axioms cover_1460379

def state_1460378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1460378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460378 := by
  apply coveredState_split_literal (state := state_1460378) 3
    state_1460379 state_1460552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460379
  · exact cover_1460552
#print axioms cover_1460378

def state_1460377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1460377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460377 := by
  apply coveredState_split_literal (state := state_1460377) 1
    state_1460378 state_1460591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460378
  · exact cover_1460591
#print axioms cover_1460377

def state_1460369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1460369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460369 := by
  apply coveredState_split_literal (state := state_1460369) 0
    state_1460370 state_1460377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460370
  · exact cover_1460377
#print axioms cover_1460369

def state_1460368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 29)))
theorem cover_1460368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460368 := by
  apply coveredState_split_literal (state := state_1460368) 2
    state_1460369 state_1460598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460369
  · exact cover_1460598
#print axioms cover_1460368

def state_1460218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
theorem cover_1460218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460218 := by
  apply coveredState_split_literal (state := state_1460218) 4
    state_1460219 state_1460368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460219
  · exact cover_1460368
#print axioms cover_1460218

def state_1460217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1460217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460217 := by
  apply coveredState_split_literal (state := state_1460217) 3
    state_1460218 state_1460635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460218
  · exact cover_1460635
#print axioms cover_1460217

def state_1460216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1460216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460216 := by
  apply coveredState_split_literal (state := state_1460216) 1
    state_1460217 state_1460668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460217
  · exact cover_1460668
#print axioms cover_1460216

def state_1460210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1460210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460210 := by
  apply coveredState_split_literal (state := state_1460210) 0
    state_1460211 state_1460216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460211
  · exact cover_1460216
#print axioms cover_1460210

def state_1460209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 7)))
theorem cover_1460209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460209 := by
  apply coveredState_split_literal (state := state_1460209) 4
    state_1460210 state_1460671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460210
  · exact cover_1460671
#print axioms cover_1460209

def state_1460208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 7)))
theorem cover_1460208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460208 := by
  apply coveredState_split_literal (state := state_1460208) 2
    state_1460209 state_1460710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460209
  · exact cover_1460710
#print axioms cover_1460208

def state_1459986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1459986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459986 := by
  apply coveredState_split_literal (state := state_1459986) 3
    state_1459987 state_1460208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459987
  · exact cover_1460208
#print axioms cover_1459986

def state_1459336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1459336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459336 := by
  apply coveredState_split_literal (state := state_1459336) 1
    state_1459337 state_1459986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459337
  · exact cover_1459986
#print axioms cover_1459336

def state_1459324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1459324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459324 := by
  apply coveredState_split_literal (state := state_1459324) 0
    state_1459325 state_1459336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459325
  · exact cover_1459336
#print axioms cover_1459324

def state_1459138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_1459138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459138 := by
  apply coveredState_split_literal (state := state_1459138) 4
    state_1459139 state_1459324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459139
  · exact cover_1459324
#print axioms cover_1459138

def state_1459046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_1459046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459046 := by
  apply coveredState_split_literal (state := state_1459046) 3
    state_1459047 state_1459138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459047
  · exact cover_1459138
#print axioms cover_1459046

def state_1459045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1459045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459045 := by
  apply coveredState_split_literal (state := state_1459045) 2
    state_1459046 state_1460743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1459046
  · exact cover_1460743
#print axioms cover_1459045

def state_1458831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1458831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458831 := by
  apply coveredState_split_literal (state := state_1458831) 1
    state_1458832 state_1459045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458832
  · exact cover_1459045
#print axioms cover_1458831

def state_1458803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1458803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458803 := by
  apply coveredState_split_literal (state := state_1458803) 0
    state_1458804 state_1458831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458804
  · exact cover_1458831
#print axioms cover_1458803

def state_1458687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1458687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458687 := by
  apply coveredState_split_literal (state := state_1458687) 4
    state_1458688 state_1458803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458688
  · exact cover_1458803
#print axioms cover_1458687

def state_1460776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1460776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460776 := by
  apply coveredState_split_literal (state := state_1460776) 1
    state_1460777 state_1460816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460777
  · exact cover_1460816
#print axioms cover_1460776

def state_1460964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 8)))
theorem cover_1460964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460964 := by
  apply coveredState_split_literal (state := state_1460964) 0
    state_1460965 state_1460976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460965
  · exact cover_1460976
#print axioms cover_1460964

def state_1460963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 4)))
theorem cover_1460963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460963 := by
  apply coveredState_split_literal (state := state_1460963) 4
    state_1460964 state_1461031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460964
  · exact cover_1461031
#print axioms cover_1460963

def state_1460955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 4)))
theorem cover_1460955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460955 := by
  apply coveredState_split_literal (state := state_1460955) 3
    state_1460956 state_1460963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460956
  · exact cover_1460963
#print axioms cover_1460955

def state_1461072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 8)))
theorem cover_1461072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461072 := by
  apply coveredState_split_literal (state := state_1461072) 4
    state_1461073 state_1461128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461073
  · exact cover_1461128
#print axioms cover_1461072

def state_1461062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
theorem cover_1461062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461062 := by
  apply coveredState_split_literal (state := state_1461062) 3
    state_1461063 state_1461072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461063
  · exact cover_1461072
#print axioms cover_1461062

def state_1461052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
theorem cover_1461052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461052 := by
  apply coveredState_split_literal (state := state_1461052) 1
    state_1461053 state_1461062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461053
  · exact cover_1461062
#print axioms cover_1461052

def state_1461048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
theorem cover_1461048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461048 := by
  apply coveredState_split_literal (state := state_1461048) 0
    state_1461049 state_1461052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461049
  · exact cover_1461052
#print axioms cover_1461048

def state_1461047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
theorem cover_1461047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461047 := by
  apply coveredState_split_literal (state := state_1461047) 2
    state_1461048 state_1461137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461048
  · exact cover_1461137
#print axioms cover_1461047

def state_1461046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 4)))
theorem cover_1461046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461046 := by
  apply coveredState_split_literal (state := state_1461046) 4
    state_1461047 state_1461142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461047
  · exact cover_1461142
#print axioms cover_1461046
end Mub6.Numerical.CircleFullD0.Forest
