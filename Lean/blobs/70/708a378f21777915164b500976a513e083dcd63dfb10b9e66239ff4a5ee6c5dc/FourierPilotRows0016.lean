import FourierPilotData
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_16 : ∀ j : Fin 48,
    (16 : Fin 48) = j ∨ O 16 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 16) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_16 : ∀ j : Fin 48,
    (16 : Fin 48) = j ∨ U 16 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 16) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_17 : ∀ j : Fin 48,
    (17 : Fin 48) = j ∨ O 17 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 17) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_17 : ∀ j : Fin 48,
    (17 : Fin 48) = j ∨ U 17 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 17) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_18 : ∀ j : Fin 48,
    (18 : Fin 48) = j ∨ O 18 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 18) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_18 : ∀ j : Fin 48,
    (18 : Fin 48) = j ∨ U 18 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 18) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_19 : ∀ j : Fin 48,
    (19 : Fin 48) = j ∨ O 19 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 19) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_19 : ∀ j : Fin 48,
    (19 : Fin 48) = j ∨ U 19 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 19) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_20 : ∀ j : Fin 48,
    (20 : Fin 48) = j ∨ O 20 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 20) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_20 : ∀ j : Fin 48,
    (20 : Fin 48) = j ∨ U 20 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 20) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_21 : ∀ j : Fin 48,
    (21 : Fin 48) = j ∨ O 21 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 21) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_21 : ∀ j : Fin 48,
    (21 : Fin 48) = j ∨ U 21 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 21) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_22 : ∀ j : Fin 48,
    (22 : Fin 48) = j ∨ O 22 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 22) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_22 : ∀ j : Fin 48,
    (22 : Fin 48) = j ∨ U 22 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 22) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_23 : ∀ j : Fin 48,
    (23 : Fin 48) = j ∨ O 23 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 23) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_23 : ∀ j : Fin 48,
    (23 : Fin 48) = j ∨ U 23 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 23) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_16
#print axioms unbiased_row_16
#print axioms orth_row_17
#print axioms unbiased_row_17
#print axioms orth_row_18
#print axioms unbiased_row_18
#print axioms orth_row_19
#print axioms unbiased_row_19
#print axioms orth_row_20
#print axioms unbiased_row_20
#print axioms orth_row_21
#print axioms unbiased_row_21
#print axioms orth_row_22
#print axioms unbiased_row_22
#print axioms orth_row_23
#print axioms unbiased_row_23
end FourierPilot
