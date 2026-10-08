import TaoGraphData

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem kept_boxes_small : ∀ v : Fin 90, IntervalKernel.smallBoxCheck (boxes v) = true := by
  intro v
  fin_cases v <;> decide +kernel

#print axioms kept_boxes_small

end Mub6.Numerical.GraphKernel.TaoCatalogue
