import D0FullInterface
import D0ForestAssembly0065
import D0ForestChunk0264
import D0ForestChunk0265
import D0ForestChunk0266
import D0ForestChunk0267
import D0ForestChunk0268
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1001286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 89)))
theorem cover_1001286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001286 := by
  apply coveredState_split_literal (state := state_1001286) 0
    state_1001287 state_1001380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001287
  · exact cover_1001380
#print axioms cover_1001286

def state_1001278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 89)))
theorem cover_1001278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001278 := by
  apply coveredState_split_literal (state := state_1001278) 2
    state_1001279 state_1001286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001279
  · exact cover_1001286
#print axioms cover_1001278

def state_1001277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 89)))
theorem cover_1001277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001277 := by
  apply coveredState_split_literal (state := state_1001277) 1
    state_1001278 state_1001393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001278
  · exact cover_1001393
#print axioms cover_1001277

def state_1001276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 89)))
theorem cover_1001276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001276 := by
  apply coveredState_split_literal (state := state_1001276) 3
    state_1001277 state_1001430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001277
  · exact cover_1001430
#print axioms cover_1001276

def state_1001034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
theorem cover_1001034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001034 := by
  apply coveredState_split_literal (state := state_1001034) 4
    state_1001035 state_1001276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001035
  · exact cover_1001276
#print axioms cover_1001034

def state_1001033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
theorem cover_1001033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001033 := by
  apply coveredState_split_literal (state := state_1001033) 0
    state_1001034 state_1001481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001034
  · exact cover_1001481
#print axioms cover_1001033

def state_1001015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 44)))
theorem cover_1001015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001015 := by
  apply coveredState_split_literal (state := state_1001015) 2
    state_1001016 state_1001033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001016
  · exact cover_1001033
#print axioms cover_1001015

def state_1000935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 44)))
theorem cover_1000935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000935 := by
  apply coveredState_split_literal (state := state_1000935) 1
    state_1000936 state_1001015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000936
  · exact cover_1001015
#print axioms cover_1000935

def state_1000934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 44)))
theorem cover_1000934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000934 := by
  apply coveredState_split_literal (state := state_1000934) 3
    state_1000935 state_1001516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000935
  · exact cover_1001516
#print axioms cover_1000934

def state_1001560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 90)))
theorem cover_1001560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001560 := by
  apply coveredState_split_literal (state := state_1001560) 3
    state_1001561 state_1001614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001561
  · exact cover_1001614
#print axioms cover_1001560

def state_1001559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 45)))
theorem cover_1001559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001559 := by
  apply coveredState_split_literal (state := state_1001559) 4
    state_1001560 state_1001627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001560
  · exact cover_1001627
#print axioms cover_1001559

def state_1001558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 45)))
theorem cover_1001558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001558 := by
  apply coveredState_split_literal (state := state_1001558) 0
    state_1001559 state_1001640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001559
  · exact cover_1001640
#print axioms cover_1001558

def state_1001556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 45)))
theorem cover_1001556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001556 := by
  apply coveredState_split_literal (state := state_1001556) 2
    state_1001557 state_1001558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001557
  · exact cover_1001558
#print axioms cover_1001556

def state_1001554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 45)))
theorem cover_1001554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001554 := by
  apply coveredState_split_literal (state := state_1001554) 1
    state_1001555 state_1001556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001555
  · exact cover_1001556
#print axioms cover_1001554

def state_1001553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
theorem cover_1001553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001553 := by
  apply coveredState_split_literal (state := state_1001553) 3
    state_1001554 state_1001653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001554
  · exact cover_1001653
#print axioms cover_1001553

def state_1000933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_1000933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000933 := by
  apply coveredState_split_literal (state := state_1000933) 4
    state_1000934 state_1001553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000934
  · exact cover_1001553
#print axioms cover_1000933

def state_1000932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
theorem cover_1000932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000932 := by
  apply coveredState_split_literal (state := state_1000932) 0
    state_1000933 state_1001654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000933
  · exact cover_1001654
#print axioms cover_1000932

def state_1000930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 22)))
theorem cover_1000930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000930 := by
  apply coveredState_split_literal (state := state_1000930) 2
    state_1000931 state_1000932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000931
  · exact cover_1000932
#print axioms cover_1000930

def state_1000929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_1000929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000929 := by
  apply coveredState_split_literal (state := state_1000929) 3
    state_1000930 state_1001683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000930
  · exact cover_1001683
#print axioms cover_1000929

def state_1000919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_1000919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000919 := by
  apply coveredState_split_literal (state := state_1000919) 1
    state_1000920 state_1000929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000920
  · exact cover_1000929
#print axioms cover_1000919

def state_1000918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_1000918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000918 := by
  apply coveredState_split_literal (state := state_1000918) 4
    state_1000919 state_1001684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000919
  · exact cover_1001684
#print axioms cover_1000918

def state_1000172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_1000172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000172 := by
  apply coveredState_split_literal (state := state_1000172) 0
    state_1000173 state_1000918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1000173
  · exact cover_1000918
#print axioms cover_1000172

def state_1001791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
theorem cover_1001791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001791 := by
  apply coveredState_split_literal (state := state_1001791) 4
    state_1001792 state_1001839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001792
  · exact cover_1001839
#print axioms cover_1001791

def state_1001783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
theorem cover_1001783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001783 := by
  apply coveredState_split_literal (state := state_1001783) 0
    state_1001784 state_1001791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001784
  · exact cover_1001791
#print axioms cover_1001783

def state_1001781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
theorem cover_1001781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001781 := by
  apply coveredState_split_literal (state := state_1001781) 1
    state_1001782 state_1001783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001782
  · exact cover_1001783
#print axioms cover_1001781

def state_1001780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 88)))
theorem cover_1001780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001780 := by
  apply coveredState_split_literal (state := state_1001780) 2
    state_1001781 state_1001858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001781
  · exact cover_1001858
#print axioms cover_1001780

def state_1001770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 88)))
theorem cover_1001770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001770 := by
  apply coveredState_split_literal (state := state_1001770) 3
    state_1001771 state_1001780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001771
  · exact cover_1001780
#print axioms cover_1001770

def state_1001769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1001769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001769 := by
  apply coveredState_split_literal (state := state_1001769) 4
    state_1001770 state_1001881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001770
  · exact cover_1001881
#print axioms cover_1001769

def state_1001763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
theorem cover_1001763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001763 := by
  apply coveredState_split_literal (state := state_1001763) 0
    state_1001764 state_1001769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001764
  · exact cover_1001769
#print axioms cover_1001763

def state_1001922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 104 else 177)))
theorem cover_1001922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001922 := by
  apply coveredState_split_literal (state := state_1001922) 3
    state_1001923 state_1001932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001923
  · exact cover_1001932
#print axioms cover_1001922

def state_1001920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 104 else 88)))
theorem cover_1001920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001920 := by
  apply coveredState_split_literal (state := state_1001920) 4
    state_1001921 state_1001922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001921
  · exact cover_1001922
#print axioms cover_1001920

def state_1001912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 104 else 88)))
theorem cover_1001912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001912 := by
  apply coveredState_split_literal (state := state_1001912) 0
    state_1001913 state_1001920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1001913
  · exact cover_1001920
#print axioms cover_1001912
end Mub6.Numerical.CircleFullD0.Forest
