import D0FullInterface
import D0ForestAssembly0018
import D0ForestChunk0081
import D0ForestChunk0082
import D0ForestChunk0083
import D0ForestChunk0084
import D0ForestChunk0085
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_956893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
theorem cover_956893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956893 := by
  apply coveredState_split_literal (state := state_956893) 2
    state_956894 state_956933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956894
  · exact cover_956933
#print axioms cover_956893

def state_956892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
theorem cover_956892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956892 := by
  apply coveredState_split_literal (state := state_956892) 1
    state_956893 state_957000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956893
  · exact cover_957000
#print axioms cover_956892

def state_956891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
theorem cover_956891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956891 := by
  apply coveredState_split_literal (state := state_956891) 0
    state_956892 state_957051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956892
  · exact cover_957051
#print axioms cover_956891

def state_956890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 26)))
theorem cover_956890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956890 := by
  apply coveredState_split_literal (state := state_956890) 3
    state_956891 state_957058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956891
  · exact cover_957058
#print axioms cover_956890

def state_957116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 27)))
theorem cover_957116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957116 := by
  apply coveredState_split_literal (state := state_957116) 3
    state_957117 state_957164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957117
  · exact cover_957164
#print axioms cover_957116

def state_957062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_957062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957062 := by
  apply coveredState_split_literal (state := state_957062) 2
    state_957063 state_957116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957063
  · exact cover_957116
#print axioms cover_957062

def state_957226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 108)))
theorem cover_957226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957226 := by
  apply coveredState_split_literal (state := state_957226) 0
    state_957227 state_957278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957227
  · exact cover_957278
#print axioms cover_957226

def state_957225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 54)))
theorem cover_957225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957225 := by
  apply coveredState_split_literal (state := state_957225) 4
    state_957226 state_957291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957226
  · exact cover_957291
#print axioms cover_957225

def state_957224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 54)))
theorem cover_957224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957224 := by
  apply coveredState_split_literal (state := state_957224) 3
    state_957225 state_957314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957225
  · exact cover_957314
#print axioms cover_957224

def state_957198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_957198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957198 := by
  apply coveredState_split_literal (state := state_957198) 2
    state_957199 state_957224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957199
  · exact cover_957224
#print axioms cover_957198

def state_957409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 175) else (if j.val < 3 then 211 else (if j.val < 4 then 72 else 109)))
theorem cover_957409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957409 := by
  apply coveredState_split_literal (state := state_957409) 3
    state_957410 state_957427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957410
  · exact cover_957427
#print axioms cover_957409

def state_957407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 175) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
theorem cover_957407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957407 := by
  apply coveredState_split_literal (state := state_957407) 2
    state_957408 state_957409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957408
  · exact cover_957409
#print axioms cover_957407

def state_957357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
theorem cover_957357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957357 := by
  apply coveredState_split_literal (state := state_957357) 1
    state_957358 state_957407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957358
  · exact cover_957407
#print axioms cover_957357

def state_957356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
theorem cover_957356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957356 := by
  apply coveredState_split_literal (state := state_957356) 0
    state_957357 state_957480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957357
  · exact cover_957480
#print axioms cover_957356

def state_957342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 54)))
theorem cover_957342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957342 := by
  apply coveredState_split_literal (state := state_957342) 4
    state_957343 state_957356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957343
  · exact cover_957356
#print axioms cover_957342

def state_957341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 54)))
theorem cover_957341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957341 := by
  apply coveredState_split_literal (state := state_957341) 3
    state_957342 state_957497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957342
  · exact cover_957497
#print axioms cover_957341

def state_957333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_957333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957333 := by
  apply coveredState_split_literal (state := state_957333) 2
    state_957334 state_957341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957334
  · exact cover_957341
#print axioms cover_957333

def state_957197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_957197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957197 := by
  apply coveredState_split_literal (state := state_957197) 1
    state_957198 state_957333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957198
  · exact cover_957333
#print axioms cover_957197

def state_957196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
theorem cover_957196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957196 := by
  apply coveredState_split_literal (state := state_957196) 0
    state_957197 state_957522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957197
  · exact cover_957522
#print axioms cover_957196

def state_957542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_957542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957542 := by
  apply coveredState_split_literal (state := state_957542) 2
    state_957543 state_957566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957543
  · exact cover_957566
#print axioms cover_957542

def state_957532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_957532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957532 := by
  apply coveredState_split_literal (state := state_957532) 1
    state_957533 state_957542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957533
  · exact cover_957542
#print axioms cover_957532

def state_957531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
theorem cover_957531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957531 := by
  apply coveredState_split_literal (state := state_957531) 0
    state_957532 state_957625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957532
  · exact cover_957625
#print axioms cover_957531

def state_957195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 27)))
theorem cover_957195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957195 := by
  apply coveredState_split_literal (state := state_957195) 4
    state_957196 state_957531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957196
  · exact cover_957531
#print axioms cover_957195

def state_957194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 27)))
theorem cover_957194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957194 := by
  apply coveredState_split_literal (state := state_957194) 3
    state_957195 state_957646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957195
  · exact cover_957646
#print axioms cover_957194

def state_957698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 54)))
theorem cover_957698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957698 := by
  apply coveredState_split_literal (state := state_957698) 4
    state_957699 state_957742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957699
  · exact cover_957742
#print axioms cover_957698

def state_957670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 54)))
theorem cover_957670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957670 := by
  apply coveredState_split_literal (state := state_957670) 3
    state_957671 state_957698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957671
  · exact cover_957698
#print axioms cover_957670

def state_957669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_957669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957669 := by
  apply coveredState_split_literal (state := state_957669) 2
    state_957670 state_957769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957670
  · exact cover_957769
#print axioms cover_957669

def state_957802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 109)))
theorem cover_957802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957802 := by
  apply coveredState_split_literal (state := state_957802) 0
    state_957803 state_957860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957803
  · exact cover_957860
#print axioms cover_957802

def state_957800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 54)))
theorem cover_957800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957800 := by
  apply coveredState_split_literal (state := state_957800) 4
    state_957801 state_957802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957801
  · exact cover_957802
#print axioms cover_957800

def state_957936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 175) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
theorem cover_957936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957936 := by
  apply coveredState_split_literal (state := state_957936) 2
    state_957937 state_957978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957937
  · exact cover_957978
#print axioms cover_957936

def state_957880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
theorem cover_957880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957880 := by
  apply coveredState_split_literal (state := state_957880) 1
    state_957881 state_957936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957881
  · exact cover_957936
#print axioms cover_957880

def state_957879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
theorem cover_957879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957879 := by
  apply coveredState_split_literal (state := state_957879) 0
    state_957880 state_958009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957880
  · exact cover_958009
#print axioms cover_957879
end Mub6.Numerical.CircleFullD0.Forest
