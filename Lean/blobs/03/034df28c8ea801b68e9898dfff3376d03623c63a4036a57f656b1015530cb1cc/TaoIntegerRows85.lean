import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row85 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 85) (zBoxes j) = O 85 j := by
  decide +kernel

#print axioms integer_row85

theorem integer_row86 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 86) (zBoxes j) = O 86 j := by
  decide +kernel

#print axioms integer_row86

theorem integer_row87 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 87) (zBoxes j) = O 87 j := by
  decide +kernel

#print axioms integer_row87

theorem integer_row88 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 88) (zBoxes j) = O 88 j := by
  decide +kernel

#print axioms integer_row88

theorem integer_row89 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 89) (zBoxes j) = O 89 j := by
  decide +kernel

#print axioms integer_row89

end Mub6.Numerical.GraphKernel.TaoCatalogue
