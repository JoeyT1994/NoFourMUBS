import D0FullInterface
import D0ForestAssembly0468
import D0ForestChunk1841
import D0ForestChunk1842
import D0ForestChunk1843
import D0ForestChunk1844
import D0ForestChunk1845
import D0ForestChunk1846
import D0ForestChunk1847
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2315297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 45)))
theorem cover_2315297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315297 := by
  apply coveredState_split_literal (state := state_2315297) 3
    state_2315298 state_2315333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315298
  · exact cover_2315333
#print axioms cover_2315297

def state_2315183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
theorem cover_2315183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315183 := by
  apply coveredState_split_literal (state := state_2315183) 4
    state_2315184 state_2315297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315184
  · exact cover_2315297
#print axioms cover_2315183

def state_2315095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
theorem cover_2315095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315095 := by
  apply coveredState_split_literal (state := state_2315095) 0
    state_2315096 state_2315183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315096
  · exact cover_2315183
#print axioms cover_2315095

def state_2315517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 44)))
theorem cover_2315517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315517 := by
  apply coveredState_split_literal (state := state_2315517) 4
    state_2315518 state_2315545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315518
  · exact cover_2315545
#print axioms cover_2315517

def state_2315499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 44)))
theorem cover_2315499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315499 := by
  apply coveredState_split_literal (state := state_2315499) 0
    state_2315500 state_2315517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315500
  · exact cover_2315517
#print axioms cover_2315499

def state_2315498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 44)))
theorem cover_2315498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315498 := by
  apply coveredState_split_literal (state := state_2315498) 2
    state_2315499 state_2315594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315499
  · exact cover_2315594
#print axioms cover_2315498

def state_2315436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 44)))
theorem cover_2315436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315436 := by
  apply coveredState_split_literal (state := state_2315436) 1
    state_2315437 state_2315498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315437
  · exact cover_2315498
#print axioms cover_2315436

def state_2315637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 44)))
theorem cover_2315637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315637 := by
  apply coveredState_split_literal (state := state_2315637) 1
    state_2315638 state_2315645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315638
  · exact cover_2315645
#print axioms cover_2315637

def state_2315435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
theorem cover_2315435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315435 := by
  apply coveredState_split_literal (state := state_2315435) 3
    state_2315436 state_2315637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315436
  · exact cover_2315637
#print axioms cover_2315435

def state_2315434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_2315434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315434 := by
  apply coveredState_split_literal (state := state_2315434) 4
    state_2315435 state_2315704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315435
  · exact cover_2315704
#print axioms cover_2315434

def state_2315410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
theorem cover_2315410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315410 := by
  apply coveredState_split_literal (state := state_2315410) 0
    state_2315411 state_2315434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315411
  · exact cover_2315434
#print axioms cover_2315410

def state_2315094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
theorem cover_2315094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315094 := by
  apply coveredState_split_literal (state := state_2315094) 3
    state_2315095 state_2315410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315095
  · exact cover_2315410
#print axioms cover_2315094

def state_2315093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
theorem cover_2315093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315093 := by
  apply coveredState_split_literal (state := state_2315093) 2
    state_2315094 state_2315761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315094
  · exact cover_2315761
#print axioms cover_2315093

def state_2315043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
theorem cover_2315043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315043 := by
  apply coveredState_split_literal (state := state_2315043) 1
    state_2315044 state_2315093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315044
  · exact cover_2315093
#print axioms cover_2315043

def state_2315042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
theorem cover_2315042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315042 := by
  apply coveredState_split_literal (state := state_2315042) 4
    state_2315043 state_2315810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315043
  · exact cover_2315810
#print axioms cover_2315042

def state_2315879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
theorem cover_2315879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315879 := by
  apply coveredState_split_literal (state := state_2315879) 4
    state_2315880 state_2315907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315880
  · exact cover_2315907
#print axioms cover_2315879

def state_2315878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
theorem cover_2315878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315878 := by
  apply coveredState_split_literal (state := state_2315878) 0
    state_2315879 state_2315950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315879
  · exact cover_2315950
#print axioms cover_2315878

def state_2315990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 89)))
theorem cover_2315990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315990 := by
  apply coveredState_split_literal (state := state_2315990) 3
    state_2315991 state_2316016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315991
  · exact cover_2316016
#print axioms cover_2315990

def state_2315972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 44)))
theorem cover_2315972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315972 := by
  apply coveredState_split_literal (state := state_2315972) 4
    state_2315973 state_2315990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315973
  · exact cover_2315990
#print axioms cover_2315972

def state_2315971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 44)))
theorem cover_2315971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315971 := by
  apply coveredState_split_literal (state := state_2315971) 0
    state_2315972 state_2316065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315972
  · exact cover_2316065
#print axioms cover_2315971

def state_2315970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 44)))
theorem cover_2315970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315970 := by
  apply coveredState_split_literal (state := state_2315970) 2
    state_2315971 state_2316074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315971
  · exact cover_2316074
#print axioms cover_2315970

def state_2315958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 44)))
theorem cover_2315958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315958 := by
  apply coveredState_split_literal (state := state_2315958) 1
    state_2315959 state_2315970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315959
  · exact cover_2315970
#print axioms cover_2315958

def state_2316217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 59 else 89)))
theorem cover_2316217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316217 := by
  apply coveredState_split_literal (state := state_2316217) 1
    state_2316218 state_2316255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316218
  · exact cover_2316255
#print axioms cover_2316217

def state_2316165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 59 else 44)))
theorem cover_2316165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316165 := by
  apply coveredState_split_literal (state := state_2316165) 4
    state_2316166 state_2316217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316166
  · exact cover_2316217
#print axioms cover_2316165

def state_2316164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 59 else 44)))
theorem cover_2316164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316164 := by
  apply coveredState_split_literal (state := state_2316164) 0
    state_2316165 state_2316294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316165
  · exact cover_2316294
#print axioms cover_2316164

def state_2316320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 44)))
theorem cover_2316320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316320 := by
  apply coveredState_split_literal (state := state_2316320) 4
    state_2316321 state_2316372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316321
  · exact cover_2316372
#print axioms cover_2316320

def state_2316319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 44)))
theorem cover_2316319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316319 := by
  apply coveredState_split_literal (state := state_2316319) 0
    state_2316320 state_2316433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316320
  · exact cover_2316433
#print axioms cover_2316319

def state_2316163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 44)))
theorem cover_2316163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316163 := by
  apply coveredState_split_literal (state := state_2316163) 2
    state_2316164 state_2316319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316164
  · exact cover_2316319
#print axioms cover_2316163

def state_2316127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 44)))
theorem cover_2316127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316127 := by
  apply coveredState_split_literal (state := state_2316127) 1
    state_2316128 state_2316163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316128
  · exact cover_2316163
#print axioms cover_2316127

def state_2315957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
theorem cover_2315957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315957 := by
  apply coveredState_split_literal (state := state_2315957) 3
    state_2315958 state_2316127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2315958
  · exact cover_2316127
#print axioms cover_2315957

def state_2316509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 45)))
theorem cover_2316509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316509 := by
  apply coveredState_split_literal (state := state_2316509) 2
    state_2316510 state_2316565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316510
  · exact cover_2316565
#print axioms cover_2316509

def state_2316493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 45)))
theorem cover_2316493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316493 := by
  apply coveredState_split_literal (state := state_2316493) 1
    state_2316494 state_2316509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2316494
  · exact cover_2316509
#print axioms cover_2316493
end Mub6.Numerical.CircleFullD0.Forest
