import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Bindings
import NoFourMUBs.Step2.Reconstruction.RowProductSignature
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
set_option maxHeartbeats 1500000
open scoped ComplexConjugate
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.BaseCoefficients
open StrictReconstruction20261007 StrictReconstruction20261007.SideIntrinsic
open Matrix Hadamard6

def cachedDelta (a b c d : ℂ) : ℂ := (((((a^(2 : ℕ))*b*d : ℂ) + (((a^(2 : ℕ))*(d^(2 : ℕ)) : ℂ) + (a*(b^(2 : ℕ))*c : ℂ))) + ((((-1 : ℂ))*a*b*(c^(2 : ℕ))*d : ℂ) + ((((-1 : ℂ))*a*b*(c^(2 : ℕ)) : ℂ) + (((-1 : ℂ))*a*b*c*(d^(2 : ℕ)) : ℂ)))) + (((((-1 : ℂ))*a*b*c : ℂ) + ((((-1 : ℂ))*a*b*(d^(2 : ℕ)) : ℂ) + (((-1 : ℂ))*a*b*d : ℂ))) + ((a*c*(d^(2 : ℕ)) : ℂ) + (((b^(2 : ℕ))*(c^(2 : ℕ)) : ℂ) + (b*(c^(2 : ℕ))*d : ℂ))))) / (a*b*c*d)

theorem cachedDelta_eq (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0) :
    cachedDelta a b c d = (normData a b c d).a.c1 - (normData a b c d).a.c0 := by
  dsimp only [cachedDelta,normData,PreRhoNorm.gramData,PreRhoAlignment.gramData]
  field_simp [ha,hb,hc,hd]
  <;> ring

theorem cachedDelta_seed (p : Seed) :
    cachedDelta (p 0) (p 1) (p 2) (p 3) =
      -((Complex.normSq (seedT p) - Complex.normSq (seedRho p) : ℝ) : ℂ) := by
  rw [cachedDelta_eq _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
    (Circle.coe_ne_zero _) (Circle.coe_ne_zero _),normData_seed]
  change (actualAlignmentData (seedS p) (seedT p) (seedRho p)).c1 -
    (actualAlignmentData (seedS p) (seedT p) (seedRho p)).c0 = _
  obtain ⟨_,_,_,h0,h1,_⟩ := actualAlignmentData_scalar_bindings (seedS p) (seedT p) (seedRho p)
  rw [h0,h1]
  push_cast
  ring

theorem cachedC6_strict (p : StrictSeed) :
    cachedC6 (p.1 0) (p.1 1) (p.1 2) (p.1 3) ≠ 0 := by
  exact div_ne_zero (mul_ne_zero (by norm_num) (inputDen_strict p))
    (phaseMonomial_ne_zero _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
      (Circle.coe_ne_zero _) (Circle.coe_ne_zero _))

theorem cachedU_seed (p : StrictSeed) :
    let P0 := sideP0 (seedS p.1) (seedT p.1) (seedRho p.1)
    let P1 := sideP1 (seedS p.1) (seedT p.1) (seedRho p.1)
    let gap := Complex.normSq (seedT p.1) - Complex.normSq (seedRho p.1)
    cachedU (p.1 0) (p.1 1) (p.1 2) (p.1 3) =
      ((Complex.normSq P0 + Complex.normSq P1 -
        gramEta (seedS p.1) (seedT p.1) (seedRho p.1)*gap^2 : ℝ) : ℂ) /
        (conj P0*P1) := by
  have hp : (normData (p.1 0) (p.1 1) (p.1 2) (p.1 3)).a.p0bar *
      (normData (p.1 0) (p.1 1) (p.1 2) (p.1 3)).a.p1 ≠ 0 := by
    rw [← cachedC6_eq _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
      (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)]
    exact cachedC6_strict p
  have h := cachedU_eq _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
    (Circle.coe_ne_zero _) (Circle.coe_ne_zero _) hp
  rw [normData_seed] at h
  dsimp only at h ⊢
  obtain ⟨hn0,hn1⟩ := actualNormData_P_bindings (seedS p.1) (seedT p.1) (seedRho p.1)
  obtain ⟨ha0,ha1,_⟩ := actualAlignmentData_P_bindings (seedS p.1) (seedT p.1) (seedRho p.1)
  obtain ⟨_,he,_,hc0,hc1,_⟩ := actualAlignmentData_scalar_bindings (seedS p.1) (seedT p.1) (seedRho p.1)
  change (actualNormData (seedS p.1) (seedT p.1) (seedRho p.1)).a.p0bar = _ at ha0
  change (actualNormData (seedS p.1) (seedT p.1) (seedRho p.1)).a.p1 = _ at ha1
  change (actualNormData (seedS p.1) (seedT p.1) (seedRho p.1)).a.eta = _ at he
  change (actualNormData (seedS p.1) (seedT p.1) (seedRho p.1)).a.c0 = _ at hc0
  change (actualNormData (seedS p.1) (seedT p.1) (seedRho p.1)).a.c1 = _ at hc1
  rw [hn0,hn1,ha0,ha1,he,hc0,hc1,Complex.mul_conj,Complex.mul_conj] at h
  rw [h]
  push_cast
  ring

