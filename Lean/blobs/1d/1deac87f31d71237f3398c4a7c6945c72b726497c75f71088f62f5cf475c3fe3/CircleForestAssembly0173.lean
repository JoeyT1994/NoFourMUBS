import CircleFullInterface
import CircleForestAssembly0169
import CircleForestAssembly0171
import CircleForestAssembly0172
import CircleForestChunk0677
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_768128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_768128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_768128 := by
  apply coveredState_split_literal (state := state_768128) 2
    state_768129 state_768190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_768129
  · exact cover_768190
#print axioms cover_768128

def state_768127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_768127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_768127 := by
  apply coveredState_split_literal (state := state_768127) 1
    state_768128 state_768231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_768128
  · exact cover_768231
#print axioms cover_768127

def state_768282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_768282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_768282 := by
  apply coveredState_split_literal (state := state_768282) 1
    state_768283 state_768338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_768283
  · exact cover_768338
#print axioms cover_768282

def state_768126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_768126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_768126 := by
  apply coveredState_split_literal (state := state_768126) 0
    state_768127 state_768282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_768127
  · exact cover_768282
#print axioms cover_768126

def state_768020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_768020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_768020 := by
  apply coveredState_split_literal (state := state_768020) 4
    state_768021 state_768126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_768021
  · exact cover_768126
#print axioms cover_768020

def state_767280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_767280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_767280 := by
  apply coveredState_split_literal (state := state_767280) 3
    state_767281 state_768020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_767281
  · exact cover_768020
#print axioms cover_767280

def state_766396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_766396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766396 := by
  apply coveredState_split_literal (state := state_766396) 2
    state_766397 state_767280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_766397
  · exact cover_767280
#print axioms cover_766396

def state_764018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_764018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764018 := by
  apply coveredState_split_literal (state := state_764018) 1
    state_764019 state_766396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764019
  · exact cover_766396
#print axioms cover_764018

def state_759584 : State := rootState
theorem cover_759584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759584 := by
  apply coveredState_split_literal (state := state_759584) 0
    state_759585 state_764018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759585
  · exact cover_764018
#print axioms cover_759584
end Mub6.Numerical.CircleFullPrototype.Forest
