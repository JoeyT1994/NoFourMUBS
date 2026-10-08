import Worker12.CubicEndpoints

namespace Worker12

theorem monomialEquivalent_trans {H K L : Mub6.BasisMatrix}
    (hHK : Mub6.MonomialEquivalent H K) (hKL : Mub6.MonomialEquivalent K L) :
    Mub6.MonomialEquivalent H L := by
  rcases hHK with ⟨p₁, q₁, r₁, c₁, hr₁, hc₁, hHK⟩
  rcases hKL with ⟨p₂, q₂, r₂, c₂, hr₂, hc₂, hKL⟩
  refine ⟨p₂.trans p₁, q₂.trans q₁,
    (fun i ↦ r₂ i * r₁ (p₂ i)), (fun j ↦ c₁ (q₂ j) * c₂ j), ?_, ?_, ?_⟩
  · intro i
    simp [Complex.normSq_mul, hr₂ i, hr₁ (p₂ i)]
  · intro j
    simp [Complex.normSq_mul, hc₁ (q₂ j), hc₂ j]
  · rw [hKL, hHK]
    funext i j
    simp only [Mub6.monomialEdge, Equiv.trans_apply]
    ring

theorem families_of_monomialEquivalent {H K : Mub6.BasisMatrix}
    (hHK : Mub6.MonomialEquivalent H K) (hK : FourierOrTransposeOrTao K) :
    FourierOrTransposeOrTao H := by
  rcases hK with ⟨ω, p, q, hω, hp, hq, hf⟩ | ⟨ω, hω, ht⟩
  · left
    refine ⟨ω, p, q, hω, hp, hq, ?_⟩
    rcases hf with hf | ht
    · exact Or.inl (monomialEquivalent_trans hHK hf)
    · exact Or.inr (monomialEquivalent_trans hHK ht)
  · exact Or.inr ⟨ω, hω, monomialEquivalent_trans hHK ht⟩

theorem exactFourierPresentation_classified {H : Hadamard6.Mat6}
    (n : ExactFourierPresentation H) : FourierOrTransposeOrTao (unsplitMatrix H) := by
  apply families_of_monomialEquivalent (equivalent_unsplit n.equivalent)
  rw [n.form]
  rcases n.parameters with hA | ha | hc
  · refine Or.inl ⟨n.ω, n.r, n.s, ⟨n.omega_unit, n.omega_quadratic⟩,
      n.r_unit, n.s_unit, Or.inr ?_⟩
    exact pure_A_monomial n.omega_quadratic hA
  · refine Or.inl ⟨n.ω, n.p, n.q, ⟨n.omega_unit, n.omega_quadratic⟩,
      n.p_unit, n.q_unit, Or.inl ?_⟩
    exact pure_alpha_monomial n.omega_quadratic ha
  · apply cubic_parameters_classified n.omega_unit n.omega_quadratic
      hc.1 hc.2.1 hc.2.2.1 hc.2.2.2
    rw [← n.form]
    exact n.hK.1

theorem unsplit_splitMatrix (H : Mub6.BasisMatrix) : unsplitMatrix (splitMatrix H) = H := by
  funext i j
  simp [unsplitMatrix, splitMatrix]

/-- Unconditional stronger classification for every determinant-27 minor.
Both Fourier orientations, arbitrary continuous parameters and all cubic
endpoints are included. No external exclusion is asserted. -/
theorem saturated_selectedMinor_classified {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : Complex.normSq (selectedMinor H rows cols).det = 27) :
    FourierOrTransposeOrTao H := by
  rcases saturated_selectedMinor_exactFourierPresentation hH rows cols hdet with ⟨n⟩
  have hclass := exactFourierPresentation_classified n
  have heq := equivalent_unsplit
    (Hadamard6.equivalent_reindexMatrix (selectedPermutation rows)
      (selectedPermutation cols) (splitMatrix H))
  rw [unsplit_splitMatrix] at heq
  exact families_of_monomialEquivalent heq hclass

theorem actual_edge_one_eighth_minor_classified
    {B : Fin 4 → Mub6.BasisMatrix} (hB : Mub6.IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : Complex.normSq (selectedMinor (Mub6.overlap (B a) (B b)) rows cols).det = 1 / 8) :
    FourierOrTransposeOrTao (Mub6.phaseScale (Real.sqrt 6) (Mub6.overlap (B a) (B b))) := by
  apply saturated_selectedMinor_classified (Mub6.actual_edge_sqrt_six_phaseHadamard hB a b hab) rows cols
  rw [selectedMinor_sqrt_six_normSq, hdet]
  norm_num

#print axioms saturated_selectedMinor_classified
#print axioms actual_edge_one_eighth_minor_classified
end Worker12
