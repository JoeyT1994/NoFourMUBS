import D0FullInterface
import D0ForestAssembly0024
import D0ForestChunk0101
import D0ForestChunk0103
import D0ForestChunk0104
import D0ForestChunk0105
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_961942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_961942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961942 := by
  apply coveredState_split_literal (state := state_961942) 1
    state_961943 state_962184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961943
  · exact cover_962184
#print axioms cover_961942

def state_961941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_961941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961941 := by
  apply coveredState_split_literal (state := state_961941) 0
    state_961942 state_962389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961942
  · exact cover_962389
#print axioms cover_961941

def state_961923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 55)))
theorem cover_961923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961923 := by
  apply coveredState_split_literal (state := state_961923) 3
    state_961924 state_961941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961924
  · exact cover_961941
#print axioms cover_961923

def state_961843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 27)))
theorem cover_961843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961843 := by
  apply coveredState_split_literal (state := state_961843) 4
    state_961844 state_961923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961844
  · exact cover_961923
#print axioms cover_961843

def state_961842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_961842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961842 := by
  apply coveredState_split_literal (state := state_961842) 2
    state_961843 state_962424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961843
  · exact cover_962424
#print axioms cover_961842

def state_962468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_962468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962468 := by
  apply coveredState_split_literal (state := state_962468) 2
    state_962469 state_962522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962469
  · exact cover_962522
#print axioms cover_962468

def state_962467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_962467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962467 := by
  apply coveredState_split_literal (state := state_962467) 1
    state_962468 state_962535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962468
  · exact cover_962535
#print axioms cover_962467

def state_962466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
theorem cover_962466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962466 := by
  apply coveredState_split_literal (state := state_962466) 0
    state_962467 state_962548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962467
  · exact cover_962548
#print axioms cover_962466

def state_962464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 55)))
theorem cover_962464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962464 := by
  apply coveredState_split_literal (state := state_962464) 3
    state_962465 state_962466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962465
  · exact cover_962466
#print axioms cover_962464

def state_962462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 27)))
theorem cover_962462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962462 := by
  apply coveredState_split_literal (state := state_962462) 4
    state_962463 state_962464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962463
  · exact cover_962464
#print axioms cover_962462

def state_962461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_962461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962461 := by
  apply coveredState_split_literal (state := state_962461) 2
    state_962462 state_962561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962462
  · exact cover_962561
#print axioms cover_962461

def state_961841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_961841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961841 := by
  apply coveredState_split_literal (state := state_961841) 1
    state_961842 state_962461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961842
  · exact cover_962461
#print axioms cover_961841

def state_961840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
theorem cover_961840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961840 := by
  apply coveredState_split_literal (state := state_961840) 0
    state_961841 state_962562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961841
  · exact cover_962562
#print axioms cover_961840

def state_961838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 27)))
theorem cover_961838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961838 := by
  apply coveredState_split_literal (state := state_961838) 3
    state_961839 state_961840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961839
  · exact cover_961840
#print axioms cover_961838

def state_961830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 13)))
theorem cover_961830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961830 := by
  apply coveredState_split_literal (state := state_961830) 4
    state_961831 state_961838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961831
  · exact cover_961838
#print axioms cover_961830

def state_961829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_961829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961829 := by
  apply coveredState_split_literal (state := state_961829) 2
    state_961830 state_962591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961830
  · exact cover_962591
#print axioms cover_961829

def state_961828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_961828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961828 := by
  apply coveredState_split_literal (state := state_961828) 1
    state_961829 state_962592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961829
  · exact cover_962592
#print axioms cover_961828

def state_961084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_961084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961084 := by
  apply coveredState_split_literal (state := state_961084) 0
    state_961085 state_961828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961085
  · exact cover_961828
#print axioms cover_961084

def state_962685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
theorem cover_962685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962685 := by
  apply coveredState_split_literal (state := state_962685) 1
    state_962686 state_962733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962686
  · exact cover_962733
#print axioms cover_962685

def state_962677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
theorem cover_962677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962677 := by
  apply coveredState_split_literal (state := state_962677) 0
    state_962678 state_962685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962678
  · exact cover_962685
#print axioms cover_962677

def state_962675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 54)))
theorem cover_962675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962675 := by
  apply coveredState_split_literal (state := state_962675) 4
    state_962676 state_962677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962676
  · exact cover_962677
#print axioms cover_962675

def state_962674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 54)))
theorem cover_962674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962674 := by
  apply coveredState_split_literal (state := state_962674) 3
    state_962675 state_962752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962675
  · exact cover_962752
#print axioms cover_962674

def state_962664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_962664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962664 := by
  apply coveredState_split_literal (state := state_962664) 2
    state_962665 state_962674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962665
  · exact cover_962674
#print axioms cover_962664

def state_962663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_962663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962663 := by
  apply coveredState_split_literal (state := state_962663) 1
    state_962664 state_962775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962664
  · exact cover_962775
#print axioms cover_962663

def state_962657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_962657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962657 := by
  apply coveredState_split_literal (state := state_962657) 0
    state_962658 state_962663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962658
  · exact cover_962663
#print axioms cover_962657

def state_962816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 104 else (if j.val < 4 then 72 else 110)))
theorem cover_962816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962816 := by
  apply coveredState_split_literal (state := state_962816) 2
    state_962817 state_962826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962817
  · exact cover_962826
#print axioms cover_962816

def state_962814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 72 else 110)))
theorem cover_962814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962814 := by
  apply coveredState_split_literal (state := state_962814) 1
    state_962815 state_962816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962815
  · exact cover_962816
#print axioms cover_962814

def state_962806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 72 else 110)))
theorem cover_962806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962806 := by
  apply coveredState_split_literal (state := state_962806) 0
    state_962807 state_962814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962807
  · exact cover_962814
#print axioms cover_962806

def state_962805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 110)))
theorem cover_962805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962805 := by
  apply coveredState_split_literal (state := state_962805) 3
    state_962806 state_962885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962806
  · exact cover_962885
#print axioms cover_962805

def state_962804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 55)))
theorem cover_962804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962804 := by
  apply coveredState_split_literal (state := state_962804) 4
    state_962805 state_962892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962805
  · exact cover_962892
#print axioms cover_962804

def state_962905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
theorem cover_962905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962905 := by
  apply coveredState_split_literal (state := state_962905) 1
    state_962906 state_962921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962906
  · exact cover_962921
#print axioms cover_962905

def state_962899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
theorem cover_962899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962899 := by
  apply coveredState_split_literal (state := state_962899) 0
    state_962900 state_962905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962900
  · exact cover_962905
#print axioms cover_962899
end Mub6.Numerical.CircleFullD0.Forest
