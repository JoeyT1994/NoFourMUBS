import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row55 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 55) (zBoxes j) = O 55 j := by
  decide +kernel

#print axioms integer_row55

theorem integer_row56 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 56) (zBoxes j) = O 56 j := by
  decide +kernel

#print axioms integer_row56

theorem integer_row57 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 57) (zBoxes j) = O 57 j := by
  decide +kernel

#print axioms integer_row57

theorem integer_row58 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 58) (zBoxes j) = O 58 j := by
  decide +kernel

#print axioms integer_row58

theorem integer_row59 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 59) (zBoxes j) = O 59 j := by
  decide +kernel

#print axioms integer_row59

end Mub6.Numerical.GraphKernel.TaoCatalogue
