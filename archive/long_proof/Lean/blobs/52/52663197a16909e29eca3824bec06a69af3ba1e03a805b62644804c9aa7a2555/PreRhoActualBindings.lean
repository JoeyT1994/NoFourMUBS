import StrictSideRootGuards
import PreRhoAlignmentPolynomial

/-! Bind the finite polynomial certificate to the actual constructor expressions. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def actualAlignmentData (s t r : ℂ) : PreRhoAlignment.Data ℂ :=
  PreRhoAlignment.gramData s (conj s) t (conj t) r (conj r)

theorem actualAlignmentData_scalar_bindings (s t r : ℂ) :
    (actualAlignmentData s t r).g = (gramG s t r : ℂ) ∧
    (actualAlignmentData s t r).eta = (gramEta s t r : ℂ) ∧
    (actualAlignmentData s t r).chi = (gramChi s t r : ℂ) ∧
    (actualAlignmentData s t r).c0 = ((9 - Complex.normSq r : ℝ) : ℂ) ∧
    (actualAlignmentData s t r).c1 = ((9 - Complex.normSq t : ℝ) : ℂ) ∧
    (actualAlignmentData s t r).c2 = ((9 - Complex.normSq s : ℝ) : ℂ) := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩ <;> apply Complex.ext <;>
    simp [actualAlignmentData, PreRhoAlignment.gramData, gramG, gramEta, gramChi,
      gramP, gramJ, gramW, Complex.normSq_apply, Complex.mul_re, Complex.mul_im] <;> ring

theorem actualAlignmentData_P_bindings (s t r : ℂ) :
    (actualAlignmentData s t r).p0bar = conj (sideP0 s t r) ∧
    (actualAlignmentData s t r).p1 = sideP1 s t r ∧
    (actualAlignmentData s t r).p2 = sideP2 s t r := by
  refine ⟨?_, ?_, ?_⟩ <;> apply Complex.ext <;>
    simp [actualAlignmentData, PreRhoAlignment.gramData, sideP0, sideP1, sideP2,
      Complex.normSq_apply, Complex.mul_re, Complex.mul_im, pow_two] <;> ring

theorem actualAlignmentData_conjugate_bindings (s t r : ℂ) :
    conj (actualAlignmentData s t r).b0 = (actualAlignmentData s t r).b0bar ∧
    conj (actualAlignmentData s t r).b1 = (actualAlignmentData s t r).b1bar ∧
    conj (actualAlignmentData s t r).c2 = (actualAlignmentData s t r).c2 := by
  refine ⟨?_, ?_, ?_⟩ <;>
    simp [actualAlignmentData, PreRhoAlignment.gramData] <;> ring

/-- The two sheet moments consumed by the finite polynomial certificates. -/
theorem sideZ_moments {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    (gramG s t r : ℂ) * (sideZ s t r epsilon + conj (sideZ s t r epsilon)) =
        (gramChi s t r : ℂ) ∧
    sideZ s t r epsilon * conj (sideZ s t r epsilon) = (gramEta s t r : ℂ) := by
  have hg := (strict_eta_pos_g_ne_zero hR).2
  constructor
  · apply Complex.ext <;>
      simp [Complex.mul_re, Complex.mul_im, sideZ_re] <;>
      field_simp [hg] <;> ring
  · rw [Complex.mul_conj, sideZ_normSq hR he]

theorem conj_ne_zero_of_ne_zero {z : ℂ} (hz : z ≠ 0) : conj z ≠ 0 := by
  intro h
  apply hz
  have h' := congrArg (fun w : ℂ => conj w) h
  simpa using h'

theorem sideLambda_mul_conjP (s t r : ℂ) (epsilon c : ℝ) (P : ℂ) (hP : P ≠ 0) :
    sideLambda s t r epsilon c P * conj P =
      (gramG s t r : ℂ) + (c : ℂ) * conj (sideZ s t r epsilon) := by
  unfold sideLambda
  field_simp [conj_ne_zero_of_ne_zero hP]

theorem actual_lambda_polynomial_bindings {s t r : ℂ}
    (hR : 0 < gramInvariant s t r) (epsilon : ℝ) :
    sideLambda0 s t r epsilon * (actualAlignmentData s t r).p0bar =
        (actualAlignmentData s t r).g +
          (actualAlignmentData s t r).c0 * conj (sideZ s t r epsilon) ∧
    conj (sideLambda1 s t r epsilon) * (actualAlignmentData s t r).p1 =
        (actualAlignmentData s t r).g +
          (actualAlignmentData s t r).c1 * sideZ s t r epsilon ∧
    conj (sideLambda2 s t r epsilon) * (actualAlignmentData s t r).p2 =
        (actualAlignmentData s t r).g +
          (actualAlignmentData s t r).c2 * sideZ s t r epsilon := by
  obtain ⟨hg, _, _, hc0, hc1, hc2⟩ := actualAlignmentData_scalar_bindings s t r
  obtain ⟨hp0, hp1, hp2⟩ := actualAlignmentData_P_bindings s t r
  obtain ⟨hP0, hP1, hP2⟩ := strict_sideP_nonzero hR
  refine ⟨?_, ?_, ?_⟩
  · rw [hp0, hg, hc0]
    exact sideLambda_mul_conjP s t r epsilon _ _ hP0
  · rw [hp1, hg, hc1]
    have h := sideLambda_mul_conjP s t r epsilon (9 - Complex.normSq t) (sideP1 s t r) hP1
    simpa using congrArg (fun w : ℂ => conj w) h
  · rw [hp2, hg, hc2]
    have h := sideLambda_mul_conjP s t r epsilon (9 - Complex.normSq s) (sideP2 s t r) hP2
    simpa using congrArg (fun w : ℂ => conj w) h

/-- No external polynomial premise: specialize the checked certificate. -/
theorem actual_cleared_alignment_zero {s t r : ℂ}
    (hR : 0 < gramInvariant s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    PreRhoAlignment.cleared (actualAlignmentData s t r)
      (sideZ s t r epsilon) (conj (sideZ s t r epsilon)) = 0 := by
  obtain ⟨hg, heta, hchi, _, _, _⟩ := actualAlignmentData_scalar_bindings s t r
  obtain ⟨hzsum, hzprod⟩ := sideZ_moments hR he
  apply PreRhoAlignment.cleared_eq_zero s (conj s) t (conj t) r (conj r)
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

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.actualAlignmentData_scalar_bindings
#print axioms StrictReconstruction20261007.actualAlignmentData_P_bindings
#print axioms StrictReconstruction20261007.sideZ_moments
#print axioms StrictReconstruction20261007.actual_lambda_polynomial_bindings
#print axioms StrictReconstruction20261007.actual_cleared_alignment_zero
