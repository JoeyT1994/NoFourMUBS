import D0FullInterface
import D0ForestAssembly0015
import D0ForestChunk0033
import D0ForestChunk0034
import D0ForestChunk0035
import D0ForestChunk0036
import D0ForestChunk0037
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
def state_1620725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1620725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620725 := by
  apply coveredState_split_literal (state := state_1620725) 0
    state_1620726 state_1620791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620726
  · exact cover_1620791
#print axioms cover_1620725

def state_1620724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_1620724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620724 := by
  apply coveredState_split_literal (state := state_1620724) 3
    state_1620725 state_1628160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620725
  · exact cover_1628160
#print axioms cover_1620724

def state_1620090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1620090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620090 := by
  apply coveredState_split_literal (state := state_1620090) 2
    state_1620091 state_1620724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620091
  · exact cover_1620724
#print axioms cover_1620090

def state_1628726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1628726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628726 := by
  apply coveredState_split_literal (state := state_1628726) 4
    state_1628727 state_1629532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628727
  · exact cover_1629532
#print axioms cover_1628726

def state_1628672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1628672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628672 := by
  apply coveredState_split_literal (state := state_1628672) 0
    state_1628673 state_1628726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628673
  · exact cover_1628726
#print axioms cover_1628672

def state_1628671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1628671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628671 := by
  apply coveredState_split_literal (state := state_1628671) 2
    state_1628672 state_1630009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628672
  · exact cover_1630009
#print axioms cover_1628671

def state_1628670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1628670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628670 := by
  apply coveredState_split_literal (state := state_1628670) 1
    state_1628671 state_1630122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628671
  · exact cover_1630122
#print axioms cover_1628670

def state_1628669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1628669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628669 := by
  apply coveredState_split_literal (state := state_1628669) 3
    state_1628670 state_1630147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628670
  · exact cover_1630147
#print axioms cover_1628669

def state_1628668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1628668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628668 := by
  apply coveredState_split_literal (state := state_1628668) 4
    state_1628669 state_1630192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628669
  · exact cover_1630192
#print axioms cover_1628668

def state_1628642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1628642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628642 := by
  apply coveredState_split_literal (state := state_1628642) 0
    state_1628643 state_1628668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628643
  · exact cover_1628668
#print axioms cover_1628642

def state_1628641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_1628641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628641 := by
  apply coveredState_split_literal (state := state_1628641) 3
    state_1628642 state_1630471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628642
  · exact cover_1630471
#print axioms cover_1628641

def state_1628195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1628195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628195 := by
  apply coveredState_split_literal (state := state_1628195) 2
    state_1628196 state_1628641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628196
  · exact cover_1628641
#print axioms cover_1628195

def state_1620089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1620089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620089 := by
  apply coveredState_split_literal (state := state_1620089) 1
    state_1620090 state_1628195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620090
  · exact cover_1628195
#print axioms cover_1620089

def state_1620088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1620088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620088 := by
  apply coveredState_split_literal (state := state_1620088) 4
    state_1620089 state_1630486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620089
  · exact cover_1630486
#print axioms cover_1620088

def state_1620087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1620087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620087 := by
  apply coveredState_split_literal (state := state_1620087) 3
    state_1620088 state_1630645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620088
  · exact cover_1630645
#print axioms cover_1620087

def state_1620086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1620086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620086 := by
  apply coveredState_split_literal (state := state_1620086) 2
    state_1620087 state_1630658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620087
  · exact cover_1630658
#print axioms cover_1620086

def state_1620085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1620085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620085 := by
  apply coveredState_split_literal (state := state_1620085) 1
    state_1620086 state_1631027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620086
  · exact cover_1631027
#print axioms cover_1620085

def state_1631889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_1631889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631889 := by
  apply coveredState_split_literal (state := state_1631889) 3
    state_1631890 state_1632761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631890
  · exact cover_1632761
#print axioms cover_1631889

def state_1631795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_1631795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631795 := by
  apply coveredState_split_literal (state := state_1631795) 1
    state_1631796 state_1631889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631796
  · exact cover_1631889
#print axioms cover_1631795

def state_1631149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1631149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631149 := by
  apply coveredState_split_literal (state := state_1631149) 4
    state_1631150 state_1631795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631150
  · exact cover_1631795
#print axioms cover_1631149

def state_1631148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
theorem cover_1631148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631148 := by
  apply coveredState_split_literal (state := state_1631148) 3
    state_1631149 state_1633532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631149
  · exact cover_1633532
#print axioms cover_1631148

