import Worker12.EndpointSupport

namespace Worker12
set_option maxHeartbeats 4000000
def rows_0102 : Equiv.Perm (Fin 6) where
  toFun := ![0, 1, 2, 3, 4, 5]
  invFun := ![0, 1, 2, 3, 4, 5]
  left_inv := by intro i; fin_cases i <;> rfl
  right_inv := by intro i; fin_cases i <;> rfl

def cols_0102 : Equiv.Perm (Fin 6) where
  toFun := ![0, 3, 4, 1, 5, 2]
  invFun := ![0, 3, 5, 1, 2, 4]
  left_inv := by intro i; fin_cases i <;> rfl
  right_inv := by intro i; fin_cases i <;> rfl

def rowPhases_0102 : Fin 6 → ℕ := ![0, 0, 0, 0, 0, 0]
def colPhases_0102 : Fin 6 → ℕ := ![0, 0, 0, 0, 0, 0]
theorem endpoint_0102_tao {ω : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0) :
    Mub6.MonomialEquivalent (cubicSeed ω 0 1 0 2) (taoPhase ω) := by
  refine ⟨rows_0102, cols_0102, (fun i ↦ ω ^ rowPhases_0102 i),
    (fun j ↦ ω ^ colPhases_0102 j), ?_, ?_, ?_⟩
  · intro i
    simp [map_pow, hωu]
  · intro j
    simp [map_pow, hωu]
  · funext i j
    fin_cases i <;> fin_cases j
    · change taoPhase ω 0 0 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 0 0 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 0 1 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 0 3 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 0 2 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 0 4 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 0 3 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 0 1 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 0 4 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 0 5 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 0 5 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 0 2 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 1 0 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 1 0 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 1 1 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 1 3 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 1 2 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 1 4 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 1 3 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 1 1 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 1 4 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 1 5 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 1 5 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 1 2 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 2 0 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 2 0 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 2 1 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 2 3 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 2 2 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 2 4 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (1 + (-1) * ω ^ 1) * hω
    · change taoPhase ω 2 3 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 2 1 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 2 4 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 2 5 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination ((1) * ω ^ 2 + (-1) * ω ^ 3) * hω
    · change taoPhase ω 2 5 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 2 2 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination ((1) * ω ^ 1 + (-1) * ω ^ 2) * hω
    · change taoPhase ω 3 0 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 3 0 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 3 1 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 3 3 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (1 + ((1 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2 + ((1 / 3 : ℂ)) * ω ^ 3) * hω
    · change taoPhase ω 3 2 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 3 4 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (1 + ((-1 / 3 : ℂ)) * ω ^ 1 + ((2 / 3 : ℂ)) * ω ^ 2) * hω
    · change taoPhase ω 3 3 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 3 1 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 3 4 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 3 5 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination ((2 / 3 : ℂ) + ((2 / 3 : ℂ)) * ω ^ 1) * hω
    · change taoPhase ω 3 5 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 3 2 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 4 0 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 4 0 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 4 1 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 4 3 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination ((2 / 3 : ℂ) + ((1 / 3 : ℂ)) * ω ^ 2 + ((1 / 3 : ℂ)) * ω ^ 3 + ((-1 / 3 : ℂ)) * ω ^ 4 + ((1 / 3 : ℂ)) * ω ^ 5) * hω
    · change taoPhase ω 4 2 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 4 4 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination ((1 / 3 : ℂ) + ((2 / 3 : ℂ)) * ω ^ 1 + ((1 / 3 : ℂ)) * ω ^ 2 + ((-2 / 3 : ℂ)) * ω ^ 3 + ((2 / 3 : ℂ)) * ω ^ 4) * hω
    · change taoPhase ω 4 3 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 4 1 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 4 4 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 4 5 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination ((4 / 3 : ℂ) + (-1) * ω ^ 1 + ((2 / 3 : ℂ)) * ω ^ 2 + ((1 / 3 : ℂ)) * ω ^ 3) * hω
    · change taoPhase ω 4 5 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 4 2 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination ((1) * ω ^ 1 + (-1) * ω ^ 2) * hω
    · change taoPhase ω 5 0 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 5 0 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 5 1 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 5 3 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination ((2 / 3 : ℂ) + ((-1 / 3 : ℂ)) * ω ^ 1 + (1) * ω ^ 2 + ((-1 / 3 : ℂ)) * ω ^ 3 + ((1 / 3 : ℂ)) * ω ^ 4) * hω
    · change taoPhase ω 5 2 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 5 4 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination ((1 / 3 : ℂ) + (1) * ω ^ 1 + ((-2 / 3 : ℂ)) * ω ^ 2 + ((2 / 3 : ℂ)) * ω ^ 3) * hω
    · change taoPhase ω 5 3 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 5 1 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (0) * hω
    · change taoPhase ω 5 4 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 5 5 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination ((1 / 3 : ℂ) + ((2 / 3 : ℂ)) * ω ^ 1 + ((1 / 3 : ℂ)) * ω ^ 3) * hω
    · change taoPhase ω 5 5 =
        (ω ^ 0) * cubicSeed ω 0 1 0 2 5 2 *
          (ω ^ 0)
      norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, taoPhase, unsplitMatrix,
        Mub6.monomialEdge, rows_0102, cols_0102, rowPhases_0102, colPhases_0102,
        Hadamard6.fourierNormalForm, Hadamard6.fourier3, Hadamard6.rowGauge,
        Hadamard6.columnGauge, Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
        Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
        Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
        Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
        linear_combination (1 + (-1) * ω ^ 1 + (1) * ω ^ 3 + (-1) * ω ^ 4) * hω
#print axioms endpoint_0102_tao
end Worker12
