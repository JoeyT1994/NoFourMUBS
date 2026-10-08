import Worker12.ZeroRowTransport

namespace Worker12

theorem monomialEquivalent_transpose {H K : Mub6.BasisMatrix}
    (h : Mub6.MonomialEquivalent H K) :
    Mub6.MonomialEquivalent (Mub6.transposeEdge H) (Mub6.transposeEdge K) := by
  rcases h with ⟨p, q, r, c, hr, hc, h⟩
  refine ⟨q, p, c, r, hc, hr, ?_⟩
  rw [h]
  funext i j
  simp only [Mub6.transposeEdge, Mub6.monomialEdge]
  ring

theorem taoPhase_transpose (ω : ℂ) : Mub6.transposeEdge (taoPhase ω) = taoPhase ω := by
  funext i j
  fin_cases i <;> fin_cases j <;> rfl

theorem families_transpose {H : Mub6.BasisMatrix} (h : FourierOrTransposeOrTao H) :
    FourierOrTransposeOrTao (Mub6.transposeEdge H) := by
  rcases h with ⟨ω, p, q, hω, hp, hq, hf⟩ | ⟨ω, hω, ht⟩
  · left
    refine ⟨ω, p, q, hω, hp, hq, ?_⟩
    rcases hf with hf | ht
    · exact Or.inr (monomialEquivalent_transpose hf)
    · left
      simpa only [Mub6.transposeEdge_involutive] using monomialEquivalent_transpose ht
  · right
    refine ⟨ω, hω, ?_⟩
    simpa only [taoPhase_transpose] using monomialEquivalent_transpose ht

theorem internal_transpose_isHadamard {H : Hadamard6.Mat6}
    (hH : Hadamard6.IsHadamard H) : Hadamard6.IsHadamard H.transpose := by
  refine ⟨fun i j ↦ hH.1 j i, ?_⟩
  ext i j
  have h := congrArg (fun M : Hadamard6.Mat6 ↦ M j i) (Hadamard6.hadamard_column_gram hH)
  simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.transpose_apply,
    Matrix.smul_apply, Matrix.one_apply, eq_comm, mul_comm] using h

theorem repeatedColumns_topLeft_classified {H : Hadamard6.Mat6}
    (hH : Hadamard6.IsHadamard H) {j l : Hadamard6.I3} (hjl : j ≠ l)
    (heq : ∀ i, Matrix.toBlocks₁₁ H i j = Matrix.toBlocks₁₁ H i l) :
    FourierOrTransposeOrTao (unsplitMatrix H) := by
  have h := repeatedRows_topLeft_classified (internal_transpose_isHadamard hH) hjl heq
  have ht := families_transpose h
  change FourierOrTransposeOrTao (Mub6.transposeEdge (Mub6.transposeEdge (unsplitMatrix H))) at ht
  simpa only [Mub6.transposeEdge_involutive] using ht

#print axioms repeatedColumns_topLeft_classified
end Worker12
