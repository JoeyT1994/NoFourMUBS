import NativeResidual94
import Ball40ActualScalarBounds
import NativeStableR

/-! Bind the existing exact native 94-residual vector to the new actual
radius-1/40 majorant. Completion-model coverage and Taylor semantics remain separate. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.Ball40Residual20261008
open scoped ComplexConjugate
open Ball40Translation20261007 NativeEvaluation20261006 NativeSigned20261006
noncomputable section

theorem dephased_seed_leadingR_majorant (H : Mat6) (hd : Dephased H)
    (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i = Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ))) :
    leadingR H ≤ enlargedSeedMajorant ρ := by
  rw [← exactSeedR_physical_seed hd,exactSeedR_eq_gramInvariant]
  exact actual_matrix_invariant_majorant H σ u hρ hρ' hu hlift

/-- At radius zero the majorant forces the square root to vanish. -/
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
    (hd : Dephased H) (hm : Maximal H) (hR : 0<leadingR H)
    (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i = Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ))) :
    (∀ k : Fin 94, k.val<13 → residual94 H k=0) ∧
      (∀ k : Fin 94, 13≤k.val → |residual94 H k| ≤ 67*ρ^2) := by
  obtain ⟨heq, hineq⟩ := physical_residual94_constraints hH hm hR
  have hq := sqrt_le_enlarged_closed hρ hρ' hR.le
    (dephased_seed_leadingR_majorant H hd σ u hρ hρ' hu hlift)
  exact ⟨heq, fun k hk => le_trans (hineq k hk) hq⟩

end
end Centiradian20261006.Ball40Residual20261008

#print axioms Centiradian20261006.Ball40Residual20261008.dephased_seed_leadingR_majorant
#print axioms Centiradian20261006.Ball40Residual20261008.sqrt_le_enlarged_closed
#print axioms Centiradian20261006.Ball40Residual20261008.physical_seed_residual94_bound
