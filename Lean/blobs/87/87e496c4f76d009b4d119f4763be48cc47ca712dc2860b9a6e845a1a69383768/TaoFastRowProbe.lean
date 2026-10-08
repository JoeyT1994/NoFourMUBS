import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row0 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 0) (zBoxesFast j) = O 0 j := by
  decide +kernel

#print axioms fast_integer_row0

end Mub6.Numerical.GraphKernel.TaoCatalogue
