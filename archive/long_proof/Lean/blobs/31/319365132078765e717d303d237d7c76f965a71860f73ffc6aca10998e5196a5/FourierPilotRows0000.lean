import FourierPilotData
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_0 : ∀ j : Fin 48,
    (0 : Fin 48) = j ∨ O 0 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 0) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_0 : ∀ j : Fin 48,
    (0 : Fin 48) = j ∨ U 0 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 0) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_1 : ∀ j : Fin 48,
    (1 : Fin 48) = j ∨ O 1 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 1) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_1 : ∀ j : Fin 48,
    (1 : Fin 48) = j ∨ U 1 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 1) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_2 : ∀ j : Fin 48,
    (2 : Fin 48) = j ∨ O 2 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 2) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_2 : ∀ j : Fin 48,
    (2 : Fin 48) = j ∨ U 2 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 2) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_3 : ∀ j : Fin 48,
    (3 : Fin 48) = j ∨ O 3 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 3) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_3 : ∀ j : Fin 48,
    (3 : Fin 48) = j ∨ U 3 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 3) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_4 : ∀ j : Fin 48,
    (4 : Fin 48) = j ∨ O 4 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 4) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_4 : ∀ j : Fin 48,
    (4 : Fin 48) = j ∨ U 4 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 4) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_5 : ∀ j : Fin 48,
    (5 : Fin 48) = j ∨ O 5 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 5) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_5 : ∀ j : Fin 48,
    (5 : Fin 48) = j ∨ U 5 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 5) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_6 : ∀ j : Fin 48,
    (6 : Fin 48) = j ∨ O 6 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 6) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_6 : ∀ j : Fin 48,
    (6 : Fin 48) = j ∨ U 6 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 6) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_7 : ∀ j : Fin 48,
    (7 : Fin 48) = j ∨ O 7 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 7) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_7 : ∀ j : Fin 48,
    (7 : Fin 48) = j ∨ U 7 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 7) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_0
#print axioms unbiased_row_0
#print axioms orth_row_1
#print axioms unbiased_row_1
#print axioms orth_row_2
#print axioms unbiased_row_2
#print axioms orth_row_3
#print axioms unbiased_row_3
#print axioms orth_row_4
#print axioms unbiased_row_4
#print axioms orth_row_5
#print axioms unbiased_row_5
#print axioms orth_row_6
#print axioms unbiased_row_6
#print axioms orth_row_7
#print axioms unbiased_row_7
end FourierPilot
