import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Checked
import NoFourMUBs.Step2.Reconstruction.SeedModel
import NoFourMUBs.Reuse.Archive.PreRhoNormBindings
import NoFourMUBs.Step1.Lift
import Mathlib.Tactic.LinearCombination

set_option autoImplicit false
set_option maxHeartbeats 1000000
open scoped ComplexConjugate
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.BaseCoefficients
open StrictReconstruction20261007

theorem phaseMonomial_ne_zero (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0) :
    phaseMonomial a b c d ≠ 0 := by
  exact mul_ne_zero (mul_ne_zero (mul_ne_zero (pow_ne_zero 4 ha)
    (pow_ne_zero 4 hb)) (pow_ne_zero 3 hc)) (pow_ne_zero 3 hd)

theorem normData_seed (p : Seed) :
    normData (p 0) (p 1) (p 2) (p 3) =
      actualNormData (seedS p) (seedT p) (seedRho p) := by
  simp [normData,actualNormData,seedS,seedT,seedRho,Complex.star_def,
    NoFourMUBs.Step1Geo.conj_circle,div_eq_mul_inv,mul_comm]

theorem cachedC6_eq (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0) :
    let q := normData a b c d
    cachedC6 a b c d = q.a.p0bar*q.a.p1 := by
  dsimp only
  rw [cachedC6,clearedC6 a b c d ha hb hc hd]
  simpa only [mul_assoc] using
    mul_div_cancel_left₀ ((normData a b c d).a.p0bar * (normData a b c d).a.p1)
      (phaseMonomial_ne_zero a b c d ha hb hc hd)

theorem inputDen_ne_zero (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0)
    (hp : (normData a b c d).a.p0bar*(normData a b c d).a.p1 ≠ 0) :
    inputDen a b c d ≠ 0 := by
  intro hz
  have h := clearedC6 a b c d ha hb hc hd
  dsimp only at h
  rw [hz,mul_zero] at h
  exact (mul_ne_zero (phaseMonomial_ne_zero a b c d ha hb hc hd) hp)
    (by simpa only [mul_assoc] using h.symm)

theorem cachedU_eq (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0)
    (hp : (normData a b c d).a.p0bar*(normData a b c d).a.p1 ≠ 0) :
    let q := normData a b c d
    cachedU a b c d =
      (q.p0*q.a.p0bar+q.a.p1*q.p1bar-q.a.eta*(q.a.c0-q.a.c1)^2) /
        (q.a.p0bar*q.a.p1) := by
  dsimp only
  unfold cachedU
  apply (div_eq_div_iff (inputDen_ne_zero a b c d ha hb hc hd hp) hp).2
  have hu := clearedU a b c d ha hb hc hd
  have hden := clearedC6 a b c d ha hb hc hd
  dsimp only at hu hden
  linear_combination ((normData a b c d).a.p0bar*(normData a b c d).a.p1/4)*hu -
    (((normData a b c d).p0*(normData a b c d).a.p0bar +
      (normData a b c d).a.p1*(normData a b c d).p1bar -
      (normData a b c d).a.eta*((normData a b c d).a.c0-(normData a b c d).a.c1)^2)/4)*hden

theorem cachedV_eq (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0)
    (hp : (normData a b c d).a.p0bar*(normData a b c d).a.p1 ≠ 0) :
    let q := normData a b c d
    cachedV a b c d = q.p0*q.p1bar/(q.a.p0bar*q.a.p1) := by
  dsimp only
  unfold cachedV
  apply (div_eq_div_iff (inputDen_ne_zero a b c d ha hb hc hd hp) hp).2
  have hv := clearedV a b c d ha hb hc hd
  have hden := clearedC6 a b c d ha hb hc hd
  dsimp only at hv hden
  linear_combination ((normData a b c d).a.p0bar*(normData a b c d).a.p1/4)*hv -
    ((normData a b c d).p0*(normData a b c d).p1bar/4)*hden

theorem cachedC6_seed (p : Seed) :
    cachedC6 (p 0) (p 1) (p 2) (p 3) =
      conj (sideP0 (seedS p) (seedT p) (seedRho p)) *
        sideP1 (seedS p) (seedT p) (seedRho p) := by
  rw [cachedC6_eq _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
    (Circle.coe_ne_zero _) (Circle.coe_ne_zero _),normData_seed]
  change (actualAlignmentData (seedS p) (seedT p) (seedRho p)).p0bar *
      (actualAlignmentData (seedS p) (seedT p) (seedRho p)).p1 = _
  obtain ⟨h0,h1,_⟩ := actualAlignmentData_P_bindings (seedS p) (seedT p) (seedRho p)
  rw [h0,h1]

/-- The cached U/V divisor is nonzero everywhere on the strict seed locus;
it introduces no additional genericity assumption. -/
theorem inputDen_strict (p : StrictSeed) :
    inputDen (p.1 0) (p.1 1) (p.1 2) (p.1 3) ≠ 0 := by
  apply inputDen_ne_zero _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
    (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
  rw [normData_seed]
  change (actualAlignmentData (seedS p.1) (seedT p.1) (seedRho p.1)).p0bar *
      (actualAlignmentData (seedS p.1) (seedT p.1) (seedRho p.1)).p1 ≠ 0
  obtain ⟨h0,h1,_⟩ := actualAlignmentData_P_bindings (seedS p.1) (seedT p.1) (seedRho p.1)
  rw [h0,h1]
  have hR := strict_seed_invariant_pos p
  obtain ⟨hs,ht,hr⟩ := seed_correlations p.1
  rw [hs,ht,hr] at hR
  obtain ⟨hp0,hp1,_⟩ := strict_sideP_nonzero hR
  exact mul_ne_zero ((map_ne_zero _).mpr hp0) hp1

end NoFourMUBs.Step2.Reconstruction.BaseCoefficients
