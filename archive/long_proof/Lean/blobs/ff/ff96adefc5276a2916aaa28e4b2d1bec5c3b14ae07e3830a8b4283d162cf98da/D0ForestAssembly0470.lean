import D0FullInterface
import D0ForestAssembly0468
import D0ForestAssembly0469
import D0ForestChunk1837
import D0ForestChunk1844
import D0ForestChunk1847
import D0ForestChunk1848
import D0ForestChunk1849
import D0ForestChunk1850
import D0ForestChunk1851
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2316576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 45)))
theorem cover_2316576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316576 := by
  apply coveredState_split_literal (state := state_2316576) 1
    state_2316577 state_2316600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316577
  · exact cover_2316600
#print axioms cover_2316576

def state_2316492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 45)))
theorem cover_2316492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316492 := by
  apply coveredState_split_literal (state := state_2316492) 3
    state_2316493 state_2316576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316493
  · exact cover_2316576
#print axioms cover_2316492

def state_2315956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_2315956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315956 := by
  apply coveredState_split_literal (state := state_2315956) 4
    state_2315957 state_2316492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315957
  · exact cover_2316492
#print axioms cover_2315956

def state_2315955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_2315955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315955 := by
  apply coveredState_split_literal (state := state_2315955) 0
    state_2315956 state_2316655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315956
  · exact cover_2316655
#print axioms cover_2315955

def state_2315877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
theorem cover_2315877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315877 := by
  apply coveredState_split_literal (state := state_2315877) 3
    state_2315878 state_2315955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315878
  · exact cover_2315955
#print axioms cover_2315877

def state_2315876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
theorem cover_2315876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315876 := by
  apply coveredState_split_literal (state := state_2315876) 2
    state_2315877 state_2316692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315877
  · exact cover_2316692
#print axioms cover_2315876

def state_2315866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
theorem cover_2315866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315866 := by
  apply coveredState_split_literal (state := state_2315866) 1
    state_2315867 state_2315876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315867
  · exact cover_2315876
#print axioms cover_2315866

def state_2315865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_2315865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315865 := by
  apply coveredState_split_literal (state := state_2315865) 4
    state_2315866 state_2316737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315866
  · exact cover_2316737
#print axioms cover_2315865

def state_2315041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_2315041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315041 := by
  apply coveredState_split_literal (state := state_2315041) 0
    state_2315042 state_2315865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315042
  · exact cover_2315865
#print axioms cover_2315041

def state_2316946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 44)))
theorem cover_2316946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316946 := by
  apply coveredState_split_literal (state := state_2316946) 4
    state_2316947 state_2316992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316947
  · exact cover_2316992
#print axioms cover_2316946

def state_2316918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 44)))
theorem cover_2316918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316918 := by
  apply coveredState_split_literal (state := state_2316918) 0
    state_2316919 state_2316946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316919
  · exact cover_2316946
#print axioms cover_2316918

def state_2316917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 30 else 44)))
theorem cover_2316917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316917 := by
  apply coveredState_split_literal (state := state_2316917) 3
    state_2316918 state_2317041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316918
  · exact cover_2317041
#print axioms cover_2316917

def state_2316869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
theorem cover_2316869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316869 := by
  apply coveredState_split_literal (state := state_2316869) 2
    state_2316870 state_2316917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316870
  · exact cover_2316917
#print axioms cover_2316869

def state_2316847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
theorem cover_2316847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316847 := by
  apply coveredState_split_literal (state := state_2316847) 1
    state_2316848 state_2316869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316848
  · exact cover_2316869
#print axioms cover_2316847

def state_2316846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 22)))
theorem cover_2316846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316846 := by
  apply coveredState_split_literal (state := state_2316846) 4
    state_2316847 state_2317056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316847
  · exact cover_2317056
#print axioms cover_2316846

def state_2317112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
theorem cover_2317112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317112 := by
  apply coveredState_split_literal (state := state_2317112) 2
    state_2317113 state_2317116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317113
  · exact cover_2317116
#print axioms cover_2317112

def state_2317100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
theorem cover_2317100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317100 := by
  apply coveredState_split_literal (state := state_2317100) 1
    state_2317101 state_2317112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317101
  · exact cover_2317112
#print axioms cover_2317100

def state_2317099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 22)))
theorem cover_2317099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317099 := by
  apply coveredState_split_literal (state := state_2317099) 4
    state_2317100 state_2317179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317100
  · exact cover_2317179
#print axioms cover_2317099

def state_2316845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 22)))
theorem cover_2316845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316845 := by
  apply coveredState_split_literal (state := state_2316845) 0
    state_2316846 state_2317099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316846
  · exact cover_2317099
#print axioms cover_2316845

def state_2316844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 22)))
theorem cover_2316844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316844 := by
  apply coveredState_split_literal (state := state_2316844) 3
    state_2316845 state_2317206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316845
  · exact cover_2317206
#print axioms cover_2316844

def state_2317246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
theorem cover_2317246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317246 := by
  apply coveredState_split_literal (state := state_2317246) 0
    state_2317247 state_2317304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317247
  · exact cover_2317304
#print axioms cover_2317246

def state_2317245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_2317245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317245 := by
  apply coveredState_split_literal (state := state_2317245) 3
    state_2317246 state_2317339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317246
  · exact cover_2317339
#print axioms cover_2317245

def state_2316843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 22)))
theorem cover_2316843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316843 := by
  apply coveredState_split_literal (state := state_2316843) 2
    state_2316844 state_2317245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316844
  · exact cover_2317245
#print axioms cover_2316843

def state_2316827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 22)))
theorem cover_2316827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316827 := by
  apply coveredState_split_literal (state := state_2316827) 1
    state_2316828 state_2316843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316828
  · exact cover_2316843
#print axioms cover_2316827

def state_2316826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_2316826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316826 := by
  apply coveredState_split_literal (state := state_2316826) 4
    state_2316827 state_2317378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316827
  · exact cover_2317378
#print axioms cover_2316826

def state_2316772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_2316772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316772 := by
  apply coveredState_split_literal (state := state_2316772) 0
    state_2316773 state_2316826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316773
  · exact cover_2316826
#print axioms cover_2316772

def state_2315040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_2315040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315040 := by
  apply coveredState_split_literal (state := state_2315040) 3
    state_2315041 state_2316772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315041
  · exact cover_2316772
#print axioms cover_2315040

def state_2314260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_2314260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314260 := by
  apply coveredState_split_literal (state := state_2314260) 4
    state_2314261 state_2315040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314261
  · exact cover_2315040
#print axioms cover_2314260

def state_2317412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
theorem cover_2317412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317412 := by
  apply coveredState_split_literal (state := state_2317412) 3
    state_2317413 state_2317430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317413
  · exact cover_2317430
#print axioms cover_2317412

def state_2317411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
theorem cover_2317411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317411 := by
  apply coveredState_split_literal (state := state_2317411) 4
    state_2317412 state_2317489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2317412
  · exact cover_2317489
#print axioms cover_2317411

def state_2314259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2314259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314259 := by
  apply coveredState_split_literal (state := state_2314259) 2
    state_2314260 state_2317411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314260
  · exact cover_2317411
#print axioms cover_2314259

def state_2314213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2314213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314213 := by
  apply coveredState_split_literal (state := state_2314213) 1
    state_2314214 state_2314259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2314214
  · exact cover_2314259
#print axioms cover_2314213
end Mub6.Numerical.CircleFullD0.Forest
