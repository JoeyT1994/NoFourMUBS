import CircleFullInterface
import CircleForestAssembly0054
import CircleForestChunk0221
import CircleForestChunk0222
import CircleForestChunk0223
import CircleForestChunk0224
import CircleForestChunk0225
import CircleForestChunk0226
import CircleForestChunk0227
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_991112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 88)))
theorem cover_991112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991112 := by
  apply coveredState_split_literal (state := state_991112) 1
    state_991113 state_991120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991113
  · exact cover_991120
#print axioms cover_991112

def state_991111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 44)))
theorem cover_991111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991111 := by
  apply coveredState_split_literal (state := state_991111) 4
    state_991112 state_991211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991112
  · exact cover_991211
#print axioms cover_991111

def state_991075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 44)))
theorem cover_991075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991075 := by
  apply coveredState_split_literal (state := state_991075) 3
    state_991076 state_991111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991076
  · exact cover_991111
#print axioms cover_991075

def state_991061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 44)))
theorem cover_991061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991061 := by
  apply coveredState_split_literal (state := state_991061) 0
    state_991062 state_991075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991062
  · exact cover_991075
#print axioms cover_991061

def state_990983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 44)))
theorem cover_990983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990983 := by
  apply coveredState_split_literal (state := state_990983) 2
    state_990984 state_991061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990984
  · exact cover_991061
#print axioms cover_990983

def state_991233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 44)))
theorem cover_991233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991233 := by
  apply coveredState_split_literal (state := state_991233) 3
    state_991234 state_991287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991234
  · exact cover_991287
#print axioms cover_991233

def state_991219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 44)))
theorem cover_991219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991219 := by
  apply coveredState_split_literal (state := state_991219) 0
    state_991220 state_991233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991220
  · exact cover_991233
#print axioms cover_991219

def state_991363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 88)))
theorem cover_991363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991363 := by
  apply coveredState_split_literal (state := state_991363) 0
    state_991364 state_991389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991364
  · exact cover_991389
#print axioms cover_991363

def state_991362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 88)))
theorem cover_991362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991362 := by
  apply coveredState_split_literal (state := state_991362) 2
    state_991363 state_991442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991363
  · exact cover_991442
#print axioms cover_991362

def state_991361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 88)))
theorem cover_991361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991361 := by
  apply coveredState_split_literal (state := state_991361) 1
    state_991362 state_991477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991362
  · exact cover_991477
#print axioms cover_991361

def state_991483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 89)))
theorem cover_991483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991483 := by
  apply coveredState_split_literal (state := state_991483) 2
    state_991484 state_991529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991484
  · exact cover_991529
#print axioms cover_991483

def state_991482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 89)))
theorem cover_991482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991482 := by
  apply coveredState_split_literal (state := state_991482) 1
    state_991483 state_991550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991483
  · exact cover_991550
#print axioms cover_991482

def state_991360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 44)))
theorem cover_991360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991360 := by
  apply coveredState_split_literal (state := state_991360) 4
    state_991361 state_991482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991361
  · exact cover_991482
#print axioms cover_991360

def state_991330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 44)))
theorem cover_991330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991330 := by
  apply coveredState_split_literal (state := state_991330) 3
    state_991331 state_991360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991331
  · exact cover_991360
#print axioms cover_991330

def state_991312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 44)))
theorem cover_991312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991312 := by
  apply coveredState_split_literal (state := state_991312) 0
    state_991313 state_991330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991313
  · exact cover_991330
#print axioms cover_991312

def state_991218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 44)))
theorem cover_991218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991218 := by
  apply coveredState_split_literal (state := state_991218) 2
    state_991219 state_991312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991219
  · exact cover_991312
#print axioms cover_991218

def state_990982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 44)))
theorem cover_990982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990982 := by
  apply coveredState_split_literal (state := state_990982) 1
    state_990983 state_991218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990983
  · exact cover_991218
#print axioms cover_990982

def state_991595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
theorem cover_991595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991595 := by
  apply coveredState_split_literal (state := state_991595) 2
    state_991596 state_991627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991596
  · exact cover_991627
#print axioms cover_991595

def state_991589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
theorem cover_991589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991589 := by
  apply coveredState_split_literal (state := state_991589) 1
    state_991590 state_991595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991590
  · exact cover_991595
#print axioms cover_991589

def state_990981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 22)))
theorem cover_990981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990981 := by
  apply coveredState_split_literal (state := state_990981) 4
    state_990982 state_991589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990982
  · exact cover_991589
#print axioms cover_990981

def state_990861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
theorem cover_990861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990861 := by
  apply coveredState_split_literal (state := state_990861) 3
    state_990862 state_990981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990862
  · exact cover_990981
#print axioms cover_990861

def state_990831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
theorem cover_990831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990831 := by
  apply coveredState_split_literal (state := state_990831) 0
    state_990832 state_990861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990832
  · exact cover_990861
#print axioms cover_990831

def state_990763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_990763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990763 := by
  apply coveredState_split_literal (state := state_990763) 2
    state_990764 state_990831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990764
  · exact cover_990831
#print axioms cover_990763

def state_990743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_990743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990743 := by
  apply coveredState_split_literal (state := state_990743) 1
    state_990744 state_990763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990744
  · exact cover_990763
#print axioms cover_990743

def state_990742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_990742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990742 := by
  apply coveredState_split_literal (state := state_990742) 4
    state_990743 state_991684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990743
  · exact cover_991684
#print axioms cover_990742

def state_990680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_990680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990680 := by
  apply coveredState_split_literal (state := state_990680) 3
    state_990681 state_990742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_990681
  · exact cover_990742
#print axioms cover_990680

def state_991790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 22)))
theorem cover_991790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991790 := by
  apply coveredState_split_literal (state := state_991790) 4
    state_991791 state_991836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991791
  · exact cover_991836
#print axioms cover_991790

def state_991861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 44)))
theorem cover_991861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991861 := by
  apply coveredState_split_literal (state := state_991861) 2
    state_991862 state_991871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991862
  · exact cover_991871
#print axioms cover_991861

def state_992069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 89)))
theorem cover_992069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992069 := by
  apply coveredState_split_literal (state := state_992069) 1
    state_992070 state_992121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992070
  · exact cover_992121
#print axioms cover_992069

def state_992005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 44)))
theorem cover_992005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992005 := by
  apply coveredState_split_literal (state := state_992005) 4
    state_992006 state_992069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992006
  · exact cover_992069
#print axioms cover_992005

def state_991967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 44)))
theorem cover_991967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991967 := by
  apply coveredState_split_literal (state := state_991967) 3
    state_991968 state_992005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991968
  · exact cover_992005
#print axioms cover_991967

def state_991966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 44)))
theorem cover_991966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991966 := by
  apply coveredState_split_literal (state := state_991966) 0
    state_991967 state_992140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_991967
  · exact cover_992140
#print axioms cover_991966
end Mub6.Numerical.CircleFullD0.Forest
