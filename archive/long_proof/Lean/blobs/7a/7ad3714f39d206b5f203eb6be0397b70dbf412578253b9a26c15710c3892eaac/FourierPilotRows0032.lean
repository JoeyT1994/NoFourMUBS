import FourierPilotData
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_32 : ∀ j : Fin 48,
    (32 : Fin 48) = j ∨ O 32 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 32) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_32 : ∀ j : Fin 48,
    (32 : Fin 48) = j ∨ U 32 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 32) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_33 : ∀ j : Fin 48,
    (33 : Fin 48) = j ∨ O 33 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 33) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_33 : ∀ j : Fin 48,
    (33 : Fin 48) = j ∨ U 33 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 33) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_34 : ∀ j : Fin 48,
    (34 : Fin 48) = j ∨ O 34 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 34) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_34 : ∀ j : Fin 48,
    (34 : Fin 48) = j ∨ U 34 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 34) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_35 : ∀ j : Fin 48,
    (35 : Fin 48) = j ∨ O 35 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 35) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_35 : ∀ j : Fin 48,
    (35 : Fin 48) = j ∨ U 35 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 35) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_36 : ∀ j : Fin 48,
    (36 : Fin 48) = j ∨ O 36 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 36) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_36 : ∀ j : Fin 48,
    (36 : Fin 48) = j ∨ U 36 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 36) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_37 : ∀ j : Fin 48,
    (37 : Fin 48) = j ∨ O 37 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 37) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_37 : ∀ j : Fin 48,
    (37 : Fin 48) = j ∨ U 37 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 37) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_38 : ∀ j : Fin 48,
    (38 : Fin 48) = j ∨ O 38 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 38) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_38 : ∀ j : Fin 48,
    (38 : Fin 48) = j ∨ U 38 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 38) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_39 : ∀ j : Fin 48,
    (39 : Fin 48) = j ∨ O 39 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 39) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_39 : ∀ j : Fin 48,
    (39 : Fin 48) = j ∨ U 39 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 39) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_32
#print axioms unbiased_row_32
#print axioms orth_row_33
#print axioms unbiased_row_33
#print axioms orth_row_34
#print axioms unbiased_row_34
#print axioms orth_row_35
#print axioms unbiased_row_35
#print axioms orth_row_36
#print axioms unbiased_row_36
#print axioms orth_row_37
#print axioms unbiased_row_37
#print axioms orth_row_38
#print axioms unbiased_row_38
#print axioms orth_row_39
#print axioms unbiased_row_39
end FourierPilot
