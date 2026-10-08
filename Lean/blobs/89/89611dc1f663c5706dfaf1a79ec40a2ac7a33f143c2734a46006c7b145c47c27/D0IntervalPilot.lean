import D0GraphData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Mub6.Numerical.GraphKernel.D0Prototype

theorem small_box_zero :
    IntervalKernel.smallBoxCheck (boxes 0) = true := by
  decide +kernel

theorem orth_row_zero : ∀ j : Fin 120,
    IntegerIntervals.orthPossible 16 (zBoxes 0) (zBoxes j) = O 0 j := by
  decide +kernel

theorem unbiased_row_zero : ∀ j : Fin 120,
    IntegerIntervals.unbiasedPossible 16 (zBoxes 0) (zBoxes j) = U 0 j := by
  decide +kernel

#print axioms small_box_zero
#print axioms orth_row_zero
#print axioms unbiased_row_zero

end Mub6.Numerical.GraphKernel.D0Prototype
