import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row30 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 30) (zBoxes j) = O 30 j := by
  decide +kernel

#print axioms integer_row30

theorem integer_row31 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 31) (zBoxes j) = O 31 j := by
  decide +kernel

#print axioms integer_row31

theorem integer_row32 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 32) (zBoxes j) = O 32 j := by
  decide +kernel

#print axioms integer_row32

theorem integer_row33 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 33) (zBoxes j) = O 33 j := by
  decide +kernel

#print axioms integer_row33

theorem integer_row34 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 34) (zBoxes j) = O 34 j := by
  decide +kernel

#print axioms integer_row34

end Mub6.Numerical.GraphKernel.TaoCatalogue
