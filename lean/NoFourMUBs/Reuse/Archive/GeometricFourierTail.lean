import NoFourMUBs.Step2.CriticalZero.FourierRoutingModel
import NoFourMUBs.Reuse.Archive.ContinuousBindings

/-! Checked endpoints at the two ends of the geometric-row route.  The
extraction of two equilateral column triples from six unit roots, and the
normalization preserving the conjugate parameter pair, remain separate.
-/
set_option autoImplicit false
namespace CriticalFourierRouting20261003
open Worker12 Hadamard6
open scoped BigOperators
noncomputable section

theorem fourier_of_monomial {H K : OAI.MUB6.CMatrix}
    (heq : OAI.MUB6.Equivalent H K) (hK : FourierOrTranspose K) :
    FourierOrTranspose H := by
  rcases hK with ⟨ω, p, q, hω, hp, hq, h⟩
  refine ⟨ω, p, q, hω, hp, hq, ?_⟩
  exact h.imp (OAI.MUB6.equivalent_trans heq) (OAI.MUB6.equivalent_trans heq)

theorem cubic_conjugate_character {ω u : ℂ}
    (hω : Worker12.PrimitiveCubicPhase ω) (hu3 : IsCubicRoot u) :
    CharacterPair ω u (star u) := by
  rcases cubic_root_eq_one_or_omega hω.2 hu3 with rfl | rfl | rfl
  · exact Or.inl ⟨rfl, by simp⟩
  · exact Or.inr (Or.inr ⟨rfl, star_eq_square_of_quadratic_unit hω.1 hω.2⟩)
  · exact Or.inr (Or.inl ⟨rfl, star_square_eq_of_quadratic_unit hω.1 hω.2⟩)

/-- The conjugate pair turns every cubic allocation into a pure Fourier
allocation. No Laurent division or exceptional u^3=1 omission occurs. -/
theorem geometric_forced_parameters {ω u r s : ℂ}
    (hω : Worker12.PrimitiveCubicPhase ω)
    (hu : Complex.normSq u = 1) (hr : Complex.normSq r = 1)
    (hs : Complex.normSq s = 1)
    (hD : EntrywiseUnit (fourierForcedD ω u (star u) r s)) :
    CharacterPair ω u (star u) ∨ CharacterPair ω r s := by
  have hsu : Complex.normSq (star u) = 1 := by
    simpa only [Complex.star_def, Complex.normSq_conj] using hu
  rcases forced_flat_parameter_branches hω.1 hω.2 hu hsu hr hs hD with hA | ha | hc
  · exact Or.inl hA
  · exact Or.inr ha
  · exact Or.inl (cubic_conjugate_character hω hc.1)

/-- Actual Hadamard matrices in the displayed geometric normal form route
to the continuous Fourier family or transpose, with no Tao alternative. -/
theorem geometric_normalForm_fourier {ω u r s : ℂ}
    (hω : Worker12.PrimitiveCubicPhase ω)
    (hu : Complex.normSq u = 1) (hr : Complex.normSq r = 1)
    (hs : Complex.normSq s = 1)
    (hH : IsHadamard
      (fourierNormalForm ω u (star u) r s (fourierForcedD ω u (star u) r s))) :
    FourierOrTranspose (unsplitMatrix
      (fourierNormalForm ω u (star u) r s (fourierForcedD ω u (star u) r s))) := by
  have hD : EntrywiseUnit (fourierForcedD ω u (star u) r s) :=
    fun i j => hH.1 (Sum.inr i) (Sum.inr j)
  rcases geometric_forced_parameters hω hu hr hs hD with hA | ha
  · exact ⟨ω, r, s, hω, hr, hs, Or.inr (pure_A_monomial hω.2 hA)⟩
  · refine ⟨ω, u, star u, hω, hu, ?_, Or.inl (pure_alpha_monomial hω.2 ha)⟩
    simpa only [Complex.star_def, Complex.normSq_conj] using hu

/-- Scope-explicit endpoint using the existing first-three-block completion.
The normal form is an explicit remaining premise, not a claimed consequence
of geometric rows in this module. -/
theorem geometric_first_three_blocks_fourier {H : Mat6} {ω u r s : ℂ} {D : Mat3}
    (hH : IsHadamard H)
    (hform : H = fourierNormalForm ω u (star u) r s D)
    (hω : Worker12.PrimitiveCubicPhase ω) :
    FourierOrTranspose (unsplitMatrix H) := by
  have hu : Complex.normSq u = 1 := by
    simpa [hform, fourierNormalForm, rowGauge, fourierParameters, Hadamard6.fourier3]
      using hH.1 (Sum.inl 1) (Sum.inr 0)
  have hr : Complex.normSq r = 1 := by
    simpa [hform, fourierNormalForm, columnGauge, rowGauge, fourierParameters,
      Hadamard6.fourier3] using hH.1 (Sum.inr 0) (Sum.inl 1)
  have hs : Complex.normSq s = 1 := by
    simpa [hform, fourierNormalForm, columnGauge, rowGauge, fourierParameters,
      Hadamard6.fourier3] using hH.1 (Sum.inr 0) (Sum.inl 2)
  have hA : IsHadamard3 (Matrix.toBlocks₁₁ H) := by
    rw [hform]
    change IsHadamard3 (Hadamard6.fourier3 ω)
    rw [fourier3_power_eq_literal hω.2]
    exact literal_fourier3_isHadamard hω.1 hω.2
  have hB : IsHadamard3
      (rowGauge (fourierParameters u (star u)) (Hadamard6.fourier3 ω)) := by
    simpa [hform, fourierNormalForm] using (allFourBlocksHadamard_of_topLeft hH hA).2.1
  have hf := first_three_blocks_force_full_normalForm hH hform hω.1 hω.2 hB
  rw [hf]
  exact geometric_normalForm_fourier hω hu hr hs (hf ▸ hH)

end
end CriticalFourierRouting20261003

#print axioms CriticalFourierRouting20261003.fourier_of_monomial
#print axioms CriticalFourierRouting20261003.cubic_conjugate_character
#print axioms CriticalFourierRouting20261003.geometric_forced_parameters
#print axioms CriticalFourierRouting20261003.geometric_normalForm_fourier
#print axioms CriticalFourierRouting20261003.geometric_first_three_blocks_fourier
