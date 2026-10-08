import Worker12.Indexing
import Worker12.VanishingMinorReduction

namespace Worker12

/-- Actual permutations, not a convention that the chosen minor was already
in a distinguished corner. -/
noncomputable def selectedMatrix (H : Mub6.BasisMatrix)
    (rows cols : Fin 3 ↪ Fin 6) : Hadamard6.Mat6 :=
  Hadamard6.reindexMatrix (selectedPermutation rows) (selectedPermutation cols)
    (splitMatrix H)

theorem selectedMatrix_corner (H : Mub6.BasisMatrix) (rows cols : Fin 3 ↪ Fin 6) :
    Matrix.toBlocks₁₁ (selectedMatrix H rows cols) = selectedMinor H rows cols := by
  ext i j
  simp [selectedMatrix, Hadamard6.reindexMatrix, Matrix.toBlocks₁₁,
    splitMatrix, selectedPermutation_apply, selectedMinor]

theorem selectedMatrix_isHadamard {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (rows cols : Fin 3 ↪ Fin 6) :
    Hadamard6.IsHadamard (selectedMatrix H rows cols) :=
  Hadamard6.reindexMatrix_isHadamard (splitMatrix_isHadamard hH)

/-- Universal zero-minor routing to an actual injected H2 submatrix. This
does not assert classification into the Fourier, transposed Fourier or Tao
families and does not exclude a quartet. -/
theorem singular_selectedMinor_hasHadamardTwoByTwo
    {H : Mub6.BasisMatrix} (hH : Mub6.IsPhaseHadamard6 H)
    (rows cols : Fin 3 ↪ Fin 6)
    (hdet : Matrix.det (selectedMinor H rows cols) = 0) :
    HasHadamardTwoByTwo H := by
  have hK := selectedMatrix_isHadamard hH rows cols
  have hcorner : Matrix.det (Matrix.toBlocks₁₁ (selectedMatrix H rows cols)) = 0 := by
    rwa [selectedMatrix_corner]
  have htwo := Hadamard6.singular_topLeft_hasHadamardTwoByTwo hK hcorner
  apply splitMatrix_hasHadamardTwoByTwo
  exact Hadamard6.hasHadamardTwoByTwo_of_equivalent
    (Hadamard6.equivalent_reindexMatrix (selectedPermutation rows)
      (selectedPermutation cols) (splitMatrix H)) htwo

/-- Quartet-bound version at the proved sqrt(6) phase normalization. All four
physical bases remain quantified by the genuine quartet hypothesis. -/
theorem actual_edge_singular_selectedMinor_hasHadamardTwoByTwo
    {B : Fin 4 → Mub6.BasisMatrix} (hB : Mub6.IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : Matrix.det (selectedMinor
      (Mub6.phaseScale (Real.sqrt 6) (Mub6.overlap (B a) (B b))) rows cols) = 0) :
    HasHadamardTwoByTwo (Mub6.phaseScale (Real.sqrt 6) (Mub6.overlap (B a) (B b))) :=
  singular_selectedMinor_hasHadamardTwoByTwo
    (Mub6.actual_edge_sqrt_six_phaseHadamard hB a b hab) rows cols hdet

/-- The same literal zero-minor statement on an unscaled physical overlap
implies the phase-normalized statement; scalar multiplication does not
silently change which zero minor is being used. -/
theorem selectedMinor_phaseScale_det_zero {H : Mub6.BasisMatrix}
    (rows cols : Fin 3 ↪ Fin 6) (s : ℝ)
    (hdet : Matrix.det (selectedMinor H rows cols) = 0) :
    Matrix.det (selectedMinor (Mub6.phaseScale s H) rows cols) = 0 := by
  have heq : selectedMinor (Mub6.phaseScale s H) rows cols =
      (s : ℂ) • selectedMinor H rows cols := by
    ext i j
    rfl
  rw [heq, Matrix.det_smul, hdet, mul_zero]

theorem actual_edge_zero_minor_hasHadamardTwoByTwo
    {B : Fin 4 → Mub6.BasisMatrix} (hB : Mub6.IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : Matrix.det (selectedMinor (Mub6.overlap (B a) (B b)) rows cols) = 0) :
    HasHadamardTwoByTwo (Mub6.phaseScale (Real.sqrt 6) (Mub6.overlap (B a) (B b))) :=
  actual_edge_singular_selectedMinor_hasHadamardTwoByTwo hB a b hab rows cols
    (selectedMinor_phaseScale_det_zero rows cols (Real.sqrt 6) hdet)

#print axioms singular_selectedMinor_hasHadamardTwoByTwo
#print axioms actual_edge_singular_selectedMinor_hasHadamardTwoByTwo
#print axioms selectedMinor_phaseScale_det_zero
#print axioms actual_edge_zero_minor_hasHadamardTwoByTwo

end Worker12
