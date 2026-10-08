import D0FullInterface
import D0ForestAssembly0494
import D0ForestChunk1941
import D0ForestChunk1945
import D0ForestChunk1946
import D0ForestChunk1947
import D0ForestChunk1948
import D0ForestChunk1949
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2546900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 8 else 22)))
theorem cover_2546900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546900 := by
  apply coveredState_split_literal (state := state_2546900) 3
    state_2546901 state_2547364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546901
  · exact cover_2547364
#print axioms cover_2546900

def state_2547419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 8 else 22)))
theorem cover_2547419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547419 := by
  apply coveredState_split_literal (state := state_2547419) 3
    state_2547420 state_2547473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547420
  · exact cover_2547473
#print axioms cover_2547419

def state_2546899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 22)))
theorem cover_2546899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546899 := by
  apply coveredState_split_literal (state := state_2546899) 2
    state_2546900 state_2547419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546900
  · exact cover_2547419
#print axioms cover_2546899

def state_2546898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
theorem cover_2546898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546898 := by
  apply coveredState_split_literal (state := state_2546898) 4
    state_2546899 state_2547494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546899
  · exact cover_2547494
#print axioms cover_2546898

def state_2546897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
theorem cover_2546897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546897 := by
  apply coveredState_split_literal (state := state_2546897) 1
    state_2546898 state_2547523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546898
  · exact cover_2547523
#print axioms cover_2546897

def state_2547554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
theorem cover_2547554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547554 := by
  apply coveredState_split_literal (state := state_2547554) 1
    state_2547555 state_2547596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547555
  · exact cover_2547596
#print axioms cover_2547554

def state_2546896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
theorem cover_2546896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546896 := by
  apply coveredState_split_literal (state := state_2546896) 0
    state_2546897 state_2547554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546897
  · exact cover_2547554
#print axioms cover_2546896

def state_2546895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 4 else 11)))
theorem cover_2546895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546895 := by
  apply coveredState_split_literal (state := state_2546895) 3
    state_2546896 state_2547627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546896
  · exact cover_2547627
#print axioms cover_2546895

def state_2547674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 4 else 11)))
theorem cover_2547674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547674 := by
  apply coveredState_split_literal (state := state_2547674) 3
    state_2547675 state_2547722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547675
  · exact cover_2547722
#print axioms cover_2547674

def state_2546894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 11)))
theorem cover_2546894 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546894 := by
  apply coveredState_split_literal (state := state_2546894) 2
    state_2546895 state_2547674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546895
  · exact cover_2547674
#print axioms cover_2546894

def state_2546812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_2546812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546812 := by
  apply coveredState_split_literal (state := state_2546812) 4
    state_2546813 state_2546894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546813
  · exact cover_2546894
#print axioms cover_2546812

def state_2546712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_2546712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546712 := by
  apply coveredState_split_literal (state := state_2546712) 1
    state_2546713 state_2546812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546713
  · exact cover_2546812
#print axioms cover_2546712

def state_2546492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_2546492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546492 := by
  apply coveredState_split_literal (state := state_2546492) 0
    state_2546493 state_2546712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546493
  · exact cover_2546712
#print axioms cover_2546492

def state_2546486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
theorem cover_2546486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546486 := by
  apply coveredState_split_literal (state := state_2546486) 4
    state_2546487 state_2546492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546487
  · exact cover_2546492
#print axioms cover_2546486

def state_2546485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_2546485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546485 := by
  apply coveredState_split_literal (state := state_2546485) 3
    state_2546486 state_2547765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546486
  · exact cover_2547765
#print axioms cover_2546485

def state_2546484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2546484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546484 := by
  apply coveredState_split_literal (state := state_2546484) 2
    state_2546485 state_2547792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546485
  · exact cover_2547792
#print axioms cover_2546484

def state_2546398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2546398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546398 := by
  apply coveredState_split_literal (state := state_2546398) 1
    state_2546399 state_2546484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546399
  · exact cover_2546484
#print axioms cover_2546398

def state_2546296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2546296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546296 := by
  apply coveredState_split_literal (state := state_2546296) 0
    state_2546297 state_2546398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546297
  · exact cover_2546398
#print axioms cover_2546296

def state_2547864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_2547864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547864 := by
  apply coveredState_split_literal (state := state_2547864) 3
    state_2547865 state_2547916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547865
  · exact cover_2547916
#print axioms cover_2547864

def state_2547863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2547863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547863 := by
  apply coveredState_split_literal (state := state_2547863) 2
    state_2547864 state_2547933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547864
  · exact cover_2547933
#print axioms cover_2547863

def state_2547853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2547853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547853 := by
  apply coveredState_split_literal (state := state_2547853) 1
    state_2547854 state_2547863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547854
  · exact cover_2547863
#print axioms cover_2547853

def state_2547837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2547837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547837 := by
  apply coveredState_split_literal (state := state_2547837) 0
    state_2547838 state_2547853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547838
  · exact cover_2547853
#print axioms cover_2547837

def state_2546295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2546295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546295 := by
  apply coveredState_split_literal (state := state_2546295) 4
    state_2546296 state_2547837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546296
  · exact cover_2547837
#print axioms cover_2546295

def state_2548120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2548120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548120 := by
  apply coveredState_split_literal (state := state_2548120) 1
    state_2548121 state_2548172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548121
  · exact cover_2548172
#print axioms cover_2548120

def state_2548114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_2548114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548114 := by
  apply coveredState_split_literal (state := state_2548114) 4
    state_2548115 state_2548120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548115
  · exact cover_2548120
#print axioms cover_2548114

def state_2548060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2548060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548060 := by
  apply coveredState_split_literal (state := state_2548060) 3
    state_2548061 state_2548114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548061
  · exact cover_2548114
#print axioms cover_2548060

def state_2548036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2548036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548036 := by
  apply coveredState_split_literal (state := state_2548036) 2
    state_2548037 state_2548060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548037
  · exact cover_2548060
#print axioms cover_2548036

def state_2547976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2547976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547976 := by
  apply coveredState_split_literal (state := state_2547976) 1
    state_2547977 state_2548036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2547977
  · exact cover_2548036
#print axioms cover_2547976

def state_2548237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2548237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548237 := by
  apply coveredState_split_literal (state := state_2548237) 4
    state_2548238 state_2548291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548238
  · exact cover_2548291
#print axioms cover_2548237

def state_2548236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2548236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548236 := by
  apply coveredState_split_literal (state := state_2548236) 3
    state_2548237 state_2548326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548237
  · exact cover_2548326
#print axioms cover_2548236

def state_2548218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2548218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548218 := by
  apply coveredState_split_literal (state := state_2548218) 2
    state_2548219 state_2548236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548219
  · exact cover_2548236
#print axioms cover_2548218

def state_2548354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2548354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2548354 := by
  apply coveredState_split_literal (state := state_2548354) 4
    state_2548355 state_2548398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2548355
  · exact cover_2548398
#print axioms cover_2548354
end Mub6.Numerical.CircleFullD0.Forest
