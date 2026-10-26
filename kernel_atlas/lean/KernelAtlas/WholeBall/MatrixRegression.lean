import KernelAtlas.WholeBall.MatrixArithmetic
import KernelAtlas.WholeBall.MatrixRefinement
import KernelAtlas.WholeBall.RoundedLDL

/-! Kernel checks of matrix witness acceptance and failure boundaries. -/

open Matrix

namespace NoFourMUBs.KernelAtlas.WholeBall.MatrixRegression

def uncertainScalar : MatrixBox 1 1 := ⟨!![2], !![1 / 10]⟩
def proposedInverse : Matrix (Fin 1) (Fin 1) ℚ := !![1 / 2]

theorem inverse_error_equality : inverseCheck uncertainScalar proposedInverse (1 / 20) (1 / 2)
    (1 / 38) = true := by decide +kernel

theorem inverse_error_too_small : inverseCheck uncertainScalar proposedInverse (1 / 20) (1 / 2)
    (1 / 38 - 1 / 2 ^ 80) = false := by decide +kernel

theorem inverse_residual_too_small : inverseCheck uncertainScalar proposedInverse
    (1 / 20 - 1 / 2 ^ 80) (1 / 2) 1 = false := by decide +kernel

theorem inverse_unit_boundary : inverseCheck uncertainScalar proposedInverse 1 (1 / 2) 100 = false := by
  decide +kernel

def rectangular : Matrix (Fin 3) (Fin 2) ℚ := !![3, 0; 0, 4; 0, 0]
def semidefiniteWitness : PSDWitness 2 := ⟨1, ![7, 0]⟩

theorem rectangular_bound_equality : spectralCheck rectangular 4 semidefiniteWitness = true := by
  decide +kernel

theorem rectangular_bound_too_small : spectralCheck rectangular (4 - 1 / 2 ^ 80)
    semidefiniteWitness = false := by decide +kernel

theorem bad_factor_rejected : spectralCheck rectangular 4 ⟨1, ![7, 1]⟩ = false := by
  decide +kernel

theorem transpose_bound : ‖eucMap (realMatrix rectangularᵀ)‖ ≤ (4 : ℝ) := by
  apply spectralCheck_transpose_sound (b := 4) (W := semidefiniteWitness)
  exact rectangular_bound_equality

theorem rounded_residual_accept : roundedPSDCheck (!![(2 : ℚ), 1; 1, 2])
    ⟨0, 0⟩ = true := by decide +kernel

theorem rounded_residual_reject : roundedPSDCheck (!![(1 : ℚ), 2; 2, 1])
    ⟨0, 0⟩ = false := by decide +kernel

theorem outward_round_accept :
    (⟨!![(1 / 3 : ℚ)], !![(1 / 1000 : ℚ)]⟩ : MatrixBox 1 1).enclosesCheck
      ⟨!![(85 / 256 : ℚ)], !![(1 / 256 : ℚ)]⟩ = true := by decide +kernel

theorem outward_round_reject :
    (⟨!![(1 / 3 : ℚ)], !![(1 / 1000 : ℚ)]⟩ : MatrixBox 1 1).enclosesCheck
      (MatrixBox.exact !![(1 / 3 : ℚ)]) = false := by decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall.MatrixRegression
