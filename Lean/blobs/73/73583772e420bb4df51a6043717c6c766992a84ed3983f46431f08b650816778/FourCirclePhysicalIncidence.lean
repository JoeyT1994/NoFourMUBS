import FourCircleCarrierSubstitution

/-! Physical cover and shared incidence after rational seed substitution.
All finite branches and side/root/reciprocal lifts remain in the domain. -/
namespace Mub6.Classification.FourCircleCarrierSubstitution
open Mub6 Mub6.Numerical Mub6.Classification.CompactCover Mub6.Classification.FourPhase
open Mub6.Classification.GoodMinor Mub6.Classification.PoleAtlas FourierSeedBinding
open LiftedAtlasPolynomial SharedRationalIncidence
noncomputable section

theorem phaseHadamard_four_circle_rational_atlas {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, let K := normalizedSideCarrier H k
    NormalizedGoodSideCarrier K ∧
    ∃ signs : SeedSigns, ∃ t : SeedParameters,
    InSeedCube t ∧ seedEntry K = circleSeed signs t ∧
    ∃ tag : LiftedTag, ∃ p q : Equiv.Perm (Fin 3), ∃ maskB maskC : PoleMask,
    ∃ FB : ActivePole maskB → ℂ, ∃ FC : ActivePole maskC → ℂ,
      HybridMasks (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC ∧
      (∀ i, IsPhase (FB i)) ∧ (∀ i, IsPhase (FC i)) ∧
      K = trailingReindex p q
        (hybridCarrier (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC) ∧
      HybridGuards (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC ∧
      NormalizedGoodSideCarrier
        (hybridCarrier (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC) ∧
      RepresentsAt (circleCarrierModel signs)
        (chartPoint t (point (hybridValues (K 1 1) (K 1 2) (K 2 1) (K 2 2)
          tag maskB maskC FB FC)))
        (hybridCarrier (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC) ∧
      (∀ z, IsRawCommonRay H z → IsRawCommonRay
        (hybridCarrier (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC)
        (reducedRayTransport H k q z)) ∧
      (∀ z w, rawOverlap (reducedRayTransport H k q z) (reducedRayTransport H k q w) =
        rawOverlap z w) := by
  obtain ⟨k,hk,signs,t,ht,hs,tag,p,q,maskB,maskC,FB,FC,hm,hFB,hFC,he,hG,hF,_,hR,hO⟩ :=
    phaseHadamard_hybrid_polynomial_atlas hH
  exact ⟨k,hk,signs,t,ht,hs,tag,p,q,maskB,maskC,FB,FC,hm,hFB,hFC,he,hG,hF,
    hybrid_circleCarrierModel_represents _ _ _ _ _ _ _ _ _ signs t hs hG hF,hR,hO⟩

theorem hybrid_four_circle_third_basis_iff (a b c d : ℂ) (tag : LiftedTag)
    (maskB maskC : PoleMask) (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ)
    (s : SeedSigns) (t : SeedParameters)
    (hseed : (![a,b,c,d] : Fin 4 → ℂ) = circleSeed s t)
    (hG : HybridGuards a b c d tag maskB maskC FB FC)
    (hF : NormalizedGoodSideCarrier (hybridCarrier a b c d tag maskB maskC FB FC))
    (B : BasisMatrix) :
    Rays.RawThirdBasis (hybridCarrier a b c d tag maskB maskC FB FC) B ↔
      ∃ raySigns rayParameters, JointBasisIncidence (circleCarrierModel s)
        (chartPoint t (point (hybridValues a b c d tag maskB maskC FB FC)))
        raySigns rayParameters ∧ B = Rays.chartBasis raySigns rayParameters := by
  exact third_basis_joint_polynomial_iff (circleCarrierModel s) _ _ B
    (hybrid_circleCarrierModel_represents a b c d tag maskB maskC FB FC s t hseed hG hF)
    (ne_of_gt (circleCarrierModel_denominator_pos s _)) hF.1

#print axioms Mub6.Classification.FourCircleCarrierSubstitution.phaseHadamard_four_circle_rational_atlas
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.hybrid_four_circle_third_basis_iff

end
end Mub6.Classification.FourCircleCarrierSubstitution
