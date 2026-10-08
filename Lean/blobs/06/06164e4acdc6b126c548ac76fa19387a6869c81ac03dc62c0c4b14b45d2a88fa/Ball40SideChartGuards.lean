import Ball40ActualScalarBounds
import PhysicalBlockRecovery

/-! The nonzero anchored side-chart premise is derived from literal seed
phases at radius 1/40. Both two-point orientations remain in the conclusions. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.Ball40Residual20261008
open scoped ComplexConjugate
open Ball40Translation20261007 NativeSigned20261006
noncomputable section

theorem anchored_chart_norm_bounds {S z : ℂ} {ρ : ℝ}
    (hz : Complex.normSq z=1) (hS : ‖S‖ ≤ 2*ρ) :
    1-2*ρ ≤ ‖S*conj z-1‖ ∧ ‖S*conj z-1‖ ≤ 1+2*ρ := by
  have hz' := unit_norm_of_normSq hz
  have hupper := norm_sub_le (S*conj z) 1
  have hlower := norm_sub_le (S*conj z) (S*conj z-1)
  rw [show S*conj z-(S*conj z-1)=1 by ring] at hlower
  simp only [norm_mul,Complex.norm_conj,hz',mul_one,norm_one] at hupper hlower
  constructor <;> linarith

theorem anchored_chart_nonzero {S z : ℂ} {ρ : ℝ}
    (hρ' : ρ ≤ 1/40) (hz : Complex.normSq z=1) (hS : ‖S‖ ≤ 2*ρ) :
    S*conj z-1 ≠ 0 := by
  have hlower := (anchored_chart_norm_bounds hz hS).1
  intro hzero
  rw [hzero,norm_zero] at hlower
  linarith

def seedSideSum (H : Mat6) (k : Fin 4) : ℂ :=
  ![-1-H 1 1-H 1 2, -1-H 2 1-H 2 2,
    -1-H 1 1-H 2 1, -1-H 1 2-H 2 2] k

/-- Both nontrivial row sums and both nontrivial column sums are small,
for each literal stationary seed. -/
theorem actual_seed_side_sum_bounds (H : Mat6) (σ : Bool) (u : Fin 4 → ℝ)
    {ρ : ℝ} (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i = Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ))) :
    ∀ k : Fin 4, ‖seedSideSum H k‖ ≤ 2*ρ := by
  have h0 : H 1 1=seedPhaseEntries σ u 0 := by simpa [seedEntry,seedPhaseEntries] using hlift 0
  have h1 : H 1 2=seedPhaseEntries σ u 1 := by simpa [seedEntry,seedPhaseEntries] using hlift 1
  have h2 : H 2 1=seedPhaseEntries σ u 2 := by simpa [seedEntry,seedPhaseEntries] using hlift 2
  have h3 : H 2 2=seedPhaseEntries σ u 3 := by simpa [seedEntry,seedPhaseEntries] using hlift 3
  obtain ⟨hs,ht,_⟩ := actual_phase_gram_amplitudes σ u hρ hρ' hu
  have hc1 := phasePair_norm_bound (seedRoot_unit σ) (seedRoot_re σ) hρ (hu 0) (hu 2)
  have hc2 := phasePair_norm_bound (z:=conj (seedRoot σ))
    (by simpa using seedRoot_unit σ) (by simpa using seedRoot_re σ) hρ (hu 1) (hu 3)
  have hsmall := mul_le_mul_of_nonneg_right hρ' hρ
  have he1 : -1-seedPhaseEntries σ u 0-seedPhaseEntries σ u 2 =
      phasePair (seedRoot σ) (u 0) (u 2) := by
    rw [seedPhaseEntries_components]
    rfl
  have he2 : -1-seedPhaseEntries σ u 1-seedPhaseEntries σ u 3 =
      phasePair (conj (seedRoot σ)) (u 1) (u 3) := by
    rw [seedPhaseEntries_components]
    simp [phasePair]
  intro k
  fin_cases k
  · change ‖-1-H 1 1-H 1 2‖ ≤ 2*ρ
    rw [h0,h1]
    change ‖phaseGramS σ u‖ ≤ 2*ρ
    linarith
  · change ‖-1-H 2 1-H 2 2‖ ≤ 2*ρ
    rw [h2,h3]
    change ‖phaseGramT σ u‖ ≤ 2*ρ
    linarith
  · change ‖-1-H 1 1-H 2 1‖ ≤ 2*ρ
    rw [h0,h2,he1]
    nlinarith only [hc1,hsmall,hρ]
  · change ‖-1-H 1 2-H 2 2‖ ≤ 2*ρ
    rw [h1,h3,he2]
    nlinarith only [hc2,hsmall,hρ]

