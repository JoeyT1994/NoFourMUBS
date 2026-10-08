import RegularGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row25 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 25) (zBoxes j) = O 25 j := by
  decide +kernel

#print axioms integer_row25

theorem integer_row26 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 26) (zBoxes j) = O 26 j := by
  decide +kernel

#print axioms integer_row26

theorem integer_row27 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 27) (zBoxes j) = O 27 j := by
  decide +kernel

#print axioms integer_row27

theorem integer_row28 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 28) (zBoxes j) = O 28 j := by
  decide +kernel

#print axioms integer_row28

theorem integer_row29 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 29) (zBoxes j) = O 29 j := by
  decide +kernel

#print axioms integer_row29

end Mub6.Numerical.GraphKernel.RegularCatalogue
