import StrictSideFinalGuards

/-! Elementary square-root existence uses only real square roots already present
in the strict sheet construction. No new analytic frontend import is needed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem complex_square_root_of_positive_normSq {z : ℂ} {q : ℝ}
    (hq : 0 < q) (hz : Complex.normSq z = q ^ 2) :
    ∃ delta : ℂ, delta ^ 2 = z := by
  have hnorm : z.re ^ 2 + z.im ^ 2 = q ^ 2 := by
    simpa only [Complex.normSq_apply, pow_two] using hz
  have hsum : 0 ≤ q + z.re := by
    by_contra h
    have hlt : q + z.re < 0 := lt_of_not_ge h
    have hprod : 0 < (-z.re - q) * (-z.re + q) :=
      mul_pos (by linarith) (by linarith)
    nlinarith [sq_nonneg z.im]
  by_cases hzero : q + z.re = 0
  · have hx : z.re = -q := by linarith
    have hy2 : z.im ^ 2 = 0 := by
      rw [hx] at hnorm
      nlinarith [hnorm]
    have hy : z.im = 0 := pow_eq_zero hy2
    have hsqrt : Real.sqrt q ^ 2 = q := Real.sq_sqrt (le_of_lt hq)
    refine ⟨⟨0, Real.sqrt q⟩, ?_⟩
    apply Complex.ext <;>
      simp only [pow_two, Complex.mul_re, Complex.mul_im]
    · nlinarith
    · rw [hy]; ring
  · have hsumpos : 0 < (q + z.re) / 2 := by
      have hp : 0 < q + z.re := by
        rcases lt_or_eq_of_le hsum with hp | hp
        · exact hp
        · exact False.elim (hzero hp.symm)
      linarith
    let a := Real.sqrt ((q + z.re) / 2)
    have ha : 0 < a := Real.sqrt_pos.2 hsumpos
    have ha2 : a ^ 2 = (q + z.re) / 2 := Real.sq_sqrt (le_of_lt hsumpos)
    have hred : 4 * (a ^ 2) ^ 2 - 4 * z.re * a ^ 2 - z.im ^ 2 = 0 := by
      rw [ha2]
      nlinarith [hnorm]
    refine ⟨⟨a, z.im / (2 * a)⟩, ?_⟩
    apply Complex.ext <;>
      simp only [pow_two, Complex.mul_re, Complex.mul_im]
    · field_simp [ne_of_gt ha]
      nlinarith [hred]
    · field_simp [ne_of_gt ha]
      <;> ring

/-- Both radicand-root existence and the prescribed sign selection are discharged. -/
theorem prescribed_oriented_delta_exists {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    ∃ delta : ℂ, delta ^ 2 = prescribedDeltaRadicand s t r epsilon ∧
      (prescribedDF s t r epsilon delta).im = 0 ∧
      0 ≤ (prescribedDF s t r epsilon delta).re := by
  have hnorm : Complex.normSq (prescribedDeltaRadicand s t r epsilon) =
      (gramG s t r / 27) ^ 2 := by
    rw [prescribedDeltaRadicand_eq_sideDeltaRadicand hR he]
    exact sideDeltaRadicand_normSq hR he
  obtain ⟨delta, hd⟩ := complex_square_root_of_positive_normSq (div_pos hg (by norm_num)) hnorm
  obtain ⟨delta', _, hd', him, ho⟩ := prescribed_delta_orientable hR hg he hd
  exact ⟨delta', hd', him, ho⟩

/-- At dF=0, negating delta retains the prescribed sign rule. -/
theorem prescribed_zero_dF_neg_oriented (s t r : ℂ) (epsilon : ℝ) (delta : ℂ)
    (hz : (prescribedDF s t r epsilon delta).re = 0) :
    (prescribedDF s t r epsilon (-delta)).re = 0 := by
  rw [prescribedDF_neg, Complex.neg_re, hz, neg_zero]

/-- Strict input alone supplies an oriented delta and every remaining scalar divisor guard.
This statement closes this scalar guard segment, not the matrix reconstruction identities. -/
theorem strict_seed_oriented_guards_exist (E : Hadamard6.Mat3) (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E))
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    ∃ delta : ℂ,
      delta ^ 2 = prescribedDeltaRadicand (seedS E) (seedT E) (seedR E) epsilon ∧
      0 ≤ (prescribedDF (seedS E) (seedT E) (seedR E) epsilon delta).re ∧
      0 < preRhoN (seedS E) ∧
      delta ≠ 0 ∧
      (prescribedDF (seedS E) (seedT E) (seedR E) epsilon delta).im = 0 ∧
      0 < prescribedRho (seedS E) (seedT E) (seedR E) epsilon delta ∧
      Complex.normSq (prescribedSigma (seedS E) (seedT E) (seedR E) epsilon delta) =
        prescribedRho (seedS E) (seedT E) (seedR E) epsilon delta ∧
      prescribedSigma (seedS E) (seedT E) (seedR E) epsilon delta ≠ 0 ∧
      Complex.normSq (prescribedXi (seedS E) (seedT E) (seedR E) epsilon delta) = 1 := by
  have hg := (strict_seed_initial_guards E hE hR).1
  obtain ⟨delta, hd, _, ho⟩ := prescribed_oriented_delta_exists hR hg he
  exact ⟨delta, hd, ho, strict_seed_final_guards E hE hR he hd ho⟩

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.complex_square_root_of_positive_normSq
#print axioms StrictReconstruction20261007.prescribed_oriented_delta_exists
#print axioms StrictReconstruction20261007.prescribed_zero_dF_neg_oriented
#print axioms StrictReconstruction20261007.strict_seed_oriented_guards_exist
