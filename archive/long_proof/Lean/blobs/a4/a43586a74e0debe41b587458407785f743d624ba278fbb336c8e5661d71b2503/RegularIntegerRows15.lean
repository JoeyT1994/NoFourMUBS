import RegularGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row15 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 15) (zBoxes j) = O 15 j := by
  decide +kernel

#print axioms integer_row15

theorem integer_row16 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 16) (zBoxes j) = O 16 j := by
  decide +kernel

#print axioms integer_row16

theorem integer_row17 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 17) (zBoxes j) = O 17 j := by
  decide +kernel

#print axioms integer_row17

theorem integer_row18 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 18) (zBoxes j) = O 18 j := by
  decide +kernel

#print axioms integer_row18

theorem integer_row19 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 19) (zBoxes j) = O 19 j := by
  decide +kernel

#print axioms integer_row19

end Mub6.Numerical.GraphKernel.RegularCatalogue
