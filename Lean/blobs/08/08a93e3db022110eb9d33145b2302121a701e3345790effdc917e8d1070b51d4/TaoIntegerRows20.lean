import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row20 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 20) (zBoxes j) = O 20 j := by
  decide +kernel

#print axioms integer_row20

theorem integer_row21 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 21) (zBoxes j) = O 21 j := by
  decide +kernel

#print axioms integer_row21

theorem integer_row22 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 22) (zBoxes j) = O 22 j := by
  decide +kernel

#print axioms integer_row22

theorem integer_row23 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 23) (zBoxes j) = O 23 j := by
  decide +kernel

#print axioms integer_row23

theorem integer_row24 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 24) (zBoxes j) = O 24 j := by
  decide +kernel

#print axioms integer_row24

end Mub6.Numerical.GraphKernel.TaoCatalogue
