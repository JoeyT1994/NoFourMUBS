import TaoGraphData

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem rectangle_0_small : squaredDiameter (rectangles.getD 0 ⟨0,0,0,0⟩) ≤ 1 := by
  norm_num [squaredDiameter, rectangles]

theorem box_0_small : IntervalKernel.smallBoxCheck (boxes 0) = true := by
  decide +kernel

#print axioms rectangle_0_small
#print axioms box_0_small

end Mub6.Numerical.GraphKernel.TaoCatalogue
