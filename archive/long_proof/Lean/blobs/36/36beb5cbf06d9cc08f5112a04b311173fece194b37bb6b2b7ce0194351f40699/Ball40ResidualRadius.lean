import Ball40Residual94
import Ball40ActualScalarBounds
import NativeStableR

/-! Radius-1/40 physical binding of every necessary residual.
No model-exhaustion or Taylor-tail hypothesis is substituted for a proof. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.Ball40Residual20261008
open scoped ComplexConjugate
open Ball40Translation20261007 NativeEvaluation20261006
noncomputable section

theorem dephased_seed_leadingR_majorant (H : Mat6) (hd : Dephased H)
    (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i = Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ))) :
    leadingR H ≤ enlargedSeedMajorant ρ := by
  rw [← exactSeedR_physical_seed hd,exactSeedR_eq_gramInvariant]
  exact actual_matrix_invariant_majorant H σ u hρ hρ' hu hlift

/-- Closed form of the already checked enlarged square-root estimate.
At rho=0 the majorant itself forces the square root to vanish. -/
theorem sqrt_le_enlarged_closed {R ρ : ℝ} (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40)
    (hR : 0 ≤ R) (hb : R ≤ enlargedSeedMajorant ρ) : Real.sqrt R ≤ 67*ρ^2 := by
  by_cases hz : ρ=0
  · subst ρ
    have hb0 : R ≤ 0 := by simpa [enlargedSeedMajorant] using hb
    have hzero : R=0 := le_antisymm hb0 hR
    simp [hzero]
  · have hpos : 0<ρ := lt_of_le_of_ne hρ (Ne.symm hz)
    exact le_of_lt (enlarged_sqrt_bound_from_majorant hpos hρ' hR hb)

theorem physical_seed_residual94_bound (H : Mat6) (hH : Physical H)
    (hd : Dephased H) (hm : Maximal H) (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i = Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ)))
    (k : Fin 94) :
    if k.val<13 then residual94 H k=0 else |residual94 H k| ≤ 67*ρ^2 := by
  by_cases h13 : k.val<13
  · simp only [if_pos h13]
    exact physical_first13_zero hH k h13
  · have hs := SignedDeterminant.physical_maximal_signed_square_bound hH hm
      0 1 2 0 1 2 (by decide) (by decide) (by decide) (by decide)
    have hR : 0 ≤ leadingR H := le_trans (sq_nonneg _) hs
    have hq := sqrt_le_enlarged_closed hρ hρ' hR
      (dephased_seed_leadingR_majorant H hd σ u hρ hρ' hu hlift)
    have hn := physical_residual94_necessary hH hm k
    simp only [if_neg h13] at hn ⊢
    exact le_trans hn hq

end
end Centiradian20261006.Ball40Residual20261008

#print axioms Centiradian20261006.Ball40Residual20261008.dephased_seed_leadingR_majorant
#print axioms Centiradian20261006.Ball40Residual20261008.sqrt_le_enlarged_closed
#print axioms Centiradian20261006.Ball40Residual20261008.physical_seed_residual94_bound