def state_1631114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1631114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631114 := by
  apply coveredState_split_literal (state := state_1631114) 2
    state_1631115 state_1631148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631115
  · exact cover_1631148
#print axioms cover_1631114

def state_1631113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1631113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631113 := by
  apply coveredState_split_literal (state := state_1631113) 1
    state_1631114 state_1633583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631114
  · exact cover_1633583
#print axioms cover_1631113

def state_1631112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1631112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631112 := by
  apply coveredState_split_literal (state := state_1631112) 0
    state_1631113 state_1634498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631113
  · exact cover_1634498
#print axioms cover_1631112

def state_1631111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1631111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631111 := by
  apply coveredState_split_literal (state := state_1631111) 4
    state_1631112 state_1634567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631112
  · exact cover_1634567
#print axioms cover_1631111

def state_1631110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1631110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631110 := by
  apply coveredState_split_literal (state := state_1631110) 3
    state_1631111 state_1634970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631111
  · exact cover_1634970
#print axioms cover_1631110

def state_1636147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 9)))
theorem cover_1636147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636147 := by
  apply coveredState_split_literal (state := state_1636147) 4
    state_1636148 state_1636469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636148
  · exact cover_1636469
#print axioms cover_1636147

def state_1636146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1636146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636146 := by
  apply coveredState_split_literal (state := state_1636146) 2
    state_1636147 state_1637364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636147
  · exact cover_1637364
#print axioms cover_1636146

def state_1637497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1637497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637497 := by
  apply coveredState_split_literal (state := state_1637497) 2
    state_1637498 state_1637985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637498
  · exact cover_1637985
#print axioms cover_1637497

def state_1636145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1636145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636145 := by
  apply coveredState_split_literal (state := state_1636145) 0
    state_1636146 state_1637497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636146
  · exact cover_1637497
#print axioms cover_1636145

def state_1635767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1635767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635767 := by
  apply coveredState_split_literal (state := state_1635767) 3
    state_1635768 state_1636145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635768
  · exact cover_1636145
#print axioms cover_1635767

def state_1635211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1635211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635211 := by
  apply coveredState_split_literal (state := state_1635211) 1
    state_1635212 state_1635767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635212
  · exact cover_1635767
#print axioms cover_1635211

def state_1635047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
theorem cover_1635047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635047 := by
  apply coveredState_split_literal (state := state_1635047) 4
    state_1635048 state_1635211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635048
  · exact cover_1635211
#print axioms cover_1635047

def state_1635046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_1635046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635046 := by
  apply coveredState_split_literal (state := state_1635046) 2
    state_1635047 state_1638874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635047
  · exact cover_1638874
#print axioms cover_1635046

def state_1635045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1635045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635045 := by
  apply coveredState_split_literal (state := state_1635045) 3
    state_1635046 state_1639379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635046
  · exact cover_1639379
#print axioms cover_1635045

def state_1635044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1635044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635044 := by
  apply coveredState_split_literal (state := state_1635044) 1
    state_1635045 state_1639564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635045
  · exact cover_1639564
#print axioms cover_1635044

def state_1635043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
theorem cover_1635043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635043 := by
  apply coveredState_split_literal (state := state_1635043) 0
    state_1635044 state_1639985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635044
  · exact cover_1639985
#print axioms cover_1635043

def state_1642103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 20)))
theorem cover_1642103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642103 := by
  apply coveredState_split_literal (state := state_1642103) 0
    state_1642104 state_1642881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642104
  · exact cover_1642881
#print axioms cover_1642103

def state_1642059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
theorem cover_1642059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642059 := by
  apply coveredState_split_literal (state := state_1642059) 3
    state_1642060 state_1642103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642060
  · exact cover_1642103
#print axioms cover_1642059

def state_1642058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
theorem cover_1642058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642058 := by
  apply coveredState_split_literal (state := state_1642058) 1
    state_1642059 state_1643764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1642059
  · exact cover_1643764
#print axioms cover_1642058

def state_1641844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 20)))
theorem cover_1641844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641844 := by
  apply coveredState_split_literal (state := state_1641844) 2
    state_1641845 state_1642058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641845
  · exact cover_1642058
#print axioms cover_1641844

def state_1641843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 10)))
theorem cover_1641843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641843 := by
  apply coveredState_split_literal (state := state_1641843) 4
    state_1641844 state_1643845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641844
  · exact cover_1643845
#print axioms cover_1641843

def state_1641539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 10)))
theorem cover_1641539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641539 := by
  apply coveredState_split_literal (state := state_1641539) 0
    state_1641540 state_1641843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641540
  · exact cover_1641843
