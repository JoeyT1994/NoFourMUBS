import RegularGraphIntegerFastData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_integer_row20 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 20) (zBoxesFast j) = O 20 j := by
  decide +kernel

#print axioms fast_integer_row20

theorem fast_integer_row21 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 21) (zBoxesFast j) = O 21 j := by
  decide +kernel

#print axioms fast_integer_row21

theorem fast_integer_row22 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 22) (zBoxesFast j) = O 22 j := by
  decide +kernel

#print axioms fast_integer_row22

theorem fast_integer_row23 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 23) (zBoxesFast j) = O 23 j := by
  decide +kernel

#print axioms fast_integer_row23

theorem fast_integer_row24 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast 24) (zBoxesFast j) = O 24 j := by
  decide +kernel

#print axioms fast_integer_row24

end Mub6.Numerical.GraphKernel.RegularCatalogue
