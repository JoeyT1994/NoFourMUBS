import D0FullInterface
import D0ForestChunk1044
import D0ForestChunk1045
import D0ForestChunk1046
import D0ForestChunk1047
import D0ForestChunk1048
import D0ForestChunk1049
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1551093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 40)))
theorem cover_1551093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551093 := by
  apply coveredState_split_literal (state := state_1551093) 0
    state_1551094 state_1551119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551094
  · exact cover_1551119
#print axioms cover_1551093

def state_1551092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 20)))
theorem cover_1551092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551092 := by
  apply coveredState_split_literal (state := state_1551092) 4
    state_1551093 state_1551176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551093
  · exact cover_1551176
#print axioms cover_1551092

def state_1551204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 40)))
theorem cover_1551204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551204 := by
  apply coveredState_split_literal (state := state_1551204) 0
    state_1551205 state_1551216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551205
  · exact cover_1551216
#print axioms cover_1551204

def state_1551203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 20)))
theorem cover_1551203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551203 := by
  apply coveredState_split_literal (state := state_1551203) 4
    state_1551204 state_1551269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551204
  · exact cover_1551269
#print axioms cover_1551203

def state_1551091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
theorem cover_1551091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551091 := by
  apply coveredState_split_literal (state := state_1551091) 3
    state_1551092 state_1551203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551092
  · exact cover_1551203
#print axioms cover_1551091

def state_1551053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
theorem cover_1551053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551053 := by
  apply coveredState_split_literal (state := state_1551053) 1
    state_1551054 state_1551091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551054
  · exact cover_1551091
#print axioms cover_1551053

def state_1551338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 20)))
theorem cover_1551338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551338 := by
  apply coveredState_split_literal (state := state_1551338) 3
    state_1551339 state_1551348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551339
  · exact cover_1551348
#print axioms cover_1551338

def state_1551320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 20)))
theorem cover_1551320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551320 := by
  apply coveredState_split_literal (state := state_1551320) 1
    state_1551321 state_1551338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551321
  · exact cover_1551338
#print axioms cover_1551320

def state_1551052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
theorem cover_1551052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551052 := by
  apply coveredState_split_literal (state := state_1551052) 2
    state_1551053 state_1551320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551053
  · exact cover_1551320
#print axioms cover_1551052

def state_1551008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
theorem cover_1551008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551008 := by
  apply coveredState_split_literal (state := state_1551008) 0
    state_1551009 state_1551052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551009
  · exact cover_1551052
#print axioms cover_1551008

def state_1551463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 104 else (if j.val < 4 then 40 else 41)))
theorem cover_1551463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551463 := by
  apply coveredState_split_literal (state := state_1551463) 1
    state_1551464 state_1551503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551464
  · exact cover_1551503
#print axioms cover_1551463

def state_1551462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 41)))
theorem cover_1551462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551462 := by
  apply coveredState_split_literal (state := state_1551462) 2
    state_1551463 state_1551532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551463
  · exact cover_1551532
#print axioms cover_1551462

def state_1551446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 41)))
theorem cover_1551446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551446 := by
  apply coveredState_split_literal (state := state_1551446) 0
    state_1551447 state_1551462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551447
  · exact cover_1551462
#print axioms cover_1551446

def state_1551424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 20)))
theorem cover_1551424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551424 := by
  apply coveredState_split_literal (state := state_1551424) 4
    state_1551425 state_1551446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551425
  · exact cover_1551446
#print axioms cover_1551424

def state_1551573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 41)))
theorem cover_1551573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551573 := by
  apply coveredState_split_literal (state := state_1551573) 2
    state_1551574 state_1551631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551574
  · exact cover_1551631
#print axioms cover_1551573

def state_1551551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 41)))
theorem cover_1551551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551551 := by
  apply coveredState_split_literal (state := state_1551551) 0
    state_1551552 state_1551573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551552
  · exact cover_1551573
#print axioms cover_1551551

def state_1551545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 20)))
theorem cover_1551545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551545 := by
  apply coveredState_split_literal (state := state_1551545) 4
    state_1551546 state_1551551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551546
  · exact cover_1551551
#print axioms cover_1551545

def state_1551423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
theorem cover_1551423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551423 := by
  apply coveredState_split_literal (state := state_1551423) 3
    state_1551424 state_1551545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551424
  · exact cover_1551545
#print axioms cover_1551423

def state_1551422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
theorem cover_1551422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551422 := by
  apply coveredState_split_literal (state := state_1551422) 1
    state_1551423 state_1551684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551423
  · exact cover_1551684
#print axioms cover_1551422

def state_1551720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 20)))
theorem cover_1551720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551720 := by
  apply coveredState_split_literal (state := state_1551720) 3
    state_1551721 state_1551724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551721
  · exact cover_1551724
#print axioms cover_1551720

def state_1551719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 20)))
theorem cover_1551719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551719 := by
  apply coveredState_split_literal (state := state_1551719) 1
    state_1551720 state_1551785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551720
  · exact cover_1551785
#print axioms cover_1551719

def state_1551421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
theorem cover_1551421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551421 := by
  apply coveredState_split_literal (state := state_1551421) 2
    state_1551422 state_1551719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551422
  · exact cover_1551719
#print axioms cover_1551421

def state_1551409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
theorem cover_1551409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551409 := by
  apply coveredState_split_literal (state := state_1551409) 0
    state_1551410 state_1551421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551410
  · exact cover_1551421
#print axioms cover_1551409

def state_1551007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
theorem cover_1551007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551007 := by
  apply coveredState_split_literal (state := state_1551007) 1
    state_1551008 state_1551409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551008
  · exact cover_1551409
#print axioms cover_1551007

def state_1551860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 42)))
theorem cover_1551860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551860 := by
  apply coveredState_split_literal (state := state_1551860) 0
    state_1551861 state_1551884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551861
  · exact cover_1551884
#print axioms cover_1551860

def state_1551936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 42)))
theorem cover_1551936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551936 := by
  apply coveredState_split_literal (state := state_1551936) 4
    state_1551937 state_1552000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551937
  · exact cover_1552000
#print axioms cover_1551936

def state_1551935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
theorem cover_1551935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551935 := by
  apply coveredState_split_literal (state := state_1551935) 2
    state_1551936 state_1552015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551936
  · exact cover_1552015
#print axioms cover_1551935

def state_1551925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
theorem cover_1551925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551925 := by
  apply coveredState_split_literal (state := state_1551925) 0
    state_1551926 state_1551935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551926
  · exact cover_1551935
#print axioms cover_1551925

def state_1551859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 42)))
theorem cover_1551859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551859 := by
  apply coveredState_split_literal (state := state_1551859) 3
    state_1551860 state_1551925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551860
  · exact cover_1551925
#print axioms cover_1551859

def state_1552074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 40 else 42)))
theorem cover_1552074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552074 := by
  apply coveredState_split_literal (state := state_1552074) 4
    state_1552075 state_1552102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552075
  · exact cover_1552102
#print axioms cover_1552074

def state_1552073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 42)))
theorem cover_1552073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552073 := by
  apply coveredState_split_literal (state := state_1552073) 2
    state_1552074 state_1552157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552074
  · exact cover_1552157
#print axioms cover_1552073

def state_1552067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 42)))
theorem cover_1552067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552067 := by
  apply coveredState_split_literal (state := state_1552067) 0
    state_1552068 state_1552073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1552068
  · exact cover_1552073
#print axioms cover_1552067
end Mub6.Numerical.CircleFullD0.Forest
