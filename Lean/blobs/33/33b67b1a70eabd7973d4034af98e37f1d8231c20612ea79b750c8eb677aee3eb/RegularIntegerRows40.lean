import RegularGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row40 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 40) (zBoxes j) = O 40 j := by
  decide +kernel

#print axioms integer_row40

theorem integer_row41 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 41) (zBoxes j) = O 41 j := by
  decide +kernel

#print axioms integer_row41

theorem integer_row42 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 42) (zBoxes j) = O 42 j := by
  decide +kernel

#print axioms integer_row42

theorem integer_row43 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 43) (zBoxes j) = O 43 j := by
  decide +kernel

#print axioms integer_row43

theorem integer_row44 : ∀ j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes 44) (zBoxes j) = O 44 j := by
  decide +kernel

#print axioms integer_row44

end Mub6.Numerical.GraphKernel.RegularCatalogue
