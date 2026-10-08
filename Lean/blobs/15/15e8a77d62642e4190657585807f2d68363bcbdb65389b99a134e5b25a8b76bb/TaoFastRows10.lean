import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row10 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 10) (zBoxesFast j) = O 10 j := by
  decide +kernel

#print axioms fast_integer_row10

theorem fast_integer_row11 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 11) (zBoxesFast j) = O 11 j := by
  decide +kernel

#print axioms fast_integer_row11

theorem fast_integer_row12 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 12) (zBoxesFast j) = O 12 j := by
  decide +kernel

#print axioms fast_integer_row12

theorem fast_integer_row13 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 13) (zBoxesFast j) = O 13 j := by
  decide +kernel

#print axioms fast_integer_row13

theorem fast_integer_row14 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 14) (zBoxesFast j) = O 14 j := by
  decide +kernel

#print axioms fast_integer_row14

end Mub6.Numerical.GraphKernel.TaoCatalogue
