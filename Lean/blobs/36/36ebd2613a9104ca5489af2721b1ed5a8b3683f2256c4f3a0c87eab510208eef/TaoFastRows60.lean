import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row60 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 60) (zBoxesFast j) = O 60 j := by
  decide +kernel

#print axioms fast_integer_row60

theorem fast_integer_row61 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 61) (zBoxesFast j) = O 61 j := by
  decide +kernel

#print axioms fast_integer_row61

theorem fast_integer_row62 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 62) (zBoxesFast j) = O 62 j := by
  decide +kernel

#print axioms fast_integer_row62

theorem fast_integer_row63 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 63) (zBoxesFast j) = O 63 j := by
  decide +kernel

#print axioms fast_integer_row63

theorem fast_integer_row64 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 64) (zBoxesFast j) = O 64 j := by
  decide +kernel

#print axioms fast_integer_row64

end Mub6.Numerical.GraphKernel.TaoCatalogue
