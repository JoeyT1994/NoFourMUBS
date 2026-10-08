import RegularGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row45 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 45) (zBoxesFast j) = O 45 j := by
  decide +kernel

#print axioms fast_integer_row45

theorem fast_integer_row46 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 46) (zBoxesFast j) = O 46 j := by
  decide +kernel

#print axioms fast_integer_row46

theorem fast_integer_row47 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 47) (zBoxesFast j) = O 47 j := by
  decide +kernel

#print axioms fast_integer_row47

end Mub6.Numerical.GraphKernel.RegularCatalogue
