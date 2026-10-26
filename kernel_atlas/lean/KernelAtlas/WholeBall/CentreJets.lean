import KernelAtlas.WholeBall.CentreGram
import KernelAtlas.WholeBall.CentreHessian
import NoFourMUBs.SeedAtlas.Method.WholeBallCentre

/-! Checked construction of Z's tangent and quadratic predictor from the
enclosed exact Gram inverse. Intermediate rounding is checked explicitly. -/

open Matrix Hadamard6 NoFourMUBs.SeedAtlas.Method.WholeBall
open NoFourMUBs.KernelAtlas.Seed

namespace NoFourMUBs.KernelAtlas.WholeBall

structure CentreJetData where
  W : MatrixBox 21 30
  JV : MatrixBox 30 4
  WJV : MatrixBox 21 4
  U : MatrixBox 36 4
  S : MatrixBox 90 4
  Z : MatrixBox 30 90
  B : MatrixBox 30 16
  WB : MatrixBox 21 16
  H : MatrixBox 36 16

def centreJetCheck (B : BallD) (D : BoxD)
    (X : Matrix (Fin 36) (Fin 21) ℚ) (V : Matrix (Fin 36) (Fin 4) ℚ)
    (M : Matrix (Fin 4) (Fin 4) ℚ) (G : CentreGramData) (C : CentreJetData) : Bool :=
  G.W.enclosesCheck C.W &&
  (G.J.mul (MatrixBox.exact V)).enclosesCheck C.JV &&
  (C.W.mul C.JV).enclosesCheck C.WJV &&
  (((MatrixBox.exact V).sub ((MatrixBox.exact X).mul C.WJV)).mul
    (MatrixBox.exact M)).enclosesCheck C.U &&
  ((MatrixBox.exact phaseFrequencies).mul C.U).enclosesCheck C.S &&
  (coefficientBox B D).enclosesCheck C.Z &&
  (C.Z.mul (C.S.rowTensor C.S)).neg.enclosesCheck C.B &&
  (C.W.mul C.B).enclosesCheck C.WB &&
  ((MatrixBox.exact X).mul C.WB).neg.enclosesCheck C.H

theorem centreJetCheck_sound {B : BallD} {D : BoxD} {Q : NoFourMUBs.RMat6}
    (hQ : ∀ i j, (gT (kModels B D) (ix i j)).Has 0 (NoFourMUBs.phaseMat Q i j))
    {X : Matrix (Fin 36) (Fin 21) ℚ} {V : Matrix (Fin 36) (Fin 4) ℚ}
    {M : Matrix (Fin 4) (Fin 4) ℚ} {G : CentreGramData} {C : CentreJetData}
    (hg : centreGramCheck B D X G = true) (hc : centreJetCheck B D X V M G C = true) :
    let J := centreJacobian (NoFourMUBs.phaseMat Q)
    let W := centreProjection J (realMatrix X)
    let U := tangentPredictor (realMatrix V) (realMatrix X) W J (realMatrix M)
    let B₂ := phaseSecondTensor (NoFourMUBs.phaseMat Q) U U
    C.W.Has W ∧ C.U.Has U ∧ C.B.Has B₂ ∧
      C.H.Has (secondJet (realMatrix X) W B₂) ∧
      W * J * U = 0 ∧ W * (J * secondJet (realMatrix X) W B₂ + B₂) = 0 := by
  dsimp only
  obtain ⟨hJ, -, hi, hW⟩ := centreGramCheck_sound hQ hg
  simp only [centreJetCheck, Bool.and_eq_true] at hc
  rcases hc with ⟨⟨⟨⟨⟨⟨⟨⟨hcW, hcJV⟩, hcWJV⟩, hcU⟩, hcS⟩, hcZ⟩, hcB⟩, hcWB⟩, hcH⟩
  have hW' := hW.enlarge hcW
  have hJV := (hJ.mul (MatrixBox.has_exact V)).enlarge hcJV
  have hWJV := (hW'.mul hJV).enlarge hcWJV
  have hU := (((MatrixBox.has_exact V).sub ((MatrixBox.has_exact X).mul hWJV)).mul
    (MatrixBox.has_exact M)).enlarge hcU
  have hU' : C.U.Has (tangentPredictor (realMatrix V) (realMatrix X)
      (centreProjection (centreJacobian (NoFourMUBs.phaseMat Q)) (realMatrix X))
      (centreJacobian (NoFourMUBs.phaseMat Q)) (realMatrix M)) := by
    simpa only [tangentPredictor, centreProjection, gramLeftInverse, Matrix.mul_assoc] using hU
  have hS := ((MatrixBox.has_exact phaseFrequencies).mul hU').enlarge hcS
  have hZ := (coefficientBox_sound hQ).enlarge hcZ
  have hB := (hZ.mul (hS.rowTensor hS)).neg.enlarge hcB
  have hWB := (hW'.mul hB).enlarge hcWB
  have hH := ((MatrixBox.has_exact X).mul hWB).neg.enlarge hcH
  have hid := centreProjection_identity (centreJacobian (NoFourMUBs.phaseMat Q)) (realMatrix X) hi
  exact ⟨hW', hU', hB, hH, projected_tangent _ _ _ _ _ hid, projected_secondJet _ _ _ _ hid⟩

end NoFourMUBs.KernelAtlas.WholeBall
