import PreRhoActualBindings
import PreRhoNormPolynomial

/-! Exact specialization and denominator clearing for the norm certificate. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def actualNormData (s t r : ℂ) : PreRhoNorm.Data ℂ :=
  PreRhoNorm.gramData s (conj s) t (conj t) r (conj r)

theorem actualNormData_P_bindings (s t r : ℂ) :
    (actualNormData s t r).p0 = sideP0 s t r ∧
    (actualNormData s t r).p1bar = conj (sideP1 s t r) := by
  constructor <;> apply Complex.ext <;>
    simp [actualNormData, PreRhoNorm.gramData, sideP0, sideP1,
      Complex.normSq_apply, Complex.mul_re, Complex.mul_im, pow_two] <;> ring

theorem actual_norm_conjugate_lambda_bindings {s t r : ℂ}
    (hR : 0 < gramInvariant s t r) (epsilon : ℝ) :
    conj (sideLambda0 s t r epsilon) * (actualNormData s t r).p0 =
      (actualNormData s t r).a.g + (actualNormData s t r).a.c0 * sideZ s t r epsilon ∧
    sideLambda1 s t r epsilon * (actualNormData s t r).p1bar =
      (actualNormData s t r).a.g +
        (actualNormData s t r).a.c1 * conj (sideZ s t r epsilon) := by
  obtain ⟨hg, _, _, hc0, hc1, _⟩ := actualAlignmentData_scalar_bindings s t r
  obtain ⟨hp0, hp1bar⟩ := actualNormData_P_bindings s t r
  obtain ⟨hP0, hP1, _⟩ := strict_sideP_nonzero hR
  change (actualNormData s t r).a.g = (gramG s t r : ℂ) at hg
  change (actualNormData s t r).a.c0 = ((9 - Complex.normSq r : ℝ) : ℂ) at hc0
  change (actualNormData s t r).a.c1 = ((9 - Complex.normSq t : ℝ) : ℂ) at hc1
  constructor
  · rw [hp0, hg, hc0]
    have h := sideLambda_mul_conjP s t r epsilon (9 - Complex.normSq r) (sideP0 s t r) hP0
    simpa [sideLambda0, map_ofNat] using congrArg (fun w : ℂ => conj w) h
  · rw [hp1bar, hg, hc1]
    exact sideLambda_mul_conjP s t r epsilon _ _ hP1

theorem actual_cleared_norm_zero {s t r : ℂ}
    (hR : 0 < gramInvariant s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    PreRhoNorm.cleared (actualNormData s t r)
      (sideZ s t r epsilon) (conj (sideZ s t r epsilon)) = 0 := by
  obtain ⟨hg, heta, hchi, _, _, _⟩ := actualAlignmentData_scalar_bindings s t r
  obtain ⟨hzsum, hzprod⟩ := sideZ_moments hR he
  apply PreRhoNorm.cleared_eq_zero s (conj s) t (conj t) r (conj r)
  · change (actualAlignmentData s t r).g ≠ 0
    rw [hg]
    exact_mod_cast (strict_eta_pos_g_ne_zero hR).2
  · change (actualAlignmentData s t r).g *
        (sideZ s t r epsilon + conj (sideZ s t r epsilon)) = (actualAlignmentData s t r).chi
    rw [hg, hchi]
    exact hzsum
  · change sideZ s t r epsilon * conj (sideZ s t r epsilon) = (actualAlignmentData s t r).eta
    rw [heta]
    exact hzprod

theorem norm_cleared_eq_scaled_residual (d : PreRhoNorm.Data ℂ)
    (z Z l0 l0bar l1 l1bar : ℂ)
    (h0 : l0 * d.a.p0bar = d.a.g + d.a.c0 * Z)
    (h0bar : l0bar * d.p0 = d.a.g + d.a.c0 * z)
    (h1 : l1bar * d.a.p1 = d.a.g + d.a.c1 * z)
    (h1bar : l1 * d.p1bar = d.a.g + d.a.c1 * Z) :
    PreRhoNorm.cleared d z Z =
      (PreRhoNorm.m0 d + l0 * l1bar * PreRhoNorm.mu d +
        l0bar * l1 * PreRhoNorm.mubar d -
        l0 * d.a.c2 * z * d.a.b0bar - l0bar * d.a.c2 * Z * d.a.b0 -
        l1bar * d.a.c2 * Z * d.a.b1 - l1 * d.a.c2 * z * d.a.b1bar) *
        (d.a.p0bar * d.p0 * d.p1bar * d.a.p1) := by
  unfold PreRhoNorm.cleared
  rw [← h0, ← h0bar, ← h1, ← h1bar]
  ring

/-- The fully specialized residual, with all its divisors discharged on R>0. -/
theorem actual_norm_residual_zero {s t r : ℂ}
    (hR : 0 < gramInvariant s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    let d := actualNormData s t r
    let z := sideZ s t r epsilon
    let l0 := sideLambda0 s t r epsilon
    let l1 := sideLambda1 s t r epsilon
    PreRhoNorm.m0 d + l0 * conj l1 * PreRhoNorm.mu d +
      conj l0 * l1 * PreRhoNorm.mubar d -
      l0 * d.a.c2 * z * d.a.b0bar - conj l0 * d.a.c2 * conj z * d.a.b0 -
      conj l1 * d.a.c2 * conj z * d.a.b1 - l1 * d.a.c2 * z * d.a.b1bar = 0 := by
  let d := actualNormData s t r
  let z := sideZ s t r epsilon
  let l0 := sideLambda0 s t r epsilon
  let l1 := sideLambda1 s t r epsilon
  obtain ⟨h0, h1, _⟩ := actual_lambda_polynomial_bindings hR epsilon
  obtain ⟨h0bar, h1bar⟩ := actual_norm_conjugate_lambda_bindings hR epsilon
  have hscaled := norm_cleared_eq_scaled_residual d z (conj z) l0 (conj l0) l1 (conj l1)
    h0 h0bar h1 h1bar
  have hclear := actual_cleared_norm_zero hR he
  obtain ⟨hp0bar, hp1, _⟩ := actualAlignmentData_P_bindings s t r
  obtain ⟨hp0, hp1bar⟩ := actualNormData_P_bindings s t r
  obtain ⟨hP0, hP1, _⟩ := strict_sideP_nonzero hR
  have hprod : d.a.p0bar * d.p0 * d.p1bar * d.a.p1 ≠ 0 := by
    change d.a.p0bar = conj (sideP0 s t r) at hp0bar
    change d.a.p1 = sideP1 s t r at hp1
    change d.p0 = sideP0 s t r at hp0
    change d.p1bar = conj (sideP1 s t r) at hp1bar
    rw [hp0bar, hp0, hp1bar, hp1]
    exact mul_ne_zero (mul_ne_zero (mul_ne_zero (conj_ne_zero_of_ne_zero hP0) hP0)
      (conj_ne_zero_of_ne_zero hP1)) hP1
  exact (mul_eq_zero.mp (hscaled.symm.trans hclear)).resolve_right hprod

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.actualNormData_P_bindings
#print axioms StrictReconstruction20261007.actual_norm_conjugate_lambda_bindings
#print axioms StrictReconstruction20261007.actual_cleared_norm_zero
#print axioms StrictReconstruction20261007.actual_norm_residual_zero
