import D0FullInterface
import D0ForestAssembly0299
import D0ForestAssembly0310
import D0ForestAssembly0319
import D0ForestAssembly0338
import D0ForestAssembly0339
import D0ForestChunk1312
import D0ForestChunk1317
import D0ForestChunk1318
import D0ForestChunk1319
import D0ForestChunk1320
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1616076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_1616076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616076 := by
  apply coveredState_split_literal (state := state_1616076) 0
    state_1616077 state_1616750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616077
  · exact cover_1616750
#print axioms cover_1616076

def state_1616764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
theorem cover_1616764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616764 := by
  apply coveredState_split_literal (state := state_1616764) 2
    state_1616765 state_1616812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616765
  · exact cover_1616812
#print axioms cover_1616764

def state_1616763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
theorem cover_1616763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616763 := by
  apply coveredState_split_literal (state := state_1616763) 0
    state_1616764 state_1616875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616764
  · exact cover_1616875
#print axioms cover_1616763

def state_1616075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_1616075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616075 := by
  apply coveredState_split_literal (state := state_1616075) 4
    state_1616076 state_1616763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616076
  · exact cover_1616763
#print axioms cover_1616075

def state_1615761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_1615761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615761 := by
  apply coveredState_split_literal (state := state_1615761) 1
    state_1615762 state_1616075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615762
  · exact cover_1616075
#print axioms cover_1615761

def state_1615667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 24)))
theorem cover_1615667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615667 := by
  apply coveredState_split_literal (state := state_1615667) 3
    state_1615668 state_1615761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615668
  · exact cover_1615761
#print axioms cover_1615667

def state_1616916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
theorem cover_1616916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616916 := by
  apply coveredState_split_literal (state := state_1616916) 4
    state_1616917 state_1616972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616917
  · exact cover_1616972
#print axioms cover_1616916

def state_1616914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
theorem cover_1616914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616914 := by
  apply coveredState_split_literal (state := state_1616914) 1
    state_1616915 state_1616916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616915
  · exact cover_1616916
#print axioms cover_1616914

def state_1616886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 24)))
theorem cover_1616886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616886 := by
  apply coveredState_split_literal (state := state_1616886) 3
    state_1616887 state_1616914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1616887
  · exact cover_1616914
#print axioms cover_1616886

def state_1615666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_1615666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615666 := by
  apply coveredState_split_literal (state := state_1615666) 2
    state_1615667 state_1616886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615667
  · exact cover_1616886
#print axioms cover_1615666

def state_1615665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_1615665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615665 := by
  apply coveredState_split_literal (state := state_1615665) 4
    state_1615666 state_1616983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615666
  · exact cover_1616983
#print axioms cover_1615665

def state_1615635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_1615635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615635 := by
  apply coveredState_split_literal (state := state_1615635) 1
    state_1615636 state_1615665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615636
  · exact cover_1615665
#print axioms cover_1615635

def state_1615634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_1615634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615634 := by
  apply coveredState_split_literal (state := state_1615634) 0
    state_1615635 state_1617034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615635
  · exact cover_1617034
#print axioms cover_1615634

def state_1617055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_1617055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617055 := by
  apply coveredState_split_literal (state := state_1617055) 4
    state_1617056 state_1617109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617056
  · exact cover_1617109
#print axioms cover_1617055

def state_1617143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 24)))
theorem cover_1617143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617143 := by
  apply coveredState_split_literal (state := state_1617143) 1
    state_1617144 state_1617199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617144
  · exact cover_1617199
#print axioms cover_1617143

def state_1617142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 24)))
theorem cover_1617142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617142 := by
  apply coveredState_split_literal (state := state_1617142) 3
    state_1617143 state_1617210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617143
  · exact cover_1617210
#print axioms cover_1617142

def state_1617141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 24)))
theorem cover_1617141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617141 := by
  apply coveredState_split_literal (state := state_1617141) 2
    state_1617142 state_1617221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617142
  · exact cover_1617221
#print axioms cover_1617141

def state_1617248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 25)))
theorem cover_1617248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617248 := by
  apply coveredState_split_literal (state := state_1617248) 2
    state_1617249 state_1617300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617249
  · exact cover_1617300
#print axioms cover_1617248

def state_1617140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_1617140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617140 := by
  apply coveredState_split_literal (state := state_1617140) 4
    state_1617141 state_1617248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617141
  · exact cover_1617248
#print axioms cover_1617140

def state_1617054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_1617054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617054 := by
  apply coveredState_split_literal (state := state_1617054) 1
    state_1617055 state_1617140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617055
  · exact cover_1617140
#print axioms cover_1617054

def state_1617053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_1617053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617053 := by
  apply coveredState_split_literal (state := state_1617053) 0
    state_1617054 state_1617319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617054
  · exact cover_1617319
#print axioms cover_1617053

def state_1615633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 12)))
theorem cover_1615633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615633 := by
  apply coveredState_split_literal (state := state_1615633) 3
    state_1615634 state_1617053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615634
  · exact cover_1617053
#print axioms cover_1615633

def state_1615632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_1615632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615632 := by
  apply coveredState_split_literal (state := state_1615632) 2
    state_1615633 state_1617360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615633
  · exact cover_1617360
#print axioms cover_1615632

def state_1615631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1615631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615631 := by
  apply coveredState_split_literal (state := state_1615631) 4
    state_1615632 state_1617383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615632
  · exact cover_1617383
#print axioms cover_1615631

def state_1615593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1615593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615593 := by
  apply coveredState_split_literal (state := state_1615593) 1
    state_1615594 state_1615631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615594
  · exact cover_1615631
#print axioms cover_1615593

def state_1614971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1614971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614971 := by
  apply coveredState_split_literal (state := state_1614971) 0
    state_1614972 state_1615593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614972
  · exact cover_1615593
#print axioms cover_1614971

def state_1614970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_1614970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614970 := by
  apply coveredState_split_literal (state := state_1614970) 4
    state_1614971 state_1617444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614971
  · exact cover_1617444
#print axioms cover_1614970

def state_1614904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_1614904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614904 := by
  apply coveredState_split_literal (state := state_1614904) 3
    state_1614905 state_1614970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614905
  · exact cover_1614970
#print axioms cover_1614904

def state_1596712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1596712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596712 := by
  apply coveredState_split_literal (state := state_1596712) 2
    state_1596713 state_1614904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596713
  · exact cover_1614904
#print axioms cover_1596712

def state_1587126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1587126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587126 := by
  apply coveredState_split_literal (state := state_1587126) 1
    state_1587127 state_1596712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587127
  · exact cover_1596712
#print axioms cover_1587126

def state_1576114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1576114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576114 := by
  apply coveredState_split_literal (state := state_1576114) 0
    state_1576115 state_1587126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576115
  · exact cover_1587126
#print axioms cover_1576114

def state_1572862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1572862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572862 := by
  apply coveredState_split_literal (state := state_1572862) 4
    state_1572863 state_1576114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572863
  · exact cover_1576114
#print axioms cover_1572862
end Mub6.Numerical.CircleFullD0.Forest
