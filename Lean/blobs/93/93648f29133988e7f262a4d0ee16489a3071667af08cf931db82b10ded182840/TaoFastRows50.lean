import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row50 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 50) (zBoxesFast j) = O 50 j := by
  decide +kernel

#print axioms fast_integer_row50

theorem fast_integer_row51 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 51) (zBoxesFast j) = O 51 j := by
  decide +kernel

#print axioms fast_integer_row51

theorem fast_integer_row52 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 52) (zBoxesFast j) = O 52 j := by
  decide +kernel

#print axioms fast_integer_row52

theorem fast_integer_row53 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 53) (zBoxesFast j) = O 53 j := by
  decide +kernel

#print axioms fast_integer_row53

theorem fast_integer_row54 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 54) (zBoxesFast j) = O 54 j := by
  decide +kernel

#print axioms fast_integer_row54

end Mub6.Numerical.GraphKernel.TaoCatalogue
