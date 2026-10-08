import D0FullInterface
import D0ForestAssembly0246
import D0ForestChunk0943
import D0ForestChunk0944
import D0ForestChunk0945
import D0ForestChunk0946
import D0ForestChunk0947
import D0ForestChunk0948
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1526771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 88)))
theorem cover_1526771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526771 := by
  apply coveredState_split_literal (state := state_1526771) 3
    state_1526772 state_1526855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526772
  · exact cover_1526855
#print axioms cover_1526771

def state_1526401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 88)))
theorem cover_1526401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526401 := by
  apply coveredState_split_literal (state := state_1526401) 1
    state_1526402 state_1526771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526402
  · exact cover_1526771
#print axioms cover_1526401

def state_1526942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 89)))
theorem cover_1526942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526942 := by
  apply coveredState_split_literal (state := state_1526942) 1
    state_1526943 state_1526966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526943
  · exact cover_1526966
#print axioms cover_1526942

def state_1526400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 44)))
theorem cover_1526400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526400 := by
  apply coveredState_split_literal (state := state_1526400) 4
    state_1526401 state_1526942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526401
  · exact cover_1526942
#print axioms cover_1526400

def state_1526399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 44)))
theorem cover_1526399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526399 := by
  apply coveredState_split_literal (state := state_1526399) 2
    state_1526400 state_1527007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526400
  · exact cover_1527007
#print axioms cover_1526399

def state_1527123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 67 else 88)))
theorem cover_1527123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527123 := by
  apply coveredState_split_literal (state := state_1527123) 2
    state_1527124 state_1527155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527124
  · exact cover_1527155
#print axioms cover_1527123

def state_1527122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 67 else 88)))
theorem cover_1527122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527122 := by
  apply coveredState_split_literal (state := state_1527122) 0
    state_1527123 state_1527198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527123
  · exact cover_1527198
#print axioms cover_1527122

def state_1527102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 88)))
theorem cover_1527102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527102 := by
  apply coveredState_split_literal (state := state_1527102) 3
    state_1527103 state_1527122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527103
  · exact cover_1527122
#print axioms cover_1527102

def state_1527040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 88)))
theorem cover_1527040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527040 := by
  apply coveredState_split_literal (state := state_1527040) 1
    state_1527041 state_1527102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527041
  · exact cover_1527102
#print axioms cover_1527040

def state_1527039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 44)))
theorem cover_1527039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527039 := by
  apply coveredState_split_literal (state := state_1527039) 4
    state_1527040 state_1527211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527040
  · exact cover_1527211
#print axioms cover_1527039

def state_1527038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 44)))
theorem cover_1527038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527038 := by
  apply coveredState_split_literal (state := state_1527038) 2
    state_1527039 state_1527248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527039
  · exact cover_1527248
#print axioms cover_1527038

def state_1526398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 44)))
theorem cover_1526398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526398 := by
  apply coveredState_split_literal (state := state_1526398) 0
    state_1526399 state_1527038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526399
  · exact cover_1527038
#print axioms cover_1526398

def state_1526306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 44)))
theorem cover_1526306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526306 := by
  apply coveredState_split_literal (state := state_1526306) 3
    state_1526307 state_1526398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526307
  · exact cover_1526398
#print axioms cover_1526306

def state_1527327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 44)))
theorem cover_1527327 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527327 := by
  apply coveredState_split_literal (state := state_1527327) 0
    state_1527328 state_1527375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527328
  · exact cover_1527375
#print axioms cover_1527327

def state_1527303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 44)))
theorem cover_1527303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527303 := by
  apply coveredState_split_literal (state := state_1527303) 3
    state_1527304 state_1527327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527304
  · exact cover_1527327
#print axioms cover_1527303

def state_1526305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 44)))
theorem cover_1526305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526305 := by
  apply coveredState_split_literal (state := state_1526305) 1
    state_1526306 state_1527303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526306
  · exact cover_1527303
