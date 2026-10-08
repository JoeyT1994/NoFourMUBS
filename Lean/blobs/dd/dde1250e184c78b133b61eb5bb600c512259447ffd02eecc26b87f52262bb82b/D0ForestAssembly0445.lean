import D0FullInterface
import D0ForestAssembly0444
import D0ForestChunk1742
import D0ForestChunk1744
import D0ForestChunk1745
import D0ForestChunk1746
import D0ForestChunk1747
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2291391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 45)))
theorem cover_2291391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291391 := by
  apply coveredState_split_literal (state := state_2291391) 4
    state_2291392 state_2291433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291392
  · exact cover_2291433
#print axioms cover_2291391

def state_2291739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
theorem cover_2291739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291739 := by
  apply coveredState_split_literal (state := state_2291739) 3
    state_2291740 state_2291799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291740
  · exact cover_2291799
#print axioms cover_2291739

def state_2291738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 103) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
theorem cover_2291738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291738 := by
  apply coveredState_split_literal (state := state_2291738) 0
    state_2291739 state_2291808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291739
  · exact cover_2291808
#print axioms cover_2291738

def state_2291714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
theorem cover_2291714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291714 := by
  apply coveredState_split_literal (state := state_2291714) 1
    state_2291715 state_2291738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291715
  · exact cover_2291738
#print axioms cover_2291714

def state_2291678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 45)))
theorem cover_2291678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291678 := by
  apply coveredState_split_literal (state := state_2291678) 4
    state_2291679 state_2291714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291679
  · exact cover_2291714
#print axioms cover_2291678

def state_2291390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 54 else 45)))
theorem cover_2291390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291390 := by
  apply coveredState_split_literal (state := state_2291390) 2
    state_2291391 state_2291678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291391
  · exact cover_2291678
#print axioms cover_2291390

def state_2291923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 110 else 91)))
theorem cover_2291923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291923 := by
  apply coveredState_split_literal (state := state_2291923) 4
    state_2291924 state_2291937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291924
  · exact cover_2291937
#print axioms cover_2291923

def state_2291881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 110 else 91)))
theorem cover_2291881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291881 := by
  apply coveredState_split_literal (state := state_2291881) 2
    state_2291882 state_2291923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291882
  · exact cover_2291923
#print axioms cover_2291881

def state_2291880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
theorem cover_2291880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291880 := by
  apply coveredState_split_literal (state := state_2291880) 3
    state_2291881 state_2291998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291881
  · exact cover_2291998
#print axioms cover_2291880

def state_2291874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
theorem cover_2291874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291874 := by
  apply coveredState_split_literal (state := state_2291874) 0
    state_2291875 state_2291880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291875
  · exact cover_2291880
#print axioms cover_2291874

def state_2291858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
theorem cover_2291858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291858 := by
  apply coveredState_split_literal (state := state_2291858) 1
    state_2291859 state_2291874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291859
  · exact cover_2291874
#print axioms cover_2291858

def state_2291844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 45)))
theorem cover_2291844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291844 := by
  apply coveredState_split_literal (state := state_2291844) 4
    state_2291845 state_2291858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291845
  · exact cover_2291858
#print axioms cover_2291844

def state_2291843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 55 else 45)))
theorem cover_2291843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291843 := by
  apply coveredState_split_literal (state := state_2291843) 2
    state_2291844 state_2292005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291844
  · exact cover_2292005
#print axioms cover_2291843

def state_2291389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
theorem cover_2291389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291389 := by
  apply coveredState_split_literal (state := state_2291389) 3
    state_2291390 state_2291843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291390
  · exact cover_2291843
#print axioms cover_2291389

def state_2291345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
theorem cover_2291345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291345 := by
  apply coveredState_split_literal (state := state_2291345) 0
    state_2291346 state_2291389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291346
  · exact cover_2291389
#print axioms cover_2291345

def state_2291305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
theorem cover_2291305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291305 := by
  apply coveredState_split_literal (state := state_2291305) 4
    state_2291306 state_2291345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291306
  · exact cover_2291345
#print axioms cover_2291305

def state_2291277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
theorem cover_2291277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291277 := by
  apply coveredState_split_literal (state := state_2291277) 1
    state_2291278 state_2291305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291278
  · exact cover_2291305
#print axioms cover_2291277

def state_2291079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 22)))
theorem cover_2291079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291079 := by
  apply coveredState_split_literal (state := state_2291079) 2
    state_2291080 state_2291277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2291080
  · exact cover_2291277
#print axioms cover_2291079

def state_2290851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2290851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290851 := by
  apply coveredState_split_literal (state := state_2290851) 3
    state_2290852 state_2291079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290852
  · exact cover_2291079
#print axioms cover_2290851

def state_2290711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2290711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290711 := by
  apply coveredState_split_literal (state := state_2290711) 0
    state_2290712 state_2290851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2290712
  · exact cover_2290851
#print axioms cover_2290711

def state_2292076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 23)))
theorem cover_2292076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292076 := by
  apply coveredState_split_literal (state := state_2292076) 4
    state_2292077 state_2292130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292077
  · exact cover_2292130
#print axioms cover_2292076

def state_2292030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 23)))
theorem cover_2292030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292030 := by
  apply coveredState_split_literal (state := state_2292030) 2
    state_2292031 state_2292076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292031
  · exact cover_2292076
#print axioms cover_2292030

def state_2292029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
theorem cover_2292029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292029 := by
  apply coveredState_split_literal (state := state_2292029) 3
    state_2292030 state_2292141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292030
  · exact cover_2292141
#print axioms cover_2292029

def state_2292158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 23)))
theorem cover_2292158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292158 := by
  apply coveredState_split_literal (state := state_2292158) 4
    state_2292159 state_2292212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292159
  · exact cover_2292212
#print axioms cover_2292158

def state_2292290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 53 else 46)))
theorem cover_2292290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292290 := by
  apply coveredState_split_literal (state := state_2292290) 4
    state_2292291 state_2292342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292291
  · exact cover_2292342
#print axioms cover_2292290

def state_2292361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 46)))
theorem cover_2292361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292361 := by
  apply coveredState_split_literal (state := state_2292361) 4
    state_2292362 state_2292411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292362
  · exact cover_2292411
#print axioms cover_2292361

def state_2292289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 46)))
theorem cover_2292289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292289 := by
  apply coveredState_split_literal (state := state_2292289) 2
    state_2292290 state_2292361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292290
  · exact cover_2292361
#print axioms cover_2292289

def state_2292247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
theorem cover_2292247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292247 := by
  apply coveredState_split_literal (state := state_2292247) 3
    state_2292248 state_2292289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292248
  · exact cover_2292289
#print axioms cover_2292247

def state_2292442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 46)))
theorem cover_2292442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292442 := by
  apply coveredState_split_literal (state := state_2292442) 2
    state_2292443 state_2292462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292443
  · exact cover_2292462
#print axioms cover_2292442

def state_2292440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
theorem cover_2292440 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292440 := by
  apply coveredState_split_literal (state := state_2292440) 3
    state_2292441 state_2292442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292441
  · exact cover_2292442
#print axioms cover_2292440

def state_2292246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
theorem cover_2292246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292246 := by
  apply coveredState_split_literal (state := state_2292246) 0
    state_2292247 state_2292440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292247
  · exact cover_2292440
#print axioms cover_2292246

def state_2292228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
theorem cover_2292228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292228 := by
  apply coveredState_split_literal (state := state_2292228) 1
    state_2292229 state_2292246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2292229
  · exact cover_2292246
#print axioms cover_2292228
end Mub6.Numerical.CircleFullD0.Forest
