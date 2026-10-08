import D0FullInterface
import D0ForestChunk2055
import D0ForestChunk2056
import D0ForestChunk2057
import D0ForestChunk2058
import D0ForestChunk2059
import D0ForestChunk2060
import D0ForestChunk2061
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2573784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 9)))
theorem cover_2573784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573784 := by
  apply coveredState_split_literal (state := state_2573784) 4
    state_2573785 state_2573818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573785
  · exact cover_2573818
#print axioms cover_2573784

def state_2573722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 9)))
theorem cover_2573722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573722 := by
  apply coveredState_split_literal (state := state_2573722) 3
    state_2573723 state_2573784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573723
  · exact cover_2573784
#print axioms cover_2573722

def state_2573716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
theorem cover_2573716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573716 := by
  apply coveredState_split_literal (state := state_2573716) 2
    state_2573717 state_2573722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573717
  · exact cover_2573722
#print axioms cover_2573716

def state_2573672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
theorem cover_2573672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573672 := by
  apply coveredState_split_literal (state := state_2573672) 0
    state_2573673 state_2573716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573673
  · exact cover_2573716
#print axioms cover_2573672

def state_2573648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_2573648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573648 := by
  apply coveredState_split_literal (state := state_2573648) 4
    state_2573649 state_2573672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573649
  · exact cover_2573672
#print axioms cover_2573648

def state_2573982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 8)))
theorem cover_2573982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573982 := by
  apply coveredState_split_literal (state := state_2573982) 1
    state_2573983 state_2574016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573983
  · exact cover_2574016
#print axioms cover_2573982

def state_2573978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 8)))
theorem cover_2573978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573978 := by
  apply coveredState_split_literal (state := state_2573978) 3
    state_2573979 state_2573982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573979
  · exact cover_2573982
#print axioms cover_2573978

def state_2573914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 8)))
theorem cover_2573914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573914 := by
  apply coveredState_split_literal (state := state_2573914) 2
    state_2573915 state_2573978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573915
  · exact cover_2573978
#print axioms cover_2573914

def state_2573870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 8)))
theorem cover_2573870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573870 := by
  apply coveredState_split_literal (state := state_2573870) 0
    state_2573871 state_2573914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573871
  · exact cover_2573914
#print axioms cover_2573870

def state_2574376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 94 else (if j.val < 4 then 47 else 37)))
theorem cover_2574376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574376 := by
  apply coveredState_split_literal (state := state_2574376) 3
    state_2574377 state_2574400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574377
  · exact cover_2574400
#print axioms cover_2574376

def state_2574511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 95 else 37)))
theorem cover_2574511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574511 := by
  apply coveredState_split_literal (state := state_2574511) 0
    state_2574512 state_2574557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574512
  · exact cover_2574557
#print axioms cover_2574511

def state_2574455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 47 else 37)))
theorem cover_2574455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574455 := by
  apply coveredState_split_literal (state := state_2574455) 3
    state_2574456 state_2574511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574456
  · exact cover_2574511
#print axioms cover_2574455

def state_2574375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 37)))
theorem cover_2574375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574375 := by
  apply coveredState_split_literal (state := state_2574375) 2
    state_2574376 state_2574455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574376
  · exact cover_2574455
#print axioms cover_2574375

def state_2574343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
theorem cover_2574343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574343 := by
  apply coveredState_split_literal (state := state_2574343) 4
    state_2574344 state_2574375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574344
  · exact cover_2574375
#print axioms cover_2574343

def state_2574303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
theorem cover_2574303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574303 := by
  apply coveredState_split_literal (state := state_2574303) 1
    state_2574304 state_2574343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574304
  · exact cover_2574343
#print axioms cover_2574303

def state_2574243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
theorem cover_2574243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574243 := by
  apply coveredState_split_literal (state := state_2574243) 0
    state_2574244 state_2574303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574244
  · exact cover_2574303
#print axioms cover_2574243

def state_2574187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 23 else 18)))
theorem cover_2574187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574187 := by
  apply coveredState_split_literal (state := state_2574187) 3
    state_2574188 state_2574243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574188
  · exact cover_2574243
#print axioms cover_2574187

def state_2574125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 18)))
theorem cover_2574125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574125 := by
  apply coveredState_split_literal (state := state_2574125) 2
    state_2574126 state_2574187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574126
  · exact cover_2574187
#print axioms cover_2574125

def state_2574797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 95 else 38)))
theorem cover_2574797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574797 := by
  apply coveredState_split_literal (state := state_2574797) 0
    state_2574798 state_2574833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574798
  · exact cover_2574833
#print axioms cover_2574797

def state_2574743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 47 else 38)))
theorem cover_2574743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574743 := by
  apply coveredState_split_literal (state := state_2574743) 3
    state_2574744 state_2574797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574744
  · exact cover_2574797
#print axioms cover_2574743

def state_2574717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 38)))
theorem cover_2574717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574717 := by
  apply coveredState_split_literal (state := state_2574717) 2
    state_2574718 state_2574743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574718
  · exact cover_2574743
#print axioms cover_2574717

def state_2574673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 38)))
theorem cover_2574673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574673 := by
  apply coveredState_split_literal (state := state_2574673) 1
    state_2574674 state_2574717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574674
  · exact cover_2574717
#print axioms cover_2574673

def state_2574672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 19)))
theorem cover_2574672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574672 := by
  apply coveredState_split_literal (state := state_2574672) 4
    state_2574673 state_2574864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574673
  · exact cover_2574864
#print axioms cover_2574672

def state_2574648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 19)))
theorem cover_2574648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574648 := by
  apply coveredState_split_literal (state := state_2574648) 0
    state_2574649 state_2574672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574649
  · exact cover_2574672
#print axioms cover_2574648

def state_2574608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 23 else 19)))
theorem cover_2574608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574608 := by
  apply coveredState_split_literal (state := state_2574608) 3
    state_2574609 state_2574648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574609
  · exact cover_2574648
#print axioms cover_2574608

def state_2574586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 19)))
theorem cover_2574586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574586 := by
  apply coveredState_split_literal (state := state_2574586) 2
    state_2574587 state_2574608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574587
  · exact cover_2574608
#print axioms cover_2574586

def state_2574124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 9)))
theorem cover_2574124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574124 := by
  apply coveredState_split_literal (state := state_2574124) 4
    state_2574125 state_2574586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574125
  · exact cover_2574586
#print axioms cover_2574124

def state_2575107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 95 else 37)))
theorem cover_2575107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575107 := by
  apply coveredState_split_literal (state := state_2575107) 0
    state_2575108 state_2575143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575108
  · exact cover_2575143
#print axioms cover_2575107

def state_2575085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 47 else 37)))
theorem cover_2575085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575085 := by
  apply coveredState_split_literal (state := state_2575085) 3
    state_2575086 state_2575107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575086
  · exact cover_2575107
#print axioms cover_2575085

def state_2575027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 37)))
theorem cover_2575027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575027 := by
  apply coveredState_split_literal (state := state_2575027) 2
    state_2575028 state_2575085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2575028
  · exact cover_2575085
#print axioms cover_2575027

def state_2574983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
theorem cover_2574983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574983 := by
  apply coveredState_split_literal (state := state_2574983) 4
    state_2574984 state_2575027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574984
  · exact cover_2575027
#print axioms cover_2574983

def state_2574982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
theorem cover_2574982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574982 := by
  apply coveredState_split_literal (state := state_2574982) 1
    state_2574983 state_2575172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2574983
  · exact cover_2575172
#print axioms cover_2574982
end Mub6.Numerical.CircleFullD0.Forest