theorem cachedV_seed (p : StrictSeed) :
    let P0 := sideP0 (seedS p.1) (seedT p.1) (seedRho p.1)
    let P1 := sideP1 (seedS p.1) (seedT p.1) (seedRho p.1)
    cachedV (p.1 0) (p.1 1) (p.1 2) (p.1 3) = P0*conj P1 / (conj P0*P1) := by
  have hp : (normData (p.1 0) (p.1 1) (p.1 2) (p.1 3)).a.p0bar *
      (normData (p.1 0) (p.1 1) (p.1 2) (p.1 3)).a.p1 ≠ 0 := by
    rw [← cachedC6_eq _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
      (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)]
    exact cachedC6_strict p
  have h := cachedV_eq _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
    (Circle.coe_ne_zero _) (Circle.coe_ne_zero _) hp
  rw [normData_seed] at h
  dsimp only at h ⊢
  obtain ⟨hn0,hn1⟩ := actualNormData_P_bindings (seedS p.1) (seedT p.1) (seedRho p.1)
  obtain ⟨ha0,ha1,_⟩ := actualAlignmentData_P_bindings (seedS p.1) (seedT p.1) (seedRho p.1)
  change (actualNormData (seedS p.1) (seedT p.1) (seedRho p.1)).a.p0bar = _ at ha0
  change (actualNormData (seedS p.1) (seedT p.1) (seedRho p.1)).a.p1 = _ at ha1
  rw [hn0,hn1,ha0,ha1] at h
  exact h

theorem candidate_intrinsic_correlations (p : Seed) {B : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p)) :
    rowS (rowsOfSide B) = seedS p ∧ rowT (rowsOfSide B) = seedT p ∧
      rowR (rowsOfSide B) = seedRho p := by
  obtain ⟨_,_,_,_,hs,ht,hr⟩ := arbitrary_side_intrinsic_interface B hB.1.1 hB.1.2.1
  have hg : B*Bᴴ = sixI3 - seedCorner p*(seedCorner p)ᴴ := by
    rw [← hB.1.2.2]
    abel
  rw [hg] at hs ht hr
  simp only [Matrix.sub_apply,sixI3,Matrix.smul_apply,Matrix.one_apply,
    Fin.reduceEq,if_false,smul_eq_mul,mul_zero,zero_sub] at hs ht hr
  obtain ⟨hs0,ht0,hr0⟩ := seed_correlations p
  rw [StrictReconstruction20261007.seedS_eq_negative_rowGram] at hs0
  rw [StrictReconstruction20261007.seedR_eq_negative_rowGram] at hr0
  exact ⟨hs.trans hs0,ht.trans ht0,hr.trans hr0⟩

/-- The original centered product is the actual product selected by the
signed candidate. No nonzero correlation-gap assumption is used. -/
theorem candidate_product_centered (p : StrictSeed) {B : Mat3}
    (hB : B ∈ invertibleHorizontalCandidates (seedCorner p.1)) (w : ℂ)
    (hsig : 2*sideSignature B = (seedChi p.1 : ℂ) + w) :
    rowU (rowsOfSide B) =
      (cachedU (p.1 0) (p.1 1) (p.1 2) (p.1 3) +
        cachedDelta (p.1 0) (p.1 1) (p.1 2) (p.1 3) /
          cachedC6 (p.1 0) (p.1 1) (p.1 2) (p.1 3)*w)/2 := by
  obtain ⟨hs,ht,hr⟩ := candidate_intrinsic_correlations p.1 hB
  have hsig' : 2*sideSignature B =
      (gramChi (rowS (rowsOfSide B)) (rowT (rowsOfSide B))
        (rowR (rowsOfSide B)) : ℂ) + w := by
    rw [hs,ht,hr]
    exact hsig
  have hp := side_product_of_signature hB.1.1 hB.1.2.1 w hsig'
  dsimp only at hp
  rw [hs,ht,hr] at hp
  rw [cachedU_seed,cachedDelta_seed,cachedC6_seed]
  have hc := cachedC6_strict p
  rw [cachedC6_seed] at hc
  rw [div_mul_eq_mul_div,← add_div,div_div]
  apply (eq_div_iff (mul_ne_zero hc (by norm_num))).2
  linear_combination hp

end NoFourMUBs.Step2.Reconstruction.BaseCoefficients
