import CenteredFiniteModel

/-! The constant coefficient is the actual value at the origin: the radial
remainder vanishes there. This supplies the fixed center used in analytic tails. -/
set_option autoImplicit false
namespace Centiradian20261006.RadialProduct20261008
noncomputable section

theorem monomial_zero_of_ne_zero {n : ℕ} (e : MultiIndex n) (he : e ≠ 0) :
    monomial (0 : Fin n → ℝ) e = 0 := by
  have hb := monomial_radial_bound (0 : Fin n → ℝ) e (le_refl (0 : ℝ))
    (by intro i; simp)
  have hd := Nat.ne_of_gt (totalDegree_pos_of_ne_zero e he)
  simp only [zero_pow hd] at hb
  exact abs_nonpos_iff.mp hb

theorem modelEval_at_zero {n : ℕ} (S : Finset (MultiIndex n))
    (A : FiniteModel n) (h0 : 0 ∈ S) :
    modelEval S A (0 : Fin n → ℝ) = A.coeff 0 := by
  classical
  unfold modelEval polyEval
  rw [Finset.sum_eq_single 0]
  · simp [monomial]
  · intro e _ he
    rw [monomial_zero_of_ne_zero e he, mul_zero]
  · intro hn
    exact False.elim (hn h0)

theorem model_center_value {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (A : FiniteModel n) (h0 : 0 ∈ S) {value : ℝ}
    (hA : ModelSoundAt m S A value (0 : Fin n → ℝ) 0) : value = A.coeff 0 := by
  have he := hA.2
  rw [modelEval_at_zero S A h0] at he
  simp only [pow_succ, zero_mul, mul_zero] at he
  exact sub_eq_zero.mp (abs_nonpos_iff.mp he)

theorem centeredModel_actual_alpha_bound {n : ℕ} (m : ℕ)
    (S : Finset (MultiIndex n)) (A : FiniteModel n)
    (f : (Fin n → ℝ) → ℝ) (h0 : 0 ∈ S) (hc : f 0 ≠ 0)
    (hcenter : ModelSoundAt m S A (f 0) 0 0)
    {h : ℝ} {xi : Fin n → ℝ} (hh : 0 ≤ h) (hh1 : h ≤ 1)
    (hxi : ∀ i, |xi i| ≤ h) (hA : ModelSoundAt m S A (f xi) xi h) :
    |f xi / f 0 - 1| ≤
      (coefficientNorm S (centeredModel A (f 0)).coeff +
        (centeredModel A (f 0)).tail) * h := by
  exact centeredModel_alpha_bound m S A hc (model_center_value m S A h0 hcenter).symm
    h0 hh hh1 hxi hA

end
end Centiradian20261006.RadialProduct20261008
#print axioms Centiradian20261006.RadialProduct20261008.monomial_zero_of_ne_zero
#print axioms Centiradian20261006.RadialProduct20261008.modelEval_at_zero
#print axioms Centiradian20261006.RadialProduct20261008.model_center_value
#print axioms Centiradian20261006.RadialProduct20261008.centeredModel_actual_alpha_bound
