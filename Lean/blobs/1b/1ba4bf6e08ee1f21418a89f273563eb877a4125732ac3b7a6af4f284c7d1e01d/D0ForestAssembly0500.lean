import D0FullInterface
import D0ForestAssembly0499
import D0ForestChunk1963
import D0ForestChunk1966
import D0ForestChunk1967
import D0ForestChunk1968
import D0ForestChunk1969
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2551721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_2551721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551721 := by
  apply coveredState_split_literal (state := state_2551721) 2
    state_2551722 state_2552455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551722
  · exact cover_2552455
#print axioms cover_2551721

def state_2551707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_2551707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551707 := by
  apply coveredState_split_literal (state := state_2551707) 0
    state_2551708 state_2551721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551708
  · exact cover_2551721
#print axioms cover_2551707

def state_2551673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2551673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551673 := by
  apply coveredState_split_literal (state := state_2551673) 4
    state_2551674 state_2551707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551674
  · exact cover_2551707
#print axioms cover_2551673

def state_2551631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2551631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551631 := by
  apply coveredState_split_literal (state := state_2551631) 1
    state_2551632 state_2551673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551632
  · exact cover_2551673
#print axioms cover_2551631

def state_2551630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
theorem cover_2551630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551630 := by
  apply coveredState_split_literal (state := state_2551630) 3
    state_2551631 state_2552590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551631
  · exact cover_2552590
#print axioms cover_2551630

def state_2551629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_2551629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551629 := by
  apply coveredState_split_literal (state := state_2551629) 2
    state_2551630 state_2552605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551630
  · exact cover_2552605
#print axioms cover_2551629

def state_2551615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2551615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551615 := by
  apply coveredState_split_literal (state := state_2551615) 4
    state_2551616 state_2551629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551616
  · exact cover_2551629
#print axioms cover_2551615

def state_2551599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_2551599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551599 := by
  apply coveredState_split_literal (state := state_2551599) 1
    state_2551600 state_2551615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551600
  · exact cover_2551615
#print axioms cover_2551599

def state_2552750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
theorem cover_2552750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552750 := by
  apply coveredState_split_literal (state := state_2552750) 1
    state_2552751 state_2552788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552751
  · exact cover_2552788
#print axioms cover_2552750

def state_2552716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 47)))
theorem cover_2552716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552716 := by
  apply coveredState_split_literal (state := state_2552716) 3
    state_2552717 state_2552750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552717
  · exact cover_2552750
#print axioms cover_2552716

def state_2552664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_2552664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552664 := by
  apply coveredState_split_literal (state := state_2552664) 2
    state_2552665 state_2552716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552665
  · exact cover_2552716
#print axioms cover_2552664

def state_2552663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
theorem cover_2552663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552663 := by
  apply coveredState_split_literal (state := state_2552663) 0
    state_2552664 state_2552849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552664
  · exact cover_2552849
#print axioms cover_2552663

def state_2552653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_2552653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552653 := by
  apply coveredState_split_literal (state := state_2552653) 4
    state_2552654 state_2552663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552654
  · exact cover_2552663
#print axioms cover_2552653

def state_2552641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_2552641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552641 := by
  apply coveredState_split_literal (state := state_2552641) 1
    state_2552642 state_2552653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552642
  · exact cover_2552653
#print axioms cover_2552641

def state_2552906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 47)))
theorem cover_2552906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552906 := by
  apply coveredState_split_literal (state := state_2552906) 1
    state_2552907 state_2552932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552907
  · exact cover_2552932
#print axioms cover_2552906

def state_2552905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 47)))
theorem cover_2552905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552905 := by
  apply coveredState_split_literal (state := state_2552905) 3
    state_2552906 state_2552983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552906
  · exact cover_2552983
#print axioms cover_2552905

def state_2552875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 47)))
theorem cover_2552875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552875 := by
  apply coveredState_split_literal (state := state_2552875) 2
    state_2552876 state_2552905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552876
  · exact cover_2552905
#print axioms cover_2552875

def state_2552874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 47)))
theorem cover_2552874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552874 := by
  apply coveredState_split_literal (state := state_2552874) 0
    state_2552875 state_2552994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552875
  · exact cover_2552994
#print axioms cover_2552874

def state_2552866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
theorem cover_2552866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552866 := by
  apply coveredState_split_literal (state := state_2552866) 4
    state_2552867 state_2552874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552867
  · exact cover_2552874
#print axioms cover_2552866

def state_2552856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
theorem cover_2552856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552856 := by
  apply coveredState_split_literal (state := state_2552856) 1
    state_2552857 state_2552866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552857
  · exact cover_2552866
#print axioms cover_2552856

def state_2552640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 23)))
theorem cover_2552640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552640 := by
  apply coveredState_split_literal (state := state_2552640) 3
    state_2552641 state_2552856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552641
  · exact cover_2552856
#print axioms cover_2552640

def state_2553048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
theorem cover_2553048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553048 := by
  apply coveredState_split_literal (state := state_2553048) 1
    state_2553049 state_2553068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553049
  · exact cover_2553068
#print axioms cover_2553048

def state_2553047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 47)))
theorem cover_2553047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553047 := by
  apply coveredState_split_literal (state := state_2553047) 2
    state_2553048 state_2553125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553048
  · exact cover_2553125
#print axioms cover_2553047

def state_2553017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2553017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553017 := by
  apply coveredState_split_literal (state := state_2553017) 3
    state_2553018 state_2553047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553018
  · exact cover_2553047
#print axioms cover_2553017

def state_2553016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_2553016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553016 := by
  apply coveredState_split_literal (state := state_2553016) 0
    state_2553017 state_2553136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553017
  · exact cover_2553136
#print axioms cover_2553016

def state_2553008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2553008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553008 := by
  apply coveredState_split_literal (state := state_2553008) 4
    state_2553009 state_2553016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553009
  · exact cover_2553016
#print axioms cover_2553008

def state_2552998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_2552998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552998 := by
  apply coveredState_split_literal (state := state_2552998) 1
    state_2552999 state_2553008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552999
  · exact cover_2553008
#print axioms cover_2552998

def state_2552997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 23)))
theorem cover_2552997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552997 := by
  apply coveredState_split_literal (state := state_2552997) 3
    state_2552998 state_2553139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552998
  · exact cover_2553139
#print axioms cover_2552997

def state_2552639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_2552639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552639 := by
  apply coveredState_split_literal (state := state_2552639) 2
    state_2552640 state_2552997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552640
  · exact cover_2552997
#print axioms cover_2552639

def state_2552635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2552635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552635 := by
  apply coveredState_split_literal (state := state_2552635) 4
    state_2552636 state_2552639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552636
  · exact cover_2552639
#print axioms cover_2552635

def state_2552629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2552629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552629 := by
  apply coveredState_split_literal (state := state_2552629) 1
    state_2552630 state_2552635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552630
  · exact cover_2552635
#print axioms cover_2552629

def state_2552628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_2552628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552628 := by
  apply coveredState_split_literal (state := state_2552628) 0
    state_2552629 state_2553192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2552629
  · exact cover_2553192
#print axioms cover_2552628
end Mub6.Numerical.CircleFullD0.Forest
