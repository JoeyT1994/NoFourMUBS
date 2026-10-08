import Worker12.Saturation
import Worker12.BoundaryTargets

namespace Worker12

theorem phaseHadamard_columnGram {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) :
    (Matrix.of H).conjTranspose * Matrix.of H = (6 : ℂ) • (1 : Mub6.Matrix6) := by
  have hr : Matrix.of H * ((6 : ℂ)⁻¹ • (Matrix.of H).conjTranspose) = 1 := by
    rw [Matrix.mul_smul, hH.2, smul_smul]
    norm_num
  have hl := Matrix.mul_eq_one_comm.mp hr
  have hs := congrArg (fun M : Mub6.Matrix6 ↦ (6 : ℂ) • M) hl
  simpa [Matrix.smul_mul] using hs

theorem phaseHadamard_transpose {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) : Mub6.IsPhaseHadamard6 (Mub6.transposeEdge H) := by
  refine ⟨fun i j ↦ hH.1 j i, ?_⟩
  ext i j
  have h := congrArg (fun M : Mub6.Matrix6 ↦ M j i) (phaseHadamard_columnGram hH)
  simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Mub6.transposeEdge,
    Matrix.smul_apply, Matrix.one_apply, eq_comm, mul_comm] using h

theorem selectedMinor_transpose (H : Mub6.BasisMatrix) (rows cols : Fin 3 ↪ Fin 6) :
    selectedMinor (Mub6.transposeEdge H) rows cols = (selectedMinor H cols rows).transpose := rfl

theorem transpose_zero_minor_routing {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (selectedMinor H rows cols).det = 0) :
    HasHadamardTwoByTwo (Mub6.transposeEdge H) := by
  apply singular_selectedMinor_hasHadamardTwoByTwo (phaseHadamard_transpose hH) cols rows
  rwa [selectedMinor_transpose, Matrix.det_transpose]

theorem transpose_saturated_minor_routing {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : Complex.normSq (selectedMinor H rows cols).det = 27) :
    Hadamard6.AllFourBlocksHadamard (selectedMatrix (Mub6.transposeEdge H) cols rows) := by
  apply saturated_selectedMinor_allFourBlocks (phaseHadamard_transpose hH) cols rows
  rwa [selectedMinor_transpose, Matrix.det_transpose]

theorem selectedMinor_phaseScale_normSq (H : Mub6.BasisMatrix)
    (rows cols : Fin 3 ↪ Fin 6) (s : ℝ) :
    Complex.normSq (selectedMinor (Mub6.phaseScale s H) rows cols).det =
      s ^ 6 * Complex.normSq (selectedMinor H rows cols).det := by
  have heq : selectedMinor (Mub6.phaseScale s H) rows cols =
      (s : ℂ) • selectedMinor H rows cols := by ext i j; rfl
  rw [heq, Matrix.det_smul, Complex.normSq_mul]
  simp only [map_pow, Complex.normSq_ofReal, Fintype.card_fin]
  ring

theorem selectedMinor_sqrt_six_normSq (H : Mub6.BasisMatrix)
    (rows cols : Fin 3 ↪ Fin 6) :
    Complex.normSq (selectedMinor (Mub6.phaseScale (Real.sqrt 6) H) rows cols).det =
      216 * Complex.normSq (selectedMinor H rows cols).det := by
  rw [selectedMinor_phaseScale_normSq]
  have hs : Real.sqrt 6 ^ 2 = 6 := Real.sq_sqrt (by norm_num)
  have hs6 : Real.sqrt 6 ^ 6 = 216 := by
    calc
      Real.sqrt 6 ^ 6 = (Real.sqrt 6 ^ 2) ^ 3 := by ring
      _ = 216 := by rw [hs]; norm_num
  rw [hs6]

theorem actual_edge_one_eighth_minor_allFourBlocks
    {B : Fin 4 → Mub6.BasisMatrix} (hB : Mub6.IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : Complex.normSq (selectedMinor (Mub6.overlap (B a) (B b)) rows cols).det = 1 / 8) :
    Hadamard6.AllFourBlocksHadamard
      (selectedMatrix (Mub6.phaseScale (Real.sqrt 6) (Mub6.overlap (B a) (B b))) rows cols) := by
  apply saturated_selectedMinor_allFourBlocks
    (Mub6.actual_edge_sqrt_six_phaseHadamard hB a b hab) rows cols
  rw [selectedMinor_sqrt_six_normSq, hdet]
  norm_num

#print axioms phaseHadamard_transpose
#print axioms transpose_zero_minor_routing
#print axioms transpose_saturated_minor_routing
#print axioms selectedMinor_phaseScale_normSq
#print axioms actual_edge_one_eighth_minor_allFourBlocks

end Worker12
