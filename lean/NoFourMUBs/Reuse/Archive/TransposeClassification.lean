import NoFourMUBs.Reuse.Archive.ZeroRowTransport

namespace Worker12

theorem taoPhase_transpose (ω : ℂ) : Matrix.transpose (taoPhase ω) = taoPhase ω := by
  funext i j
  fin_cases i <;> fin_cases j <;> rfl

theorem families_transpose {H : OAI.MUB6.CMatrix} (h : FourierOrTransposeOrTao H) :
    FourierOrTransposeOrTao (Matrix.transpose H) := by
  rcases h with ⟨ω, p, q, hω, hp, hq, hf⟩ | ⟨ω, hω, ht⟩
  · left
    refine ⟨ω, p, q, hω, hp, hq, ?_⟩
    rcases hf with hf | ht
    · exact Or.inr (NoFourMUBs.Step2.FourierBridge.oai_equivalent_transpose hf)
    · left
      simpa only [Matrix.transpose_transpose] using NoFourMUBs.Step2.FourierBridge.oai_equivalent_transpose ht
  · right
    refine ⟨ω, hω, ?_⟩
    simpa only [taoPhase_transpose] using NoFourMUBs.Step2.FourierBridge.oai_equivalent_transpose ht

theorem repeatedColumns_topLeft_classified {H : Hadamard6.Mat6}
    (hH : Hadamard6.IsHadamard H) {j l : Hadamard6.I3} (hjl : j ≠ l)
    (heq : ∀ i, Matrix.toBlocks₁₁ H i j = Matrix.toBlocks₁₁ H i l) :
    FourierOrTransposeOrTao (unsplitMatrix H) := by
  have h := repeatedRows_topLeft_classified (Hadamard6.transpose_isHadamard hH) hjl heq
  have ht := families_transpose h
  change FourierOrTransposeOrTao (Matrix.transpose (Matrix.transpose (unsplitMatrix H))) at ht
  simpa only [Matrix.transpose_transpose] using ht

#print axioms repeatedColumns_topLeft_classified
end Worker12
