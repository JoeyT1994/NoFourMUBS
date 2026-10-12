import NoFourMUBs.Reuse.Archive.CubicEndpoints

namespace Worker12

theorem families_of_monomialEquivalent {H K : OAI.MUB6.CMatrix}
    (hHK : OAI.MUB6.Equivalent H K) (hK : FourierOrTransposeOrTao K) :
    FourierOrTransposeOrTao H := by
  rcases hK with ⟨ω, p, q, hω, hp, hq, hf⟩ | ⟨ω, hω, ht⟩
  · left
    refine ⟨ω, p, q, hω, hp, hq, ?_⟩
    rcases hf with hf | ht
    · exact Or.inl (OAI.MUB6.equivalent_trans hHK hf)
    · exact Or.inr (OAI.MUB6.equivalent_trans hHK ht)
  · exact Or.inr ⟨ω, hω, OAI.MUB6.equivalent_trans hHK ht⟩

theorem exactFourierPresentation_classified {H : Hadamard6.Mat6}
    (n : Hadamard6.FourierNormalization H) : FourierOrTransposeOrTao (unsplitMatrix H) := by
  apply families_of_monomialEquivalent (equivalent_unsplit n.equivalent)
  rw [n.normalForm]
  have hD : Hadamard6.EntrywiseUnit (Hadamard6.fourierForcedD n.ω n.p n.q n.r n.s) := by
    intro i j
    have h := n.hK.1 (Sum.inr i) (Sum.inr j)
    rw [n.normalForm] at h
    exact h
  rcases forced_flat_parameter_branches n.omega_unit n.omega_quadratic
    n.p_unit n.q_unit n.r_unit n.s_unit hD with hA | ha | hc
  · refine Or.inl ⟨n.ω, n.r, n.s, ⟨n.omega_unit, n.omega_quadratic⟩,
      n.r_unit, n.s_unit, Or.inr ?_⟩
    exact pure_A_monomial n.omega_quadratic hA
  · refine Or.inl ⟨n.ω, n.p, n.q, ⟨n.omega_unit, n.omega_quadratic⟩,
      n.p_unit, n.q_unit, Or.inl ?_⟩
    exact pure_alpha_monomial n.omega_quadratic ha
  · apply cubic_parameters_classified n.omega_unit n.omega_quadratic
      hc.1 hc.2.1 hc.2.2.1 hc.2.2.2
    rw [← n.normalForm]
    exact n.hK.1

#print axioms families_of_monomialEquivalent
#print axioms exactFourierPresentation_classified
end Worker12
