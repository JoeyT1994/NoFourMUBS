import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row35 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 35) (zBoxes j) = O 35 j := by
  decide +kernel

#print axioms integer_row35

theorem integer_row36 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 36) (zBoxes j) = O 36 j := by
  decide +kernel

#print axioms integer_row36

theorem integer_row37 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 37) (zBoxes j) = O 37 j := by
  decide +kernel

#print axioms integer_row37

theorem integer_row38 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 38) (zBoxes j) = O 38 j := by
  decide +kernel

#print axioms integer_row38

theorem integer_row39 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 39) (zBoxes j) = O 39 j := by
  decide +kernel

#print axioms integer_row39

end Mub6.Numerical.GraphKernel.TaoCatalogue
