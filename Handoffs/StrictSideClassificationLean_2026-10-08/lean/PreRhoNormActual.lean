import PreRhoNormBindings
import PreRhoAlignmentActual

/-! The actual, unconditional-on-R>0 pre-rho squared-discriminant identity. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def preRhoN (s : ℂ) : ℝ := 1 - Complex.normSq (s / 3)

def preRhoAlpha (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  (s / 3) ^ 2 - (prescribedLambda0 s t r epsilon *
    conj (prescribedLambda1 s t r epsilon)) * conj (s / 3)

theorem norm_B_polynomial_identity
    (b0 b0bar b1 b1bar c2 z Z l0 l0bar l1 l1bar eta : ℂ)
    (h0 : l0 * l0bar = 1) (h1 : l1 * l1bar = 1) (hz : z * Z = eta) :
    (b0 + l0 * l1bar * b1 - c2 * z * l0) *
      (b0bar + l0bar * l1 * b1bar - c2 * Z * l0bar) =
      b0 * b0bar + b1 * b1bar + c2 ^ 2 * eta +
      l0 * l1bar * b1 * b0bar + l0bar * l1 * b0 * b1bar -
      l0 * c2 * z * b0bar - l0bar * c2 * Z * b0 -
      l1bar * c2 * Z * b1 - l1 * c2 * z * b1bar := by
  calc
    _ = b0 * b0bar + (l0 * l0bar) * (l1 * l1bar) * b1 * b1bar +
        c2 ^ 2 * (z * Z) * (l0 * l0bar) +
        l0 * l1bar * b1 * b0bar + l0bar * l1 * b0 * b1bar -
        l0 * c2 * z * b0bar - l0bar * c2 * Z * b0 -
        (l0 * l0bar) * l1bar * c2 * Z * b1 -
        (l0 * l0bar) * l1 * c2 * z * b1bar := by ring
    _ = _ := by rw [h0, h1, hz]; ring

theorem actual_B_norm_identity {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    let d := actualAlignmentData s t r
    let z := sideZ s t r epsilon
    let l0 := sideLambda0 s t r epsilon
    let l1 := sideLambda1 s t r epsilon
    let B := d.b0 + l0 * conj l1 * d.b1 - d.c2 * z * l0
    B * conj B = d.g * (27 - 18 * (s * conj s) - (s * conj s) ^ 2 +
      4 * (l0 * conj l1 * (conj s) ^ 3 + conj l0 * l1 * s ^ 3)) := by
  let d := actualNormData s t r
  let z := sideZ s t r epsilon
  let l0 := sideLambda0 s t r epsilon
  let l1 := sideLambda1 s t r epsilon
  let B := d.a.b0 + l0 * conj l1 * d.a.b1 - d.a.c2 * z * l0
  change B * conj B = d.a.g * (27 - 18 * (s * conj s) - (s * conj s) ^ 2 +
    4 * (l0 * conj l1 * (conj s) ^ 3 + conj l0 * l1 * s ^ 3))
  obtain ⟨hu0, hu1, _⟩ := strict_sideLambda_units hR he
  have hh0 : l0 * conj l0 = 1 := by
    change sideLambda0 s t r epsilon * conj (sideLambda0 s t r epsilon) = 1
    rw [Complex.mul_conj, hu0]
    norm_num
  have hh1 : l1 * conj l1 = 1 := by
    change sideLambda1 s t r epsilon * conj (sideLambda1 s t r epsilon) = 1
    rw [Complex.mul_conj, hu1]
    norm_num
  obtain ⟨hb0, hb1, hc2⟩ := actualAlignmentData_conjugate_bindings s t r
  change conj d.a.b0 = d.a.b0bar at hb0
  change conj d.a.b1 = d.a.b1bar at hb1
  change conj d.a.c2 = d.a.c2 at hc2
  have hBc : conj B = d.a.b0bar + conj l0 * l1 * d.a.b1bar -
      d.a.c2 * conj z * conj l0 := by
    change conj (d.a.b0 + l0 * conj l1 * d.a.b1 - d.a.c2 * z * l0) = _
    simp [hb0, hb1, hc2]
  have hz : z * conj z = d.a.eta := by
    have h := (sideZ_moments hR he).2
    have heta := (actualAlignmentData_scalar_bindings s t r).2.1
    change d.a.eta = (gramEta s t r : ℂ) at heta
    rw [heta]
    exact h
  have hpoly := norm_B_polynomial_identity d.a.b0 d.a.b0bar d.a.b1 d.a.b1bar
    d.a.c2 z (conj z) l0 (conj l0) l1 (conj l1) d.a.eta hh0 hh1 hz
  have hres := actual_norm_residual_zero hR he
  change PreRhoNorm.m0 d + l0 * conj l1 * PreRhoNorm.mu d +
    conj l0 * l1 * PreRhoNorm.mubar d -
    l0 * d.a.c2 * z * d.a.b0bar - conj l0 * d.a.c2 * conj z * d.a.b0 -
    conj l1 * d.a.c2 * conj z * d.a.b1 - l1 * d.a.c2 * z * d.a.b1bar = 0 at hres
  simp only [PreRhoNorm.m0, PreRhoNorm.mu, PreRhoNorm.mubar] at hres
  have hs : d.s = s := rfl
  have hS : d.S = conj s := rfl
  rw [hs, hS] at hres
  rw [hBc]
  change (d.a.b0 + l0 * conj l1 * d.a.b1 - d.a.c2 * z * l0) * _ = _
  rw [hpoly]
  linear_combination hres

/-- Small universal norm expansion, with the unit-u correction shown explicitly. -/
theorem preRho_discriminant_expansion (s u : ℂ) :
    (27 : ℂ) * (((1 - Complex.normSq (s / 3)) ^ 2 -
      4 * Complex.normSq ((s / 3) ^ 2 - u * conj (s / 3)) : ℝ) : ℂ) =
      27 - 18 * (s * conj s) - (s * conj s) ^ 2 +
      4 * (u * (conj s) ^ 3 + conj u * s ^ 3) -
      12 * (s * conj s) * ((Complex.normSq u : ℂ) - 1) := by
  apply Complex.ext <;>
    simp [Complex.normSq_apply, Complex.mul_re, Complex.mul_im, Complex.div_re,
      Complex.div_im, pow_two, pow_succ] <;> ring

/-- Second actual pre-rho identity. No polynomial premise is assumed. -/
theorem preRho_norm_identity {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    Complex.normSq (preRhoNumerator s t r epsilon) =
      (gramG s t r / 27) * (preRhoN s ^ 2 - 4 * Complex.normSq (preRhoAlpha s t r epsilon)) := by
  have hB := actual_B_norm_identity hR he
  dsimp only at hB
  simp only [← twentyseven_preRhoWithLambdas] at hB
  obtain ⟨hg, _, _, _, _, _⟩ := actualAlignmentData_scalar_bindings s t r
  rw [hg] at hB
  obtain ⟨hu0, hu1, _⟩ := strict_sideLambda_units hR he
  have hu : Complex.normSq (sideLambda0 s t r epsilon * conj (sideLambda1 s t r epsilon)) = 1 := by
    rw [Complex.normSq_mul, Complex.normSq_conj, hu0, hu1]
    norm_num
  have hexp := preRho_discriminant_expansion s
    (sideLambda0 s t r epsilon * conj (sideLambda1 s t r epsilon))
  rw [hu] at hexp
  have hcc : conj (conj (sideLambda1 s t r epsilon)) = sideLambda1 s t r epsilon := by simp
  simp only [Complex.ofReal_one, sub_self, mul_zero, sub_zero, map_mul, hcc] at hexp
  rw [← hexp] at hB
  simp only [map_mul, Complex.conj_ofNat] at hB
  have hmul : (27 : ℂ) * preRhoWithLambdas s t r (sideZ s t r epsilon)
      (sideLambda0 s t r epsilon) (sideLambda1 s t r epsilon) *
      (27 * conj (preRhoWithLambdas s t r (sideZ s t r epsilon)
        (sideLambda0 s t r epsilon) (sideLambda1 s t r epsilon))) =
      729 * (Complex.normSq (preRhoWithLambdas s t r (sideZ s t r epsilon)
        (sideLambda0 s t r epsilon) (sideLambda1 s t r epsilon)) : ℂ) := by
    rw [← Complex.mul_conj]
    ring
  rw [hmul] at hB
  have hreal := congrArg Complex.re hB
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul,
    mul_zero, sub_zero, Complex.re_ofNat, Complex.im_ofNat] at hreal
  obtain ⟨e0, e1, _⟩ := prescribedLambdas_eq_sideLambdas hR epsilon
  dsimp only [preRhoNumerator, preRhoN, preRhoAlpha]
  rw [e0, e1]
  nlinarith [hreal]

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.actual_B_norm_identity
#print axioms StrictReconstruction20261007.preRho_discriminant_expansion
#print axioms StrictReconstruction20261007.preRho_norm_identity
