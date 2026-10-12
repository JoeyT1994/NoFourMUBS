import NoFourMUBs.Reuse.Archive.CriticalStripPhysical
import Hadamard6.StandardPhase

/-! Original geometric row-moment argument in the current matrix model. -/

set_option autoImplicit false
noncomputable section
namespace CriticalFourierRouting20261003
open scoped BigOperators

/-- Consequences of three literal full rows (1,x,conjugate x), selected by an
embedding.  Repeated x values are permitted and no x-value is divided by. -/
theorem geometric_rows_moments {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) (ρ : Fin 3 ↪ Fin 6) (x : Fin 6 → ℂ)
    (h0 : ∀ j, H (ρ 0) j = 1)
    (h1 : ∀ j, H (ρ 1) j = x j)
    (h2 : ∀ j, H (ρ 2) j = star (x j)) :
    (∀ j, Complex.normSq (x j) = 1) ∧
      (∑ j, x j) = 0 ∧ (∑ j, (x j) ^ 2) = 0 := by
  have h10 : ρ 1 ≠ ρ 0 := fun h => (by decide : (1 : Fin 3) ≠ 0) (ρ.injective h)
  have h12 : ρ 1 ≠ ρ 2 := fun h => (by decide : (1 : Fin 3) ≠ 2) (ρ.injective h)
  refine ⟨?_, ?_, ?_⟩
  · intro j
    simpa only [h1] using hH.1 (ρ 1) j
  · simpa only [CriticalRowSum20261003.relativeRow, h1, h0, star_one, mul_one] using CriticalPhysical20261003.relative_row_sum_zero hH h10
  · simpa only [CriticalRowSum20261003.relativeRow, h1, h2, star_star, ← pow_two] using CriticalPhysical20261003.relative_row_sum_zero hH h12

#print axioms geometric_rows_moments
end CriticalFourierRouting20261003
