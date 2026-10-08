import Ball40ActualPhaseGram

/-! Direct scalar estimates for the literal phase entries of either seed.
The bounds include radius zero. They do not assert radius exclusion. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.Ball40Translation20261007
open scoped ComplexConjugate
noncomputable section

def phaseGramS (σ : Bool) (u : Fin 4 → ℝ) : ℂ :=
  -1-seedPhaseEntries σ u 0-seedPhaseEntries σ u 1
def phaseGramT (σ : Bool) (u : Fin 4 → ℝ) : ℂ :=
  -1-seedPhaseEntries σ u 2-seedPhaseEntries σ u 3
def phaseGramR (σ : Bool) (u : Fin 4 → ℝ) : ℂ :=
  -1-seedPhaseEntries σ u 2*conj (seedPhaseEntries σ u 0)-
    seedPhaseEntries σ u 3*conj (seedPhaseEntries σ u 1)

theorem phasePair_norm_bound {z : ℂ} (hu : Complex.normSq z=1)
    (hr : z.re=-(1:ℝ)/2) {x y ρ : ℝ} (hρ : 0 ≤ ρ)
    (hx : |x| ≤ ρ) (hy : |y| ≤ ρ) :
    ‖phasePair z x y‖ ≤ (7/4:ℝ)*ρ+ρ^2 := by
  have he := phasePair_error_bound hu hr hρ hx hy
  have hl := phasePairLinear_bound hu hr hρ hx hy
  calc
    _ = ‖(phasePair z x y-phasePairLinear z x y)+phasePairLinear z x y‖ := by
      congr 1
      ring
    _ ≤ ‖phasePair z x y-phasePairLinear z x y‖+‖phasePairLinear z x y‖ := norm_add_le _ _
    _ ≤ (7/4:ℝ)*ρ+ρ^2 := by linarith

/-- The two ordinary pairs and one difference pair have distinct literal
amplitude constants. No division by the radius is used. -/
theorem actual_phase_gram_amplitudes (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ) :
    ‖phaseGramS σ u‖ ≤ (71/40:ℝ)*ρ ∧
    ‖phaseGramT σ u‖ ≤ (71/40:ℝ)*ρ ∧
    ‖phaseGramR σ u‖ ≤ (18/5:ℝ)*ρ := by
  have hS := phasePair_norm_bound (seedRoot_unit σ) (seedRoot_re σ) hρ (hu 0) (hu 1)
  have hT := phasePair_norm_bound (z:=conj (seedRoot σ))
    (by simpa using seedRoot_unit σ) (by simpa using seedRoot_re σ) hρ (hu 2) (hu 3)
  have h20 : |u 2-u 0| ≤ 2*ρ := by
    have ht : |u 2-u 0| ≤ |u 2|+|u 0| := by
      simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le (u 2) 0 (u 0)
    linarith [hu 2, hu 0]
  have h31 : |u 3-u 1| ≤ 2*ρ := by
    have ht : |u 3-u 1| ≤ |u 3|+|u 1| := by
      simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le (u 3) 0 (u 1)
    linarith [hu 3, hu 1]
  have hR := phasePair_norm_bound (seedRoot_unit σ) (seedRoot_re σ)
    (show 0 ≤ 2*ρ by linarith) h20 h31
  have heS : phaseGramS σ u=phasePair (seedRoot σ) (u 0) (u 1) := by
    unfold phaseGramS
    rw [seedPhaseEntries_components]
    rfl
  have heT : phaseGramT σ u=phasePair (conj (seedRoot σ)) (u 2) (u 3) := by
    unfold phaseGramT
    rw [seedPhaseEntries_components]
    simp [phasePair]
  have heR : phaseGramR σ u=phasePair (seedRoot σ) (u 2-u 0) (u 3-u 1) :=
    seedPhaseEntries_cross σ u
  have hsmall := mul_le_mul_of_nonneg_right hρ' hρ
  rw [heS, heT, heR]
  constructor
  · nlinarith only [hS, hsmall]
  constructor
  · nlinarith only [hT, hsmall]
  · nlinarith only [hR, hsmall]

