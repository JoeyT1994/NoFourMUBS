import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row70 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 70) (zBoxes j) = O 70 j := by
  decide +kernel

#print axioms integer_row70

theorem integer_row71 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 71) (zBoxes j) = O 71 j := by
  decide +kernel

#print axioms integer_row71

theorem integer_row72 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 72) (zBoxes j) = O 72 j := by
  decide +kernel

#print axioms integer_row72

theorem integer_row73 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 73) (zBoxes j) = O 73 j := by
  decide +kernel

#print axioms integer_row73

theorem integer_row74 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 74) (zBoxes j) = O 74 j := by
  decide +kernel

#print axioms integer_row74

end Mub6.Numerical.GraphKernel.TaoCatalogue
