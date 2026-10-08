import D0FullInterface
import D0ForestAssembly0552
import D0ForestAssembly0553
import D0ForestChunk2191
import D0ForestChunk2192
import D0ForestChunk2193
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2606364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_2606364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606364 := by
  apply coveredState_split_literal (state := state_2606364) 3
    state_2606365 state_2606410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606365
  · exact cover_2606410
#print axioms cover_2606364

def state_2606232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2606232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606232 := by
  apply coveredState_split_literal (state := state_2606232) 2
    state_2606233 state_2606364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606233
  · exact cover_2606364
#print axioms cover_2606232

def state_2606231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2606231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606231 := by
  apply coveredState_split_literal (state := state_2606231) 1
    state_2606232 state_2606429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606232
  · exact cover_2606429
#print axioms cover_2606231

def state_2606479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2606479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606479 := by
  apply coveredState_split_literal (state := state_2606479) 2
    state_2606480 state_2606537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606480
  · exact cover_2606537
#print axioms cover_2606479

def state_2606478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2606478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606478 := by
  apply coveredState_split_literal (state := state_2606478) 1
    state_2606479 state_2606584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606479
  · exact cover_2606584
#print axioms cover_2606478

def state_2606230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2606230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606230 := by
  apply coveredState_split_literal (state := state_2606230) 0
    state_2606231 state_2606478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606231
  · exact cover_2606478
#print axioms cover_2606230

def state_2606608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2606608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606608 := by
  apply coveredState_split_literal (state := state_2606608) 1
    state_2606609 state_2606664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606609
  · exact cover_2606664
#print axioms cover_2606608

def state_2606607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2606607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606607 := by
  apply coveredState_split_literal (state := state_2606607) 0
    state_2606608 state_2606675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606608
  · exact cover_2606675
#print axioms cover_2606607

def state_2606229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2606229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606229 := by
  apply coveredState_split_literal (state := state_2606229) 4
    state_2606230 state_2606607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606230
  · exact cover_2606607
#print axioms cover_2606229

def state_2606701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2606701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606701 := by
  apply coveredState_split_literal (state := state_2606701) 0
    state_2606702 state_2606753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606702
  · exact cover_2606753
#print axioms cover_2606701

def state_2606796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2606796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606796 := by
  apply coveredState_split_literal (state := state_2606796) 2
    state_2606797 state_2606844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606797
  · exact cover_2606844
#print axioms cover_2606796

def state_2606795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2606795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606795 := by
  apply coveredState_split_literal (state := state_2606795) 1
    state_2606796 state_2606885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606796
  · exact cover_2606885
#print axioms cover_2606795

def state_2606946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2606946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606946 := by
  apply coveredState_split_literal (state := state_2606946) 1
    state_2606947 state_2607004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606947
  · exact cover_2607004
#print axioms cover_2606946

def state_2606794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2606794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606794 := by
  apply coveredState_split_literal (state := state_2606794) 0
    state_2606795 state_2606946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606795
  · exact cover_2606946
#print axioms cover_2606794

def state_2606700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2606700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606700 := by
  apply coveredState_split_literal (state := state_2606700) 4
    state_2606701 state_2606794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606701
  · exact cover_2606794
#print axioms cover_2606700

def state_2606228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2606228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606228 := by
  apply coveredState_split_literal (state := state_2606228) 3
    state_2606229 state_2606700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2606229
  · exact cover_2606700
#print axioms cover_2606228

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
