import TaoGraphData

namespace Mub6.Numerical.GraphKernel.TaoCatalogue
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem orth_computed_row0 : ∀ j : Fin 90,
    IntervalKernel.orthPossible (boxes 0) (boxes j) = O 0 j := by
  decide

#print axioms orth_computed_row0
end Mub6.Numerical.GraphKernel.TaoCatalogue
