import KernelAtlas.WholeBall.PhysicalCoordinates
import NoFourMUBs.SeedAtlas.Method.WholeBallCentre

/-! The seed map and the horizontal seed-coordinate lift as exact matrices. -/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas
open NoFourMUBs.SeedAtlas.Method.WholeBall
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

def seedMatrix : Matrix (Fin 4) (Fin 36) ℚ := fun k a =>
  (if (phaseRow a).val = 1 + k.val / 2 ∧ (phaseCol a).val = 1 + k.val % 2 then 1 else 0) -
  (if (phaseRow a).val = 1 + k.val / 2 ∧ (phaseCol a).val = 0 then 1 else 0) -
  (if (phaseRow a).val = 0 ∧ (phaseCol a).val = 1 + k.val % 2 then 1 else 0) +
  (if (phaseRow a).val = 0 ∧ (phaseCol a).val = 0 then 1 else 0)

def seedLift : Matrix (Fin 36) (Fin 4) ℚ := fun a k =>
  ((if (phaseRow a).val = 1 + k.val / 2 ∧ (phaseCol a).val = 1 + k.val % 2 then 36 else 0) -
  (if (phaseRow a).val = 1 + k.val / 2 then 6 else 0) -
  (if (phaseCol a).val = 1 + k.val % 2 then 6 else 0) + 1) / 36

set_option maxHeartbeats 0 in
lemma seedMatrix_apply (Q : RMat6) : realMatrix seedMatrix *ᵥ flatPhase Q = cornerTheta Q 1 1 := by
  ext k
  fin_cases k <;>
    norm_num [seedMatrix, realMatrix, Matrix.mulVec, dotProduct, Fin.sum_univ_succ,
      flatPhase, phaseRow, phaseCol, phaseIndex, cornerTheta, cornerD] <;> ring!

lemma seed_phaseMap {n : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ) (v : EuclideanSpace ℝ (Fin n)) :
    cornerTheta (phaseMap A v) 1 1 = (realMatrix seedMatrix * A) *ᵥ v := by
  rw [← seedMatrix_apply, flatPhase_phaseMap, Matrix.mulVec_mulVec]

lemma horizontal_phaseMap {n : ℕ} (A : Matrix (Fin 36) (Fin n) ℝ)
    (h : realMatrix horizontalMatrix * A = A) (v : EuclideanSpace ℝ (Fin n)) :
    IsHorizontal (phaseMap A v) := by
  have he : hor (phaseMap A v) = phaseMap A v := by
    apply (show Function.Injective flatPhase from fun Q R h => by
      simpa only [unflat_flatPhase] using congrArg unflatPhase h)
    rw [← horizontalMatrix_apply, flatPhase_phaseMap, Matrix.mulVec_mulVec, h]
  rw [← he]
  exact hor_isHorizontal _

theorem seedLift_identity : seedMatrix * seedLift = 1 := by decide +kernel

theorem seedLift_horizontal : horizontalMatrix * seedLift = seedLift := by decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall
