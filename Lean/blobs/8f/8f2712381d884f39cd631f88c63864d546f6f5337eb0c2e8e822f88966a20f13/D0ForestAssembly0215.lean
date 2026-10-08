import D0FullInterface
import D0ForestAssembly0214
import D0ForestChunk0813
import D0ForestChunk0814
import D0ForestChunk0815
import D0ForestChunk0816
import D0ForestChunk0817
import D0ForestChunk0818
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1494991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 29)))
theorem cover_1494991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494991 := by
  apply coveredState_split_literal (state := state_1494991) 4
    state_1494992 state_1495303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494992
  · exact cover_1495303
#print axioms cover_1494991

def state_1496054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 119)))
theorem cover_1496054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496054 := by
  apply coveredState_split_literal (state := state_1496054) 0
    state_1496055 state_1496078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496055
  · exact cover_1496078
#print axioms cover_1496054

def state_1495994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 59)))
theorem cover_1495994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495994 := by
  apply coveredState_split_literal (state := state_1495994) 4
    state_1495995 state_1496054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495995
  · exact cover_1496054
#print axioms cover_1495994

def state_1496217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 173) else (if j.val < 3 then 81 else (if j.val < 4 then 205 else 119)))
theorem cover_1496217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496217 := by
  apply coveredState_split_literal (state := state_1496217) 2
    state_1496218 state_1496271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496218
  · exact cover_1496271
#print axioms cover_1496217

def state_1496187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 205 else 119)))
theorem cover_1496187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496187 := by
  apply coveredState_split_literal (state := state_1496187) 1
    state_1496188 state_1496217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496188
  · exact cover_1496217
#print axioms cover_1496187

def state_1496163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 119)))
theorem cover_1496163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496163 := by
  apply coveredState_split_literal (state := state_1496163) 3
    state_1496164 state_1496187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496164
  · exact cover_1496187
#print axioms cover_1496163

def state_1496151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 119)))
theorem cover_1496151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496151 := by
  apply coveredState_split_literal (state := state_1496151) 0
    state_1496152 state_1496163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496152
  · exact cover_1496163
#print axioms cover_1496151

def state_1496131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 59)))
theorem cover_1496131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496131 := by
  apply coveredState_split_literal (state := state_1496131) 4
    state_1496132 state_1496151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496132
  · exact cover_1496151
#print axioms cover_1496131

def state_1495993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 59)))
theorem cover_1495993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495993 := by
  apply coveredState_split_literal (state := state_1495993) 2
    state_1495994 state_1496131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495994
  · exact cover_1496131
#print axioms cover_1495993

def state_1496289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 59)))
theorem cover_1496289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496289 := by
  apply coveredState_split_literal (state := state_1496289) 4
    state_1496290 state_1496299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496290
  · exact cover_1496299
#print axioms cover_1496289

def state_1496288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 59)))
theorem cover_1496288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496288 := by
  apply coveredState_split_literal (state := state_1496288) 2
    state_1496289 state_1496362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496289
  · exact cover_1496362
#print axioms cover_1496288

def state_1495992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 59)))
theorem cover_1495992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495992 := by
  apply coveredState_split_literal (state := state_1495992) 1
    state_1495993 state_1496288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495993
  · exact cover_1496288
#print axioms cover_1495992

def state_1496560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 119)))
theorem cover_1496560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496560 := by
  apply coveredState_split_literal (state := state_1496560) 2
    state_1496561 state_1496594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496561
  · exact cover_1496594
#print axioms cover_1496560

def state_1496703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 173) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 239)))
theorem cover_1496703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496703 := by
  apply coveredState_split_literal (state := state_1496703) 0
    state_1496704 state_1496719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496704
  · exact cover_1496719
#print axioms cover_1496703

def state_1496689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 173) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 119)))
theorem cover_1496689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496689 := by
  apply coveredState_split_literal (state := state_1496689) 4
    state_1496690 state_1496703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496690
  · exact cover_1496703
#print axioms cover_1496689

