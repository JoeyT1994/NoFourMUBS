import D0FullInterface
import D0ForestAssembly0080
import D0ForestChunk0318
import D0ForestChunk0323
import D0ForestChunk0324
import D0ForestChunk0325
import D0ForestChunk0326
import D0ForestChunk0327
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1014023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 10)))
theorem cover_1014023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014023 := by
  apply coveredState_split_literal (state := state_1014023) 4
    state_1014024 state_1014041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1014024
  · exact cover_1014041
#print axioms cover_1014023

def state_1013897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_1013897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013897 := by
  apply coveredState_split_literal (state := state_1013897) 2
    state_1013898 state_1014023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013898
  · exact cover_1014023
#print axioms cover_1013897

def state_1013855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
theorem cover_1013855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013855 := by
  apply coveredState_split_literal (state := state_1013855) 0
    state_1013856 state_1013897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013856
  · exact cover_1013897
#print axioms cover_1013855

def state_1013455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_1013455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013455 := by
  apply coveredState_split_literal (state := state_1013455) 3
    state_1013456 state_1013855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013456
  · exact cover_1013855
#print axioms cover_1013455

def state_1013454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
theorem cover_1013454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013454 := by
  apply coveredState_split_literal (state := state_1013454) 1
    state_1013455 state_1014988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013455
  · exact cover_1014988
#print axioms cover_1013454

def state_1015048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
theorem cover_1015048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015048 := by
  apply coveredState_split_literal (state := state_1015048) 4
    state_1015049 state_1015080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015049
  · exact cover_1015080
#print axioms cover_1015048

def state_1015113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
theorem cover_1015113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015113 := by
  apply coveredState_split_literal (state := state_1015113) 4
    state_1015114 state_1015157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015114
  · exact cover_1015157
#print axioms cover_1015113

def state_1015047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
theorem cover_1015047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015047 := by
  apply coveredState_split_literal (state := state_1015047) 0
    state_1015048 state_1015113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015048
  · exact cover_1015113
#print axioms cover_1015047

def state_1015199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
theorem cover_1015199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015199 := by
  apply coveredState_split_literal (state := state_1015199) 3
    state_1015200 state_1015257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015200
  · exact cover_1015257
#print axioms cover_1015199

def state_1015198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
theorem cover_1015198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015198 := by
  apply coveredState_split_literal (state := state_1015198) 1
    state_1015199 state_1015302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015199
  · exact cover_1015302
#print axioms cover_1015198

def state_1015197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_1015197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015197 := by
  apply coveredState_split_literal (state := state_1015197) 4
    state_1015198 state_1015307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015198
  · exact cover_1015307
#print axioms cover_1015197

def state_1015322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
theorem cover_1015322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015322 := by
  apply coveredState_split_literal (state := state_1015322) 3
    state_1015323 state_1015368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015323
  · exact cover_1015368
#print axioms cover_1015322

def state_1015321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
theorem cover_1015321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015321 := by
  apply coveredState_split_literal (state := state_1015321) 1
    state_1015322 state_1015427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015322
  · exact cover_1015427
#print axioms cover_1015321

def state_1015320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_1015320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015320 := by
  apply coveredState_split_literal (state := state_1015320) 4
    state_1015321 state_1015464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015321
  · exact cover_1015464
#print axioms cover_1015320

def state_1015196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_1015196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015196 := by
  apply coveredState_split_literal (state := state_1015196) 0
    state_1015197 state_1015320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015197
  · exact cover_1015320
#print axioms cover_1015196

def state_1015046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
theorem cover_1015046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015046 := by
  apply coveredState_split_literal (state := state_1015046) 3
    state_1015047 state_1015196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015047
  · exact cover_1015196
#print axioms cover_1015046

def state_1015045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
theorem cover_1015045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015045 := by
  apply coveredState_split_literal (state := state_1015045) 1
    state_1015046 state_1015507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015046
  · exact cover_1015507
#print axioms cover_1015045

def state_1015543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 29 else 22)))
theorem cover_1015543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015543 := by
  apply coveredState_split_literal (state := state_1015543) 0
    state_1015544 state_1015581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015544
  · exact cover_1015581
#print axioms cover_1015543

def state_1015541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 22)))
theorem cover_1015541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015541 := by
  apply coveredState_split_literal (state := state_1015541) 3
    state_1015542 state_1015543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015542
  · exact cover_1015543
#print axioms cover_1015541

def state_1015540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 22)))
theorem cover_1015540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015540 := by
  apply coveredState_split_literal (state := state_1015540) 1
    state_1015541 state_1015634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015541
  · exact cover_1015634
#print axioms cover_1015540

def state_1015044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
theorem cover_1015044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015044 := by
  apply coveredState_split_literal (state := state_1015044) 2
    state_1015045 state_1015540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015045
  · exact cover_1015540
#print axioms cover_1015044

def state_1015635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 23)))
theorem cover_1015635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015635 := by
  apply coveredState_split_literal (state := state_1015635) 2
    state_1015636 state_1015695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015636
  · exact cover_1015695
#print axioms cover_1015635

def state_1015043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_1015043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015043 := by
  apply coveredState_split_literal (state := state_1015043) 4
    state_1015044 state_1015635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015044
  · exact cover_1015635
#print axioms cover_1015043

def state_1015003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_1015003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015003 := by
  apply coveredState_split_literal (state := state_1015003) 0
    state_1015004 state_1015043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015004
  · exact cover_1015043
#print axioms cover_1015003

def state_1015749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 22)))
theorem cover_1015749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015749 := by
  apply coveredState_split_literal (state := state_1015749) 3
    state_1015750 state_1015807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015750
  · exact cover_1015807
#print axioms cover_1015749

def state_1015748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 22)))
theorem cover_1015748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015748 := by
  apply coveredState_split_literal (state := state_1015748) 1
    state_1015749 state_1015820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015749
  · exact cover_1015820
#print axioms cover_1015748

def state_1015839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
theorem cover_1015839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015839 := by
  apply coveredState_split_literal (state := state_1015839) 3
    state_1015840 state_1015885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015840
  · exact cover_1015885
#print axioms cover_1015839

def state_1015838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
theorem cover_1015838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015838 := by
  apply coveredState_split_literal (state := state_1015838) 1
    state_1015839 state_1015910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015839
  · exact cover_1015910
#print axioms cover_1015838

def state_1015837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 44)))
theorem cover_1015837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015837 := by
  apply coveredState_split_literal (state := state_1015837) 2
    state_1015838 state_1015919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015838
  · exact cover_1015919
#print axioms cover_1015837

def state_1015836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
theorem cover_1015836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015836 := by
  apply coveredState_split_literal (state := state_1015836) 4
    state_1015837 state_1015934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015837
  · exact cover_1015934
#print axioms cover_1015836

def state_1015945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 88)))
theorem cover_1015945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015945 := by
  apply coveredState_split_literal (state := state_1015945) 2
    state_1015946 state_1015999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015946
  · exact cover_1015999
#print axioms cover_1015945

def state_1015944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
theorem cover_1015944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015944 := by
  apply coveredState_split_literal (state := state_1015944) 4
    state_1015945 state_1016028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015945
  · exact cover_1016028
#print axioms cover_1015944
end Mub6.Numerical.CircleFullD0.Forest
