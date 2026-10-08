import TaoGraphIntegerData
import IntegerPhysical

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem integer_row45 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 45) (zBoxes j) = O 45 j := by
  decide +kernel

#print axioms integer_row45

theorem integer_row46 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 46) (zBoxes j) = O 46 j := by
  decide +kernel

#print axioms integer_row46

theorem integer_row47 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 47) (zBoxes j) = O 47 j := by
  decide +kernel

#print axioms integer_row47

theorem integer_row48 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 48) (zBoxes j) = O 48 j := by
  decide +kernel

#print axioms integer_row48

theorem integer_row49 : ∀ j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes 49) (zBoxes j) = O 49 j := by
  decide +kernel

#print axioms integer_row49

end Mub6.Numerical.GraphKernel.TaoCatalogue
