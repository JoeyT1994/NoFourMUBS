import D0FullInterface
import D0ForestAssembly0024
import D0ForestAssembly0025
import D0ForestChunk0054
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2546291 : State := rootState
theorem cover_2546291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546291 := by
  apply coveredState_split_literal (state := state_2546291) 0
    state_2546292 state_2573591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546292
  · exact cover_2573591
#print axioms cover_2546291

def state_2600942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2600942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600942 := by
  apply coveredState_split_literal (state := state_2600942) 2
    state_2600943 state_2601476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600943
  · exact cover_2601476
#print axioms cover_2600942

def state_2602423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2602423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602423 := by
  apply coveredState_split_literal (state := state_2602423) 2
    state_2602424 state_2603335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602424
  · exact cover_2603335
#print axioms cover_2602423

def state_2600941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2600941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600941 := by
  apply coveredState_split_literal (state := state_2600941) 1
    state_2600942 state_2602423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600942
  · exact cover_2602423
#print axioms cover_2600941

def state_2603975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2603975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603975 := by
  apply coveredState_split_literal (state := state_2603975) 2
    state_2603976 state_2604943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603976
  · exact cover_2604943
#print axioms cover_2603975

def state_2605578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2605578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605578 := by
  apply coveredState_split_literal (state := state_2605578) 2
    state_2605579 state_2606228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2605579
  · exact cover_2606228
#print axioms cover_2605578

def state_2603974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2603974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603974 := by
  apply coveredState_split_literal (state := state_2603974) 1
    state_2603975 state_2605578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603975
  · exact cover_2605578
#print axioms cover_2603974

def state_2600940 : State := rootState
theorem cover_2600940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600940 := by
  apply coveredState_split_literal (state := state_2600940) 0
    state_2600941 state_2603974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600941
  · exact cover_2603974
#print axioms cover_2600940
end Mub6.Numerical.CircleFullD0.Forest
