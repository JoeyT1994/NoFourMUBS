import FourierCriticalPhysical
import FourierEndpoint

set_option autoImplicit false
namespace FourierCriticalPilot20261003
open Mub6 Mub6.Classification
noncomputable section

/-- The exact algebraic representative used by the all-critical classification
is the very same matrix used by the common-ray and graph certificates. -/
theorem fixed_matrix_eq : FourierCriticalLocus20261003.fixedF6 =
    FourierExactCarrier20261003.matrix := by
  have hω : Hadamard6.standardOmega=FourierExactCarrier20261003.omega := by
    apply Complex.ext <;> norm_num [Hadamard6.standardOmega,FourierExactCarrier20261003.omega]
  rw [FourierCriticalLocus20261003.fixedF6_literal,hω]
  rfl

/-- Both continuous Fourier orientations and both transpose branches on the
actual all-critical domain enter the one fixed pilot matrix class. -/
theorem allCritical_fourier_pilot {H : CompactCover.Mat6}
    (hH : GlobalCornerDomain.AllCritical H)
    (hf : CriticalFourierRouting20261003.FourierOrTranspose H) :
    MonomialEquivalent H FourierExactCarrier20261003.matrix := by
  rw [← fixed_matrix_eq]
  exact FourierCriticalLocus20261003.allCritical_fourier_fixed hH hf

/-- Physical quartet exclusion for this entire all-critical Fourier route,
conditional only on the fixed pilot's still-explicit complete ray cover. -/
theorem allCritical_fourier_exclusion_of_cover
    (hcover : FourierEndpoint20261003.CoverObligation)
    {H : CompactCover.Mat6} (hH : GlobalCornerDomain.AllCritical H)
    (hf : CriticalFourierRouting20261003.FourierOrTranspose H) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) :=
  FourierEndpoint20261003.monomial_class_exclusion_of_cover hcover
    (allCritical_fourier_pilot hH hf)

end
#print axioms fixed_matrix_eq
#print axioms allCritical_fourier_pilot
#print axioms allCritical_fourier_exclusion_of_cover
end FourierCriticalPilot20261003
