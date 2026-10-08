import FourierCompleteEndpoint
import FourierCriticalPilotBinding

set_option autoImplicit false
namespace FourierAllCriticalExcluded20261003
open Mub6 Mub6.Classification
noncomputable section

/-- The original actual all-critical Fourier predicate is incompatible with
occurrence as an edge of a physical quartet. The complete fixed ray cover is
a checked theorem, not an extra hypothesis. -/
theorem allCritical_fourier_excluded {H : CompactCover.Mat6}
    (hH : GlobalCornerDomain.AllCritical H)
    (hf : CriticalFourierRouting20261003.FourierOrTranspose H) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) :=
  FourierCriticalPilot20261003.allCritical_fourier_exclusion_of_cover
    FourierCompleteEndpoint20261003.complete_cover hH hf

-- All axioms are audited in the separate importing source.

end
end FourierAllCriticalExcluded20261003
