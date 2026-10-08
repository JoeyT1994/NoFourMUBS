import D0FullInterface
import D0ForestAssembly0482
import D0ForestChunk1899
import D0ForestChunk1901
import D0ForestChunk1902
import D0ForestChunk1903
import D0ForestChunk1904
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2328966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_2328966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328966 := by
  apply coveredState_split_literal (state := state_2328966) 0
    state_2328967 state_2328984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328967
  · exact cover_2328984
#print axioms cover_2328966

def state_2328965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_2328965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328965 := by
  apply coveredState_split_literal (state := state_2328965) 4
    state_2328966 state_2329437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328966
  · exact cover_2329437
#print axioms cover_2328965

def state_2328964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_2328964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328964 := by
  apply coveredState_split_literal (state := state_2328964) 3
    state_2328965 state_2329438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328965
  · exact cover_2329438
#print axioms cover_2328964

def state_2328502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_2328502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328502 := by
  apply coveredState_split_literal (state := state_2328502) 1
    state_2328503 state_2328964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328503
  · exact cover_2328964
#print axioms cover_2328502

def state_2328501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_2328501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328501 := by
  apply coveredState_split_literal (state := state_2328501) 4
    state_2328502 state_2329439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328502
  · exact cover_2329439
#print axioms cover_2328501

def state_2328500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_2328500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328500 := by
  apply coveredState_split_literal (state := state_2328500) 3
    state_2328501 state_2329446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328501
  · exact cover_2329446
#print axioms cover_2328500

def state_2329463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
theorem cover_2329463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329463 := by
  apply coveredState_split_literal (state := state_2329463) 0
    state_2329464 state_2329497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329464
  · exact cover_2329497
#print axioms cover_2329463

def state_2329553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
theorem cover_2329553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329553 := by
  apply coveredState_split_literal (state := state_2329553) 1
    state_2329554 state_2329561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329554
  · exact cover_2329561
#print axioms cover_2329553

def state_2329552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
theorem cover_2329552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329552 := by
  apply coveredState_split_literal (state := state_2329552) 0
    state_2329553 state_2329618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329553
  · exact cover_2329618
#print axioms cover_2329552

def state_2329462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
theorem cover_2329462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329462 := by
  apply coveredState_split_literal (state := state_2329462) 4
    state_2329463 state_2329552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329463
  · exact cover_2329552
#print axioms cover_2329462

def state_2329461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_2329461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329461 := by
  apply coveredState_split_literal (state := state_2329461) 3
    state_2329462 state_2329655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329462
  · exact cover_2329655
#print axioms cover_2329461

def state_2329460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_2329460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329460 := by
  apply coveredState_split_literal (state := state_2329460) 2
    state_2329461 state_2329660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329461
  · exact cover_2329660
#print axioms cover_2329460

def state_2329767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 25)))
theorem cover_2329767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329767 := by
  apply coveredState_split_literal (state := state_2329767) 0
    state_2329768 state_2329805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329768
  · exact cover_2329805
#print axioms cover_2329767

def state_2329766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 25)))
theorem cover_2329766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329766 := by
  apply coveredState_split_literal (state := state_2329766) 2
    state_2329767 state_2329856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329767
  · exact cover_2329856
#print axioms cover_2329766

def state_2329765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 25)))
theorem cover_2329765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329765 := by
  apply coveredState_split_literal (state := state_2329765) 1
    state_2329766 state_2329863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329766
  · exact cover_2329863
#print axioms cover_2329765

def state_2329733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 12)))
theorem cover_2329733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329733 := by
  apply coveredState_split_literal (state := state_2329733) 4
    state_2329734 state_2329765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329734
  · exact cover_2329765
#print axioms cover_2329733

def state_2329732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
theorem cover_2329732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329732 := by
  apply coveredState_split_literal (state := state_2329732) 3
    state_2329733 state_2329872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329733
  · exact cover_2329872
#print axioms cover_2329732

def state_2329716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
theorem cover_2329716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329716 := by
  apply coveredState_split_literal (state := state_2329716) 0
    state_2329717 state_2329732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329717
  · exact cover_2329732
#print axioms cover_2329716

def state_2329912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 13)))
theorem cover_2329912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329912 := by
  apply coveredState_split_literal (state := state_2329912) 1
    state_2329913 state_2329970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329913
  · exact cover_2329970
#print axioms cover_2329912

def state_2329911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
theorem cover_2329911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329911 := by
  apply coveredState_split_literal (state := state_2329911) 3
    state_2329912 state_2329981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329912
  · exact cover_2329981
#print axioms cover_2329911

def state_2329893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
theorem cover_2329893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329893 := by
  apply coveredState_split_literal (state := state_2329893) 0
    state_2329894 state_2329911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329894
  · exact cover_2329911
#print axioms cover_2329893

def state_2329715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
theorem cover_2329715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329715 := by
  apply coveredState_split_literal (state := state_2329715) 4
    state_2329716 state_2329893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329716
  · exact cover_2329893
#print axioms cover_2329715

def state_2329714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_2329714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329714 := by
  apply coveredState_split_literal (state := state_2329714) 3
    state_2329715 state_2329982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329715
  · exact cover_2329982
#print axioms cover_2329714

def state_2329990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 6)))
theorem cover_2329990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329990 := by
  apply coveredState_split_literal (state := state_2329990) 4
    state_2329991 state_2329992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329991
  · exact cover_2329992
#print axioms cover_2329990

def state_2329989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_2329989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329989 := by
  apply coveredState_split_literal (state := state_2329989) 3
    state_2329990 state_2330055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329990
  · exact cover_2330055
#print axioms cover_2329989

def state_2329713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_2329713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329713 := by
  apply coveredState_split_literal (state := state_2329713) 2
    state_2329714 state_2329989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329714
  · exact cover_2329989
#print axioms cover_2329713

def state_2329459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_2329459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329459 := by
  apply coveredState_split_literal (state := state_2329459) 1
    state_2329460 state_2329713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2329460
  · exact cover_2329713
#print axioms cover_2329459

def state_2330057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_2330057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330057 := by
  apply coveredState_split_literal (state := state_2330057) 2
    state_2330058 state_2330087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330058
  · exact cover_2330087
#print axioms cover_2330057

def state_2330162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 14)))
theorem cover_2330162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330162 := by
  apply coveredState_split_literal (state := state_2330162) 2
    state_2330163 state_2330188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330163
  · exact cover_2330188
#print axioms cover_2330162

def state_2330161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 7)))
theorem cover_2330161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330161 := by
  apply coveredState_split_literal (state := state_2330161) 4
    state_2330162 state_2330227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330162
  · exact cover_2330227
#print axioms cover_2330161

def state_2330137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 7)))
theorem cover_2330137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330137 := by
  apply coveredState_split_literal (state := state_2330137) 0
    state_2330138 state_2330161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330138
  · exact cover_2330161
#print axioms cover_2330137

def state_2330136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
theorem cover_2330136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330136 := by
  apply coveredState_split_literal (state := state_2330136) 3
    state_2330137 state_2330236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330137
  · exact cover_2330236
#print axioms cover_2330136
end Mub6.Numerical.CircleFullD0.Forest
