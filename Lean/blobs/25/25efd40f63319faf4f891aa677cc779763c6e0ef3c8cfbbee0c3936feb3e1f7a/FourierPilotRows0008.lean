import FourierPilotData
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_8 : ∀ j : Fin 48,
    (8 : Fin 48) = j ∨ O 8 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 8) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_8 : ∀ j : Fin 48,
    (8 : Fin 48) = j ∨ U 8 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 8) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_9 : ∀ j : Fin 48,
    (9 : Fin 48) = j ∨ O 9 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 9) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_9 : ∀ j : Fin 48,
    (9 : Fin 48) = j ∨ U 9 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 9) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_10 : ∀ j : Fin 48,
    (10 : Fin 48) = j ∨ O 10 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 10) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_10 : ∀ j : Fin 48,
    (10 : Fin 48) = j ∨ U 10 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 10) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_11 : ∀ j : Fin 48,
    (11 : Fin 48) = j ∨ O 11 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 11) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_11 : ∀ j : Fin 48,
    (11 : Fin 48) = j ∨ U 11 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 11) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_12 : ∀ j : Fin 48,
    (12 : Fin 48) = j ∨ O 12 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 12) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_12 : ∀ j : Fin 48,
    (12 : Fin 48) = j ∨ U 12 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 12) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_13 : ∀ j : Fin 48,
    (13 : Fin 48) = j ∨ O 13 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 13) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_13 : ∀ j : Fin 48,
    (13 : Fin 48) = j ∨ U 13 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 13) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_14 : ∀ j : Fin 48,
    (14 : Fin 48) = j ∨ O 14 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 14) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_14 : ∀ j : Fin 48,
    (14 : Fin 48) = j ∨ U 14 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 14) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_15 : ∀ j : Fin 48,
    (15 : Fin 48) = j ∨ O 15 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 15) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_15 : ∀ j : Fin 48,
    (15 : Fin 48) = j ∨ U 15 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 15) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_8
#print axioms unbiased_row_8
#print axioms orth_row_9
#print axioms unbiased_row_9
#print axioms orth_row_10
#print axioms unbiased_row_10
#print axioms orth_row_11
#print axioms unbiased_row_11
#print axioms orth_row_12
#print axioms unbiased_row_12
#print axioms orth_row_13
#print axioms unbiased_row_13
#print axioms orth_row_14
#print axioms unbiased_row_14
#print axioms orth_row_15
#print axioms unbiased_row_15
end FourierPilot
