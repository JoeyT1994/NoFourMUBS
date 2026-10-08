import CircleFullInterface
import CircleForestAssembly0087
import CircleForestChunk0351
import CircleForestChunk0354
import CircleForestChunk0355
import CircleForestChunk0356
import CircleForestChunk0357
import CircleForestChunk0358
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1022285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
theorem cover_1022285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022285 := by
  apply coveredState_split_literal (state := state_1022285) 0
    state_1022286 state_1022445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022286
  · exact cover_1022445
#print axioms cover_1022285

def state_1022117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
theorem cover_1022117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022117 := by
  apply coveredState_split_literal (state := state_1022117) 1
    state_1022118 state_1022285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022118
  · exact cover_1022285
#print axioms cover_1022117

def state_1021945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 101)))
theorem cover_1021945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021945 := by
  apply coveredState_split_literal (state := state_1021945) 2
    state_1021946 state_1022117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021946
  · exact cover_1022117
#print axioms cover_1021945

def state_1021879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 101)))
theorem cover_1021879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021879 := by
  apply coveredState_split_literal (state := state_1021879) 3
    state_1021880 state_1021945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021880
  · exact cover_1021945
#print axioms cover_1021879

def state_1021847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1021847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021847 := by
  apply coveredState_split_literal (state := state_1021847) 4
    state_1021848 state_1021879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021848
  · exact cover_1021879
#print axioms cover_1021847

def state_1021581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1021581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021581 := by
  apply coveredState_split_literal (state := state_1021581) 0
    state_1021582 state_1021847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021582
  · exact cover_1021847
#print axioms cover_1021581

def state_1022506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 101)))
theorem cover_1022506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022506 := by
  apply coveredState_split_literal (state := state_1022506) 3
    state_1022507 state_1022526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022507
  · exact cover_1022526
#print axioms cover_1022506

def state_1022502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1022502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022502 := by
  apply coveredState_split_literal (state := state_1022502) 4
    state_1022503 state_1022506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022503
  · exact cover_1022506
#print axioms cover_1022502

def state_1022486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1022486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022486 := by
  apply coveredState_split_literal (state := state_1022486) 0
    state_1022487 state_1022502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022487
  · exact cover_1022502
#print axioms cover_1022486

def state_1021580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
theorem cover_1021580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021580 := by
  apply coveredState_split_literal (state := state_1021580) 1
    state_1021581 state_1022486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021581
  · exact cover_1022486
#print axioms cover_1021580

def state_1021464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
theorem cover_1021464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021464 := by
  apply coveredState_split_literal (state := state_1021464) 2
    state_1021465 state_1021580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1021465
  · exact cover_1021580
#print axioms cover_1021464

def state_1022684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 102)))
theorem cover_1022684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022684 := by
  apply coveredState_split_literal (state := state_1022684) 2
    state_1022685 state_1022734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022685
  · exact cover_1022734
#print axioms cover_1022684

def state_1022683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 51)))
theorem cover_1022683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022683 := by
  apply coveredState_split_literal (state := state_1022683) 4
    state_1022684 state_1022765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022684
  · exact cover_1022765
#print axioms cover_1022683

def state_1022641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1022641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022641 := by
  apply coveredState_split_literal (state := state_1022641) 3
    state_1022642 state_1022683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022642
  · exact cover_1022683
#print axioms cover_1022641

def state_1022769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 51)))
theorem cover_1022769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022769 := by
  apply coveredState_split_literal (state := state_1022769) 4
    state_1022770 state_1022825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022770
  · exact cover_1022825
#print axioms cover_1022769

def state_1022844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 102)))
theorem cover_1022844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022844 := by
  apply coveredState_split_literal (state := state_1022844) 1
    state_1022845 state_1022858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022845
  · exact cover_1022858
#print axioms cover_1022844

def state_1022957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 150 else (if j.val < 4 then 206 else 204)))
theorem cover_1022957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022957 := by
  apply coveredState_split_literal (state := state_1022957) 1
    state_1022958 state_1022969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022958
  · exact cover_1022969
#print axioms cover_1022957

def state_1022956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 204)))
theorem cover_1022956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022956 := by
  apply coveredState_split_literal (state := state_1022956) 2
    state_1022957 state_1023026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022957
  · exact cover_1023026
#print axioms cover_1022956

def state_1023040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 150 else (if j.val < 4 then 207 else 204)))
theorem cover_1023040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023040 := by
  apply coveredState_split_literal (state := state_1023040) 1
    state_1023041 state_1023076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023041
  · exact cover_1023076
#print axioms cover_1023040

def state_1023039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 204)))
theorem cover_1023039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023039 := by
  apply coveredState_split_literal (state := state_1023039) 2
    state_1023040 state_1023135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023040
  · exact cover_1023135
#print axioms cover_1023039

def state_1022955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 204)))
theorem cover_1022955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022955 := by
  apply coveredState_split_literal (state := state_1022955) 3
    state_1022956 state_1023039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022956
  · exact cover_1023039
#print axioms cover_1022955

def state_1022954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1022954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022954 := by
  apply coveredState_split_literal (state := state_1022954) 4
    state_1022955 state_1023190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022955
  · exact cover_1023190
#print axioms cover_1022954

def state_1023312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 204)))
theorem cover_1023312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023312 := by
  apply coveredState_split_literal (state := state_1023312) 1
    state_1023313 state_1023322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023313
  · exact cover_1023322
#print axioms cover_1023312

def state_1023288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 204)))
theorem cover_1023288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023288 := by
  apply coveredState_split_literal (state := state_1023288) 2
    state_1023289 state_1023312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023289
  · exact cover_1023312
#print axioms cover_1023288

def state_1023242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 204)))
theorem cover_1023242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023242 := by
  apply coveredState_split_literal (state := state_1023242) 3
    state_1023243 state_1023288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023243
  · exact cover_1023288
#print axioms cover_1023242

def state_1023241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1023241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023241 := by
  apply coveredState_split_literal (state := state_1023241) 4
    state_1023242 state_1023383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1023242
  · exact cover_1023383
#print axioms cover_1023241

def state_1022953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1022953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022953 := by
  apply coveredState_split_literal (state := state_1022953) 0
    state_1022954 state_1023241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022954
  · exact cover_1023241
#print axioms cover_1022953

def state_1022913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
theorem cover_1022913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022913 := by
  apply coveredState_split_literal (state := state_1022913) 1
    state_1022914 state_1022953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022914
  · exact cover_1022953
#print axioms cover_1022913

def state_1022843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 102)))
theorem cover_1022843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022843 := by
  apply coveredState_split_literal (state := state_1022843) 2
    state_1022844 state_1022913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022844
  · exact cover_1022913
#print axioms cover_1022843

def state_1022842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 51)))
theorem cover_1022842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022842 := by
  apply coveredState_split_literal (state := state_1022842) 4
    state_1022843 state_1023442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022843
  · exact cover_1023442
#print axioms cover_1022842

def state_1022768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1022768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022768 := by
  apply coveredState_split_literal (state := state_1022768) 3
    state_1022769 state_1022842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022769
  · exact cover_1022842
#print axioms cover_1022768

def state_1022640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1022640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022640 := by
  apply coveredState_split_literal (state := state_1022640) 0
    state_1022641 state_1022768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1022641
  · exact cover_1022768
#print axioms cover_1022640
end Mub6.Numerical.CircleFullD0.Forest