theorem gramJ_bound_of_amplitudes {s t r : ℂ} {ρ : ℝ} (hρ : 0 ≤ ρ)
    (hs : ‖s‖ ≤ (71/40:ℝ)*ρ) (ht : ‖t‖ ≤ (71/40:ℝ)*ρ)
    (hr : ‖r‖ ≤ (18/5:ℝ)*ρ) : |gramJ s t r| ≤ 23*ρ^3 := by
  have hre : |(s*r*conj t).re| ≤ ‖s‖*‖r‖*‖t‖ := by
    simpa only [norm_mul, Complex.norm_conj] using Complex.abs_re_le_norm (s*r*conj t)
  calc
    _ = 2*|(s*r*conj t).re| := by simp [gramJ, abs_mul]
    _ ≤ 2*(‖s‖*‖r‖*‖t‖) := by linarith
    _ ≤ 2*(((71/40:ℝ)*ρ)*((18/5:ℝ)*ρ)*((71/40:ℝ)*ρ)) := by gcongr
    _ ≤ 23*ρ^3 := by nlinarith [pow_nonneg hρ 3]

/-- The nonnegative W bound follows from small p and nonnegative squared norms.
It does not assume the desired sign of W. -/
theorem gramW_bounds_of_p {s t r : ℂ} {ρ : ℝ} (hρ : 0 ≤ ρ)
    (hρ' : ρ ≤ 1/40) (hp : gramP s t r ≤ 19*ρ^2) :
    0 ≤ gramW s t r ∧ gramW s t r ≤ 121*ρ^4 := by
  have hX := Complex.normSq_nonneg s
  have hY := Complex.normSq_nonneg t
  have hZ := Complex.normSq_nonneg r
  have hp0 : 0 ≤ gramP s t r := by unfold gramP; positivity
  have hp2 := mul_self_le_mul_self hp0 hp
  have hρ2 : ρ^2 ≤ ((1:ℝ)/40)^2 := by gcongr
  have hZ1 : Complex.normSq r ≤ 1 := by unfold gramP at hp; nlinarith
  have hprod := mul_nonneg (mul_nonneg hX hY) hZ
  have hnonneg := mul_nonneg (mul_nonneg hX hY) (sub_nonneg.mpr hZ1)
  have hXZ := mul_nonneg hX hZ
  have hYZ := mul_nonneg hY hZ
  have hsym : 3*(Complex.normSq s*Complex.normSq t+
      Complex.normSq s*Complex.normSq r+Complex.normSq t*Complex.normSq r) ≤
      (gramP s t r)^2 := by
    unfold gramP
    nlinarith [sq_nonneg (Complex.normSq s-Complex.normSq t),
      sq_nonneg (Complex.normSq s-Complex.normSq r),
      sq_nonneg (Complex.normSq t-Complex.normSq r)]
  constructor
  · unfold gramW
    nlinarith only [hnonneg, hXZ, hYZ]
  · unfold gramW
    nlinarith only [hsym, hp2, hprod, pow_nonneg hρ 4]

theorem actual_phase_p_bound (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ) :
    0 ≤ gramP (phaseGramS σ u) (phaseGramT σ u) (phaseGramR σ u) ∧
    gramP (phaseGramS σ u) (phaseGramT σ u) (phaseGramR σ u) ≤ 19*ρ^2 := by
  constructor
  · exact add_nonneg (add_nonneg (Complex.normSq_nonneg _) (Complex.normSq_nonneg _))
      (Complex.normSq_nonneg _)
  · simpa only [gramP, phaseGramS, phaseGramT, phaseGramR] using
      gram_sum_bound hρ hρ' (hu 0) (hu 1) (hu 2) (hu 3) (actual_phase_gram_error σ u hρ hu)

theorem actual_phase_J_bound (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ) :
    |gramJ (phaseGramS σ u) (phaseGramT σ u) (phaseGramR σ u)| ≤ 23*ρ^3 := by
  obtain ⟨hs, ht, hr⟩ := actual_phase_gram_amplitudes σ u hρ hρ' hu
  exact gramJ_bound_of_amplitudes hρ hs ht hr

theorem actual_phase_W_bounds (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ) :
    0 ≤ gramW (phaseGramS σ u) (phaseGramT σ u) (phaseGramR σ u) ∧
    gramW (phaseGramS σ u) (phaseGramT σ u) (phaseGramR σ u) ≤ 121*ρ^4 :=
  gramW_bounds_of_p hρ hρ' (actual_phase_p_bound σ u hρ hρ' hu).2

theorem actual_phase_L_bound (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ) :
    324*gramW (phaseGramS σ u) (phaseGramT σ u) (phaseGramR σ u)-
      81*(gramP (phaseGramS σ u) (phaseGramT σ u) (phaseGramR σ u))^2 ≤
      972*ρ^4+107730*ρ^5+55404*ρ^6 := by
  apply gram_L_bound hρ hρ' (Complex.normSq_nonneg _) (Complex.normSq_nonneg _)
    (Complex.normSq_nonneg _) (hu 0) (hu 1) (hu 2) (hu 3)
  exact actual_phase_gram_error σ u hρ hu

