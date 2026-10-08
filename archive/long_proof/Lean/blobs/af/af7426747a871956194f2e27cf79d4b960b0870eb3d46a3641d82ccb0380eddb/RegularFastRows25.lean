import RegularGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row25 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 25) (zBoxesFast j) = O 25 j := by
  decide +kernel

#print axioms fast_integer_row25

theorem fast_integer_row26 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 26) (zBoxesFast j) = O 26 j := by
  decide +kernel

#print axioms fast_integer_row26

theorem fast_integer_row27 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 27) (zBoxesFast j) = O 27 j := by
  decide +kernel

#print axioms fast_integer_row27

theorem fast_integer_row28 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 28) (zBoxesFast j) = O 28 j := by
  decide +kernel

#print axioms fast_integer_row28

theorem fast_integer_row29 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 29) (zBoxesFast j) = O 29 j := by
  decide +kernel

#print axioms fast_integer_row29

end Mub6.Numerical.GraphKernel.RegularCatalogue
