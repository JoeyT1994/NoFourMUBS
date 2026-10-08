import RegularGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row0 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 0) (zBoxesFast j) = O 0 j := by
  decide +kernel

#print axioms fast_integer_row0

theorem fast_integer_row1 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 1) (zBoxesFast j) = O 1 j := by
  decide +kernel

#print axioms fast_integer_row1

theorem fast_integer_row2 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 2) (zBoxesFast j) = O 2 j := by
  decide +kernel

#print axioms fast_integer_row2

theorem fast_integer_row3 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 3) (zBoxesFast j) = O 3 j := by
  decide +kernel

#print axioms fast_integer_row3

theorem fast_integer_row4 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 4) (zBoxesFast j) = O 4 j := by
  decide +kernel

#print axioms fast_integer_row4

end Mub6.Numerical.GraphKernel.RegularCatalogue
