import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row75 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 75) (zBoxesFast j) = O 75 j := by
  decide +kernel

#print axioms fast_integer_row75

theorem fast_integer_row76 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 76) (zBoxesFast j) = O 76 j := by
  decide +kernel

#print axioms fast_integer_row76

theorem fast_integer_row77 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 77) (zBoxesFast j) = O 77 j := by
  decide +kernel

#print axioms fast_integer_row77

theorem fast_integer_row78 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 78) (zBoxesFast j) = O 78 j := by
  decide +kernel

#print axioms fast_integer_row78

theorem fast_integer_row79 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 79) (zBoxesFast j) = O 79 j := by
  decide +kernel

#print axioms fast_integer_row79

end Mub6.Numerical.GraphKernel.TaoCatalogue
