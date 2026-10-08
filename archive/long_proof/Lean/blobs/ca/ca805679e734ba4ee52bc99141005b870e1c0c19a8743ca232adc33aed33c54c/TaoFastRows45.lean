import TaoGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row45 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 45) (zBoxesFast j) = O 45 j := by
  decide +kernel

#print axioms fast_integer_row45

theorem fast_integer_row46 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 46) (zBoxesFast j) = O 46 j := by
  decide +kernel

#print axioms fast_integer_row46

theorem fast_integer_row47 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 47) (zBoxesFast j) = O 47 j := by
  decide +kernel

#print axioms fast_integer_row47

theorem fast_integer_row48 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 48) (zBoxesFast j) = O 48 j := by
  decide +kernel

#print axioms fast_integer_row48

theorem fast_integer_row49 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast 49) (zBoxesFast j) = O 49 j := by
  decide +kernel

#print axioms fast_integer_row49

end Mub6.Numerical.GraphKernel.TaoCatalogue
