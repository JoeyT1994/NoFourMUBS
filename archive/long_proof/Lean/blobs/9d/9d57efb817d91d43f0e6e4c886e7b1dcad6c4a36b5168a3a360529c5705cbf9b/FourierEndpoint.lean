import FourierPilotPhysical
import FourierExactCarrier
import FourierPilotProofBatch0000

set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace FourierEndpoint20261003
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
noncomputable section

/-- The two independent exporters use the same exact rational carrier. -/
theorem carrier_match : FourierPilot.carrier = FourierPilotCircleData.physicalCarrier := by
  funext i j
  fin_cases i <;> fin_cases j <;> decide +kernel

/-- Circle coverage and the finite graph use exactly the same 48 ray boxes. -/
theorem boxes_match : FourierPilot.boxes = FourierPilotCircleData.boxes := by
  funext i j
  fin_cases i <;> fin_cases j <;> decide +kernel

def CoverObligation : Prop :=
  CompleteUniformRayCover FourierPilotCircleData.physicalCarrier FourierPilotCircleData.boxes

def normalized : BasisMatrix :=
  phaseScale (Real.sqrt 6)⁻¹ FourierExactCarrier20261003.matrix

/-- The only unfinished premise is the complete common-ray cover, whose
finite replay is running. It cannot be replaced by the 48 numerical hints. -/
theorem exact_exclusion_of_cover (hcover : CoverObligation) :
    ¬ OccursAsQuartetEdge normalized := by
  have hc : CompleteUniformRayCover FourierPilot.carrier FourierPilot.boxes := by
    rw [carrier_match,boxes_match]
    exact hcover
  exact FourierPilot.exclude_occurs_of_cover hc
    FourierExactCarrier20261003.first_row FourierExactCarrier20261003.enclosed

theorem conjugate_exclusion_of_cover (hcover : CoverObligation) :
    ¬ OccursAsQuartetEdge (conjugateBasis normalized) := by
  intro h
  have hc := occursAsQuartetEdge_conjugate h
  rw [conjugateBasis_involutive] at hc
  exact exact_exclusion_of_cover hcover hc

/-- The full monomial class of this one Fourier matrix, in phase convention.
This theorem does not exclude the two-parameter Fourier family. -/
theorem monomial_class_exclusion_of_cover (hcover : CoverObligation)
    {H : BasisMatrix} (hH : MonomialEquivalent H FourierExactCarrier20261003.matrix) :
    ¬ OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ H) := by
  have hn : MonomialEquivalent (phaseScale (Real.sqrt 6)⁻¹ H) normalized := by
    obtain ⟨p,q,r,c,hr,hc,he⟩ := hH
    refine ⟨p,q,r,c,hr,hc,?_⟩
    unfold normalized
    rw [he,phaseScale_monomial]
  exact quartet_exclusion_of_monomialEquivalent hn (exact_exclusion_of_cover hcover)

end
#print axioms carrier_match
#print axioms boxes_match
#print axioms exact_exclusion_of_cover
#print axioms conjugate_exclusion_of_cover
#print axioms monomial_class_exclusion_of_cover
end FourierEndpoint20261003
