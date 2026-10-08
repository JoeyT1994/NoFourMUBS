import D0FullInterface
import D0ForestAssembly0190
import D0ForestChunk0712
import D0ForestChunk0715
import D0ForestChunk0716
import D0ForestChunk0717
import D0ForestChunk0718
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1472588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
theorem cover_1472588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472588 := by
  apply coveredState_split_literal (state := state_1472588) 3
    state_1472589 state_1472600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472589
  · exact cover_1472600
#print axioms cover_1472588

def state_1472587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
theorem cover_1472587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472587 := by
  apply coveredState_split_literal (state := state_1472587) 0
    state_1472588 state_1472665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472588
  · exact cover_1472665
#print axioms cover_1472587

def state_1472674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 116)))
theorem cover_1472674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472674 := by
  apply coveredState_split_literal (state := state_1472674) 2
    state_1472675 state_1472722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472675
  · exact cover_1472722
#print axioms cover_1472674

def state_1472673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 58)))
theorem cover_1472673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472673 := by
  apply coveredState_split_literal (state := state_1472673) 4
    state_1472674 state_1472739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472674
  · exact cover_1472739
#print axioms cover_1472673

def state_1472671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 58)))
theorem cover_1472671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472671 := by
  apply coveredState_split_literal (state := state_1472671) 1
    state_1472672 state_1472673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472672
  · exact cover_1472673
#print axioms cover_1472671

def state_1472669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
theorem cover_1472669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472669 := by
  apply coveredState_split_literal (state := state_1472669) 3
    state_1472670 state_1472671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472670
  · exact cover_1472671
#print axioms cover_1472669

def state_1472668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
theorem cover_1472668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472668 := by
  apply coveredState_split_literal (state := state_1472668) 0
    state_1472669 state_1472744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472669
  · exact cover_1472744
#print axioms cover_1472668

def state_1472586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 58)))
theorem cover_1472586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472586 := by
  apply coveredState_split_literal (state := state_1472586) 2
    state_1472587 state_1472668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472587
  · exact cover_1472668
#print axioms cover_1472586

def state_1472585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 29)))
theorem cover_1472585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472585 := by
  apply coveredState_split_literal (state := state_1472585) 4
    state_1472586 state_1472761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472586
  · exact cover_1472761
#print axioms cover_1472585

def state_1472581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 29)))
theorem cover_1472581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472581 := by
  apply coveredState_split_literal (state := state_1472581) 1
    state_1472582 state_1472585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472582
  · exact cover_1472585
#print axioms cover_1472581

def state_1472820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 116)))
theorem cover_1472820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472820 := by
  apply coveredState_split_literal (state := state_1472820) 2
    state_1472821 state_1472850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472821
  · exact cover_1472850
#print axioms cover_1472820

def state_1472819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 58)))
theorem cover_1472819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472819 := by
  apply coveredState_split_literal (state := state_1472819) 4
    state_1472820 state_1472905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472820
  · exact cover_1472905
#print axioms cover_1472819

def state_1472815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 58)))
theorem cover_1472815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472815 := by
  apply coveredState_split_literal (state := state_1472815) 1
    state_1472816 state_1472819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472816
  · exact cover_1472819
#print axioms cover_1472815

def state_1472814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 58)))
theorem cover_1472814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472814 := by
  apply coveredState_split_literal (state := state_1472814) 3
    state_1472815 state_1472938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472815
  · exact cover_1472938
#print axioms cover_1472814

def state_1472813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 58)))
theorem cover_1472813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472813 := by
  apply coveredState_split_literal (state := state_1472813) 0
    state_1472814 state_1472961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472814
  · exact cover_1472961
#print axioms cover_1472813

def state_1472785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 58)))
theorem cover_1472785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472785 := by
  apply coveredState_split_literal (state := state_1472785) 2
    state_1472786 state_1472813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472786
  · exact cover_1472813
#print axioms cover_1472785

def state_1472784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 29)))
theorem cover_1472784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472784 := by
  apply coveredState_split_literal (state := state_1472784) 4
    state_1472785 state_1472972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472785
  · exact cover_1472972
#print axioms cover_1472784

def state_1472782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 29)))
theorem cover_1472782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472782 := by
  apply coveredState_split_literal (state := state_1472782) 1
    state_1472783 state_1472784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472783
  · exact cover_1472784
#print axioms cover_1472782

def state_1472580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1472580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472580 := by
  apply coveredState_split_literal (state := state_1472580) 3
    state_1472581 state_1472782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472581
  · exact cover_1472782
#print axioms cover_1472580

def state_1472579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1472579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472579 := by
  apply coveredState_split_literal (state := state_1472579) 0
    state_1472580 state_1473001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472580
  · exact cover_1473001
#print axioms cover_1472579

def state_1473076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 58)))
theorem cover_1473076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473076 := by
  apply coveredState_split_literal (state := state_1473076) 1
    state_1473077 state_1473086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473077
  · exact cover_1473086
#print axioms cover_1473076

def state_1473036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 34 else (if j.val < 4 then 45 else 58)))
theorem cover_1473036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473036 := by
  apply coveredState_split_literal (state := state_1473036) 3
    state_1473037 state_1473076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473037
  · exact cover_1473076
#print axioms cover_1473036

def state_1473147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 34 else (if j.val < 4 then 45 else 58)))
theorem cover_1473147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473147 := by
  apply coveredState_split_literal (state := state_1473147) 3
    state_1473148 state_1473173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473148
  · exact cover_1473173
#print axioms cover_1473147

def state_1473035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 34 else (if j.val < 4 then 45 else 58)))
theorem cover_1473035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473035 := by
  apply coveredState_split_literal (state := state_1473035) 0
    state_1473036 state_1473147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473036
  · exact cover_1473147
#print axioms cover_1473035

def state_1473034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 58)))
theorem cover_1473034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473034 := by
  apply coveredState_split_literal (state := state_1473034) 2
    state_1473035 state_1473222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473035
  · exact cover_1473222
#print axioms cover_1473034

def state_1473033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 29)))
theorem cover_1473033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473033 := by
  apply coveredState_split_literal (state := state_1473033) 4
    state_1473034 state_1473255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473034
  · exact cover_1473255
#print axioms cover_1473033

def state_1473025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 29)))
theorem cover_1473025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473025 := by
  apply coveredState_split_literal (state := state_1473025) 1
    state_1473026 state_1473033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473026
  · exact cover_1473033
#print axioms cover_1473025

def state_1473009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
theorem cover_1473009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473009 := by
  apply coveredState_split_literal (state := state_1473009) 3
    state_1473010 state_1473025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473010
  · exact cover_1473025
#print axioms cover_1473009

def state_1473008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
theorem cover_1473008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473008 := by
  apply coveredState_split_literal (state := state_1473008) 0
    state_1473009 state_1473290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473009
  · exact cover_1473290
#print axioms cover_1473008

def state_1472578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 29)))
theorem cover_1472578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472578 := by
  apply coveredState_split_literal (state := state_1472578) 2
    state_1472579 state_1473008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1472579
  · exact cover_1473008
#print axioms cover_1472578

def state_1471974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
theorem cover_1471974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471974 := by
  apply coveredState_split_literal (state := state_1471974) 4
    state_1471975 state_1472578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471975
  · exact cover_1472578
#print axioms cover_1471974

def state_1471960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
theorem cover_1471960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471960 := by
  apply coveredState_split_literal (state := state_1471960) 1
    state_1471961 state_1471974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471961
  · exact cover_1471974
#print axioms cover_1471960
end Mub6.Numerical.CircleFullD0.Forest
