import D0FullInterface
import D0ForestAssembly0132
import D0ForestChunk0516
import D0ForestChunk0517
import D0ForestChunk0518
import D0ForestChunk0519
import D0ForestChunk0520
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1312134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1312134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312134 := by
  apply coveredState_split_literal (state := state_1312134) 4
    state_1312135 state_1312324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312135
  · exact cover_1312324
#print axioms cover_1312134

def state_1312624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1312624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312624 := by
  apply coveredState_split_literal (state := state_1312624) 1
    state_1312625 state_1312688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312625
  · exact cover_1312688
#print axioms cover_1312624

def state_1312610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_1312610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312610 := by
  apply coveredState_split_literal (state := state_1312610) 4
    state_1312611 state_1312624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312611
  · exact cover_1312624
#print axioms cover_1312610

def state_1312609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_1312609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312609 := by
  apply coveredState_split_literal (state := state_1312609) 3
    state_1312610 state_1312703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312610
  · exact cover_1312703
#print axioms cover_1312609

def state_1312712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1312712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312712 := by
  apply coveredState_split_literal (state := state_1312712) 3
    state_1312713 state_1312732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312713
  · exact cover_1312732
#print axioms cover_1312712

def state_1312608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1312608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312608 := by
  apply coveredState_split_literal (state := state_1312608) 2
    state_1312609 state_1312712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312609
  · exact cover_1312712
#print axioms cover_1312608

def state_1312607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1312607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312607 := by
  apply coveredState_split_literal (state := state_1312607) 1
    state_1312608 state_1312781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312608
  · exact cover_1312781
#print axioms cover_1312607

def state_1312893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
theorem cover_1312893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312893 := by
  apply coveredState_split_literal (state := state_1312893) 4
    state_1312894 state_1312921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312894
  · exact cover_1312921
#print axioms cover_1312893

def state_1312965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_1312965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312965 := by
  apply coveredState_split_literal (state := state_1312965) 0
    state_1312966 state_1312977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312966
  · exact cover_1312977
#print axioms cover_1312965

def state_1313131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 55) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 46)))
theorem cover_1313131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313131 := by
  apply coveredState_split_literal (state := state_1313131) 2
    state_1313132 state_1313191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313132
  · exact cover_1313191
#print axioms cover_1313131

def state_1313121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 46)))
theorem cover_1313121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313121 := by
  apply coveredState_split_literal (state := state_1313121) 1
    state_1313122 state_1313131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313122
  · exact cover_1313131
#print axioms cover_1313121

def state_1313099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 46)))
theorem cover_1313099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313099 := by
  apply coveredState_split_literal (state := state_1313099) 0
    state_1313100 state_1313121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313100
  · exact cover_1313121
#print axioms cover_1313099

def state_1313098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 46)))
theorem cover_1313098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313098 := by
  apply coveredState_split_literal (state := state_1313098) 3
    state_1313099 state_1313200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313099
  · exact cover_1313200
#print axioms cover_1313098

def state_1313233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 47)))
theorem cover_1313233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313233 := by
  apply coveredState_split_literal (state := state_1313233) 3
    state_1313234 state_1313285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313234
  · exact cover_1313285
#print axioms cover_1313233

def state_1313097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 23)))
theorem cover_1313097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313097 := by
  apply coveredState_split_literal (state := state_1313097) 4
    state_1313098 state_1313233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313098
  · exact cover_1313233
#print axioms cover_1313097

def state_1313096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1313096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313096 := by
  apply coveredState_split_literal (state := state_1313096) 2
    state_1313097 state_1313308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313097
  · exact cover_1313308
#print axioms cover_1313096

def state_1313072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1313072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313072 := by
  apply coveredState_split_literal (state := state_1313072) 1
    state_1313073 state_1313096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313073
  · exact cover_1313096
#print axioms cover_1313072

def state_1313032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1313032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313032 := by
  apply coveredState_split_literal (state := state_1313032) 0
    state_1313033 state_1313072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313033
  · exact cover_1313072
#print axioms cover_1313032

def state_1312964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_1312964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312964 := by
  apply coveredState_split_literal (state := state_1312964) 4
    state_1312965 state_1313032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312965
  · exact cover_1313032
#print axioms cover_1312964

def state_1312892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_1312892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312892 := by
  apply coveredState_split_literal (state := state_1312892) 3
    state_1312893 state_1312964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312893
  · exact cover_1312964
#print axioms cover_1312892

def state_1312891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1312891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312891 := by
  apply coveredState_split_literal (state := state_1312891) 2
    state_1312892 state_1313323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312892
  · exact cover_1313323
#print axioms cover_1312891

def state_1312867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_1312867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312867 := by
  apply coveredState_split_literal (state := state_1312867) 4
    state_1312868 state_1312891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312868
  · exact cover_1312891
#print axioms cover_1312867

def state_1312866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1312866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312866 := by
  apply coveredState_split_literal (state := state_1312866) 3
    state_1312867 state_1313334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312867
  · exact cover_1313334
#print axioms cover_1312866

def state_1312808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1312808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312808 := by
  apply coveredState_split_literal (state := state_1312808) 1
    state_1312809 state_1312866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312809
  · exact cover_1312866
#print axioms cover_1312808

def state_1313485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 46)))
theorem cover_1313485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313485 := by
  apply coveredState_split_literal (state := state_1313485) 1
    state_1313486 state_1313487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313486
  · exact cover_1313487
#print axioms cover_1313485

def state_1313441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 46)))
theorem cover_1313441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313441 := by
  apply coveredState_split_literal (state := state_1313441) 3
    state_1313442 state_1313485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313442
  · exact cover_1313485
#print axioms cover_1313441

def state_1313440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 46)))
theorem cover_1313440 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313440 := by
  apply coveredState_split_literal (state := state_1313440) 0
    state_1313441 state_1313550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313441
  · exact cover_1313550
#print axioms cover_1313440

def state_1313557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 47)))
theorem cover_1313557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313557 := by
  apply coveredState_split_literal (state := state_1313557) 0
    state_1313558 state_1313619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313558
  · exact cover_1313619
#print axioms cover_1313557

def state_1313439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 23)))
theorem cover_1313439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313439 := by
  apply coveredState_split_literal (state := state_1313439) 4
    state_1313440 state_1313557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313440
  · exact cover_1313557
#print axioms cover_1313439

def state_1313438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1313438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313438 := by
  apply coveredState_split_literal (state := state_1313438) 2
    state_1313439 state_1313622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313439
  · exact cover_1313622
#print axioms cover_1313438

def state_1313436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1313436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313436 := by
  apply coveredState_split_literal (state := state_1313436) 1
    state_1313437 state_1313438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313437
  · exact cover_1313438
#print axioms cover_1313436

def state_1313388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_1313388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313388 := by
  apply coveredState_split_literal (state := state_1313388) 4
    state_1313389 state_1313436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313389
  · exact cover_1313436
#print axioms cover_1313388
end Mub6.Numerical.CircleFullD0.Forest
