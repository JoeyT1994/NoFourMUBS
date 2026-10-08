import TaoGraphIntegerFastData

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 100000
set_option maxHeartbeats 0

theorem fast_boxes_match : ∀ v : Fin 90, ∀ j : Fin 5,
    zBoxesFast v j = zBoxes v j := by
  intro v j
  fin_cases v <;> fin_cases j <;> decide +kernel

#print axioms fast_boxes_match

end Mub6.Numerical.GraphKernel.TaoCatalogue
