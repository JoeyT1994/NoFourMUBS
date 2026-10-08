import RegularGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row40 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 40) (zBoxesFast j) = O 40 j := by
  decide +kernel

#print axioms fast_integer_row40

theorem fast_integer_row41 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 41) (zBoxesFast j) = O 41 j := by
  decide +kernel

#print axioms fast_integer_row41

theorem fast_integer_row42 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 42) (zBoxesFast j) = O 42 j := by
  decide +kernel

#print axioms fast_integer_row42

theorem fast_integer_row43 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 43) (zBoxesFast j) = O 43 j := by
  decide +kernel

#print axioms fast_integer_row43

theorem fast_integer_row44 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 44) (zBoxesFast j) = O 44 j := by
  decide +kernel

#print axioms fast_integer_row44

end Mub6.Numerical.GraphKernel.RegularCatalogue
