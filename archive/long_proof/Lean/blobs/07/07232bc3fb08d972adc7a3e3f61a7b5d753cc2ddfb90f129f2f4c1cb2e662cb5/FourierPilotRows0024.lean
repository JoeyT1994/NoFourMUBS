import FourierPilotData
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_24 : ∀ j : Fin 48,
    (24 : Fin 48) = j ∨ O 24 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 24) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_24 : ∀ j : Fin 48,
    (24 : Fin 48) = j ∨ U 24 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 24) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_25 : ∀ j : Fin 48,
    (25 : Fin 48) = j ∨ O 25 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 25) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_25 : ∀ j : Fin 48,
    (25 : Fin 48) = j ∨ U 25 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 25) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_26 : ∀ j : Fin 48,
    (26 : Fin 48) = j ∨ O 26 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 26) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_26 : ∀ j : Fin 48,
    (26 : Fin 48) = j ∨ U 26 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 26) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_27 : ∀ j : Fin 48,
    (27 : Fin 48) = j ∨ O 27 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 27) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_27 : ∀ j : Fin 48,
    (27 : Fin 48) = j ∨ U 27 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 27) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_28 : ∀ j : Fin 48,
    (28 : Fin 48) = j ∨ O 28 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 28) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_28 : ∀ j : Fin 48,
    (28 : Fin 48) = j ∨ U 28 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 28) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_29 : ∀ j : Fin 48,
    (29 : Fin 48) = j ∨ O 29 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 29) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_29 : ∀ j : Fin 48,
    (29 : Fin 48) = j ∨ U 29 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 29) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_30 : ∀ j : Fin 48,
    (30 : Fin 48) = j ∨ O 30 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 30) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_30 : ∀ j : Fin 48,
    (30 : Fin 48) = j ∨ U 30 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 30) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_31 : ∀ j : Fin 48,
    (31 : Fin 48) = j ∨ O 31 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 31) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_31 : ∀ j : Fin 48,
    (31 : Fin 48) = j ∨ U 31 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 31) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_24
#print axioms unbiased_row_24
#print axioms orth_row_25
#print axioms unbiased_row_25
#print axioms orth_row_26
#print axioms unbiased_row_26
#print axioms orth_row_27
#print axioms unbiased_row_27
#print axioms orth_row_28
#print axioms unbiased_row_28
#print axioms orth_row_29
#print axioms unbiased_row_29
#print axioms orth_row_30
#print axioms unbiased_row_30
#print axioms orth_row_31
#print axioms unbiased_row_31
end FourierPilot
