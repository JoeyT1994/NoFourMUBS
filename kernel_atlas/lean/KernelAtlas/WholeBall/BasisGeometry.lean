import KernelAtlas.WholeBall.PhysicalCoordinates
import KernelAtlas.WholeBall.BasisNorm
import KernelAtlas.WholeBall.BasisRegular

/-! Identification of the fixed rational normal matrix with Z's horizontal
21-coordinate basis. This gives the concrete local coordinate retraction. -/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas
open NoFourMUBs.SeedAtlas.Method.WholeBall
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

/-- Row-major free entries, excluding the first row/column and the seed. -/
def freePhaseIndex (k : Fin 21) : Fin 36 :=
  if hk : k.val < 6 then ⟨6 * (1 + k.val / 3) + 3 + k.val % 3, by omega⟩
  else ⟨6 * (3 + (k.val - 6) / 5) + 1 + (k.val - 6) % 5, by omega⟩

def rawNormalMatrix : Matrix (Fin 36) (Fin 21) ℚ :=
  fun a k => if a = freePhaseIndex k then 1 else 0

set_option maxHeartbeats 0 in
lemma rawNormalMatrix_apply (z : EuclideanSpace ℝ (Fin 21)) :
    phaseMap (realMatrix rawNormalMatrix) z = normalRaw z := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [phaseMap, unflatPhase, realMatrix, rawNormalMatrix, freePhaseIndex,
      phaseUnindex, Matrix.mulVec, dotProduct, Fin.sum_univ_succ, normalRaw, finProdFinEquiv] <;> rfl

lemma phaseMap_horizontal {n : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ)
    (v : EuclideanSpace ℝ (Fin n)) :
    phaseMap (realMatrix horizontalMatrix * A) v = hor (phaseMap A v) := by
  apply (show Function.Injective flatPhase from fun Q R h => by
    simpa only [unflat_flatPhase] using congrArg unflatPhase h)
  rw [flatPhase_phaseMap, ← Matrix.mulVec_mulVec, ← flatPhase_phaseMap A v,
    horizontalMatrix_apply]

lemma phaseMap_mul {n k : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ)
    (T : Matrix (Fin n) (Fin k) ℝ) (v : EuclideanSpace ℝ (Fin k)) :
    phaseMap (A * T) v = phaseMap A (eucMap T v) := by
  unfold phaseMap
  rw [← Matrix.mulVec_mulVec]
  rfl

namespace BasisGeometry
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem factor_checked : BasisNorm.matrix =
    horizontalMatrix * rawNormalMatrix * BasisRegular.matrix := by decide +kernel

lemma phaseMap_eq (z : EuclideanSpace ℝ (Fin 21)) :
    phaseMap (realMatrix BasisNorm.matrix) z = frozenNormalE (realMatrix BasisRegular.matrix) z := by
  rw [factor_checked, realMatrix_mul, realMatrix_mul, phaseMap_mul, phaseMap_horizontal,
    rawNormalMatrix_apply]
  rfl

end BasisGeometry
end NoFourMUBs.KernelAtlas.WholeBall
