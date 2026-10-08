import FourierPilotData
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_40 : ∀ j : Fin 48,
    (40 : Fin 48) = j ∨ O 40 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 40) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_40 : ∀ j : Fin 48,
    (40 : Fin 48) = j ∨ U 40 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 40) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_41 : ∀ j : Fin 48,
    (41 : Fin 48) = j ∨ O 41 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 41) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_41 : ∀ j : Fin 48,
    (41 : Fin 48) = j ∨ U 41 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 41) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_42 : ∀ j : Fin 48,
    (42 : Fin 48) = j ∨ O 42 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 42) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_42 : ∀ j : Fin 48,
    (42 : Fin 48) = j ∨ U 42 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 42) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_43 : ∀ j : Fin 48,
    (43 : Fin 48) = j ∨ O 43 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 43) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_43 : ∀ j : Fin 48,
    (43 : Fin 48) = j ∨ U 43 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 43) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_44 : ∀ j : Fin 48,
    (44 : Fin 48) = j ∨ O 44 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 44) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_44 : ∀ j : Fin 48,
    (44 : Fin 48) = j ∨ U 44 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 44) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_45 : ∀ j : Fin 48,
    (45 : Fin 48) = j ∨ O 45 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 45) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_45 : ∀ j : Fin 48,
    (45 : Fin 48) = j ∨ U 45 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 45) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_46 : ∀ j : Fin 48,
    (46 : Fin 48) = j ∨ O 46 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 46) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_46 : ∀ j : Fin 48,
    (46 : Fin 48) = j ∨ U 46 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 46) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_47 : ∀ j : Fin 48,
    (47 : Fin 48) = j ∨ O 47 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 47) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_47 : ∀ j : Fin 48,
    (47 : Fin 48) = j ∨ U 47 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 47) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_40
#print axioms unbiased_row_40
#print axioms orth_row_41
#print axioms unbiased_row_41
#print axioms orth_row_42
#print axioms unbiased_row_42
#print axioms orth_row_43
#print axioms unbiased_row_43
#print axioms orth_row_44
#print axioms unbiased_row_44
#print axioms orth_row_45
#print axioms unbiased_row_45
#print axioms orth_row_46
#print axioms unbiased_row_46
#print axioms orth_row_47
#print axioms unbiased_row_47
end FourierPilot
