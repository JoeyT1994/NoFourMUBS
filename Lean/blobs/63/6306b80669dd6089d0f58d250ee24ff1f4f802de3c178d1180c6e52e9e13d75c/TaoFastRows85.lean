import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row85 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 85) (zBoxesFast j) = O 85 j := by
  decide +kernel

#print axioms fast_integer_row85

theorem fast_integer_row86 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 86) (zBoxesFast j) = O 86 j := by
  decide +kernel

#print axioms fast_integer_row86

theorem fast_integer_row87 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 87) (zBoxesFast j) = O 87 j := by
  decide +kernel

#print axioms fast_integer_row87

theorem fast_integer_row88 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 88) (zBoxesFast j) = O 88 j := by
  decide +kernel

#print axioms fast_integer_row88

theorem fast_integer_row89 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 89) (zBoxesFast j) = O 89 j := by
  decide +kernel

#print axioms fast_integer_row89

end Mub6.Numerical.GraphKernel.TaoCatalogue
