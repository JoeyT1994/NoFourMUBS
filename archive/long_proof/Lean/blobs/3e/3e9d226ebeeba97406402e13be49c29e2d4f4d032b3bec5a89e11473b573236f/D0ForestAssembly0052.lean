import D0FullInterface
import D0ForestChunk0209
import D0ForestChunk0210
import D0ForestChunk0211
import D0ForestChunk0212
import D0ForestChunk0213
import D0ForestChunk0214
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_987692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 43)))
theorem cover_987692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987692 := by
  apply coveredState_split_literal (state := state_987692) 3
    state_987693 state_987750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987693
  · exact cover_987750
#print axioms cover_987692

def state_987841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 205 else 86)))
theorem cover_987841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987841 := by
  apply coveredState_split_literal (state := state_987841) 4
    state_987842 state_987877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987842
  · exact cover_987877
#print axioms cover_987841

def state_987825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 86)))
theorem cover_987825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987825 := by
  apply coveredState_split_literal (state := state_987825) 3
    state_987826 state_987841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987826
  · exact cover_987841
#print axioms cover_987825

def state_987918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 86)))
theorem cover_987918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987918 := by
  apply coveredState_split_literal (state := state_987918) 3
    state_987919 state_987930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987919
  · exact cover_987930
#print axioms cover_987918

def state_987824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 86)))
theorem cover_987824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987824 := by
  apply coveredState_split_literal (state := state_987824) 0
    state_987825 state_987918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987825
  · exact cover_987918
#print axioms cover_987824

def state_987780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 86)))
theorem cover_987780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987780 := by
  apply coveredState_split_literal (state := state_987780) 2
    state_987781 state_987824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987781
  · exact cover_987824
#print axioms cover_987780

def state_987779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 86)))
theorem cover_987779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987779 := by
  apply coveredState_split_literal (state := state_987779) 1
    state_987780 state_987983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987780
  · exact cover_987983
#print axioms cover_987779

def state_988060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 87)))
theorem cover_988060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988060 := by
  apply coveredState_split_literal (state := state_988060) 2
    state_988061 state_988074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988061
  · exact cover_988074
#print axioms cover_988060

def state_988000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 87)))
theorem cover_988000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988000 := by
  apply coveredState_split_literal (state := state_988000) 1
    state_988001 state_988060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988001
  · exact cover_988060
#print axioms cover_988000

def state_987778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 43)))
theorem cover_987778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987778 := by
  apply coveredState_split_literal (state := state_987778) 4
    state_987779 state_988000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987779
  · exact cover_988000
#print axioms cover_987778

def state_988143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 86)))
theorem cover_988143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988143 := by
  apply coveredState_split_literal (state := state_988143) 4
    state_988144 state_988207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988144
  · exact cover_988207
#print axioms cover_988143

def state_988142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 103 else 86)))
theorem cover_988142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988142 := by
  apply coveredState_split_literal (state := state_988142) 3
    state_988143 state_988256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988143
  · exact cover_988256
#print axioms cover_988142

def state_988276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 86)))
theorem cover_988276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988276 := by
  apply coveredState_split_literal (state := state_988276) 4
    state_988277 state_988326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988277
  · exact cover_988326
#print axioms cover_988276

def state_988275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 103 else 86)))
theorem cover_988275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988275 := by
  apply coveredState_split_literal (state := state_988275) 3
    state_988276 state_988365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988276
  · exact cover_988365
#print axioms cover_988275

def state_988141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 103 else 86)))
theorem cover_988141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988141 := by
  apply coveredState_split_literal (state := state_988141) 0
    state_988142 state_988275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988142
  · exact cover_988275
#print axioms cover_988141

def state_988131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 86)))
theorem cover_988131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988131 := by
  apply coveredState_split_literal (state := state_988131) 2
    state_988132 state_988141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988132
  · exact cover_988141
#print axioms cover_988131

def state_988130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 86)))
theorem cover_988130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988130 := by
  apply coveredState_split_literal (state := state_988130) 1
    state_988131 state_988398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988131
  · exact cover_988398
#print axioms cover_988130

def state_988415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 87)))
theorem cover_988415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988415 := by
  apply coveredState_split_literal (state := state_988415) 1
    state_988416 state_988451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988416
  · exact cover_988451
#print axioms cover_988415

def state_988129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 43)))
theorem cover_988129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988129 := by
  apply coveredState_split_literal (state := state_988129) 4
    state_988130 state_988415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988130
  · exact cover_988415
#print axioms cover_988129

def state_987777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 43)))
theorem cover_987777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987777 := by
  apply coveredState_split_literal (state := state_987777) 3
    state_987778 state_988129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987778
  · exact cover_988129
#print axioms cover_987777

def state_987691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 43)))
theorem cover_987691 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987691 := by
  apply coveredState_split_literal (state := state_987691) 0
    state_987692 state_987777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987692
  · exact cover_987777
#print axioms cover_987691

def state_988565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 102 else 43)))
theorem cover_988565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988565 := by
  apply coveredState_split_literal (state := state_988565) 4
    state_988566 state_988605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988566
  · exact cover_988605
#print axioms cover_988565

def state_988731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 173)))
theorem cover_988731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988731 := by
  apply coveredState_split_literal (state := state_988731) 1
    state_988732 state_988785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988732
  · exact cover_988785
#print axioms cover_988731

def state_988669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 86)))
theorem cover_988669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988669 := by
  apply coveredState_split_literal (state := state_988669) 4
    state_988670 state_988731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988670
  · exact cover_988731
#print axioms cover_988669

def state_988804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 216) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 172)))
theorem cover_988804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988804 := by
  apply coveredState_split_literal (state := state_988804) 2
    state_988805 state_988852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988805
  · exact cover_988852
#print axioms cover_988804

def state_988803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 172)))
theorem cover_988803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988803 := by
  apply coveredState_split_literal (state := state_988803) 1
    state_988804 state_988887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988804
  · exact cover_988887
#print axioms cover_988803

def state_988802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 86)))
theorem cover_988802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988802 := by
  apply coveredState_split_literal (state := state_988802) 4
    state_988803 state_988896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988803
  · exact cover_988896
#print axioms cover_988802

def state_988668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 86)))
theorem cover_988668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988668 := by
  apply coveredState_split_literal (state := state_988668) 3
    state_988669 state_988802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988669
  · exact cover_988802
#print axioms cover_988668

def state_988930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 173)))
theorem cover_988930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988930 := by
  apply coveredState_split_literal (state := state_988930) 1
    state_988931 state_988950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988931
  · exact cover_988950
#print axioms cover_988930

def state_988898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 86)))
theorem cover_988898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988898 := by
  apply coveredState_split_literal (state := state_988898) 4
    state_988899 state_988930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988899
  · exact cover_988930
#print axioms cover_988898

def state_988998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 172)))
theorem cover_988998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988998 := by
  apply coveredState_split_literal (state := state_988998) 1
    state_988999 state_989050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988999
  · exact cover_989050
#print axioms cover_988998

def state_988997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 86)))
theorem cover_988997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988997 := by
  apply coveredState_split_literal (state := state_988997) 4
    state_988998 state_989075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_988998
  · exact cover_989075
#print axioms cover_988997
end Mub6.Numerical.CircleFullD0.Forest
