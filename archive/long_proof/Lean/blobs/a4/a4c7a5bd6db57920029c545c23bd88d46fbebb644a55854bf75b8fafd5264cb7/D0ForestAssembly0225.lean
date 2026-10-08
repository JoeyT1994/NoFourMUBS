import D0FullInterface
import D0ForestAssembly0224
import D0ForestChunk0850
import D0ForestChunk0851
import D0ForestChunk0852
import D0ForestChunk0853
import D0ForestChunk0854
import D0ForestChunk0855
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1504806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1504806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504806 := by
  apply coveredState_split_literal (state := state_1504806) 3
    state_1504807 state_1505102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504807
  · exact cover_1505102
#print axioms cover_1504806

def state_1504782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1504782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504782 := by
  apply coveredState_split_literal (state := state_1504782) 1
    state_1504783 state_1504806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504783
  · exact cover_1504806
#print axioms cover_1504782

def state_1504766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1504766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504766 := by
  apply coveredState_split_literal (state := state_1504766) 0
    state_1504767 state_1504782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504767
  · exact cover_1504782
#print axioms cover_1504766

def state_1504765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 15)))
theorem cover_1504765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504765 := by
  apply coveredState_split_literal (state := state_1504765) 4
    state_1504766 state_1505125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504766
  · exact cover_1505125
#print axioms cover_1504765

def state_1504764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 15)))
theorem cover_1504764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504764 := by
  apply coveredState_split_literal (state := state_1504764) 3
    state_1504765 state_1505136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504765
  · exact cover_1505136
#print axioms cover_1504764

def state_1505195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
theorem cover_1505195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505195 := by
  apply coveredState_split_literal (state := state_1505195) 0
    state_1505196 state_1505203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505196
  · exact cover_1505203
#print axioms cover_1505195

def state_1505194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 30)))
theorem cover_1505194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505194 := by
  apply coveredState_split_literal (state := state_1505194) 4
    state_1505195 state_1505264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505195
  · exact cover_1505264
#print axioms cover_1505194

def state_1505160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 30)))
theorem cover_1505160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505160 := by
  apply coveredState_split_literal (state := state_1505160) 3
    state_1505161 state_1505194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505161
  · exact cover_1505194
#print axioms cover_1505160

def state_1505159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1505159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505159 := by
  apply coveredState_split_literal (state := state_1505159) 2
    state_1505160 state_1505273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505160
  · exact cover_1505273
#print axioms cover_1505159

def state_1505149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1505149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505149 := by
  apply coveredState_split_literal (state := state_1505149) 1
    state_1505150 state_1505159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505150
  · exact cover_1505159
#print axioms cover_1505149

def state_1505139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1505139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505139 := by
  apply coveredState_split_literal (state := state_1505139) 0
    state_1505140 state_1505149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505140
  · exact cover_1505149
#print axioms cover_1505139

def state_1505138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 15)))
theorem cover_1505138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505138 := by
  apply coveredState_split_literal (state := state_1505138) 4
    state_1505139 state_1505286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505139
  · exact cover_1505286
#print axioms cover_1505138

def state_1505137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 15)))
theorem cover_1505137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505137 := by
  apply coveredState_split_literal (state := state_1505137) 3
    state_1505138 state_1505287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505138
  · exact cover_1505287
#print axioms cover_1505137

def state_1504763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1504763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504763 := by
  apply coveredState_split_literal (state := state_1504763) 2
    state_1504764 state_1505137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504764
  · exact cover_1505137
#print axioms cover_1504763

def state_1504739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1504739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504739 := by
  apply coveredState_split_literal (state := state_1504739) 1
    state_1504740 state_1504763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504740
  · exact cover_1504763
#print axioms cover_1504739

def state_1505459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 60)))
theorem cover_1505459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505459 := by
  apply coveredState_split_literal (state := state_1505459) 2
    state_1505460 state_1505511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505460
  · exact cover_1505511
#print axioms cover_1505459

def state_1505561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 120)))
theorem cover_1505561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505561 := by
  apply coveredState_split_literal (state := state_1505561) 0
    state_1505562 state_1505623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505562
  · exact cover_1505623
#print axioms cover_1505561

def state_1505560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 60)))
theorem cover_1505560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505560 := by
  apply coveredState_split_literal (state := state_1505560) 4
    state_1505561 state_1505650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505561
  · exact cover_1505650
#print axioms cover_1505560

def state_1505542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 60)))
theorem cover_1505542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505542 := by
  apply coveredState_split_literal (state := state_1505542) 2
    state_1505543 state_1505560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505543
  · exact cover_1505560
#print axioms cover_1505542

def state_1505458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1505458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505458 := by
  apply coveredState_split_literal (state := state_1505458) 3
    state_1505459 state_1505542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505459
  · exact cover_1505542
#print axioms cover_1505458

def state_1505700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 83 else (if j.val < 4 then 211 else 120)))
theorem cover_1505700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505700 := by
  apply coveredState_split_literal (state := state_1505700) 2
    state_1505701 state_1505724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505701
  · exact cover_1505724
#print axioms cover_1505700

def state_1505698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 120)))
theorem cover_1505698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505698 := by
  apply coveredState_split_literal (state := state_1505698) 3
    state_1505699 state_1505700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505699
  · exact cover_1505700
#print axioms cover_1505698

def state_1505697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 120)))
theorem cover_1505697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505697 := by
  apply coveredState_split_literal (state := state_1505697) 1
    state_1505698 state_1505773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505698
  · exact cover_1505773
#print axioms cover_1505697

def state_1505696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 120)))
theorem cover_1505696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505696 := by
  apply coveredState_split_literal (state := state_1505696) 0
    state_1505697 state_1505824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505697
  · exact cover_1505824
#print axioms cover_1505696

def state_1505922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 167 else (if j.val < 4 then 211 else 121)))
theorem cover_1505922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505922 := by
  apply coveredState_split_literal (state := state_1505922) 4
    state_1505923 state_1505966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505923
  · exact cover_1505966
#print axioms cover_1505922

def state_1505910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 83 else (if j.val < 4 then 211 else 121)))
theorem cover_1505910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505910 := by
  apply coveredState_split_literal (state := state_1505910) 2
    state_1505911 state_1505922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505911
  · exact cover_1505922
#print axioms cover_1505910

def state_1505908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
theorem cover_1505908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505908 := by
  apply coveredState_split_literal (state := state_1505908) 3
    state_1505909 state_1505910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505909
  · exact cover_1505910
#print axioms cover_1505908

def state_1505880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
theorem cover_1505880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505880 := by
  apply coveredState_split_literal (state := state_1505880) 1
    state_1505881 state_1505908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505881
  · exact cover_1505908
#print axioms cover_1505880

def state_1505879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
theorem cover_1505879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505879 := by
  apply coveredState_split_literal (state := state_1505879) 0
    state_1505880 state_1505989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505880
  · exact cover_1505989
#print axioms cover_1505879

def state_1505695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 60)))
theorem cover_1505695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505695 := by
  apply coveredState_split_literal (state := state_1505695) 4
    state_1505696 state_1505879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505696
  · exact cover_1505879
#print axioms cover_1505695

def state_1505661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 60)))
theorem cover_1505661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505661 := by
  apply coveredState_split_literal (state := state_1505661) 2
    state_1505662 state_1505695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505662
  · exact cover_1505695
#print axioms cover_1505661

def state_1505659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1505659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505659 := by
  apply coveredState_split_literal (state := state_1505659) 3
    state_1505660 state_1505661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505660
  · exact cover_1505661
#print axioms cover_1505659
end Mub6.Numerical.CircleFullD0.Forest
