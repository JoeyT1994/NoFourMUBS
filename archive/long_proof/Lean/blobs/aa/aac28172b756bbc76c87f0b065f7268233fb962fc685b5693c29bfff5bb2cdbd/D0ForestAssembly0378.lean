import D0FullInterface
import D0ForestAssembly0377
import D0ForestChunk1472
import D0ForestChunk1473
import D0ForestChunk1474
import D0ForestChunk1475
import D0ForestChunk1476
import D0ForestChunk1477
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1654114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1654114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654114 := by
  apply coveredState_split_literal (state := state_1654114) 0
    state_1654115 state_1654180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654115
  · exact cover_1654180
#print axioms cover_1654114

def state_1654100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 20)))
theorem cover_1654100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654100 := by
  apply coveredState_split_literal (state := state_1654100) 2
    state_1654101 state_1654114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654101
  · exact cover_1654114
#print axioms cover_1654100

def state_1654199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1654199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654199 := by
  apply coveredState_split_literal (state := state_1654199) 3
    state_1654200 state_1654221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654200
  · exact cover_1654221
#print axioms cover_1654199

def state_1654198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1654198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654198 := by
  apply coveredState_split_literal (state := state_1654198) 1
    state_1654199 state_1654268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654199
  · exact cover_1654268
#print axioms cover_1654198

def state_1654197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1654197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654197 := by
  apply coveredState_split_literal (state := state_1654197) 0
    state_1654198 state_1654281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654198
  · exact cover_1654281
#print axioms cover_1654197

def state_1654187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 21)))
theorem cover_1654187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654187 := by
  apply coveredState_split_literal (state := state_1654187) 2
    state_1654188 state_1654197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654188
  · exact cover_1654197
#print axioms cover_1654187

def state_1654099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 10)))
theorem cover_1654099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654099 := by
  apply coveredState_split_literal (state := state_1654099) 4
    state_1654100 state_1654187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654100
  · exact cover_1654187
#print axioms cover_1654099

def state_1654098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1654098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654098 := by
  apply coveredState_split_literal (state := state_1654098) 3
    state_1654099 state_1654288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654099
  · exact cover_1654288
#print axioms cover_1654098

def state_1653940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1653940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653940 := by
  apply coveredState_split_literal (state := state_1653940) 1
    state_1653941 state_1654098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653941
  · exact cover_1654098
#print axioms cover_1653940

def state_1653939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1653939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653939 := by
  apply coveredState_split_literal (state := state_1653939) 0
    state_1653940 state_1654319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653940
  · exact cover_1654319
#print axioms cover_1653939

def state_1654436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 81)))
theorem cover_1654436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654436 := by
  apply coveredState_split_literal (state := state_1654436) 2
    state_1654437 state_1654492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654437
  · exact cover_1654492
#print axioms cover_1654436

def state_1654424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 40)))
theorem cover_1654424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654424 := by
  apply coveredState_split_literal (state := state_1654424) 4
    state_1654425 state_1654436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654425
  · exact cover_1654436
#print axioms cover_1654424

def state_1654423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
theorem cover_1654423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654423 := by
  apply coveredState_split_literal (state := state_1654423) 3
    state_1654424 state_1654543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654424
  · exact cover_1654543
#print axioms cover_1654423

def state_1654422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
theorem cover_1654422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654422 := by
  apply coveredState_split_literal (state := state_1654422) 0
    state_1654423 state_1654550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654423
  · exact cover_1654550
#print axioms cover_1654422

def state_1654412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
theorem cover_1654412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654412 := by
  apply coveredState_split_literal (state := state_1654412) 1
    state_1654413 state_1654422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654413
  · exact cover_1654422
#print axioms cover_1654412

def state_1654376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 40)))
theorem cover_1654376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654376 := by
  apply coveredState_split_literal (state := state_1654376) 2
    state_1654377 state_1654412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654377
  · exact cover_1654412
#print axioms cover_1654376

def state_1654661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 41)))
theorem cover_1654661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654661 := by
  apply coveredState_split_literal (state := state_1654661) 4
    state_1654662 state_1654675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654662
  · exact cover_1654675
#print axioms cover_1654661

def state_1654609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1654609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654609 := by
  apply coveredState_split_literal (state := state_1654609) 3
    state_1654610 state_1654661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654610
  · exact cover_1654661
#print axioms cover_1654609

def state_1654608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1654608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654608 := by
  apply coveredState_split_literal (state := state_1654608) 0
    state_1654609 state_1654732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654609
  · exact cover_1654732
#print axioms cover_1654608

def state_1654564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1654564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654564 := by
  apply coveredState_split_literal (state := state_1654564) 1
    state_1654565 state_1654608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654565
  · exact cover_1654608
#print axioms cover_1654564

def state_1654868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 199) else (if j.val < 3 then 122 else (if j.val < 4 then 209 else 82)))
theorem cover_1654868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654868 := by
  apply coveredState_split_literal (state := state_1654868) 4
    state_1654869 state_1654894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654869
  · exact cover_1654894
#print axioms cover_1654868

def state_1654840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 199) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
theorem cover_1654840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654840 := by
  apply coveredState_split_literal (state := state_1654840) 3
    state_1654841 state_1654868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654841
  · exact cover_1654868
#print axioms cover_1654840

def state_1654839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 199) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
theorem cover_1654839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654839 := by
  apply coveredState_split_literal (state := state_1654839) 0
    state_1654840 state_1654933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654840
  · exact cover_1654933
#print axioms cover_1654839

def state_1654813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
theorem cover_1654813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654813 := by
  apply coveredState_split_literal (state := state_1654813) 1
    state_1654814 state_1654839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654814
  · exact cover_1654839
#print axioms cover_1654813

def state_1654944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 123 else (if j.val < 4 then 104 else 82)))
theorem cover_1654944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654944 := by
  apply coveredState_split_literal (state := state_1654944) 1
    state_1654945 state_1654958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654945
  · exact cover_1654958
#print axioms cover_1654944

def state_1654812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 82)))
theorem cover_1654812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654812 := by
  apply coveredState_split_literal (state := state_1654812) 2
    state_1654813 state_1654944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654813
  · exact cover_1654944
#print axioms cover_1654812

def state_1654811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 41)))
theorem cover_1654811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654811 := by
  apply coveredState_split_literal (state := state_1654811) 4
    state_1654812 state_1655019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654812
  · exact cover_1655019
#print axioms cover_1654811

def state_1655098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 105 else 83)))
theorem cover_1655098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655098 := by
  apply coveredState_split_literal (state := state_1655098) 2
    state_1655099 state_1655154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655099
  · exact cover_1655154
#print axioms cover_1655098

def state_1655034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 105 else 41)))
theorem cover_1655034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655034 := by
  apply coveredState_split_literal (state := state_1655034) 4
    state_1655035 state_1655098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655035
  · exact cover_1655098
#print axioms cover_1655034

def state_1654810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1654810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654810 := by
  apply coveredState_split_literal (state := state_1654810) 3
    state_1654811 state_1655034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654811
  · exact cover_1655034
#print axioms cover_1654810

def state_1654809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1654809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654809 := by
  apply coveredState_split_literal (state := state_1654809) 0
    state_1654810 state_1655175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654810
  · exact cover_1655175
#print axioms cover_1654809

def state_1654747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1654747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654747 := by
  apply coveredState_split_literal (state := state_1654747) 1
    state_1654748 state_1654809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654748
  · exact cover_1654809
#print axioms cover_1654747
end Mub6.Numerical.CircleFullD0.Forest
