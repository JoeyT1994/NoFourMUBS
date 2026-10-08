import TaoGraphData

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem row0 : ∀ j : Fin 90, IntervalKernel.orthPossible (boxes 0) (boxes j) = O 0 j := by decide +kernel
theorem row1 : ∀ j : Fin 90, IntervalKernel.orthPossible (boxes 1) (boxes j) = O 1 j := by decide +kernel
theorem row2 : ∀ j : Fin 90, IntervalKernel.orthPossible (boxes 2) (boxes j) = O 2 j := by decide +kernel
theorem row3 : ∀ j : Fin 90, IntervalKernel.orthPossible (boxes 3) (boxes j) = O 3 j := by decide +kernel
theorem row4 : ∀ j : Fin 90, IntervalKernel.orthPossible (boxes 4) (boxes j) = O 4 j := by decide +kernel

#print axioms row0
#print axioms row1
#print axioms row2
#print axioms row3
#print axioms row4

end Mub6.Numerical.GraphKernel.TaoCatalogue
