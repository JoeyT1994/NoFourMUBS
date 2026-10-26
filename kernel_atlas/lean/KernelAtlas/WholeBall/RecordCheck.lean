import KernelAtlas.WholeBall.PhysicalCoordinates
import NoFourMUBs.SeedAtlas.Method.WholeBallCentre
import KernelAtlas.WholeBall.MatrixRefinement
import NoFourMUBs.SeedAtlas.Method.WholeBallRecord

/-! Exact error budgets between the centre construction and the stored
horizontal centre/frame. These errors are charged once in Z (12). -/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas
open NoFourMUBs.SeedAtlas.Method.WholeBall
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

noncomputable def phaseFrame (U : PhaseSeed) : Fin 4 → RMat6 :=
  fun k => unflatPhase (fun a => U a k)

lemma phaseFrame_tang (U : PhaseSeed) (w : Fin 4 → ℝ) :
    tang (phaseFrame U) w = phaseMap U (WithLp.toLp 2 w) := by
  ext i j
  simp [tang, phaseFrame, phaseMap, unflatPhase, Matrix.mulVec, dotProduct, mul_comm, Matrix.sum_apply, Matrix.smul_apply]

lemma wnorm_eq_euclidean (w : Fin 4 → ℝ) :
    wnorm w = ‖(WithLp.toLp 2 w : EuclideanSpace ℝ (Fin 4))‖ := by
  rw [wnorm, ← Real.sqrt_sq (norm_nonneg (WithLp.toLp 2 w : EuclideanSpace ℝ (Fin 4))),
    EuclideanSpace.real_norm_sq_eq]

noncomputable def recordPhase (P : Matrix (Fin 36) (Fin 1) ℚ) : RMat6 :=
  unflatPhase (fun a => (P a 0 : ℝ))

structure RecordErrorData where
  centreError : MatrixBox 36 1
  frameError : MatrixBox 36 4

def recordErrorCheck (Q : MatrixBox 36 1) (U : MatrixBox 36 4)
    (P : Matrix (Fin 36) (Fin 1) ℚ) (V : Matrix (Fin 36) (Fin 4) ℚ)
    (D : RecordErrorData) (epsP epsU : ℚ) : Bool :=
  (((MatrixBox.exact horizontalMatrix).mul Q).sub (MatrixBox.exact P)).enclosesCheck D.centreError &&
  (U.sub (MatrixBox.exact V)).enclosesCheck D.frameError &&
  D.centreError.normCheck epsP && D.frameError.normCheck epsU

theorem recordErrorCheck_sound {Qbox : MatrixBox 36 1} {Ubox : MatrixBox 36 4}
    {Q : RMat6} {U : PhaseSeed} (hQ : Qbox.Has (fun a _ => flatPhase Q a)) (hU : Ubox.Has U)
    {P : Matrix (Fin 36) (Fin 1) ℚ} {V : Matrix (Fin 36) (Fin 4) ℚ}
    {D : RecordErrorData} {epsP epsU : ℚ}
    (h : recordErrorCheck Qbox Ubox P V D epsP epsU = true) :
    frob (hor Q - recordPhase P) ≤ (epsP : ℝ) ∧
    ∀ w, frob (tang (phaseFrame U) w - tang (phaseFrame (realMatrix V)) w) ≤
      (epsU : ℝ) * wnorm w := by
  simp only [recordErrorCheck, Bool.and_eq_true] at h
  have hp := (((MatrixBox.has_exact horizontalMatrix).mul hQ).sub (MatrixBox.has_exact P)).enlarge h.1.1.1
  have hu := (hU.sub (MatrixBox.has_exact V)).enlarge h.1.1.2
  have nP := MatrixBox.normCheck_sound hp h.1.2
  have nU := MatrixBox.normCheck_sound hu h.2
  constructor
  · let one : EuclideanSpace ℝ (Fin 1) := WithLp.toLp 2 ![1]
    have hn : ‖one‖ = 1 := by simp [one, EuclideanSpace.norm_eq]
    have he : eucMap (realMatrix horizontalMatrix * (show Matrix (Fin 36) (Fin 1) ℝ from fun a _ => flatPhase Q a) - realMatrix P) one =
        phaseVector (hor Q - recordPhase P) := by
      ext a
      change ((realMatrix horizontalMatrix * (show Matrix (Fin 36) (Fin 1) ℝ from fun a _ => flatPhase Q a) - realMatrix P) *ᵥ one) a = _
      simp only [Matrix.mulVec, dotProduct, Fin.sum_univ_one, one, WithLp.ofLp_toLp,
        Matrix.cons_val_zero, mul_one, Matrix.sub_apply]
      have hh := congrFun (horizontalMatrix_apply Q) a
      change (∑ b, (horizontalMatrix a b : ℝ) * flatPhase Q b) - (P a 0 : ℝ) = _
      rw [show (∑ b, (horizontalMatrix a b : ℝ) * flatPhase Q b) = flatPhase (hor Q) a from hh]
      change flatPhase (hor Q) a - (P a 0 : ℝ) = flatPhase (hor Q) a - flatPhase (recordPhase P) a
      rw [recordPhase, flat_unflatPhase]
    rw [frob_eq_norm_phaseVector, ← he]
    exact ((eucMap _).le_opNorm one).trans (by rw [hn, mul_one]; exact nP)
  · intro w
    rw [phaseFrame_tang, phaseFrame_tang, wnorm_eq_euclidean]
    have he : phaseMap U (WithLp.toLp 2 w) - phaseMap (realMatrix V) (WithLp.toLp 2 w) =
        phaseMap (U - realMatrix V) (WithLp.toLp 2 w) := by
      ext i j
      simp [phaseMap, unflatPhase, Matrix.sub_mulVec]
    rw [he]
    exact frob_phaseMap_le _ nU _

end NoFourMUBs.KernelAtlas.WholeBall
