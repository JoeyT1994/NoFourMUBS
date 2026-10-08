import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row0 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 0) (zBoxes j) = O 0 j := by
  decide +kernel

#print axioms integer_row0

theorem integer_row1 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 1) (zBoxes j) = O 1 j := by
  decide +kernel

#print axioms integer_row1

theorem integer_row2 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 2) (zBoxes j) = O 2 j := by
  decide +kernel

#print axioms integer_row2

theorem integer_row3 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 3) (zBoxes j) = O 3 j := by
  decide +kernel

#print axioms integer_row3

theorem integer_row4 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 4) (zBoxes j) = O 4 j := by
  decide +kernel

#print axioms integer_row4

end Mub6.Numerical.GraphKernel.TaoCatalogue
