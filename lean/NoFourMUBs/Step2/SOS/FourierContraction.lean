import OAI.Analysis.MutuallyUnbiased.Moments.MomentContraction

/-!
The extra contraction used by our SOS certificate. It reuses OAI's sampling
identity and moment semantics, replacing the order-one orthogonality input by
the existing Fourier vanishing input. No new moment normalization is defined.
-/

noncomputable section
open scoped BigOperators ComplexConjugate
open OAI.MUB6

namespace NoFourMUBs.Step2.SOS

theorem contraction_of_row_vanishing {p q : ℕ} (hp : p < 6)
    {H : CMatrix} (hH : IsHadamard H)
    (A : Matrix (Fin (p + 1)) (Fin q) ℤ)
    (hrow : ∀ κ : Fin q ↪ Coord, ∑ t, rowMonomial H (A 0) t κ = 0)
    (htranspose : ∀ κ : Fin q ↪ Coord,
      ∑ t, rowMonomial H.transpose (A 0) t κ = 0) :
    ((6 - p : ℕ) : ℝ) * injectiveMoment H A +
      (∑ j, injectiveMoment H (mergeFirst A j)) = 0 := by
  have hs (κ : Fin q ↪ Coord) (ρ : Fin p ↪ Coord) :
      ∑ t, contractionIntegrand H A ρ κ t = 0 := by
    have h₁ : ∑ t, contractionMonomial H A ρ κ t = 0 := by
      simp only [contractionMonomial, ← Finset.mul_sum, hrow, mul_zero]
    have h₂ : ∑ t, contractionMonomial H.transpose A ρ κ t = 0 := by
      simp only [contractionMonomial, ← Finset.mul_sum, htranspose, mul_zero]
    simp only [contractionIntegrand, div_eq_mul_inv, ← Finset.sum_mul,
      Finset.sum_add_distrib, ← Complex.re_sum, h₁, h₂, Complex.zero_re,
      zero_add, zero_mul]
  have ht (κ : Fin q ↪ Coord) := Sampling.average_contraction hp
    (fun ρ t => contractionIntegrand H A ρ κ t) (hs κ)
  have hav : average (fun κ : Fin q ↪ Coord =>
      ((6 - p : ℕ) : ℝ) *
        average (fun ρ : Fin (p + 1) ↪ Coord =>
          contractionIntegrand H A (Sampling.dropFirst ρ) κ (ρ 0)) +
        ∑ j : Fin p, average (fun ρ : Fin p ↪ Coord =>
          contractionIntegrand H A ρ κ (ρ j))) = 0 := by
    simp only [ht, average_zero]
  rw [average_add, average_mul, average_sum] at hav
  simp only [contractionIntegrand, contractionMonomial_new,
    contractionMonomial_occupied hH, contractionMonomial_occupied hH.transpose] at hav
  simp only [injectiveMoment_reverse_iterated] at hav
  exact hav

theorem alpha_row_vanishing {H : CMatrix}
    (hF : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0)
    (κ : Fin 6 ↪ Coord) : ∑ t, rowMonomial H alpha t κ = 0 := by
  let e : Equiv.Perm Coord := Equiv.ofBijective κ κ.injective.bijective_of_finite
  have hprod (t : Coord) : rowMonomial H alpha t κ =
      character (fun i => H t i) (permuteCharge e.symm alpha) := by
    change (∏ i, H t (e i) ^ alpha i) = (∏ i, H t i ^ alpha (e.symm i))
    have he := e.bijective.prod_comp (fun i => H t i ^ alpha (e.symm i))
    simpa only [Equiv.symm_apply_apply] using he
  simp_rw [hprod]
  have hv := hF e.symm
  unfold g at hv
  change (6 : ℂ)⁻¹ * (∑ t, character (fun i => H t i)
    (permuteCharge e.symm alpha)) = 0 at hv
  exact (mul_eq_zero.mp hv).resolve_left (by norm_num)

/-- The Fourier primitive equation, in the original injective normalization. -/
theorem fourier_contraction {p : ℕ} (hp : p < 6)
    {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0)
    (A : Matrix (Fin (p + 1)) (Fin 6) ℤ) (hA : A 0 = alpha) :
    ((6 - p : ℕ) : ℝ) * injectiveMoment H A +
      (∑ j, injectiveMoment H (mergeFirst A j)) = 0 := by
  apply contraction_of_row_vanishing hp hH A
  · simpa only [hA] using alpha_row_vanishing hFt
  · simpa only [hA, Matrix.transpose_transpose] using
      (alpha_row_vanishing (H := H.transpose) hF)

end NoFourMUBs.Step2.SOS