/-- The existing enlarged scalar majorant now receives all of its analytic
premises from the literal four-angle phase lift. -/
theorem actual_phase_invariant_majorant (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ) :
    gramInvariant (phaseGramS σ u) (phaseGramT σ u) (phaseGramR σ u) ≤
      enlargedSeedMajorant ρ := by
  obtain ⟨hp0, hp⟩ := actual_phase_p_bound σ u hρ hρ' hu
  obtain ⟨hW0, hW⟩ := actual_phase_W_bounds σ u hρ hρ' hu
  exact enlarged_scalar_majorant ρ _ _ _ hρ hp0 hW0 hp
    (actual_phase_J_bound σ u hρ hρ' hu) hW (actual_phase_L_bound σ u hρ hρ' hu)

/-- Direct actual-entry version. The lift is the literal one in
InPuncturedSeedBall; no Gram estimate or scalar certificate is a premise. -/
theorem actual_matrix_scalar_bounds (H : Mat6) (σ : Bool) (u : Fin 4 → ℝ)
    {ρ : ℝ} (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i =
      Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ))) :
    let s := -1-H 1 1-H 1 2
    let t := -1-H 2 1-H 2 2
    let r := -1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2)
    0 ≤ gramP s t r ∧ gramP s t r ≤ 19*ρ^2 ∧ |gramJ s t r| ≤ 23*ρ^3 ∧
    0 ≤ gramW s t r ∧ gramW s t r ≤ 121*ρ^4 ∧
    324*gramW s t r-81*(gramP s t r)^2 ≤ 972*ρ^4+107730*ρ^5+55404*ρ^6 := by
  have h0 : H 1 1=seedPhaseEntries σ u 0 := by simpa [seedEntry, seedPhaseEntries] using hlift 0
  have h1 : H 1 2=seedPhaseEntries σ u 1 := by simpa [seedEntry, seedPhaseEntries] using hlift 1
  have h2 : H 2 1=seedPhaseEntries σ u 2 := by simpa [seedEntry, seedPhaseEntries] using hlift 2
  have h3 : H 2 2=seedPhaseEntries σ u 3 := by simpa [seedEntry, seedPhaseEntries] using hlift 3
  dsimp only
  rw [h0, h1, h2, h3]
  exact ⟨(actual_phase_p_bound σ u hρ hρ' hu).1,
    (actual_phase_p_bound σ u hρ hρ' hu).2,
    actual_phase_J_bound σ u hρ hρ' hu,
    (actual_phase_W_bounds σ u hρ hρ' hu).1,
    (actual_phase_W_bounds σ u hρ hρ' hu).2,
    actual_phase_L_bound σ u hρ hρ' hu⟩

theorem actual_matrix_invariant_majorant (H : Mat6) (σ : Bool) (u : Fin 4 → ℝ)
    {ρ : ℝ} (hρ : 0 ≤ ρ) (hρ' : ρ ≤ 1/40) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i =
      Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ))) :
    gramInvariant (-1-H 1 1-H 1 2) (-1-H 2 1-H 2 2)
      (-1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2)) ≤ enlargedSeedMajorant ρ := by
  obtain ⟨hp0, hp, hJ, hW0, hW, hL⟩ := actual_matrix_scalar_bounds H σ u hρ hρ' hu hlift
  exact enlarged_scalar_majorant ρ _ _ _ hρ hp0 hW0 hp hJ hW hL

end
end Centiradian20261006.Ball40Translation20261007

#print axioms Centiradian20261006.Ball40Translation20261007.phasePair_norm_bound
#print axioms Centiradian20261006.Ball40Translation20261007.actual_phase_gram_amplitudes
#print axioms Centiradian20261006.Ball40Translation20261007.gramJ_bound_of_amplitudes
#print axioms Centiradian20261006.Ball40Translation20261007.gramW_bounds_of_p
#print axioms Centiradian20261006.Ball40Translation20261007.actual_phase_p_bound
#print axioms Centiradian20261006.Ball40Translation20261007.actual_phase_J_bound
#print axioms Centiradian20261006.Ball40Translation20261007.actual_phase_W_bounds
#print axioms Centiradian20261006.Ball40Translation20261007.actual_phase_L_bound
#print axioms Centiradian20261006.Ball40Translation20261007.actual_phase_invariant_majorant
#print axioms Centiradian20261006.Ball40Translation20261007.actual_matrix_scalar_bounds
#print axioms Centiradian20261006.Ball40Translation20261007.actual_matrix_invariant_majorant
