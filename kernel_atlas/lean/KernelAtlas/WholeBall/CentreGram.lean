import KernelAtlas.WholeBall.CentreMatrix
import KernelAtlas.WholeBall.MatrixRefinement

/-! A checked centre-to-Gram pipeline with outward rounding at each matrix
stage. Inverse proposals never replace Z's specified exact Gram inverse. -/

open Matrix Hadamard6
open NoFourMUBs.KernelAtlas.Seed

namespace NoFourMUBs.KernelAtlas.WholeBall

structure CentreGramData where
  J : MatrixBox 30 36
  A : MatrixBox 30 21
  G : MatrixBox 21 21
  Y : Matrix (Fin 21) (Fin 21) ℚ
  residualBound : ℚ
  inverseBound : ℚ
  inverseError : ℚ

def CentreGramData.W (C : CentreGramData) : MatrixBox 21 30 :=
  (inverseBox C.Y C.inverseError).mul C.A.transpose

def centreGramCheck (B : BallD) (D : BoxD) (X : Matrix (Fin 36) (Fin 21) ℚ)
    (C : CentreGramData) : Bool :=
  (jacobianBox B D).enclosesCheck C.J &&
    (C.J.mul (MatrixBox.exact X)).enclosesCheck C.A &&
    (C.A.transpose.mul C.A).enclosesCheck C.G &&
    inverseCheck C.G C.Y C.residualBound C.inverseBound C.inverseError

theorem centreGramCheck_sound {B : BallD} {D : BoxD} {Q : NoFourMUBs.RMat6}
    (hQ : ∀ i j, (gT (kModels B D) (ix i j)).Has 0 (NoFourMUBs.phaseMat Q i j))
    {X : Matrix (Fin 36) (Fin 21) ℚ} {C : CentreGramData}
    (hc : centreGramCheck B D X C = true) :
    C.J.Has (centreJacobian (NoFourMUBs.phaseMat Q)) ∧
    C.A.Has (centreJacobian (NoFourMUBs.phaseMat Q) * realMatrix X) ∧
    IsUnit (((centreJacobian (NoFourMUBs.phaseMat Q) * realMatrix X)ᵀ *
      (centreJacobian (NoFourMUBs.phaseMat Q) * realMatrix X)).det) ∧
    C.W.Has ((((centreJacobian (NoFourMUBs.phaseMat Q) * realMatrix X)ᵀ *
        (centreJacobian (NoFourMUBs.phaseMat Q) * realMatrix X))⁻¹) *
      (centreJacobian (NoFourMUBs.phaseMat Q) * realMatrix X)ᵀ) := by
  simp only [centreGramCheck, Bool.and_eq_true] at hc
  have hJ := (jacobianBox_sound hQ).enlarge hc.1.1.1
  have hA := (hJ.mul (MatrixBox.has_exact X)).enlarge hc.1.1.2
  have hG := (hA.transpose.mul hA).enlarge hc.1.2
  obtain ⟨hi, hInv⟩ := inverseCheck_sound hG hc.2
  exact ⟨hJ, hA, hi, hInv.mul hA.transpose⟩

end NoFourMUBs.KernelAtlas.WholeBall
