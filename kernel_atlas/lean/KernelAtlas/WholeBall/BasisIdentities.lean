import KernelAtlas.WholeBall.BasisGeometry
import KernelAtlas.WholeBall.SeedGeometry

/-! Exact gauge and seed identities for the fixed basis and Z's predictors. -/

open Matrix
open NoFourMUBs.SeedAtlas.Method.WholeBall
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

set_option maxHeartbeats 0 in
theorem horizontalMatrix_idempotent : horizontalMatrix * horizontalMatrix = horizontalMatrix := by
  decide +kernel

theorem seed_rawNormal_zero : seedMatrix * (horizontalMatrix * rawNormalMatrix) = 0 := by
  decide +kernel

theorem frozenBasis_horizontal : realMatrix horizontalMatrix * realMatrix BasisNorm.matrix =
    realMatrix BasisNorm.matrix := by
  rw [← realMatrix_mul]
  congr 1
  rw [BasisGeometry.factor_checked]
  simp only [← Matrix.mul_assoc, horizontalMatrix_idempotent]

theorem frozenBasis_seed : realMatrix seedMatrix * realMatrix BasisNorm.matrix = 0 := by
  rw [← realMatrix_mul, BasisGeometry.factor_checked, ← Matrix.mul_assoc,
    seed_rawNormal_zero, Matrix.zero_mul]
  ext i j
  simp [realMatrix]

lemma seedLift_real_identity : realMatrix seedMatrix * realMatrix seedLift = 1 := by
  rw [← realMatrix_mul, seedLift_identity]
  ext i j
  by_cases h : i = j <;> simp [realMatrix, Matrix.one_apply, h]

lemma seedLift_real_horizontal : realMatrix horizontalMatrix * realMatrix seedLift = realMatrix seedLift := by
  rw [← realMatrix_mul, seedLift_horizontal]

lemma tangent_horizontal (J : ResidualJac) (W : Projection) (M : Matrix (Fin 4) (Fin 4) ℝ) :
    realMatrix horizontalMatrix *
      tangentPredictor (realMatrix seedLift) (realMatrix BasisNorm.matrix) W J M =
      tangentPredictor (realMatrix seedLift) (realMatrix BasisNorm.matrix) W J M := by
  simp only [tangentPredictor, ← Matrix.mul_assoc, Matrix.mul_sub,
    seedLift_real_horizontal, frozenBasis_horizontal]

lemma second_horizontal (W : Projection) (T : Matrix (Fin 30) (Fin 16) ℝ) :
    realMatrix horizontalMatrix * secondJet (realMatrix BasisNorm.matrix) W T =
      secondJet (realMatrix BasisNorm.matrix) W T := by
  rw [secondJet, Matrix.mul_neg, ← Matrix.mul_assoc, frozenBasis_horizontal]

end NoFourMUBs.KernelAtlas.WholeBall