#print axioms cover_1641539

def state_1641525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 10)))
theorem cover_1641525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641525 := by
  apply coveredState_split_literal (state := state_1641525) 3
    state_1641526 state_1641539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1641526
  · exact cover_1641539
#print axioms cover_1641525

def state_1640879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 10)))
theorem cover_1640879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640879 := by
  apply coveredState_split_literal (state := state_1640879) 1
    state_1640880 state_1641525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640880
  · exact cover_1641525
#print axioms cover_1640879

def state_1643882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
theorem cover_1643882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643882 := by
  apply coveredState_split_literal (state := state_1643882) 1
    state_1643883 state_1644438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643883
  · exact cover_1644438
#print axioms cover_1643882

def state_1640878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 10)))
theorem cover_1640878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640878 := by
  apply coveredState_split_literal (state := state_1640878) 2
    state_1640879 state_1643882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640879
  · exact cover_1643882
#print axioms cover_1640878

def state_1640877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
theorem cover_1640877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640877 := by
  apply coveredState_split_literal (state := state_1640877) 4
    state_1640878 state_1645061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640878
  · exact cover_1645061
#print axioms cover_1640877

def state_1645166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 10)))
theorem cover_1645166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645166 := by
  apply coveredState_split_literal (state := state_1645166) 4
    state_1645167 state_1645636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645167
  · exact cover_1645636
#print axioms cover_1645166

def state_1645165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1645165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645165 := by
  apply coveredState_split_literal (state := state_1645165) 3
    state_1645166 state_1646577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645166
  · exact cover_1646577
#print axioms cover_1645165

def state_1645083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1645083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645083 := by
  apply coveredState_split_literal (state := state_1645083) 0
    state_1645084 state_1645165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645084
  · exact cover_1645165
#print axioms cover_1645083

def state_1646947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1646947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646947 := by
  apply coveredState_split_literal (state := state_1646947) 0
    state_1646948 state_1647249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646948
  · exact cover_1647249
#print axioms cover_1646947

def state_1646946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1646946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646946 := by
  apply coveredState_split_literal (state := state_1646946) 1
    state_1646947 state_1648096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646947
  · exact cover_1648096
#print axioms cover_1646946

def state_1646754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 20)))
theorem cover_1646754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646754 := by
  apply coveredState_split_literal (state := state_1646754) 2
    state_1646755 state_1646946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646755
  · exact cover_1646946
#print axioms cover_1646754

def state_1646753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 10)))
theorem cover_1646753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646753 := by
  apply coveredState_split_literal (state := state_1646753) 4
    state_1646754 state_1648247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646754
  · exact cover_1648247
#print axioms cover_1646753

def state_1646752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1646752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646752 := by
  apply coveredState_split_literal (state := state_1646752) 3
    state_1646753 state_1649106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646753
  · exact cover_1649106
#print axioms cover_1646752

def state_1646650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1646650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646650 := by
  apply coveredState_split_literal (state := state_1646650) 0
    state_1646651 state_1646752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646651
  · exact cover_1646752
#print axioms cover_1646650

def state_1645082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1645082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645082 := by
  apply coveredState_split_literal (state := state_1645082) 1
    state_1645083 state_1646650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645083
  · exact cover_1646650
#print axioms cover_1645082

def state_1649193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 10)))
theorem cover_1649193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649193 := by
  apply coveredState_split_literal (state := state_1649193) 4
    state_1649194 state_1649683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649194
  · exact cover_1649683
#print axioms cover_1649193

def state_1649192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1649192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649192 := by
  apply coveredState_split_literal (state := state_1649192) 3
    state_1649193 state_1650220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649193
  · exact cover_1650220
#print axioms cover_1649192

def state_1649186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1649186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649186 := by
  apply coveredState_split_literal (state := state_1649186) 0
    state_1649187 state_1649192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649187
  · exact cover_1649192
#print axioms cover_1649186

def state_1650278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 10)))
theorem cover_1650278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650278 := by
  apply coveredState_split_literal (state := state_1650278) 4
    state_1650279 state_1650862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650279
  · exact cover_1650862
#print axioms cover_1650278

def state_1650277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1650277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650277 := by
  apply coveredState_split_literal (state := state_1650277) 3
    state_1650278 state_1651349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650278
  · exact cover_1651349
#print axioms cover_1650277

def state_1650265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1650265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650265 := by
  apply coveredState_split_literal (state := state_1650265) 0
    state_1650266 state_1650277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650266
  · exact cover_1650277
#print axioms cover_1650265
end Mub6.Numerical.CircleFullD0.Forest
