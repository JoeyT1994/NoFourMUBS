import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row60 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 60) (zBoxes j) = O 60 j := by
  decide +kernel

#print axioms integer_row60

theorem integer_row61 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 61) (zBoxes j) = O 61 j := by
  decide +kernel

#print axioms integer_row61

theorem integer_row62 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 62) (zBoxes j) = O 62 j := by
  decide +kernel

#print axioms integer_row62

theorem integer_row63 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 63) (zBoxes j) = O 63 j := by
  decide +kernel

#print axioms integer_row63

theorem integer_row64 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 64) (zBoxes j) = O 64 j := by
  decide +kernel

#print axioms integer_row64

end Mub6.Numerical.GraphKernel.TaoCatalogue
