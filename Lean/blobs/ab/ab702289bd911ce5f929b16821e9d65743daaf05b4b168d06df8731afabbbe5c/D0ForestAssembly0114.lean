import D0FullInterface
import D0ForestAssembly0112
import D0ForestAssembly0113
import D0ForestChunk0446
import D0ForestChunk0450
import D0ForestChunk0451
import D0ForestChunk0452
import D0ForestChunk0453
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1044847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1044847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044847 := by
  apply coveredState_split_literal (state := state_1044847) 2
    state_1044848 state_1045433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044848
  · exact cover_1045433
#print axioms cover_1044847

def state_1044846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_1044846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044846 := by
  apply coveredState_split_literal (state := state_1044846) 0
    state_1044847 state_1045716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044847
  · exact cover_1045716
#print axioms cover_1044846

def state_1044840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_1044840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044840 := by
  apply coveredState_split_literal (state := state_1044840) 4
    state_1044841 state_1044846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044841
  · exact cover_1044846
#print axioms cover_1044840

def state_1044772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1044772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044772 := by
  apply coveredState_split_literal (state := state_1044772) 3
    state_1044773 state_1044840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044773
  · exact cover_1044840
#print axioms cover_1044772

def state_1044460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1044460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044460 := by
  apply coveredState_split_literal (state := state_1044460) 2
    state_1044461 state_1044772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044461
  · exact cover_1044772
#print axioms cover_1044460

def state_1044064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1044064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044064 := by
  apply coveredState_split_literal (state := state_1044064) 1
    state_1044065 state_1044460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044065
  · exact cover_1044460
#print axioms cover_1044064

def state_1044063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1044063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044063 := by
  apply coveredState_split_literal (state := state_1044063) 0
    state_1044064 state_1045731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044064
  · exact cover_1045731
#print axioms cover_1044063

def state_1046109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 51)))
theorem cover_1046109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046109 := by
  apply coveredState_split_literal (state := state_1046109) 4
    state_1046110 state_1046161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046110
  · exact cover_1046161
#print axioms cover_1046109

def state_1046079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1046079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046079 := by
  apply coveredState_split_literal (state := state_1046079) 3
    state_1046080 state_1046109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046080
  · exact cover_1046109
#print axioms cover_1046079

def state_1046078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1046078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046078 := by
  apply coveredState_split_literal (state := state_1046078) 0
    state_1046079 state_1046184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046079
  · exact cover_1046184
#print axioms cover_1046078

def state_1046034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
theorem cover_1046034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046034 := by
  apply coveredState_split_literal (state := state_1046034) 1
    state_1046035 state_1046078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046035
  · exact cover_1046078
#print axioms cover_1046034

def state_1046024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 51)))
theorem cover_1046024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046024 := by
  apply coveredState_split_literal (state := state_1046024) 2
    state_1046025 state_1046034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046025
  · exact cover_1046034
#print axioms cover_1046024

def state_1045984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
theorem cover_1045984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045984 := by
  apply coveredState_split_literal (state := state_1045984) 4
    state_1045985 state_1046024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045985
  · exact cover_1046024
#print axioms cover_1045984

def state_1045976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1045976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045976 := by
  apply coveredState_split_literal (state := state_1045976) 3
    state_1045977 state_1045984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045977
  · exact cover_1045984
#print axioms cover_1045976

def state_1045975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1045975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045975 := by
  apply coveredState_split_literal (state := state_1045975) 0
    state_1045976 state_1046197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045976
  · exact cover_1046197
#print axioms cover_1045975

def state_1045937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1045937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045937 := by
  apply coveredState_split_literal (state := state_1045937) 1
    state_1045938 state_1045975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045938
  · exact cover_1045975
#print axioms cover_1045937

def state_1046251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1046251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046251 := by
  apply coveredState_split_literal (state := state_1046251) 3
    state_1046252 state_1046275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046252
  · exact cover_1046275
#print axioms cover_1046251

def state_1046250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1046250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046250 := by
  apply coveredState_split_literal (state := state_1046250) 0
    state_1046251 state_1046336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046251
  · exact cover_1046336
#print axioms cover_1046250

def state_1046240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1046240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046240 := by
  apply coveredState_split_literal (state := state_1046240) 1
    state_1046241 state_1046250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046241
  · exact cover_1046250
#print axioms cover_1046240

def state_1046239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 51)))
theorem cover_1046239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046239 := by
  apply coveredState_split_literal (state := state_1046239) 2
    state_1046240 state_1046341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046240
  · exact cover_1046341
#print axioms cover_1046239

def state_1046221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 25)))
theorem cover_1046221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046221 := by
  apply coveredState_split_literal (state := state_1046221) 4
    state_1046222 state_1046239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046222
  · exact cover_1046239
#print axioms cover_1046221

def state_1046213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1046213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046213 := by
  apply coveredState_split_literal (state := state_1046213) 3
    state_1046214 state_1046221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046214
  · exact cover_1046221
#print axioms cover_1046213

def state_1046212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1046212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046212 := by
  apply coveredState_split_literal (state := state_1046212) 0
    state_1046213 state_1046348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046213
  · exact cover_1046348
#print axioms cover_1046212

def state_1046204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1046204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046204 := by
  apply coveredState_split_literal (state := state_1046204) 1
    state_1046205 state_1046212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046205
  · exact cover_1046212
#print axioms cover_1046204

def state_1045936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 25)))
theorem cover_1045936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045936 := by
  apply coveredState_split_literal (state := state_1045936) 2
    state_1045937 state_1046204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045937
  · exact cover_1046204
#print axioms cover_1045936

def state_1045902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1045902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045902 := by
  apply coveredState_split_literal (state := state_1045902) 4
    state_1045903 state_1045936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045903
  · exact cover_1045936
#print axioms cover_1045902

def state_1045898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1045898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045898 := by
  apply coveredState_split_literal (state := state_1045898) 3
    state_1045899 state_1045902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045899
  · exact cover_1045902
#print axioms cover_1045898

def state_1045897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1045897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045897 := by
  apply coveredState_split_literal (state := state_1045897) 0
    state_1045898 state_1046353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045898
  · exact cover_1046353
#print axioms cover_1045897

def state_1045857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1045857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045857 := by
  apply coveredState_split_literal (state := state_1045857) 2
    state_1045858 state_1045897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045858
  · exact cover_1045897
#print axioms cover_1045857

def state_1045823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1045823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045823 := by
  apply coveredState_split_literal (state := state_1045823) 1
    state_1045824 state_1045857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045824
  · exact cover_1045857
#print axioms cover_1045823

def state_1046455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1046455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046455 := by
  apply coveredState_split_literal (state := state_1046455) 1
    state_1046456 state_1046467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046456
  · exact cover_1046467
#print axioms cover_1046455

def state_1046454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 52)))
theorem cover_1046454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046454 := by
  apply coveredState_split_literal (state := state_1046454) 2
    state_1046455 state_1046526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1046455
  · exact cover_1046526
#print axioms cover_1046454
end Mub6.Numerical.CircleFullD0.Forest
