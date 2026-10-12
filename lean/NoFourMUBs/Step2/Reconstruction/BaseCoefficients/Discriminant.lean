import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Centered
import NoFourMUBs.Step2.Reconstruction.MatchedSides

set_option autoImplicit false
set_option maxHeartbeats 1500000
open scoped ComplexConjugate
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.BaseCoefficients
open Hadamard6 StrictReconstruction20261007 StrictReconstruction20261007.SideIntrinsic

/-- The original cached quadratic holds for the actual side product. -/
theorem candidate_product_quadratic (p : StrictSeed) {B : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1)) :
    rowU (rowsOfSide B)^2 -
      cachedU (p.1 0) (p.1 1) (p.1 2) (p.1 3)*rowU (rowsOfSide B) +
      cachedV (p.1 0) (p.1 1) (p.1 2) (p.1 3) = 0 := by
  have hq := row_product_quadratic (rowsOfSide B) (rowsOfSide_unit B hB.1.1)
  dsimp only at hq
  obtain ⟨hs,ht,hr⟩ := candidate_intrinsic_correlations p.1 hB
  rw [hs,ht,hr] at hq
  rw [cachedU_seed,cachedV_seed]
  have hc := cachedC6_strict p
  rw [cachedC6_seed] at hc
  obtain ⟨hc0,hc1⟩ := mul_ne_zero_iff.mp hc
  field_simp [hc0,hc1]
  <;> linear_combination hq

/-- Centering a root of the checked quadratic gives its discriminant.
The equation holds also when the correlation gap vanishes. -/
theorem cached_discriminant_of_candidate (p : StrictSeed) {B : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1)) (w : ℂ)
    (hsig : 2*sideSignature B = (seedChi p.1 : ℂ) + w) :
    (cachedU (p.1 0) (p.1 1) (p.1 2) (p.1 3))^2 -
      4*cachedV (p.1 0) (p.1 1) (p.1 2) (p.1 3) =
      (cachedDelta (p.1 0) (p.1 1) (p.1 2) (p.1 3) /
        cachedC6 (p.1 0) (p.1 1) (p.1 2) (p.1 3))^2*w^2 := by
  have hq := candidate_product_quadratic p hB
  rw [candidate_product_centered p hB w hsig] at hq
  linear_combination -4*hq

/-- Reuse the existing signed-side constructor; no fourth-block flatness or
matched-existence theorem is assumed. -/
theorem cached_discriminant_strict (p : StrictSeed) :
    (cachedU (p.1 0) (p.1 1) (p.1 2) (p.1 3))^2 -
      4*cachedV (p.1 0) (p.1 1) (p.1 2) (p.1 3) =
      (cachedDelta (p.1 0) (p.1 1) (p.1 2) (p.1 3) /
        cachedC6 (p.1 0) (p.1 1) (p.1 2) (p.1 3))^2 * -(seedR p.1 : ℂ) := by
  obtain ⟨B,_,hB,_,hsig,_⟩ := strict_seed_signed_sides_exist p
  have hw : ((Real.sqrt (seedR p.1) : ℂ)*Complex.I)^2 = -(seedR p.1 : ℂ) := by
    rw [mul_pow,Complex.I_sq,← Complex.ofReal_pow,Real.sq_sqrt p.2.le]
    ring
  simpa only [hw] using
    cached_discriminant_of_candidate p hB ((Real.sqrt (seedR p.1) : ℂ)*Complex.I) hsig

/-- The rational calculation's centered parameter is minus the seed
invariant wherever its displayed correlation-gap divisor is nonzero. -/
theorem cached_omega_strict (p : StrictSeed)
    (hd : cachedDelta (p.1 0) (p.1 1) (p.1 2) (p.1 3) ≠ 0) :
    ((cachedU (p.1 0) (p.1 1) (p.1 2) (p.1 3))^2 -
      4*cachedV (p.1 0) (p.1 1) (p.1 2) (p.1 3)) /
      (cachedDelta (p.1 0) (p.1 1) (p.1 2) (p.1 3) /
        cachedC6 (p.1 0) (p.1 1) (p.1 2) (p.1 3))^2 = -(seedR p.1 : ℂ) := by
  rw [cached_discriminant_strict]
  exact mul_div_cancel_left₀ _ (pow_ne_zero 2 (div_ne_zero hd (cachedC6_strict p)))

end NoFourMUBs.Step2.Reconstruction.BaseCoefficients
