import NoFourMUBs.Step2.CriticalZero.SingularModel
import NoFourMUBs.Step2.CriticalZero.SingularModel

namespace Worker12

/-- Universal zero-minor routing to an actual injected H2 submatrix. This
does not assert classification into the Fourier, transposed Fourier or Tao
families and does not exclude a quartet. -/
theorem singular_selectedMinor_hasHadamardTwoByTwo
    {H : OAI.MUB6.CMatrix} (hH : OAI.MUB6.IsHadamard H)
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

#print axioms singular_selectedMinor_hasHadamardTwoByTwo
end Worker12
