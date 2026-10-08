import D0FullInterface
import D0ForestAssembly0442
import D0ForestChunk1735
import D0ForestChunk1736
import D0ForestChunk1737
import D0ForestChunk1738
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2287153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_2287153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287153 := by
  apply coveredState_split_literal (state := state_2287153) 3
    state_2287154 state_2289639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287154
  · exact cover_2289639
#print axioms cover_2287153

def state_2289651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2289651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289651 := by
  apply coveredState_split_literal (state := state_2289651) 4
    state_2289652 state_2289659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289652
  · exact cover_2289659
#print axioms cover_2289651

def state_2289650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2289650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289650 := by
  apply coveredState_split_literal (state := state_2289650) 3
    state_2289651 state_2289718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289651
  · exact cover_2289718
#print axioms cover_2289650

def state_2287152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2287152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287152 := by
  apply coveredState_split_literal (state := state_2287152) 2
    state_2287153 state_2289650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287153
  · exact cover_2289650
#print axioms cover_2287152

def state_2287151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2287151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287151 := by
  apply coveredState_split_literal (state := state_2287151) 1
    state_2287152 state_2289737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287152
  · exact cover_2289737
#print axioms cover_2287151

def state_2289889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
theorem cover_2289889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289889 := by
  apply coveredState_split_literal (state := state_2289889) 3
    state_2289890 state_2289915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289890
  · exact cover_2289915
#print axioms cover_2289889

def state_2289877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
theorem cover_2289877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289877 := by
  apply coveredState_split_literal (state := state_2289877) 1
    state_2289878 state_2289889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289878
  · exact cover_2289889
#print axioms cover_2289877

def state_2289861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_2289861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289861 := by
  apply coveredState_split_literal (state := state_2289861) 2
    state_2289862 state_2289877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289862
  · exact cover_2289877
#print axioms cover_2289861

def state_2289860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_2289860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289860 := by
  apply coveredState_split_literal (state := state_2289860) 0
    state_2289861 state_2289954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289861
  · exact cover_2289954
#print axioms cover_2289860

def state_2289973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 46)))
theorem cover_2289973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289973 := by
  apply coveredState_split_literal (state := state_2289973) 1
    state_2289974 state_2289979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289974
  · exact cover_2289979
#print axioms cover_2289973

def state_2289972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
theorem cover_2289972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289972 := by
  apply coveredState_split_literal (state := state_2289972) 4
    state_2289973 state_2290038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289973
  · exact cover_2290038
#print axioms cover_2289972

def state_2289956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_2289956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289956 := by
  apply coveredState_split_literal (state := state_2289956) 2
    state_2289957 state_2289972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289957
  · exact cover_2289972
#print axioms cover_2289956

def state_2289955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_2289955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289955 := by
  apply coveredState_split_literal (state := state_2289955) 0
    state_2289956 state_2290079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289956
  · exact cover_2290079
#print axioms cover_2289955

def state_2289859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_2289859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289859 := by
  apply coveredState_split_literal (state := state_2289859) 4
    state_2289860 state_2289955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289860
  · exact cover_2289955
#print axioms cover_2289859

def state_2289845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_2289845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289845 := by
  apply coveredState_split_literal (state := state_2289845) 3
    state_2289846 state_2289859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289846
  · exact cover_2289859
#print axioms cover_2289845

def state_2289829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_2289829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289829 := by
  apply coveredState_split_literal (state := state_2289829) 1
    state_2289830 state_2289845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2289830
  · exact cover_2289845
#print axioms cover_2289829

def state_2290127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 23)))
theorem cover_2290127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290127 := by
  apply coveredState_split_literal (state := state_2290127) 4
    state_2290128 state_2290177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290128
  · exact cover_2290177
#print axioms cover_2290127

def state_2290115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 23)))
theorem cover_2290115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290115 := by
  apply coveredState_split_literal (state := state_2290115) 3
    state_2290116 state_2290127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290116
  · exact cover_2290127
#print axioms cover_2290115

def state_2290114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2290114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290114 := by
  apply coveredState_split_literal (state := state_2290114) 2
    state_2290115 state_2290192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290115
  · exact cover_2290192
#print axioms cover_2290114

def state_2290113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
theorem cover_2290113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290113 := by
  apply coveredState_split_literal (state := state_2290113) 0
    state_2290114 state_2290193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290114
  · exact cover_2290193
#print axioms cover_2290113

def state_2290095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 11)))
theorem cover_2290095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290095 := by
  apply coveredState_split_literal (state := state_2290095) 4
    state_2290096 state_2290113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290096
  · exact cover_2290113
#print axioms cover_2290095

def state_2290213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 22)))
theorem cover_2290213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290213 := by
  apply coveredState_split_literal (state := state_2290213) 3
    state_2290214 state_2290241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290214
  · exact cover_2290241
#print axioms cover_2290213

def state_2290197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 22)))
theorem cover_2290197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290197 := by
  apply coveredState_split_literal (state := state_2290197) 1
    state_2290198 state_2290213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290198
  · exact cover_2290213
#print axioms cover_2290197

def state_2290196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
theorem cover_2290196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290196 := by
  apply coveredState_split_literal (state := state_2290196) 2
    state_2290197 state_2290286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290197
  · exact cover_2290286
#print axioms cover_2290196

def state_2290195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
theorem cover_2290195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290195 := by
  apply coveredState_split_literal (state := state_2290195) 0
    state_2290196 state_2290293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290196
  · exact cover_2290293
#print axioms cover_2290195

def state_2290312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 46)))
theorem cover_2290312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290312 := by
  apply coveredState_split_literal (state := state_2290312) 2
    state_2290313 state_2290360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290313
  · exact cover_2290360
#print axioms cover_2290312

def state_2290311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 46)))
theorem cover_2290311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290311 := by
  apply coveredState_split_literal (state := state_2290311) 3
    state_2290312 state_2290381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290312
  · exact cover_2290381
#print axioms cover_2290311

def state_2290303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 46)))
theorem cover_2290303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290303 := by
  apply coveredState_split_literal (state := state_2290303) 1
    state_2290304 state_2290311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290304
  · exact cover_2290311
#print axioms cover_2290303

def state_2290430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 47)))
theorem cover_2290430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290430 := by
  apply coveredState_split_literal (state := state_2290430) 3
    state_2290431 state_2290470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290431
  · exact cover_2290470
#print axioms cover_2290430

def state_2290426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 47)))
theorem cover_2290426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290426 := by
  apply coveredState_split_literal (state := state_2290426) 1
    state_2290427 state_2290430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290427
  · exact cover_2290430
#print axioms cover_2290426

def state_2290302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 23)))
theorem cover_2290302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290302 := by
  apply coveredState_split_literal (state := state_2290302) 4
    state_2290303 state_2290426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290303
  · exact cover_2290426
#print axioms cover_2290302

def state_2290301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
theorem cover_2290301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290301 := by
  apply coveredState_split_literal (state := state_2290301) 2
    state_2290302 state_2290495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290302
  · exact cover_2290495
#print axioms cover_2290301
end Mub6.Numerical.CircleFullD0.Forest
