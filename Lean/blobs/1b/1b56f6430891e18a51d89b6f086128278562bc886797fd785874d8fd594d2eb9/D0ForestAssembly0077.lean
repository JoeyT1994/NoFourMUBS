import D0FullInterface
import D0ForestAssembly0076
import D0ForestChunk0305
import D0ForestChunk0306
import D0ForestChunk0307
import D0ForestChunk0308
import D0ForestChunk0309
import D0ForestChunk0310
import D0ForestChunk0311
import D0ForestChunk0312
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1010875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 44)))
theorem cover_1010875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010875 := by
  apply coveredState_split_literal (state := state_1010875) 3
    state_1010876 state_1010933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010876
  · exact cover_1010933
#print axioms cover_1010875

def state_1011035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 90)))
theorem cover_1011035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011035 := by
  apply coveredState_split_literal (state := state_1011035) 3
    state_1011036 state_1011075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011036
  · exact cover_1011075
#print axioms cover_1011035

def state_1011120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 91)))
theorem cover_1011120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011120 := by
  apply coveredState_split_literal (state := state_1011120) 3
    state_1011121 state_1011174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011121
  · exact cover_1011174
#print axioms cover_1011120

def state_1011034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 45)))
theorem cover_1011034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011034 := by
  apply coveredState_split_literal (state := state_1011034) 4
    state_1011035 state_1011120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011035
  · exact cover_1011120
#print axioms cover_1011034

def state_1011033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 45)))
theorem cover_1011033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011033 := by
  apply coveredState_split_literal (state := state_1011033) 0
    state_1011034 state_1011217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011034
  · exact cover_1011217
#print axioms cover_1011033

def state_1011032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 45)))
theorem cover_1011032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011032 := by
  apply coveredState_split_literal (state := state_1011032) 2
    state_1011033 state_1011254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011033
  · exact cover_1011254
#print axioms cover_1011032

def state_1011031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 45)))
theorem cover_1011031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011031 := by
  apply coveredState_split_literal (state := state_1011031) 1
    state_1011032 state_1011299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011032
  · exact cover_1011299
#print axioms cover_1011031

def state_1011381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 45)))
theorem cover_1011381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011381 := by
  apply coveredState_split_literal (state := state_1011381) 0
    state_1011382 state_1011435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011382
  · exact cover_1011435
#print axioms cover_1011381

def state_1011321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 45)))
theorem cover_1011321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011321 := by
  apply coveredState_split_literal (state := state_1011321) 2
    state_1011322 state_1011381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011322
  · exact cover_1011381
#print axioms cover_1011321

def state_1011320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 45)))
theorem cover_1011320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011320 := by
  apply coveredState_split_literal (state := state_1011320) 1
    state_1011321 state_1011490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011321
  · exact cover_1011490
#print axioms cover_1011320

def state_1011030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
theorem cover_1011030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011030 := by
  apply coveredState_split_literal (state := state_1011030) 3
    state_1011031 state_1011320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011031
  · exact cover_1011320
#print axioms cover_1011030

def state_1010874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_1010874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010874 := by
  apply coveredState_split_literal (state := state_1010874) 4
    state_1010875 state_1011030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010875
  · exact cover_1011030
#print axioms cover_1010874

def state_1010873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
theorem cover_1010873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010873 := by
  apply coveredState_split_literal (state := state_1010873) 0
    state_1010874 state_1011511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010874
  · exact cover_1011511
#print axioms cover_1010873

def state_1010872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
theorem cover_1010872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010872 := by
  apply coveredState_split_literal (state := state_1010872) 2
    state_1010873 state_1011572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010873
  · exact cover_1011572
#print axioms cover_1010872

def state_1010871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
theorem cover_1010871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010871 := by
  apply coveredState_split_literal (state := state_1010871) 1
    state_1010872 state_1011613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010872
  · exact cover_1011613
#print axioms cover_1010871

def state_1011643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_1011643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011643 := by
  apply coveredState_split_literal (state := state_1011643) 4
    state_1011644 state_1011707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011644
  · exact cover_1011707
#print axioms cover_1011643

def state_1011642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
theorem cover_1011642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011642 := by
  apply coveredState_split_literal (state := state_1011642) 0
    state_1011643 state_1011738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011643
  · exact cover_1011738
#print axioms cover_1011642

def state_1011772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 44)))
theorem cover_1011772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011772 := by
  apply coveredState_split_literal (state := state_1011772) 2
    state_1011773 state_1011828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011773
  · exact cover_1011828
#print axioms cover_1011772

def state_1011771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 44)))
theorem cover_1011771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011771 := by
  apply coveredState_split_literal (state := state_1011771) 1
    state_1011772 state_1011837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011772
  · exact cover_1011837
#print axioms cover_1011771

def state_1011842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
theorem cover_1011842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011842 := by
  apply coveredState_split_literal (state := state_1011842) 1
    state_1011843 state_1011904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011843
  · exact cover_1011904
#print axioms cover_1011842

def state_1011770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_1011770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011770 := by
  apply coveredState_split_literal (state := state_1011770) 4
    state_1011771 state_1011842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011771
  · exact cover_1011842
#print axioms cover_1011770

def state_1011921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_1011921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011921 := by
  apply coveredState_split_literal (state := state_1011921) 4
    state_1011922 state_1011961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011922
  · exact cover_1011961
#print axioms cover_1011921

def state_1011769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
theorem cover_1011769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011769 := by
  apply coveredState_split_literal (state := state_1011769) 0
    state_1011770 state_1011921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011770
  · exact cover_1011921
#print axioms cover_1011769

def state_1011641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_1011641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011641 := by
  apply coveredState_split_literal (state := state_1011641) 2
    state_1011642 state_1011769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011642
  · exact cover_1011769
#print axioms cover_1011641

def state_1011640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
theorem cover_1011640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011640 := by
  apply coveredState_split_literal (state := state_1011640) 1
    state_1011641 state_1012002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1011641
  · exact cover_1012002
#print axioms cover_1011640

def state_1010870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
theorem cover_1010870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010870 := by
  apply coveredState_split_literal (state := state_1010870) 3
    state_1010871 state_1011640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1010871
  · exact cover_1011640
#print axioms cover_1010870

def state_1012029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 46)))
theorem cover_1012029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012029 := by
  apply coveredState_split_literal (state := state_1012029) 0
    state_1012030 state_1012093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012030
  · exact cover_1012093
#print axioms cover_1012029

def state_1012028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 46)))
theorem cover_1012028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012028 := by
  apply coveredState_split_literal (state := state_1012028) 2
    state_1012029 state_1012132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012029
  · exact cover_1012132
#print axioms cover_1012028

def state_1012145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 46)))
theorem cover_1012145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012145 := by
  apply coveredState_split_literal (state := state_1012145) 2
    state_1012146 state_1012207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012146
  · exact cover_1012207
#print axioms cover_1012145

def state_1012027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 46)))
theorem cover_1012027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012027 := by
  apply coveredState_split_literal (state := state_1012027) 1
    state_1012028 state_1012145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012028
  · exact cover_1012145
#print axioms cover_1012027

def state_1012026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 46)))
theorem cover_1012026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012026 := by
  apply coveredState_split_literal (state := state_1012026) 3
    state_1012027 state_1012240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012027
  · exact cover_1012240
#print axioms cover_1012026

def state_1012312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 47)))
theorem cover_1012312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012312 := by
  apply coveredState_split_literal (state := state_1012312) 2
    state_1012313 state_1012364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1012313
  · exact cover_1012364
#print axioms cover_1012312
end Mub6.Numerical.CircleFullD0.Forest
