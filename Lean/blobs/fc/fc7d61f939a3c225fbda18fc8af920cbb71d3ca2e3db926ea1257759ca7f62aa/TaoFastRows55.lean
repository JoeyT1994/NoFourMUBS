import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row55 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 55) (zBoxesFast j) = O 55 j := by
  decide +kernel

#print axioms fast_integer_row55

theorem fast_integer_row56 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 56) (zBoxesFast j) = O 56 j := by
  decide +kernel

#print axioms fast_integer_row56

theorem fast_integer_row57 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 57) (zBoxesFast j) = O 57 j := by
  decide +kernel

#print axioms fast_integer_row57

theorem fast_integer_row58 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 58) (zBoxesFast j) = O 58 j := by
  decide +kernel

#print axioms fast_integer_row58

theorem fast_integer_row59 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 59) (zBoxesFast j) = O 59 j := by
  decide +kernel

#print axioms fast_integer_row59

end Mub6.Numerical.GraphKernel.TaoCatalogue
