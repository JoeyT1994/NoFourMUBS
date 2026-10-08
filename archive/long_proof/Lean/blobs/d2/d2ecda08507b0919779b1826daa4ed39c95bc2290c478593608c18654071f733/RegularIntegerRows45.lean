import RegularGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row45 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 45) (zBoxes j) = O 45 j := by
  decide +kernel

#print axioms integer_row45

theorem integer_row46 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 46) (zBoxes j) = O 46 j := by
  decide +kernel

#print axioms integer_row46

theorem integer_row47 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 47) (zBoxes j) = O 47 j := by
  decide +kernel

#print axioms integer_row47

end Mub6.Numerical.GraphKernel.RegularCatalogue
