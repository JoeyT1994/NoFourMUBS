import CircleArcTables
import D0CircleData

set_option autoImplicit false

namespace Mub6.Numerical.CircleArc.D0Checks
open IntegerIntervals CircleCharts CircleCharts.Partition CirclePrototype.D0
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem all_images_checked : ∀ h : Fin heapBound,
    checkImageOption T R (parameters h) (images h) = true := by
  decide +kernel

theorem all_terms_0_checked : ∀ h : Fin heapBound,
    checkTermOption T R (parameters h) (midpointRe 0) (midpointIm 0)
      (coefficients 0) (images h) (centres 0 h) (termBoxes 0 h) = true := by
  decide +kernel

theorem all_terms_1_checked : ∀ h : Fin heapBound,
    checkTermOption T R (parameters h) (midpointRe 1) (midpointIm 1)
      (coefficients 1) (images h) (centres 1 h) (termBoxes 1 h) = true := by
  decide +kernel

theorem all_terms_2_checked : ∀ h : Fin heapBound,
    checkTermOption T R (parameters h) (midpointRe 2) (midpointIm 2)
      (coefficients 2) (images h) (centres 2 h) (termBoxes 2 h) = true := by
  decide +kernel

theorem all_terms_3_checked : ∀ h : Fin heapBound,
    checkTermOption T R (parameters h) (midpointRe 3) (midpointIm 3)
      (coefficients 3) (images h) (centres 3 h) (termBoxes 3 h) = true := by
  decide +kernel

theorem all_coefficients_bound : ∀ r k : Fin 6,
    coefficients (coefficientIndex r k) = some (boxConj (carrier r k)) := by
  decide +kernel

#print axioms all_images_checked
#print axioms all_terms_0_checked
#print axioms all_terms_1_checked
#print axioms all_terms_2_checked
#print axioms all_terms_3_checked
#print axioms all_coefficients_bound
end Mub6.Numerical.CircleArc.D0Checks
