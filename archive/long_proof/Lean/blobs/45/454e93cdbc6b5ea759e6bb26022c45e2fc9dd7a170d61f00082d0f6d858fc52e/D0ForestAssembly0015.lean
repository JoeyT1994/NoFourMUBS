import D0FullInterface
import D0ForestAssembly0013
import D0ForestAssembly0014
import D0ForestChunk0028
import D0ForestChunk0031
import D0ForestChunk0032
import D0ForestChunk0033
import D0ForestChunk0034
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1607861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1607861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607861 := by
  apply coveredState_split_literal (state := state_1607861) 1
    state_1607862 state_1608695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607862
  · exact cover_1608695
#print axioms cover_1607861

def state_1607860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1607860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607860 := by
  apply coveredState_split_literal (state := state_1607860) 3
    state_1607861 state_1608886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607861
  · exact cover_1608886
#print axioms cover_1607860

def state_1607859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1607859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607859 := by
  apply coveredState_split_literal (state := state_1607859) 4
    state_1607860 state_1609079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607860
  · exact cover_1609079
#print axioms cover_1607859

def state_1607841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1607841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607841 := by
  apply coveredState_split_literal (state := state_1607841) 2
    state_1607842 state_1607859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1607842
  · exact cover_1607859
#print axioms cover_1607841

def state_1597133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1597133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597133 := by
  apply coveredState_split_literal (state := state_1597133) 1
    state_1597134 state_1607841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597134
  · exact cover_1607841
#print axioms cover_1597133

def state_1609163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1609163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609163 := by
  apply coveredState_split_literal (state := state_1609163) 0
    state_1609164 state_1610187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609164
  · exact cover_1610187
#print axioms cover_1609163

def state_1609103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1609103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609103 := by
  apply coveredState_split_literal (state := state_1609103) 3
    state_1609104 state_1609163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609104
  · exact cover_1609163
#print axioms cover_1609103

def state_1609102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1609102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609102 := by
  apply coveredState_split_literal (state := state_1609102) 4
    state_1609103 state_1610202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609103
  · exact cover_1610202
#print axioms cover_1609102

def state_1610600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 24)))
theorem cover_1610600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610600 := by
  apply coveredState_split_literal (state := state_1610600) 3
    state_1610601 state_1611546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610601
  · exact cover_1611546
#print axioms cover_1610600

def state_1610599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1610599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610599 := by
  apply coveredState_split_literal (state := state_1610599) 2
    state_1610600 state_1612087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610600
  · exact cover_1612087
#print axioms cover_1610599

def state_1610598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1610598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610598 := by
  apply coveredState_split_literal (state := state_1610598) 1
    state_1610599 state_1612100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610599
  · exact cover_1612100
#print axioms cover_1610598

def state_1612645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1612645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612645 := by
  apply coveredState_split_literal (state := state_1612645) 1
    state_1612646 state_1613605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612646
  · exact cover_1613605
#print axioms cover_1612645

def state_1610597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1610597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610597 := by
  apply coveredState_split_literal (state := state_1610597) 4
    state_1610598 state_1612645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610598
  · exact cover_1612645
#print axioms cover_1610597

def state_1610596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1610596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610596 := by
  apply coveredState_split_literal (state := state_1610596) 0
    state_1610597 state_1613964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610597
  · exact cover_1613964
#print axioms cover_1610596

def state_1610204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1610204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610204 := by
  apply coveredState_split_literal (state := state_1610204) 3
    state_1610205 state_1610596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610205
  · exact cover_1610596
#print axioms cover_1610204

def state_1610203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1610203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610203 := by
  apply coveredState_split_literal (state := state_1610203) 4
    state_1610204 state_1614049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610204
  · exact cover_1614049
#print axioms cover_1610203

def state_1609101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1609101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609101 := by
  apply coveredState_split_literal (state := state_1609101) 2
    state_1609102 state_1610203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609102
  · exact cover_1610203
#print axioms cover_1609101

def state_1609100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1609100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609100 := by
  apply coveredState_split_literal (state := state_1609100) 1
    state_1609101 state_1614156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609101
  · exact cover_1614156
#print axioms cover_1609100

def state_1597132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1597132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597132 := by
  apply coveredState_split_literal (state := state_1597132) 0
    state_1597133 state_1609100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597133
  · exact cover_1609100
#print axioms cover_1597132

def state_1597131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_1597131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597131 := by
  apply coveredState_split_literal (state := state_1597131) 4
    state_1597132 state_1614871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597132
  · exact cover_1614871
#print axioms cover_1597131

def state_1596713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1596713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596713 := by
  apply coveredState_split_literal (state := state_1596713) 3
    state_1596714 state_1597131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596714
  · exact cover_1597131
#print axioms cover_1596713

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

def state_1572522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1572522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572522 := by
  apply coveredState_split_literal (state := state_1572522) 3
    state_1572523 state_1572862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572523
  · exact cover_1572862
#print axioms cover_1572522

def state_1570134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1570134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570134 := by
  apply coveredState_split_literal (state := state_1570134) 2
    state_1570135 state_1572522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570135
  · exact cover_1572522
