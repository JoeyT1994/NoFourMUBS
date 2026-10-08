import PreRhoNormActual
import StrictSideSigmaAlgebra

/-! Literal dF/rho/sigma/xi constructor guards. The only orientation premise is
exactly the prescribed sign choice; its attainability is proved below. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def prescribedU (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  prescribedLambda0 s t r epsilon * conj (prescribedLambda1 s t r epsilon)
def prescribedDF (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) : ℂ :=
  ((27 / gramG s t r : ℝ) : ℂ) * preRhoNumerator s t r epsilon * conj delta
def prescribedRho (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) : ℝ :=
  (preRhoN s + (prescribedDF s t r epsilon delta).re) / 2
def prescribedQ (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) : ℂ :=
  preRhoAlpha s t r epsilon / (prescribedRho s t r epsilon delta : ℂ)
def prescribedSigma (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) : ℂ :=
  prescribedU s t r epsilon + (s / 3) * prescribedQ s t r epsilon delta
def prescribedXi (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) : ℂ :=
  prescribedSigma s t r epsilon delta ^ 2 / (prescribedRho s t r epsilon delta : ℂ)

theorem prescribed_delta_guard {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon) :
    Complex.normSq delta = gramG s t r / 27 ∧ delta ≠ 0 := by
  apply strict_delta_guard hR hg he
  exact hd.trans (prescribedDeltaRadicand_eq_sideDeltaRadicand hR he)

/-- Reality and the actual discriminant follow from the two finite certificates. -/
theorem prescribed_dF_real_discriminant {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon) :
    (prescribedDF s t r epsilon delta).im = 0 ∧
    (prescribedDF s t r epsilon delta).re ^ 2 =
      preRhoN s ^ 2 - 4 * Complex.normSq (preRhoAlpha s t r epsilon) := by
  let A := preRhoNumerator s t r epsilon
  let U := prescribedDeltaPhase s t r epsilon
  let q := gramG s t r / 27
  let c := 27 / gramG s t r
  obtain ⟨hnorm, hd0⟩ := prescribed_delta_guard hR hg he hd
  have hmul : delta * conj delta = (q : ℂ) := by rw [Complex.mul_conj, hnorm]
  have hd2 : delta * delta = (q : ℂ) * U := by
    calc
      _ = delta ^ 2 := by ring
      _ = prescribedDeltaRadicand s t r epsilon := hd
      _ = _ := by dsimp [q, U, prescribedDeltaRadicand, prescribedDeltaPhase]; ring
  have halign : A = U * conj A := preRho_phase_alignment hR he
  have hcross : A * conj delta - conj A * delta = 0 := by
    have h : delta * (A * conj delta - conj A * delta) = 0 := by
      calc
        _ = A * (delta * conj delta) - conj A * (delta * delta) := by ring
        _ = (q : ℂ) * (A - U * conj A) := by rw [hmul, hd2]; ring
        _ = 0 := by
          have hA : A - U * conj A = 0 := sub_eq_zero.mpr halign
          rw [hA, mul_zero]
    exact (mul_eq_zero.mp h).resolve_left hd0
  have hconj : conj (prescribedDF s t r epsilon delta) = prescribedDF s t r epsilon delta := by
    change conj ((c : ℂ) * A * conj delta) = (c : ℂ) * A * conj delta
    have hcc : conj (conj delta) = delta := by simp
    simp only [map_mul, Complex.conj_ofReal, hcc]
    linear_combination -(c : ℂ) * hcross
  have him : (prescribedDF s t r epsilon delta).im = 0 := by
    have h := congrArg Complex.im hconj
    simp only [Complex.conj_im] at h
    linarith
  have hnormDF : Complex.normSq (prescribedDF s t r epsilon delta) =
      preRhoN s ^ 2 - 4 * Complex.normSq (preRhoAlpha s t r epsilon) := by
    simp only [prescribedDF, Complex.normSq_mul, Complex.normSq_conj, Complex.normSq_ofReal]
    rw [hnorm, preRho_norm_identity hR he]
    field_simp [ne_of_gt hg]
    <;> ring
  refine ⟨him, ?_⟩
  rw [← hnormDF]
  simp [Complex.normSq_apply, him, pow_two]

theorem prescribedDF_neg (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) :
    prescribedDF s t r epsilon (-delta) = -prescribedDF s t r epsilon delta := by
  unfold prescribedDF
  rw [map_neg]
  ring

/-- Every square-root choice can be given the prescribed nonnegative orientation. -/
theorem prescribed_delta_orientable {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon) :
    ∃ delta' : ℂ, (delta' = delta ∨ delta' = -delta) ∧
      delta' ^ 2 = prescribedDeltaRadicand s t r epsilon ∧
      (prescribedDF s t r epsilon delta').im = 0 ∧
      0 ≤ (prescribedDF s t r epsilon delta').re := by
  by_cases hpos : 0 ≤ (prescribedDF s t r epsilon delta).re
  · exact ⟨delta, Or.inl rfl, hd, (prescribed_dF_real_discriminant hR hg he hd).1, hpos⟩
  · have hdneg : (-delta) ^ 2 = prescribedDeltaRadicand s t r epsilon := by
      rw [neg_sq, hd]
    refine ⟨-delta, Or.inr rfl, hdneg, (prescribed_dF_real_discriminant hR hg he hdneg).1, ?_⟩
    rw [prescribedDF_neg, Complex.neg_re]
    linarith

theorem prescribedU_unit {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    Complex.normSq (prescribedU s t r epsilon) = 1 := by
  obtain ⟨e0, e1, _⟩ := prescribedLambdas_eq_sideLambdas hR epsilon
  obtain ⟨h0, h1, _⟩ := strict_sideLambda_units hR he
  simp only [prescribedU, e0, e1, Complex.normSq_mul, Complex.normSq_conj, h0, h1]
  norm_num

/-- The recipe's rho is positive and satisfies its defining quadratic. -/
theorem prescribed_rho_guard {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    0 < prescribedRho s t r epsilon delta ∧
    prescribedRho s t r epsilon delta ^ 2 -
      preRhoN s * prescribedRho s t r epsilon delta +
      Complex.normSq (preRhoAlpha s t r epsilon) = 0 := by
  exact oriented_rho_positive_quadratic _ _ _ hn ho
    (prescribed_dF_real_discriminant hR hg he hd).2

/-- Sigma nonvanishing and the xi unit phase are consequences of the literal recipe. -/
theorem prescribed_sigma_xi_guards {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    Complex.normSq (prescribedSigma s t r epsilon delta) = prescribedRho s t r epsilon delta ∧
    prescribedSigma s t r epsilon delta ≠ 0 ∧
    Complex.normSq (prescribedXi s t r epsilon delta) = 1 := by
  obtain ⟨hr, hquad⟩ := prescribed_rho_guard hR hg hn he hd ho
  have hu := prescribedU_unit hR he
  have hs : Complex.normSq (prescribedSigma s t r epsilon delta) = prescribedRho s t r epsilon delta :=
    prescribed_sigma_normSq (prescribedU s t r epsilon) (s / 3) _ hu hr hquad
  have hs0 : prescribedSigma s t r epsilon delta ≠ 0 := Complex.normSq_pos.mp (by rw [hs]; exact hr)
  refine ⟨hs, hs0, ?_⟩
  simp only [prescribedXi, pow_two, Complex.normSq_div, Complex.normSq_mul, hs,
    Complex.normSq_ofReal]
  exact div_self (mul_ne_zero (ne_of_gt hr) (ne_of_gt hr))

/-- Full strict-seed guard segment. The sign rule is attainable by the theorem above;
no completion, productregular, polynomial-certificate or sigma-norm premise is added. -/
theorem strict_seed_final_guards (E : Hadamard6.Mat3) (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E))
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) {delta : ℂ}
    (hd : delta ^ 2 = prescribedDeltaRadicand (seedS E) (seedT E) (seedR E) epsilon)
    (ho : 0 ≤ (prescribedDF (seedS E) (seedT E) (seedR E) epsilon delta).re) :
    0 < preRhoN (seedS E) ∧
    delta ≠ 0 ∧
    (prescribedDF (seedS E) (seedT E) (seedR E) epsilon delta).im = 0 ∧
    0 < prescribedRho (seedS E) (seedT E) (seedR E) epsilon delta ∧
    Complex.normSq (prescribedSigma (seedS E) (seedT E) (seedR E) epsilon delta) =
      prescribedRho (seedS E) (seedT E) (seedR E) epsilon delta ∧
    prescribedSigma (seedS E) (seedT E) (seedR E) epsilon delta ≠ 0 ∧
    Complex.normSq (prescribedXi (seedS E) (seedT E) (seedR E) epsilon delta) = 1 := by
  obtain ⟨hg, _, _, _, _, _, hn, _⟩ := strict_seed_initial_guards E hE hR
  have hnorm3 : Complex.normSq (3 : ℂ) = 9 := by norm_num [Complex.normSq_apply]
  have hn' : 0 < preRhoN (seedS E) := by
    simpa only [preRhoN, Complex.normSq_div, hnorm3] using hn
  exact ⟨hn', (prescribed_delta_guard hR hg he hd).2,
    (prescribed_dF_real_discriminant hR hg he hd).1,
    (prescribed_rho_guard hR hg hn' he hd ho).1,
    prescribed_sigma_xi_guards hR hg hn' he hd ho⟩

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.prescribed_dF_real_discriminant
#print axioms StrictReconstruction20261007.prescribed_delta_orientable
#print axioms StrictReconstruction20261007.prescribed_rho_guard
#print axioms StrictReconstruction20261007.prescribed_sigma_xi_guards
#print axioms StrictReconstruction20261007.strict_seed_final_guards
