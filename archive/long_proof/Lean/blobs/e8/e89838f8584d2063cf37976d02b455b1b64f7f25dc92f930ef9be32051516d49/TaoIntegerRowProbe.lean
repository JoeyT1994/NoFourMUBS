import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row0 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 0) (zBoxes j) = O 0 j := by
  decide +kernel

theorem integer_row1 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 1) (zBoxes j) = O 1 j := by
  decide +kernel

#print axioms integer_row0
#print axioms integer_row1

end Mub6.Numerical.GraphKernel.TaoCatalogue
