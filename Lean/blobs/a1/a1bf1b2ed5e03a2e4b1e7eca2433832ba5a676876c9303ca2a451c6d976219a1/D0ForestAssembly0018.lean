import D0FullInterface
import D0ForestAssembly0016
import D0ForestAssembly0017
import D0ForestChunk0072
import D0ForestChunk0077
import D0ForestChunk0078
import D0ForestChunk0079
import D0ForestChunk0080
import D0ForestChunk0081
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_956054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
theorem cover_956054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956054 := by
  apply coveredState_split_literal (state := state_956054) 1
    state_956055 state_956070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956055
  · exact cover_956070
#print axioms cover_956054

def state_956034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
theorem cover_956034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956034 := by
  apply coveredState_split_literal (state := state_956034) 0
    state_956035 state_956054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956035
  · exact cover_956054
#print axioms cover_956034

def state_956033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 27)))
theorem cover_956033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956033 := by
  apply coveredState_split_literal (state := state_956033) 4
    state_956034 state_956125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956034
  · exact cover_956125
#print axioms cover_956033

def state_955451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 27)))
theorem cover_955451 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955451 := by
  apply coveredState_split_literal (state := state_955451) 3
    state_955452 state_956033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_955452
  · exact cover_956033
#print axioms cover_955451

def state_954883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_954883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954883 := by
  apply coveredState_split_literal (state := state_954883) 2
    state_954884 state_955451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954884
  · exact cover_955451
#print axioms cover_954883

def state_954749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_954749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954749 := by
  apply coveredState_split_literal (state := state_954749) 1
    state_954750 state_954883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954750
  · exact cover_954883
#print axioms cover_954749

def state_954709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_954709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954709 := by
  apply coveredState_split_literal (state := state_954709) 0
    state_954710 state_954749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954710
  · exact cover_954749
#print axioms cover_954709

def state_954708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 27)))
theorem cover_954708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954708 := by
  apply coveredState_split_literal (state := state_954708) 3
    state_954709 state_956136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954709
  · exact cover_956136
#print axioms cover_954708

def state_954430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 13)))
theorem cover_954430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954430 := by
  apply coveredState_split_literal (state := state_954430) 4
    state_954431 state_954708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954431
  · exact cover_954708
#print axioms cover_954430

def state_956145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 26)))
theorem cover_956145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956145 := by
  apply coveredState_split_literal (state := state_956145) 0
    state_956146 state_956169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956146
  · exact cover_956169
#print axioms cover_956145

def state_956144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 26)))
theorem cover_956144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956144 := by
  apply coveredState_split_literal (state := state_956144) 3
    state_956145 state_956228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956145
  · exact cover_956228
#print axioms cover_956144

def state_956388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
theorem cover_956388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956388 := by
  apply coveredState_split_literal (state := state_956388) 1
    state_956389 state_956436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956389
  · exact cover_956436
#print axioms cover_956388

def state_956362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
theorem cover_956362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956362 := by
  apply coveredState_split_literal (state := state_956362) 0
    state_956363 state_956388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956363
  · exact cover_956388
#print axioms cover_956362

def state_956361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 27)))
theorem cover_956361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956361 := by
  apply coveredState_split_literal (state := state_956361) 4
    state_956362 state_956497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956362
  · exact cover_956497
#print axioms cover_956361

def state_956360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 27)))
theorem cover_956360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956360 := by
  apply coveredState_split_literal (state := state_956360) 2
    state_956361 state_956516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956361
  · exact cover_956516
#print axioms cover_956360

def state_956334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_956334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956334 := by
  apply coveredState_split_literal (state := state_956334) 3
    state_956335 state_956360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956335
  · exact cover_956360
#print axioms cover_956334

def state_956274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_956274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956274 := by
  apply coveredState_split_literal (state := state_956274) 1
    state_956275 state_956334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956275
  · exact cover_956334
#print axioms cover_956274

def state_956260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_956260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956260 := by
  apply coveredState_split_literal (state := state_956260) 0
    state_956261 state_956274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956261
  · exact cover_956274
#print axioms cover_956260

def state_956604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 38 else 27)))
theorem cover_956604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956604 := by
  apply coveredState_split_literal (state := state_956604) 2
    state_956605 state_956638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956605
  · exact cover_956638
#print axioms cover_956604

def state_956603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_956603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956603 := by
  apply coveredState_split_literal (state := state_956603) 3
    state_956604 state_956693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956604
  · exact cover_956693
#print axioms cover_956603

def state_956565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_956565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956565 := by
  apply coveredState_split_literal (state := state_956565) 1
    state_956566 state_956603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956566
  · exact cover_956603
#print axioms cover_956565

def state_956537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
theorem cover_956537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956537 := by
  apply coveredState_split_literal (state := state_956537) 0
    state_956538 state_956565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956538
  · exact cover_956565
#print axioms cover_956537

def state_956259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 27)))
theorem cover_956259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956259 := by
  apply coveredState_split_literal (state := state_956259) 3
    state_956260 state_956537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956260
  · exact cover_956537
#print axioms cover_956259

def state_956143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 13)))
theorem cover_956143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956143 := by
  apply coveredState_split_literal (state := state_956143) 4
    state_956144 state_956259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956144
  · exact cover_956259
#print axioms cover_956143

def state_954429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_954429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954429 := by
  apply coveredState_split_literal (state := state_954429) 2
    state_954430 state_956143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954430
  · exact cover_956143
#print axioms cover_954429

def state_954211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_954211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954211 := by
  apply coveredState_split_literal (state := state_954211) 1
    state_954212 state_954429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954212
  · exact cover_954429
#print axioms cover_954211

def state_956711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 26)))
theorem cover_956711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956711 := by
  apply coveredState_split_literal (state := state_956711) 3
    state_956712 state_956773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956712
  · exact cover_956773
#print axioms cover_956711

def state_956710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 13)))
theorem cover_956710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956710 := by
  apply coveredState_split_literal (state := state_956710) 4
    state_956711 state_956780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956711
  · exact cover_956780
#print axioms cover_956710

def state_956792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 26)))
theorem cover_956792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956792 := by
  apply coveredState_split_literal (state := state_956792) 3
    state_956793 state_956836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956793
  · exact cover_956836
#print axioms cover_956792

def state_956791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 13)))
theorem cover_956791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956791 := by
  apply coveredState_split_literal (state := state_956791) 4
    state_956792 state_956861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956792
  · exact cover_956861
#print axioms cover_956791

def state_956709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_956709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956709 := by
  apply coveredState_split_literal (state := state_956709) 2
    state_956710 state_956791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956710
  · exact cover_956791
#print axioms cover_956709

def state_956933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 26)))
theorem cover_956933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956933 := by
  apply coveredState_split_literal (state := state_956933) 4
    state_956934 state_956937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956934
  · exact cover_956937
#print axioms cover_956933
end Mub6.Numerical.CircleFullD0.Forest
