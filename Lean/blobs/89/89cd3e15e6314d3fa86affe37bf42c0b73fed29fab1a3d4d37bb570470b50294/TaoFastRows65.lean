import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row65 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 65) (zBoxesFast j) = O 65 j := by
  decide +kernel

#print axioms fast_integer_row65

theorem fast_integer_row66 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 66) (zBoxesFast j) = O 66 j := by
  decide +kernel

#print axioms fast_integer_row66

theorem fast_integer_row67 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 67) (zBoxesFast j) = O 67 j := by
  decide +kernel

#print axioms fast_integer_row67

theorem fast_integer_row68 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 68) (zBoxesFast j) = O 68 j := by
  decide +kernel

#print axioms fast_integer_row68

theorem fast_integer_row69 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 69) (zBoxesFast j) = O 69 j := by
  decide +kernel

#print axioms fast_integer_row69

end Mub6.Numerical.GraphKernel.TaoCatalogue
