import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row2 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 2) (zBoxes j) = O 2 j := by
  decide

#print axioms integer_row2

end Mub6.Numerical.GraphKernel.TaoCatalogue
