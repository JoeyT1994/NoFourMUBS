import PreRhoActualBindings

/-! Actual universal pre-rho phase alignment, directly from the finite certificate. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

/-- Exactly n*gamma-2*alpha*k, with the displayed constructor variables expanded. -/
def preRhoWithLambdas (s t r z l0 l1 : ℂ) : ℂ :=
  ((1 - Complex.normSq (s / 3) : ℝ) : ℂ) * (2 * (s / 3) * (t / 3) - z * l0 / 3) -
    2 * ((s / 3) ^ 2 - (l0 * conj l1) * conj (s / 3)) *
      (r / 3 - (t / 3) * conj (s / 3))

def preRhoNumerator (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  preRhoWithLambdas s t r (sideZ s t r epsilon)
    (prescribedLambda0 s t r epsilon) (prescribedLambda1 s t r epsilon)

def prescribedDeltaPhase (s t r : ℂ) (epsilon : ℝ) : ℂ :=
  prescribedLambda0 s t r epsilon * conj (prescribedLambda1 s t r epsilon) *
    conj (prescribedLambda2 s t r epsilon)

theorem twentyseven_preRhoWithLambdas (s t r z l0 l1 : ℂ) :
    27 * preRhoWithLambdas s t r z l0 l1 =
      (actualAlignmentData s t r).b0 + l0 * conj l1 * (actualAlignmentData s t r).b1 -
        (actualAlignmentData s t r).c2 * z * l0 := by
  apply Complex.ext <;>
    simp [preRhoWithLambdas, actualAlignmentData, PreRhoAlignment.gramData,
      Complex.normSq_apply, Complex.mul_re, Complex.mul_im, Complex.div_re, Complex.div_im,
      pow_two] <;> ring

theorem cleared_eq_scaled_residual (d : PreRhoAlignment.Data) (z Z l0 l1bar l2bar : ℂ)
    (h0 : l0 * d.p0bar = d.g + d.c0 * Z)
    (h1 : l1bar * d.p1 = d.g + d.c1 * z)
    (h2 : l2bar * d.p2 = d.g + d.c2 * z) :
    PreRhoAlignment.cleared d z Z =
      (d.b0 + l0 * l1bar * d.b1 - l0 * d.c2 * z -
        l0 * l1bar * l2bar * d.b0bar - l2bar * d.b1bar + l1bar * l2bar * d.c2 * Z) *
        (d.p0bar * d.p1 * d.p2) := by
  unfold PreRhoAlignment.cleared
  rw [← h0, ← h1, ← h2]
  ring

theorem actual_B_phase_alignment {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    let d := actualAlignmentData s t r
    let z := sideZ s t r epsilon
    let l0 := sideLambda0 s t r epsilon
    let l1 := sideLambda1 s t r epsilon
    let l2 := sideLambda2 s t r epsilon
    let B := d.b0 + l0 * conj l1 * d.b1 - d.c2 * z * l0
    B = (l0 * conj l1 * conj l2) * conj B := by
  let d := actualAlignmentData s t r
  let z := sideZ s t r epsilon
  let l0 := sideLambda0 s t r epsilon
  let l1 := sideLambda1 s t r epsilon
  let l2 := sideLambda2 s t r epsilon
  let B := d.b0 + l0 * conj l1 * d.b1 - d.c2 * z * l0
  change B = (l0 * conj l1 * conj l2) * conj B
  obtain ⟨h0, h1, h2⟩ := actual_lambda_polynomial_bindings hR epsilon
  have hclear := actual_cleared_alignment_zero hR he
  have hscaled := cleared_eq_scaled_residual d z (conj z) l0 (conj l1) (conj l2) h0 h1 h2
  obtain ⟨hp0, hp1, hp2⟩ := actualAlignmentData_P_bindings s t r
  obtain ⟨hP0, hP1, hP2⟩ := strict_sideP_nonzero hR
  have hprod : d.p0bar * d.p1 * d.p2 ≠ 0 := by
    change (actualAlignmentData s t r).p0bar *
      (actualAlignmentData s t r).p1 * (actualAlignmentData s t r).p2 ≠ 0
    rw [hp0, hp1, hp2]
    exact mul_ne_zero (mul_ne_zero (conj_ne_zero_of_ne_zero hP0) hP1) hP2
  have hres : d.b0 + l0 * conj l1 * d.b1 - l0 * d.c2 * z -
      l0 * conj l1 * conj l2 * d.b0bar - conj l2 * d.b1bar +
        conj l1 * conj l2 * d.c2 * conj z = 0 := by
    have hz : (d.b0 + l0 * conj l1 * d.b1 - l0 * d.c2 * z -
        l0 * conj l1 * conj l2 * d.b0bar - conj l2 * d.b1bar +
          conj l1 * conj l2 * d.c2 * conj z) * (d.p0bar * d.p1 * d.p2) = 0 :=
      hscaled.symm.trans hclear
    exact (mul_eq_zero.mp hz).resolve_right hprod
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
  have hBc : conj B = d.b0bar + conj l0 * l1 * d.b1bar - d.c2 * conj z * conj l0 := by
    change conj (d.b0 + l0 * conj l1 * d.b1 - d.c2 * z * l0) = _
    simp [hb0, hb1, hc2]
  have hUB : (l0 * conj l1 * conj l2) * conj B =
      l0 * conj l1 * conj l2 * d.b0bar + conj l2 * d.b1bar -
        conj l1 * conj l2 * d.c2 * conj z := by
    rw [hBc]
    calc
      _ = l0 * conj l1 * conj l2 * d.b0bar +
          (l0 * conj l0) * (l1 * conj l1) * conj l2 * d.b1bar -
          (l0 * conj l0) * conj l1 * conj l2 * d.c2 * conj z := by ring
      _ = _ := by rw [hh0, hh1]; ring
  rw [hUB]
  dsimp [B]
  linear_combination hres

/-- First required pre-rho identity, for the literal prescribed lambdas. -/
theorem preRho_phase_alignment {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    preRhoNumerator s t r epsilon =
      prescribedDeltaPhase s t r epsilon * conj (preRhoNumerator s t r epsilon) := by
  have hB := actual_B_phase_alignment hR he
  dsimp only at hB
  simp only [← twentyseven_preRhoWithLambdas] at hB
  have hA : preRhoWithLambdas s t r (sideZ s t r epsilon)
      (sideLambda0 s t r epsilon) (sideLambda1 s t r epsilon) =
      (sideLambda0 s t r epsilon * conj (sideLambda1 s t r epsilon) *
        conj (sideLambda2 s t r epsilon)) *
      conj (preRhoWithLambdas s t r (sideZ s t r epsilon)
        (sideLambda0 s t r epsilon) (sideLambda1 s t r epsilon)) := by
    simp only [map_mul, Complex.conj_ofNat] at hB
    linear_combination (1 / 27 : ℂ) * hB
  obtain ⟨e0, e1, e2⟩ := prescribedLambdas_eq_sideLambdas hR epsilon
  simpa only [preRhoNumerator, prescribedDeltaPhase, e0, e1, e2] using hA

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.twentyseven_preRhoWithLambdas
#print axioms StrictReconstruction20261007.preRho_phase_alignment
