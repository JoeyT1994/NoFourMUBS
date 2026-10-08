import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row80 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 80) (zBoxes j) = O 80 j := by
  decide +kernel

#print axioms integer_row80

theorem integer_row81 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 81) (zBoxes j) = O 81 j := by
  decide +kernel

#print axioms integer_row81

theorem integer_row82 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 82) (zBoxes j) = O 82 j := by
  decide +kernel

#print axioms integer_row82

theorem integer_row83 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 83) (zBoxes j) = O 83 j := by
  decide +kernel

#print axioms integer_row83

theorem integer_row84 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 84) (zBoxes j) = O 84 j := by
  decide +kernel

#print axioms integer_row84

end Mub6.Numerical.GraphKernel.TaoCatalogue
