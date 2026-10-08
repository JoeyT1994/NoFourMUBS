import CircleFullInterface
import CircleForestChunk0001
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_6418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 34 else 17)))
theorem cover_6418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6418 := by
  apply coveredState_split_literal (state := state_6418) 4
    state_6419 state_6442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6419
  · exact cover_6442
#print axioms cover_6418

def state_6459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 17)))
theorem cover_6459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6459 := by
  apply coveredState_split_literal (state := state_6459) 4
    state_6460 state_6479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6460
  · exact cover_6479
#print axioms cover_6459

def state_6417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_6417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6417 := by
  apply coveredState_split_literal (state := state_6417) 3
    state_6418 state_6459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6418
  · exact cover_6459
#print axioms cover_6417

def state_6416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
theorem cover_6416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6416 := by
  apply coveredState_split_literal (state := state_6416) 0
    state_6417 state_6494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6417
  · exact cover_6494
#print axioms cover_6416

def state_6414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
theorem cover_6414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6414 := by
  apply coveredState_split_literal (state := state_6414) 2
    state_6415 state_6416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6415
  · exact cover_6416
#print axioms cover_6414

def state_6412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
theorem cover_6412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6412 := by
  apply coveredState_split_literal (state := state_6412) 1
    state_6413 state_6414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6413
  · exact cover_6414
#print axioms cover_6412
end Mub6.Numerical.CircleFullPrototype.Forest
