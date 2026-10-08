import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row15 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 15) (zBoxesFast j) = O 15 j := by
  decide +kernel

#print axioms fast_integer_row15

theorem fast_integer_row16 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 16) (zBoxesFast j) = O 16 j := by
  decide +kernel

#print axioms fast_integer_row16

theorem fast_integer_row17 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 17) (zBoxesFast j) = O 17 j := by
  decide +kernel

#print axioms fast_integer_row17

theorem fast_integer_row18 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 18) (zBoxesFast j) = O 18 j := by
  decide +kernel

#print axioms fast_integer_row18

theorem fast_integer_row19 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 19) (zBoxesFast j) = O 19 j := by
  decide +kernel

#print axioms fast_integer_row19

end Mub6.Numerical.GraphKernel.TaoCatalogue
