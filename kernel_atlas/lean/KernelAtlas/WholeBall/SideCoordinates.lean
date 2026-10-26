import KernelAtlas.WholeBall.PhysicalCoordinates
import NoFourMUBs.SeedAtlas.Method.WholeBallSignatureProjection

/-! The two complementary blocks and their 3×3 horizontal projections. -/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.Step2
open NoFourMUBs.SeedAtlas.Method.WholeBall
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

def sideIndex (vertical : Bool) (j : Fin 9) : Fin 36 :=
  if vertical then ⟨6 * (3 + j.val / 3) + j.val % 3, by omega⟩
  else ⟨6 * (j.val / 3) + 3 + j.val % 3, by omega⟩

noncomputable def sidePhase (vertical : Bool) (Q : RMat6) : Fin 9 → ℝ :=
  fun j => flatPhase Q (sideIndex vertical j)

lemma sidePhase_block (vertical : Bool) (Q : RMat6) :
    signaturePhaseBlock (sidePhase vertical Q) =
      if vertical then lowerBlock (phaseMat Q) else rightBlock (phaseMat Q) := by
  cases vertical <;> ext i j <;> fin_cases i <;> fin_cases j <;> rfl

def sideExtraction (vertical : Bool) : Matrix (Fin 9) (Fin 36) ℚ :=
  fun i j => if j = sideIndex vertical i then 1 else 0

def sideHorizontalMatrix : Matrix (Fin 9) (Fin 9) ℚ := fun a b =>
  (if a.val = b.val then 1 else 0) - (if a.val / 3 = b.val / 3 then 1 / 3 else 0) -
    (if a.val % 3 = b.val % 3 then 1 / 3 else 0) + 1 / 9

def sideProjection (vertical : Bool) : Matrix (Fin 9) (Fin 36) ℚ :=
  sideHorizontalMatrix * sideExtraction vertical

lemma sideExtraction_apply (vertical : Bool) (Q : RMat6) :
    realMatrix (sideExtraction vertical) *ᵥ flatPhase Q = sidePhase vertical Q := by
  ext i
  simp only [realMatrix, Matrix.map_apply, sideExtraction, Matrix.mulVec, dotProduct]
  simp_rw [apply_ite (fun q : ℚ => (q : ℝ))]
  simp [sidePhase]

set_option maxHeartbeats 0 in
lemma sideHorizontalMatrix_apply (v : Fin 9 → ℝ) :
    realMatrix sideHorizontalMatrix *ᵥ v = sideHorizontal v := by
  ext i
  fin_cases i <;>
    norm_num [realMatrix, sideHorizontalMatrix, Matrix.mulVec, dotProduct,
      sideHorizontal, Fin.sum_univ_succ] <;> ring!

lemma sideProjection_apply (vertical : Bool) (Q : RMat6) :
    realMatrix (sideProjection vertical) *ᵥ flatPhase Q = sideHorizontal (sidePhase vertical Q) := by
  rw [sideProjection, realMatrix_mul, ← Matrix.mulVec_mulVec, sideExtraction_apply,
    sideHorizontalMatrix_apply]

lemma sideProjection_phaseMap {n : ℕ} (vertical : Bool) (A : Matrix (Fin 36) (Fin n) ℝ)
    (v : EuclideanSpace ℝ (Fin n)) :
    WithLp.toLp 2 (sideHorizontal (sidePhase vertical (phaseMap A v))) =
      eucMap (realMatrix (sideProjection vertical) * A) v := by
  rw [← sideProjection_apply, flatPhase_phaseMap, Matrix.mulVec_mulVec]
  rfl

end NoFourMUBs.KernelAtlas.WholeBall