#print axioms cover_1570134

def state_1618083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1618083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618083 := by
  apply coveredState_split_literal (state := state_1618083) 1
    state_1618084 state_1618885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618084
  · exact cover_1618885
#print axioms cover_1618083

def state_1618082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1618082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618082 := by
  apply coveredState_split_literal (state := state_1618082) 4
    state_1618083 state_1619416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618083
  · exact cover_1619416
#print axioms cover_1618082

def state_1618076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1618076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618076 := by
  apply coveredState_split_literal (state := state_1618076) 3
    state_1618077 state_1618082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618077
  · exact cover_1618082
#print axioms cover_1618076

def state_1618075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1618075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618075 := by
  apply coveredState_split_literal (state := state_1618075) 2
    state_1618076 state_1619435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618076
  · exact cover_1619435
#print axioms cover_1618075

def state_1618074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1618074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618074 := by
  apply coveredState_split_literal (state := state_1618074) 1
    state_1618075 state_1619474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618075
  · exact cover_1619474
#print axioms cover_1618074

def state_1618073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1618073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618073 := by
  apply coveredState_split_literal (state := state_1618073) 0
    state_1618074 state_1619559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618074
  · exact cover_1619559
#print axioms cover_1618073

def state_1618072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1618072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618072 := by
  apply coveredState_split_literal (state := state_1618072) 4
    state_1618073 state_1619956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618073
  · exact cover_1619956
#print axioms cover_1618072

def state_1622411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
theorem cover_1622411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622411 := by
  apply coveredState_split_literal (state := state_1622411) 2
    state_1622412 state_1623031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622412
  · exact cover_1623031
#print axioms cover_1622411

def state_1622223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
theorem cover_1622223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622223 := by
  apply coveredState_split_literal (state := state_1622223) 1
    state_1622224 state_1622411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622224
  · exact cover_1622411
#print axioms cover_1622223

def state_1622222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 33)))
theorem cover_1622222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622222 := by
  apply coveredState_split_literal (state := state_1622222) 3
    state_1622223 state_1623686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622223
  · exact cover_1623686
#print axioms cover_1622222

def state_1621302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
theorem cover_1621302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621302 := by
  apply coveredState_split_literal (state := state_1621302) 4
    state_1621303 state_1622222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621303
  · exact cover_1622222
#print axioms cover_1621302

def state_1621301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
theorem cover_1621301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621301 := by
  apply coveredState_split_literal (state := state_1621301) 0
    state_1621302 state_1624075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621302
  · exact cover_1624075
#print axioms cover_1621301

def state_1621300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
theorem cover_1621300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621300 := by
  apply coveredState_split_literal (state := state_1621300) 2
    state_1621301 state_1624290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621301
  · exact cover_1624290
#print axioms cover_1621300

def state_1621208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
theorem cover_1621208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621208 := by
  apply coveredState_split_literal (state := state_1621208) 1
    state_1621209 state_1621300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621209
  · exact cover_1621300
#print axioms cover_1621208

def state_1621207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 16)))
theorem cover_1621207 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621207 := by
  apply coveredState_split_literal (state := state_1621207) 3
    state_1621208 state_1624643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621208
  · exact cover_1624643
#print axioms cover_1621207

def state_1624813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
theorem cover_1624813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624813 := by
  apply coveredState_split_literal (state := state_1624813) 2
    state_1624814 state_1625161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624814
  · exact cover_1625161
#print axioms cover_1624813

def state_1624717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
theorem cover_1624717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624717 := by
  apply coveredState_split_literal (state := state_1624717) 1
    state_1624718 state_1624813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624718
  · exact cover_1624813
#print axioms cover_1624717

def state_1624716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 17)))
theorem cover_1624716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624716 := by
  apply coveredState_split_literal (state := state_1624716) 3
    state_1624717 state_1626144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624717
  · exact cover_1626144
#print axioms cover_1624716

def state_1621206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1621206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621206 := by
  apply coveredState_split_literal (state := state_1621206) 4
    state_1621207 state_1624716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621207
  · exact cover_1624716
#print axioms cover_1621206

def state_1620872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1620872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620872 := by
  apply coveredState_split_literal (state := state_1620872) 0
    state_1620873 state_1621206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620873
  · exact cover_1621206
#print axioms cover_1620872

def state_1620871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1620871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620871 := by
  apply coveredState_split_literal (state := state_1620871) 2
    state_1620872 state_1626597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620872
  · exact cover_1626597
#print axioms cover_1620871

def state_1620870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1620870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620870 := by
  apply coveredState_split_literal (state := state_1620870) 3
    state_1620871 state_1627142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620871
  · exact cover_1627142
#print axioms cover_1620870

def state_1620792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1620792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620792 := by
  apply coveredState_split_literal (state := state_1620792) 1
    state_1620793 state_1620870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620793
  · exact cover_1620870
#print axioms cover_1620792

def state_1620791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1620791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620791 := by
  apply coveredState_split_literal (state := state_1620791) 4
    state_1620792 state_1627213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620792
  · exact cover_1627213
#print axioms cover_1620791
end Mub6.Numerical.CircleFullD0.Forest
