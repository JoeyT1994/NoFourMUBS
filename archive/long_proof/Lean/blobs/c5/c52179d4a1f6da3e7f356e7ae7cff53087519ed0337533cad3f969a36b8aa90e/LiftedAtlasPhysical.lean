import LiftedAtlasPolynomial

/-! Physical atlas binding for the explicit rational polynomial carrier.
The lift uses actual lambda phases and the existing finite sheet/root choices.
No lambda denominator is inverted here. -/
namespace Mub6.Classification.LiftedAtlasPolynomial
open Mub6 Mub6.Numerical Mub6.Classification.CompactCover Mub6.Classification.FourPhase
open Mub6.Classification.GoodMinor
open Mub6.Classification.PoleAtlas FourierSeedBinding
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseFourierBridge
open Hadamard6Extensions.FourPhaseGram
open SharedRationalIncidence Matrix
noncomputable section

def atlasValues (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag) : Fin 20 → ℂ :=
  let sB := rowS a b
  let tB := rowT c d
  let rB := rowR a b c d
  let zB := zeta sB tB rB tag.1.1
  let dB := deltaFromLambda sB tB zB LB tag.1.2
  let tauB := tauFromLambda sB tB rB zB LB tag.1.2
  let sC := rowS a c
  let tC := rowT b d
  let rC := rowR a c b d
  let zC := zeta sC tC rC tag.2.1
  let dC := deltaFromLambda sC tC zC LC tag.2.2
  let tauC := tauFromLambda sC tC rC zC LC tag.2.2
  ![a,b,c,d, lambdaU LB,lambdaV LB,lambdaW zB LB,dB,tauB,tauB⁻¹,
    (sidePivot sB tB (lambdaW zB LB) dB)⁻¹,
    lambdaU LC,lambdaV LC,lambdaW zC LC,dC,tauC,tauC⁻¹,
    (sidePivot sC tC (lambdaW zC LC) dC)⁻¹,
    Hadamard6Extensions.FourPhaseRoots.omega,
    (CompactCover.gram (seed a b c d)).det⁻¹]

