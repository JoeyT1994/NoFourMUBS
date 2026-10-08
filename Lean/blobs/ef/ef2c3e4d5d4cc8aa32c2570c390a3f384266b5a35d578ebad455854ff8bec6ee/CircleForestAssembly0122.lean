import CircleFullInterface
import CircleForestAssembly0121
import CircleForestChunk0482
import CircleForestChunk0483
import CircleForestChunk0484
import CircleForestChunk0485
import CircleForestChunk0486
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_277175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
theorem cover_277175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277175 := by
  apply coveredState_split_literal (state := state_277175) 0
    state_277176 state_277373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277176
  · exact cover_277373
#print axioms cover_277175

def state_277151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 8)))
theorem cover_277151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277151 := by
  apply coveredState_split_literal (state := state_277151) 4
    state_277152 state_277175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277152
  · exact cover_277175
#print axioms cover_277151

def state_277391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 17)))
theorem cover_277391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277391 := by
  apply coveredState_split_literal (state := state_277391) 2
    state_277392 state_277453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277392
  · exact cover_277453
#print axioms cover_277391

def state_277387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 17)))
theorem cover_277387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277387 := by
  apply coveredState_split_literal (state := state_277387) 1
    state_277388 state_277391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277388
  · exact cover_277391
#print axioms cover_277387

def state_277386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 17)))
theorem cover_277386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277386 := by
  apply coveredState_split_literal (state := state_277386) 0
    state_277387 state_277478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277387
  · exact cover_277478
#print axioms cover_277386

def state_277382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 8)))
theorem cover_277382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277382 := by
  apply coveredState_split_literal (state := state_277382) 4
    state_277383 state_277386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277383
  · exact cover_277386
#print axioms cover_277382

def state_277150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 8)))
theorem cover_277150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277150 := by
  apply coveredState_split_literal (state := state_277150) 3
    state_277151 state_277382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277151
  · exact cover_277382
#print axioms cover_277150

def state_277149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 8)))
theorem cover_277149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277149 := by
  apply coveredState_split_literal (state := state_277149) 2
    state_277150 state_277495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277150
  · exact cover_277495
#print axioms cover_277149

def state_277570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
theorem cover_277570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277570 := by
  apply coveredState_split_literal (state := state_277570) 1
    state_277571 state_277634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277571
  · exact cover_277634
#print axioms cover_277570

def state_277569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
theorem cover_277569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277569 := by
  apply coveredState_split_literal (state := state_277569) 0
    state_277570 state_277637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277570
  · exact cover_277637
#print axioms cover_277569

def state_277559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 17)))
theorem cover_277559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277559 := by
  apply coveredState_split_literal (state := state_277559) 4
    state_277560 state_277569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277560
  · exact cover_277569
#print axioms cover_277559

def state_277558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 17)))
theorem cover_277558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277558 := by
  apply coveredState_split_literal (state := state_277558) 2
    state_277559 state_277642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277559
  · exact cover_277642
#print axioms cover_277558

def state_277540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
theorem cover_277540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277540 := by
  apply coveredState_split_literal (state := state_277540) 3
    state_277541 state_277558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277541
  · exact cover_277558
#print axioms cover_277540

def state_277539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
theorem cover_277539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277539 := by
  apply coveredState_split_literal (state := state_277539) 1
    state_277540 state_277657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277540
  · exact cover_277657
#print axioms cover_277539

def state_277538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
theorem cover_277538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277538 := by
  apply coveredState_split_literal (state := state_277538) 0
    state_277539 state_277662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277539
  · exact cover_277662
#print axioms cover_277538

def state_277528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 8)))
theorem cover_277528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277528 := by
  apply coveredState_split_literal (state := state_277528) 4
    state_277529 state_277538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277529
  · exact cover_277538
#print axioms cover_277528

def state_277527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 8)))
theorem cover_277527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277527 := by
  apply coveredState_split_literal (state := state_277527) 3
    state_277528 state_277669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277528
  · exact cover_277669
#print axioms cover_277527

def state_277526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 8)))
theorem cover_277526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277526 := by
  apply coveredState_split_literal (state := state_277526) 2
    state_277527 state_277730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277527
  · exact cover_277730
#print axioms cover_277526

def state_277148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 8)))
theorem cover_277148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277148 := by
  apply coveredState_split_literal (state := state_277148) 1
    state_277149 state_277526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277149
  · exact cover_277526
#print axioms cover_277148

def state_276798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 8)))
theorem cover_276798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276798 := by
  apply coveredState_split_literal (state := state_276798) 0
    state_276799 state_277148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276799
  · exact cover_277148
#print axioms cover_276798

def state_277820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
theorem cover_277820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277820 := by
  apply coveredState_split_literal (state := state_277820) 3
    state_277821 state_277836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277821
  · exact cover_277836
#print axioms cover_277820

def state_277806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
theorem cover_277806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277806 := by
  apply coveredState_split_literal (state := state_277806) 0
    state_277807 state_277820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277807
  · exact cover_277820
#print axioms cover_277806

def state_277805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
theorem cover_277805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277805 := by
  apply coveredState_split_literal (state := state_277805) 1
    state_277806 state_277891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277806
  · exact cover_277891
#print axioms cover_277805

def state_277804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 9)))
theorem cover_277804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277804 := by
  apply coveredState_split_literal (state := state_277804) 4
    state_277805 state_277898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277805
  · exact cover_277898
#print axioms cover_277804

def state_277803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 9)))
theorem cover_277803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277803 := by
  apply coveredState_split_literal (state := state_277803) 3
    state_277804 state_277901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277804
  · exact cover_277901
#print axioms cover_277803

def state_277802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 9)))
theorem cover_277802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277802 := by
  apply coveredState_split_literal (state := state_277802) 2
    state_277803 state_277954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277803
  · exact cover_277954
#print axioms cover_277802

def state_277762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 9)))
theorem cover_277762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277762 := by
  apply coveredState_split_literal (state := state_277762) 1
    state_277763 state_277802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277763
  · exact cover_277802
#print axioms cover_277762

def state_277978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
theorem cover_277978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277978 := by
  apply coveredState_split_literal (state := state_277978) 3
    state_277979 state_277994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277979
  · exact cover_277994
#print axioms cover_277978

def state_277966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
theorem cover_277966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277966 := by
  apply coveredState_split_literal (state := state_277966) 1
    state_277967 state_277978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277967
  · exact cover_277978
#print axioms cover_277966

def state_277965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
theorem cover_277965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277965 := by
  apply coveredState_split_literal (state := state_277965) 0
    state_277966 state_278047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277966
  · exact cover_278047
#print axioms cover_277965

def state_277964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 9)))
theorem cover_277964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277964 := by
  apply coveredState_split_literal (state := state_277964) 4
    state_277965 state_278054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277965
  · exact cover_278054
#print axioms cover_277964

def state_277963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 9)))
theorem cover_277963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277963 := by
  apply coveredState_split_literal (state := state_277963) 3
    state_277964 state_278057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_277964
  · exact cover_278057
#print axioms cover_277963
end Mub6.Numerical.CircleFullPrototype.Forest