def state_1496637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 173) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 119)))
theorem cover_1496637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496637 := by
  apply coveredState_split_literal (state := state_1496637) 2
    state_1496638 state_1496689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496638
  · exact cover_1496689
#print axioms cover_1496637

def state_1496559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 119)))
theorem cover_1496559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496559 := by
  apply coveredState_split_literal (state := state_1496559) 1
    state_1496560 state_1496637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496560
  · exact cover_1496637
#print axioms cover_1496559

def state_1496789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 163 else (if j.val < 4 then 207 else 119)))
theorem cover_1496789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496789 := by
  apply coveredState_split_literal (state := state_1496789) 4
    state_1496790 state_1496841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496790
  · exact cover_1496841
#print axioms cover_1496789

def state_1496771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 81 else (if j.val < 4 then 207 else 119)))
theorem cover_1496771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496771 := by
  apply coveredState_split_literal (state := state_1496771) 2
    state_1496772 state_1496789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496772
  · exact cover_1496789
#print axioms cover_1496771

def state_1496770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 207 else 119)))
theorem cover_1496770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496770 := by
  apply coveredState_split_literal (state := state_1496770) 1
    state_1496771 state_1496856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496771
  · exact cover_1496856
#print axioms cover_1496770

def state_1496558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
theorem cover_1496558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496558 := by
  apply coveredState_split_literal (state := state_1496558) 3
    state_1496559 state_1496770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496559
  · exact cover_1496770
#print axioms cover_1496558

def state_1496510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
theorem cover_1496510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496510 := by
  apply coveredState_split_literal (state := state_1496510) 0
    state_1496511 state_1496558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496511
  · exact cover_1496558
#print axioms cover_1496510

def state_1496450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 59)))
theorem cover_1496450 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496450 := by
  apply coveredState_split_literal (state := state_1496450) 4
    state_1496451 state_1496510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496451
  · exact cover_1496510
#print axioms cover_1496450

def state_1496404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 59)))
theorem cover_1496404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496404 := by
  apply coveredState_split_literal (state := state_1496404) 2
    state_1496405 state_1496450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496405
  · exact cover_1496450
#print axioms cover_1496404

def state_1496873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 59)))
theorem cover_1496873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496873 := by
  apply coveredState_split_literal (state := state_1496873) 4
    state_1496874 state_1496879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496874
  · exact cover_1496879
#print axioms cover_1496873

def state_1496857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 59)))
theorem cover_1496857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496857 := by
  apply coveredState_split_literal (state := state_1496857) 2
    state_1496858 state_1496873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496858
  · exact cover_1496873
#print axioms cover_1496857

def state_1496403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 59)))
theorem cover_1496403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496403 := by
  apply coveredState_split_literal (state := state_1496403) 1
    state_1496404 state_1496857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496404
  · exact cover_1496857
#print axioms cover_1496403

def state_1495991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 59)))
theorem cover_1495991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495991 := by
  apply coveredState_split_literal (state := state_1495991) 3
    state_1495992 state_1496403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495992
  · exact cover_1496403
#print axioms cover_1495991

def state_1495953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 59)))
theorem cover_1495953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495953 := by
  apply coveredState_split_literal (state := state_1495953) 0
    state_1495954 state_1495991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495954
  · exact cover_1495991
#print axioms cover_1495953

def state_1496956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 59)))
theorem cover_1496956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496956 := by
  apply coveredState_split_literal (state := state_1496956) 1
    state_1496957 state_1497018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496957
  · exact cover_1497018
#print axioms cover_1496956

def state_1496942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
theorem cover_1496942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496942 := by
  apply coveredState_split_literal (state := state_1496942) 3
    state_1496943 state_1496956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496943
  · exact cover_1496956
#print axioms cover_1496942

def state_1496940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
theorem cover_1496940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496940 := by
  apply coveredState_split_literal (state := state_1496940) 0
    state_1496941 state_1496942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1496941
  · exact cover_1496942
#print axioms cover_1496940
end Mub6.Numerical.CircleFullD0.Forest
