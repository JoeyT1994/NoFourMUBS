import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row50 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 50) (zBoxes j) = O 50 j := by
  decide +kernel

#print axioms integer_row50

theorem integer_row51 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 51) (zBoxes j) = O 51 j := by
  decide +kernel

#print axioms integer_row51

theorem integer_row52 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 52) (zBoxes j) = O 52 j := by
  decide +kernel

#print axioms integer_row52

theorem integer_row53 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 53) (zBoxes j) = O 53 j := by
  decide +kernel

#print axioms integer_row53

theorem integer_row54 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 54) (zBoxes j) = O 54 j := by
  decide +kernel

#print axioms integer_row54

end Mub6.Numerical.GraphKernel.TaoCatalogue
