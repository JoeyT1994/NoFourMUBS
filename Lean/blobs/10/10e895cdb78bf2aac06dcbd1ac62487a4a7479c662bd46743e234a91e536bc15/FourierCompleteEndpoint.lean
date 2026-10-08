import FourierPilotProofBatch0364
import FourierEndpoint

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

namespace FourierCompleteEndpoint20261003
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
noncomputable section

/-- The complete thirty-two-chart replay supplies the exact uniform common-ray
cover used by the physical graph consumer, including all chart boundaries. -/
theorem complete_cover : FourierEndpoint20261003.CoverObligation :=
  FourierPilotCircleCover.complete_cover

/-- Unconditional quartet nonextension of the fixed normalized Fourier matrix.
The finite cover is proved above and is no longer a theorem argument. -/
theorem fixed_pilot_excluded :
    ¬ OccursAsQuartetEdge
      (phaseScale (Real.sqrt 6)⁻¹ FourierExactCarrier20261003.matrix) :=
  FourierEndpoint20261003.exact_exclusion_of_cover complete_cover

theorem fixed_conjugate_excluded :
    ¬ OccursAsQuartetEdge (conjugateBasis
      (phaseScale (Real.sqrt 6)⁻¹ FourierExactCarrier20261003.matrix)) :=
  FourierEndpoint20261003.conjugate_exclusion_of_cover complete_cover

/-- The whole unit monomial equivalence class of this fixed carrier. -/
theorem fixed_monomial_class_excluded {H : BasisMatrix}
    (hH : MonomialEquivalent H FourierExactCarrier20261003.matrix) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) :=
  FourierEndpoint20261003.monomial_class_exclusion_of_cover complete_cover hH

#print axioms complete_cover
#print axioms fixed_pilot_excluded
#print axioms fixed_conjugate_excluded
#print axioms fixed_monomial_class_excluded
end
end FourierCompleteEndpoint20261003
