import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row75 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 75) (zBoxes j) = O 75 j := by
  decide +kernel

#print axioms integer_row75

theorem integer_row76 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 76) (zBoxes j) = O 76 j := by
  decide +kernel

#print axioms integer_row76

theorem integer_row77 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 77) (zBoxes j) = O 77 j := by
  decide +kernel

#print axioms integer_row77

theorem integer_row78 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 78) (zBoxes j) = O 78 j := by
  decide +kernel

#print axioms integer_row78

theorem integer_row79 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 79) (zBoxes j) = O 79 j := by
  decide +kernel

#print axioms integer_row79

end Mub6.Numerical.GraphKernel.TaoCatalogue