theorem physical_seed_chart_guards (H : Mat6) (hH : Physical H)
    (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i = Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ))) :
    ((-1-H 1 1-H 1 2)*conj (H 1 3)-1 ≠ 0) ∧
    ((-1-H 2 1-H 2 2)*conj (H 2 3)-1 ≠ 0) ∧
    ((-1-H 1 1-H 2 1)*conj (H 3 1)-1 ≠ 0) ∧
    ((-1-H 1 2-H 2 2)*conj (H 3 2)-1 ≠ 0) := by
  have hs := actual_seed_side_sum_bounds H σ u hρ hρ' hu hlift
  exact ⟨anchored_chart_nonzero hρ' (hH.1 1 3) (hs 0),
    anchored_chart_nonzero hρ' (hH.1 2 3) (hs 1),
    anchored_chart_nonzero hρ' (hH.1 3 1) (hs 2),
    anchored_chart_nonzero hρ' (hH.1 3 2) (hs 3)⟩

/-- The existing exhaustive row theorem now needs no extra chart guard. -/
theorem physical_two_side_rows (H : Mat6) (hH : Physical H) (hd : Dephased H)
    (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i = Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ)))
    (i : Fin 6) (hi : i=1 ∨ i=2) :
    let a := (-1-H i 1-H i 2)*conj (H i 3)-1
    (H i 4*conj (H i 3)=pairPlus a ∧ H i 5*conj (H i 3)=pairMinus a) ∨
      (H i 4*conj (H i 3)=pairMinus a ∧ H i 5*conj (H i 3)=pairPlus a) := by
  obtain ⟨hg1,hg2,_,_⟩ := physical_seed_chart_guards H hH σ u hρ hρ' hu hlift
  rcases hi with rfl | rfl
  · exact physical_side_row_pair hH hd 1 (by decide) hg1
  · exact physical_side_row_pair hH hd 2 (by decide) hg2

/-- The same actual bound discharges both column-chart guards; neither
orientation, including ties, has been removed. -/
theorem physical_two_side_columns (H : Mat6) (hH : Physical H) (hd : Dephased H)
    (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i = Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ)))
    (j : Fin 6) (hj : j=1 ∨ j=2) :
    let a := (-1-H 1 j-H 2 j)*conj (H 3 j)-1
    (H 4 j*conj (H 3 j)=pairPlus a ∧ H 5 j*conj (H 3 j)=pairMinus a) ∨
      (H 4 j*conj (H 3 j)=pairMinus a ∧ H 5 j*conj (H 3 j)=pairPlus a) := by
  obtain ⟨_,_,hg1,hg2⟩ := physical_seed_chart_guards H hH σ u hρ hρ' hu hlift
  rcases hj with rfl | rfl
  · exact physical_side_column_pair hH hd 1 (by decide) hg1
  · exact physical_side_column_pair hH hd 2 (by decide) hg2

end
end Centiradian20261006.Ball40Residual20261008

#print axioms Centiradian20261006.Ball40Residual20261008.anchored_chart_norm_bounds
#print axioms Centiradian20261006.Ball40Residual20261008.anchored_chart_nonzero
#print axioms Centiradian20261006.Ball40Residual20261008.actual_seed_side_sum_bounds
#print axioms Centiradian20261006.Ball40Residual20261008.physical_seed_chart_guards
#print axioms Centiradian20261006.Ball40Residual20261008.physical_two_side_rows
#print axioms Centiradian20261006.Ball40Residual20261008.physical_two_side_columns
