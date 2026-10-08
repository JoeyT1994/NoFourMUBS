import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row65 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 65) (zBoxes j) = O 65 j := by
  decide +kernel

#print axioms integer_row65

theorem integer_row66 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 66) (zBoxes j) = O 66 j := by
  decide +kernel

#print axioms integer_row66

theorem integer_row67 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 67) (zBoxes j) = O 67 j := by
  decide +kernel

#print axioms integer_row67

theorem integer_row68 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 68) (zBoxes j) = O 68 j := by
  decide +kernel

#print axioms integer_row68

theorem integer_row69 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 69) (zBoxes j) = O 69 j := by
  decide +kernel

#print axioms integer_row69

end Mub6.Numerical.GraphKernel.TaoCatalogue
