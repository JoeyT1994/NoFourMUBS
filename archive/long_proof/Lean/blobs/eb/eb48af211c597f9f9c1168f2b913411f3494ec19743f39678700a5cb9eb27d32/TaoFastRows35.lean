import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row35 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 35) (zBoxesFast j) = O 35 j := by
  decide +kernel

#print axioms fast_integer_row35

theorem fast_integer_row36 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 36) (zBoxesFast j) = O 36 j := by
  decide +kernel

#print axioms fast_integer_row36

theorem fast_integer_row37 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 37) (zBoxesFast j) = O 37 j := by
  decide +kernel

#print axioms fast_integer_row37

theorem fast_integer_row38 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 38) (zBoxesFast j) = O 38 j := by
  decide +kernel

#print axioms fast_integer_row38

theorem fast_integer_row39 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 39) (zBoxesFast j) = O 39 j := by
  decide +kernel

#print axioms fast_integer_row39

end Mub6.Numerical.GraphKernel.TaoCatalogue
