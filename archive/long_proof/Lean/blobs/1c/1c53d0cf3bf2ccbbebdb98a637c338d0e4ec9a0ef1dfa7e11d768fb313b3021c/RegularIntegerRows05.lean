import RegularGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row5 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 5) (zBoxes j) = O 5 j := by
  decide +kernel

#print axioms integer_row5

theorem integer_row6 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 6) (zBoxes j) = O 6 j := by
  decide +kernel

#print axioms integer_row6

theorem integer_row7 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 7) (zBoxes j) = O 7 j := by
  decide +kernel

#print axioms integer_row7

theorem integer_row8 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 8) (zBoxes j) = O 8 j := by
  decide +kernel

#print axioms integer_row8

theorem integer_row9 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 9) (zBoxes j) = O 9 j := by
  decide +kernel

#print axioms integer_row9

end Mub6.Numerical.GraphKernel.RegularCatalogue