#print axioms cover_1526305

def state_1526304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 22)))
theorem cover_1526304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526304 := by
  apply coveredState_split_literal (state := state_1526304) 4
    state_1526305 state_1527418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526305
  · exact cover_1527418
#print axioms cover_1526304

def state_1524378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1524378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524378 := by
  apply coveredState_split_literal (state := state_1524378) 2
    state_1524379 state_1526304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524379
  · exact cover_1526304
#print axioms cover_1524378

def state_1527457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1527457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527457 := by
  apply coveredState_split_literal (state := state_1527457) 2
    state_1527458 state_1527499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527458
  · exact cover_1527499
#print axioms cover_1527457

def state_1524377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1524377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524377 := by
  apply coveredState_split_literal (state := state_1524377) 0
    state_1524378 state_1527457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524378
  · exact cover_1527457
#print axioms cover_1524377

def state_1527540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 22)))
theorem cover_1527540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527540 := by
  apply coveredState_split_literal (state := state_1527540) 4
    state_1527541 state_1527604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527541
  · exact cover_1527604
#print axioms cover_1527540

def state_1527618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 34 else 44)))
theorem cover_1527618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527618 := by
  apply coveredState_split_literal (state := state_1527618) 4
    state_1527619 state_1527672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527619
  · exact cover_1527672
#print axioms cover_1527618

def state_1527687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 44)))
theorem cover_1527687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527687 := by
  apply coveredState_split_literal (state := state_1527687) 4
    state_1527688 state_1527747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527688
  · exact cover_1527747
#print axioms cover_1527687

def state_1527617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 34 else 44)))
theorem cover_1527617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527617 := by
  apply coveredState_split_literal (state := state_1527617) 2
    state_1527618 state_1527687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527618
  · exact cover_1527687
#print axioms cover_1527617

def state_1527869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 117) else (if j.val < 3 then 91 else (if j.val < 4 then 68 else 88)))
theorem cover_1527869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527869 := by
  apply coveredState_split_literal (state := state_1527869) 2
    state_1527870 state_1527923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527870
  · exact cover_1527923
#print axioms cover_1527869

def state_1527868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 117) else (if j.val < 3 then 91 else (if j.val < 4 then 68 else 88)))
theorem cover_1527868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527868 := by
  apply coveredState_split_literal (state := state_1527868) 0
    state_1527869 state_1527946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527869
  · exact cover_1527946
#print axioms cover_1527868

def state_1527867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 117) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 88)))
theorem cover_1527867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527867 := by
  apply coveredState_split_literal (state := state_1527867) 3
    state_1527868 state_1527957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527868
  · exact cover_1527957
#print axioms cover_1527867

def state_1527833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 88)))
theorem cover_1527833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527833 := by
  apply coveredState_split_literal (state := state_1527833) 1
    state_1527834 state_1527867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527834
  · exact cover_1527867
#print axioms cover_1527833

def state_1527832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 44)))
theorem cover_1527832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527832 := by
  apply coveredState_split_literal (state := state_1527832) 4
    state_1527833 state_1528000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527833
  · exact cover_1528000
#print axioms cover_1527832

def state_1527768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 34 else 44)))
theorem cover_1527768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527768 := by
  apply coveredState_split_literal (state := state_1527768) 2
    state_1527769 state_1527832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527769
  · exact cover_1527832
#print axioms cover_1527768

def state_1527616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 34 else 44)))
theorem cover_1527616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527616 := by
  apply coveredState_split_literal (state := state_1527616) 0
    state_1527617 state_1527768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527617
  · exact cover_1527768
#print axioms cover_1527616

def state_1527615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 44)))
theorem cover_1527615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527615 := by
  apply coveredState_split_literal (state := state_1527615) 3
    state_1527616 state_1528027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527616
  · exact cover_1528027
#print axioms cover_1527615
end Mub6.Numerical.CircleFullD0.Forest