theorem horizontal_atlas_binding (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (hG : LiftedCarrierGuards a b c d LB LC tag) :
    eval3 (point (atlasValues a b c d LB LC tag)) horizontalPoly =
      liftedSide (rowS a b) (rowT c d) (rowR a b c d) LB tag.1 := by
  let P := point (atlasValues a b c d LB LC tag)
  have h := sidePoly_binding P (rowSPoly (z 0) (z 1)) (rowSPoly (z 2) (z 3))
    (z 4) (z 5) (z 6) (z 7) (z 8) (z 9) (z 10) (z 18)
  have hdata := hG.1.2.2.1
  have ht : CPoly.value P (z 8) * CPoly.value P (z 9) = 1 := by
    simpa [P, atlasValues] using mul_inv_cancel₀ hdata.tau_ne_zero
  have hp : sidePivot (CPoly.value P (rowSPoly (z 0) (z 1)))
      (CPoly.value P (rowSPoly (z 2) (z 3))) (CPoly.value P (z 6))
      (CPoly.value P (z 7)) * CPoly.value P (z 10) = 1 := by
    simpa [P, atlasValues, rowS, rowT] using mul_inv_cancel₀ hdata.pivot_ne_zero
  simpa [P, horizontalPoly, atlasValues, liftedSide, explicitSideFromLambda, rowS, rowT]
    using h ht hp (rowR a b c d)

theorem vertical_atlas_binding (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (hG : LiftedCarrierGuards a b c d LB LC tag) :
    eval3 (point (atlasValues a b c d LB LC tag)) verticalPoly =
      liftedSide (rowS a c) (rowT b d) (rowR a c b d) LC tag.2 := by
  let P := point (atlasValues a b c d LB LC tag)
  have h := sidePoly_binding P (rowSPoly (z 0) (z 2)) (rowSPoly (z 1) (z 3))
    (z 11) (z 12) (z 13) (z 14) (z 15) (z 16) (z 17) (z 18)
  have hdata := hG.2.2.2.1
  have ht : CPoly.value P (z 15) * CPoly.value P (z 16) = 1 := by
    simpa [P, atlasValues] using mul_inv_cancel₀ hdata.tau_ne_zero
  have hp : sidePivot (CPoly.value P (rowSPoly (z 0) (z 2)))
      (CPoly.value P (rowSPoly (z 1) (z 3))) (CPoly.value P (z 13))
      (CPoly.value P (z 14)) * CPoly.value P (z 17) = 1 := by
    simpa [P, atlasValues, rowS, rowT] using mul_inv_cancel₀ hdata.pivot_ne_zero
  simpa [P, verticalPoly, atlasValues, liftedSide, explicitSideFromLambda, rowS, rowT]
    using h ht hp (rowR a c b d)

theorem lifted_seed_gram_ne_zero (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (hF : NormalizedGoodSideCarrier (liftedCarrier a b c d LB LC tag)) :
    (CompactCover.gram (seed a b c d)).det ≠ 0 := by
  have h := normalized_gram_ne_zero hF
  have he : northwest (liftedCarrier a b c d LB LC tag) = seed a b c d := by
    unfold liftedCarrier reconstructedCarrier
    exact (blockCarrier_blocks _ _ _ _).1
  rwa [he] at h

/-- All 36 entries of the inherited lifted carrier are represented by one
explicit rational polynomial model and the same lifted parameter value. -/
theorem liftedCarrier_polynomial_represents (a b c d : ℂ) (LB LC : Fin 3 → ℂ)
    (tag : LiftedTag) (hG : LiftedCarrierGuards a b c d LB LC tag)
    (hF : NormalizedGoodSideCarrier (liftedCarrier a b c d LB LC tag)) :
    RepresentsAt carrierModel (point (atlasValues a b c d LB LC tag))
      (liftedCarrier a b c d LB LC tag) := by
  apply carrierModel_represents
  have hg := lifted_seed_gram_ne_zero a b c d LB LC tag hF
  have he := carrierPoly_binding (atlasValues a b c d LB LC tag)
    (by simpa [atlasValues] using mul_inv_cancel₀ hg)
  rw [horizontal_atlas_binding a b c d LB LC tag hG,
    vertical_atlas_binding a b c d LB LC tag hG] at he
  simpa [atlasValues, liftedCarrier] using he

def hybridValues (a b c d : ℂ) (tag : LiftedTag) (maskB maskC : PoleMask)
    (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ) : Fin 20 → ℂ :=
  atlasValues a b c d
    (maskedLambda (rowS a b) (rowT c d) (rowR a b c d)
      (zeta (rowS a b) (rowT c d) (rowR a b c d) tag.1.1) maskB FB)
    (maskedLambda (rowS a c) (rowT b d) (rowR a c b d)
      (zeta (rowS a c) (rowT b d) (rowR a c b d) tag.2.1) maskC FC) tag

theorem hybridCarrier_polynomial_represents (a b c d : ℂ) (tag : LiftedTag)
    (maskB maskC : PoleMask) (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ)
    (hG : HybridGuards a b c d tag maskB maskC FB FC)
    (hF : NormalizedGoodSideCarrier (hybridCarrier a b c d tag maskB maskC FB FC)) :
    RepresentsAt carrierModel (point (hybridValues a b c d tag maskB maskC FB FC))
      (hybridCarrier a b c d tag maskB maskC FB FC) :=
  liftedCarrier_polynomial_represents _ _ _ _ _ _ _ hG hF

/-- This is a necessary physical lift, with the inherited exact masks and
finite choices retained. It does not assert sufficiency of arbitrary points. -/
theorem normalized_hybrid_polynomial_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ∃ tag : LiftedTag, ∃ p q : Equiv.Perm (Fin 3), ∃ maskB maskC : PoleMask,
    ∃ FB : ActivePole maskB → ℂ, ∃ FC : ActivePole maskC → ℂ,
      HybridMasks (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag maskB maskC ∧
      (∀ i, IsPhase (FB i)) ∧ (∀ i, IsPhase (FC i)) ∧
      H = trailingReindex p q
        (hybridCarrier (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag maskB maskC FB FC) ∧
      HybridGuards (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag maskB maskC FB FC ∧
      NormalizedGoodSideCarrier
        (hybridCarrier (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag maskB maskC FB FC) ∧
      RepresentsAt carrierModel
        (point (hybridValues (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag maskB maskC FB FC))
        (hybridCarrier (H 1 1) (H 1 2) (H 2 1) (H 2 2) tag maskB maskC FB FC) := by
  obtain ⟨tag,p,q,maskB,maskC,FB,FC,hm,hFB,hFC,he,hG,hF⟩ := normalized_hybrid_cover hH
  exact ⟨tag,p,q,maskB,maskC,FB,FC,hm,hFB,hFC,he,hG,hF,
    hybridCarrier_polynomial_represents _ _ _ _ _ _ _ _ _ hG hF⟩

/-- The full retained physical domain reaches the same polynomial carrier for
every ray, with its original overlap-preserving transport. -/
theorem phaseHadamard_hybrid_polynomial_atlas {H : Mat6} (hH : PhaseHadamard H) :
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
      RepresentsAt carrierModel
        (point (hybridValues (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC))
        (hybridCarrier (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC) ∧
      (∀ z, IsRawCommonRay H z → IsRawCommonRay
        (hybridCarrier (K 1 1) (K 1 2) (K 2 1) (K 2 2) tag maskB maskC FB FC)
        (reducedRayTransport H k q z)) ∧
      (∀ z w, rawOverlap (reducedRayTransport H k q z) (reducedRayTransport H k q w) =
        rawOverlap z w) := by
  obtain ⟨k,hk,tag,p,q,maskB,maskC,FB,FC,hm,hFB,hFC,he,hG,hF,hR,hO⟩ :=
    phaseHadamard_hybrid_atlas hH
  obtain ⟨signs,t,ht,hs⟩ := seed_four_circle_cover hk.1
  exact ⟨k,hk,signs,t,ht,hs,tag,p,q,maskB,maskC,FB,FC,hm,hFB,hFC,he,hG,hF,
    hybridCarrier_polynomial_represents _ _ _ _ _ _ _ _ _ hG hF,hR,hO⟩

theorem hybrid_third_basis_polynomial_iff (a b c d : ℂ) (tag : LiftedTag)
    (maskB maskC : PoleMask) (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ)
    (hG : HybridGuards a b c d tag maskB maskC FB FC)
    (hF : NormalizedGoodSideCarrier (hybridCarrier a b c d tag maskB maskC FB FC))
    (B : BasisMatrix) :
    Rays.RawThirdBasis (hybridCarrier a b c d tag maskB maskC FB FC) B ↔
      ∃ s t, JointBasisIncidence carrierModel
        (point (hybridValues a b c d tag maskB maskC FB FC)) s t ∧
        B = Rays.chartBasis s t := by
  exact third_basis_joint_polynomial_iff carrierModel _ _ B
    (hybridCarrier_polynomial_represents a b c d tag maskB maskC FB FC hG hF)
    (by rw [carrierModel_denominator]; norm_num) hF.1

#print axioms Mub6.Classification.LiftedAtlasPolynomial.horizontal_atlas_binding
#print axioms Mub6.Classification.LiftedAtlasPolynomial.vertical_atlas_binding
#print axioms Mub6.Classification.LiftedAtlasPolynomial.lifted_seed_gram_ne_zero
#print axioms Mub6.Classification.LiftedAtlasPolynomial.liftedCarrier_polynomial_represents
#print axioms Mub6.Classification.LiftedAtlasPolynomial.hybridCarrier_polynomial_represents
#print axioms Mub6.Classification.LiftedAtlasPolynomial.normalized_hybrid_polynomial_cover
#print axioms Mub6.Classification.LiftedAtlasPolynomial.phaseHadamard_hybrid_polynomial_atlas
#print axioms Mub6.Classification.LiftedAtlasPolynomial.hybrid_third_basis_polynomial_iff

end
end Mub6.Classification.LiftedAtlasPolynomial
