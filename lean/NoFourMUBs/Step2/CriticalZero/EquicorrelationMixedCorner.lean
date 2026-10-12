import NoFourMUBs.Step2.CriticalZero.EquicorrelationComplement
import NoFourMUBs.Step2.CriticalZero.BlockInvariant

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped ComplexConjugate
namespace NoFourMUBs.Step2.Critical.Equicorrelation
open CriticalStripMoments20261003 NoFourMUBs.Side

/-- The original mixed-corner Laurent identity, on actual unit entries. -/
theorem mixed_signed_formula (c x y : ℂ)
    (hc : Complex.normSq c = 1) (hx : Complex.normSq x = 1)
    (hy : Complex.normSq y = 1) :
    signedExpression 1 1 x 1 c y =
      (c - 1) ^ 2 * (c + 1) * (x - 1) ^ 2 * (x + 1) * (c * x - y ^ 2) /
        (c ^ 2 * x ^ 2 * y) := by
  have cc := conj_eq_inv hc
  have cx := conj_eq_inv hx
  have cy := conj_eq_inv hy
  have hc0 := ne_zero_of_normSq hc
  have hx0 := ne_zero_of_normSq hx
  have hy0 := ne_zero_of_normSq hy
  simp only [signedExpression, phaseExpression, FourierPhysicalSide.permanent,
    Complex.star_def, map_add, map_sub, map_mul, map_pow, map_div₀, map_one,
    cc, cx, cy]
  field_simp [hc0, hx0, hy0]
  <;> ring

theorem mixed_signed_zero (c x y : ℂ)
    (hc : Complex.normSq c = 1) (hx : Complex.normSq x = 1)
    (hy : Complex.normSq y = 1) (hc1 : c ≠ 1) (hcm : c ≠ -1)
    (hs : signedExpression 1 1 x 1 c y = 0) :
    x = 1 ∨ x = -1 ∨ c * x = y ^ 2 := by
  rw [mixed_signed_formula c x y hc hx hy] at hs
  have hd : c ^ 2 * x ^ 2 * y ≠ 0 :=
    mul_ne_zero (mul_ne_zero (pow_ne_zero 2 (ne_zero_of_normSq hc))
      (pow_ne_zero 2 (ne_zero_of_normSq hx))) (ne_zero_of_normSq hy)
  have hn := (div_eq_iff hd).mp hs
  simp only [zero_mul] at hn
  have hcp : c + 1 ≠ 0 := by
    intro h
    apply hcm
    linear_combination h
  have hp : (c - 1) ^ 2 * (c + 1) ≠ 0 :=
    mul_ne_zero (pow_ne_zero 2 (sub_ne_zero.mpr hc1)) hcp
  have hn' : ((c - 1) ^ 2 * (c + 1)) *
      ((x - 1) ^ 2 * (x + 1) * (c * x - y ^ 2)) = 0 := by
    linear_combination hn
  have h := (mul_eq_zero.mp hn').resolve_left hp
  rcases mul_eq_zero.mp h with h | h
  · rcases mul_eq_zero.mp h with h | h
    · left
      rw [pow_two] at h
      rcases mul_eq_zero.mp h with h | h <;> exact sub_eq_zero.mp h
    · right; left
      linear_combination h
  · exact Or.inr (Or.inr (sub_eq_zero.mp h))

theorem alpha_unit : Complex.normSq alpha = 1 := by
  norm_num [alpha, Complex.normSq_apply]

theorem alpha_ne_one : alpha ≠ 1 := by
  intro h
  have hi := congrArg Complex.im h
  norm_num [alpha] at hi

theorem alpha_ne_neg_one : alpha ≠ -1 := by
  intro h
  have hi := congrArg Complex.im h
  norm_num [alpha] at hi

theorem first_mixed_constraint (x y : ℂ)
    (hx : Complex.normSq x = 1) (hy : Complex.normSq y = 1)
    (hs : signedExpression 1 1 x 1 alpha⁻¹ y = 0) :
    x = 1 ∨ x = -1 ∨ x = alpha * y ^ 2 := by
  have hu : Complex.normSq alpha⁻¹ = 1 := by
    rw [Complex.normSq_inv, alpha_unit, inv_one]
  have h1 : alpha⁻¹ ≠ 1 := by
    intro h
    exact alpha_ne_one (by simpa using congrArg (fun z : ℂ => z⁻¹) h)
  have hm : alpha⁻¹ ≠ -1 := by
    intro h
    exact alpha_ne_neg_one (by simpa using congrArg (fun z : ℂ => z⁻¹) h)
  rcases mixed_signed_zero alpha⁻¹ x y hu hx hy h1 hm hs with h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · right; right
    have he := congrArg (fun z : ℂ => alpha * z) h
    simpa only [← mul_assoc, mul_inv_cancel₀ (ne_zero_of_normSq alpha_unit), one_mul]
      using he

theorem second_mixed_constraint (x y : ℂ)
    (hx : Complex.normSq x = 1) (hy : Complex.normSq y = 1)
    (hs : signedExpression 1 1 y 1 alpha x = 0) :
    y = 1 ∨ y = -1 ∨ x ^ 2 = alpha * y := by
  rcases mixed_signed_zero alpha y x alpha_unit hy hx
    alpha_ne_one alpha_ne_neg_one hs with h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr h.symm)

end NoFourMUBs.Step2.Critical.Equicorrelation
