import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row70 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 70) (zBoxesFast j) = O 70 j := by
  decide +kernel

#print axioms fast_integer_row70

theorem fast_integer_row71 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 71) (zBoxesFast j) = O 71 j := by
  decide +kernel

#print axioms fast_integer_row71

theorem fast_integer_row72 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 72) (zBoxesFast j) = O 72 j := by
  decide +kernel

#print axioms fast_integer_row72

theorem fast_integer_row73 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 73) (zBoxesFast j) = O 73 j := by
  decide +kernel

#print axioms fast_integer_row73

theorem fast_integer_row74 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 74) (zBoxesFast j) = O 74 j := by
  decide +kernel

#print axioms fast_integer_row74

end Mub6.Numerical.GraphKernel.TaoCatalogue
