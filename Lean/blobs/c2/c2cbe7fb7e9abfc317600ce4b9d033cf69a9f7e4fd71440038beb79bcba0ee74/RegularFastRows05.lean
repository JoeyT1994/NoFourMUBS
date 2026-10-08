import RegularGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row5 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 5) (zBoxesFast j) = O 5 j := by
  decide +kernel

#print axioms fast_integer_row5

theorem fast_integer_row6 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 6) (zBoxesFast j) = O 6 j := by
  decide +kernel

#print axioms fast_integer_row6

theorem fast_integer_row7 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 7) (zBoxesFast j) = O 7 j := by
  decide +kernel

#print axioms fast_integer_row7

theorem fast_integer_row8 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 8) (zBoxesFast j) = O 8 j := by
  decide +kernel

#print axioms fast_integer_row8

theorem fast_integer_row9 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 9) (zBoxesFast j) = O 9 j := by
  decide +kernel

#print axioms fast_integer_row9

end Mub6.Numerical.GraphKernel.RegularCatalogue
