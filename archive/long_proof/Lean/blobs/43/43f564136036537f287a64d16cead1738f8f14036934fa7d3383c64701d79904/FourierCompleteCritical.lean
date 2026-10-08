import FourierCompleteEndpoint
import FourierCriticalPilotBinding

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

namespace FourierCompleteEndpoint20261003
open Mub6 Mub6.Classification
noncomputable section

/-- The lightweight algebraic F6 representative is the checked physical pilot. -/
theorem fixedF6_excluded :
    ¬ OccursAsQuartetEdge
      (phaseScale (Real.sqrt 6)⁻¹ FourierCriticalLocus20261003.fixedF6) := by
  rw [FourierCriticalPilot20261003.fixed_matrix_eq]
  exact fixed_pilot_excluded

/-- The full all-critical Fourier route, retaining both primitive orientations,
both transpose branches and every unit monomial equivalence. No common-ray
cover, parameter restriction or exclusion remains as an additional premise. -/
theorem allCritical_fourier_excluded {H : CompactCover.Mat6}
    (hH : GlobalCornerDomain.AllCritical H)
    (hf : CriticalFourierRouting20261003.FourierOrTranspose H) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) :=
  FourierCriticalPilot20261003.allCritical_fourier_exclusion_of_cover
    complete_cover hH hf

#print axioms fixedF6_excluded
#print axioms allCritical_fourier_excluded
end
end FourierCompleteEndpoint20261003
