import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row30 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 30) (zBoxesFast j) = O 30 j := by
  decide +kernel

#print axioms fast_integer_row30

theorem fast_integer_row31 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 31) (zBoxesFast j) = O 31 j := by
  decide +kernel

#print axioms fast_integer_row31

theorem fast_integer_row32 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 32) (zBoxesFast j) = O 32 j := by
  decide +kernel

#print axioms fast_integer_row32

theorem fast_integer_row33 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 33) (zBoxesFast j) = O 33 j := by
  decide +kernel

#print axioms fast_integer_row33

theorem fast_integer_row34 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 34) (zBoxesFast j) = O 34 j := by
  decide +kernel

#print axioms fast_integer_row34

end Mub6.Numerical.GraphKernel.TaoCatalogue
