import NoFourMUBs.Step2.SOS.FourierContraction
import OAI.Analysis.MutuallyUnbiased.Moments.NormalizedPartitions

/-! Reuse the existing equality-pattern expansion for the Fourier-product
primitive equations in the conditional SOS certificate. -/

noncomputable section
open scoped BigOperators
open OAI.MUB6
namespace NoFourMUBs.Step2.SOS

theorem rowFourier_alpha_zero {H : CMatrix}
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (ρ : Fin 6 ↪ Coord) : rowFourier H ρ alpha = 0 := by
  have hs := alpha_row_vanishing (H := H.transpose) hF ρ
  change (∑ t, ∏ i, H (ρ i) t ^ alpha i) = 0 at hs
  simp only [rowFourier, hs, mul_zero]

theorem averaged_products_zero {n : ℕ} {H : CMatrix}
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0)
    (A : Matrix Coord (Fin n) ℤ) (j : Fin n) (hcolumn : (fun i => A i j) = alpha) :
    averagedRowProducts H A = 0 := by
  have hp (ρ : Fin 6 ↪ Coord) : (∏ j, rowFourier H ρ (fun i => A i j)) = 0 := by
    apply Finset.prod_eq_zero (Finset.mem_univ j)
    rw [hcolumn]
    exact rowFourier_alpha_zero hF ρ
  have hpt (ρ : Fin 6 ↪ Coord) :
      (∏ j, rowFourier H.transpose ρ (fun i => A i j)) = 0 := by
    apply Finset.prod_eq_zero (Finset.mem_univ j)
    rw [hcolumn]
    exact rowFourier_alpha_zero hFt ρ
  simp only [averagedRowProducts, hp, hpt, Complex.zero_re, zero_add, zero_div,
    average_zero]

/-- The moment equation with the exact injective-sampling coefficients.
The existing partition family supplies exhaustive equality patterns. -/
theorem fourier_products_partition_zero {n : ℕ} {P : Type*} [Fintype P]
    {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0)
    (A : Matrix Coord (Fin n) ℤ) (j : Fin n) (hcolumn : (fun i => A i j) = alpha)
    (F : EqualityPatterns.Family (Fin n) P)
    (cover : ∀ f : Fin n → Coord, ∃ s, ∀ i j,
      F.label s i = F.label s j ↔ f i = f j) :
    (∑ s, ((Fintype.card (Fin (F.blocks s) ↪ Coord) : ℝ) / 6 ^ n) *
      injectiveMoment H (groupedColumns A (F.label s))) = 0 := by
  rw [← averagedRowProducts_partition hH A F cover]
  exact averaged_products_zero hF hFt A j hcolumn

end NoFourMUBs.Step2.SOS
