import RegularGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row10 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 10) (zBoxes j) = O 10 j := by
  decide +kernel

#print axioms integer_row10

theorem integer_row11 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 11) (zBoxes j) = O 11 j := by
  decide +kernel

#print axioms integer_row11

theorem integer_row12 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 12) (zBoxes j) = O 12 j := by
  decide +kernel

#print axioms integer_row12

theorem integer_row13 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 13) (zBoxes j) = O 13 j := by
  decide +kernel

#print axioms integer_row13

theorem integer_row14 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 14) (zBoxes j) = O 14 j := by
  decide +kernel

#print axioms integer_row14

end Mub6.Numerical.GraphKernel.RegularCatalogue
