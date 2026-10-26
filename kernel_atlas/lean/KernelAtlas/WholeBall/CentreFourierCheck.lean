import KernelAtlas.WholeBall.CentreJets
import KernelAtlas.WholeBall.CentreFourier
import KernelAtlas.WholeBall.FiniteChecks

/-! Checked formation of the finite Fourier arrays from the exact centre,
Gram projection, tangent predictor and second jet. -/

open Matrix Hadamard6 NoFourMUBs
open NoFourMUBs.SeedAtlas.Method.WholeBall NoFourMUBs.KernelAtlas.Seed
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

structure CentreFourierData where
  Zi : MatrixBox 30 90
  fourier : FourierBox 90 21

def centreFourierCheck (B : BallD) (D : BoxD) (X : Matrix (Fin 36) (Fin 21) ℚ)
    (J : CentreJetData) (F : CentreFourierData) : Bool :=
  (imaginaryCoefficientBox B D).enclosesCheck F.Zi &&
  (J.W.mul J.Z).enclosesCheck F.fourier.K0 &&
  (J.W.mul F.Zi).enclosesCheck F.fourier.K1 &&
  ((MatrixBox.exact phaseFrequencies).mul J.U).enclosesCheck F.fourier.S &&
  ((MatrixBox.exact phaseFrequencies).mul J.H).enclosesCheck F.fourier.T &&
  ((MatrixBox.exact phaseFrequencies).mul (MatrixBox.exact X)).enclosesCheck F.fourier.D

theorem centreFourierCheck_sound {B : BallD} {D : BoxD} {Q : RMat6}
    (hQ : ∀ i j, (gT (kModels B D) (ix i j)).Has 0 (phaseMat Q i j))
    {X : Matrix (Fin 36) (Fin 21) ℚ} {J : CentreJetData} {F : CentreFourierData}
    {W : Projection} {U : PhaseSeed} {H₂ : Matrix (Fin 36) (Fin 16) ℝ}
    (hW : J.W.Has W) (hU : J.U.Has U) (hH : J.H.Has H₂)
    (hZ : J.Z.Has (realCoefficients (phaseMat Q)))
    (h : centreFourierCheck B D X J F = true) :
    F.fourier.Has (centreFourier (phaseMat Q) W U H₂ (realMatrix X)) := by
  simp only [centreFourierCheck, Bool.and_eq_true] at h
  have hZi := (imaginaryCoefficientBox_sound hQ).enlarge h.1.1.1.1.1
  exact ⟨(hW.mul hZ).enlarge h.1.1.1.1.2,
    (hW.mul hZi).enlarge h.1.1.1.2,
    ((MatrixBox.has_exact phaseFrequencies).mul hU).enlarge h.1.1.2,
    ((MatrixBox.has_exact phaseFrequencies).mul hH).enlarge h.1.2,
    ((MatrixBox.has_exact phaseFrequencies).mul (MatrixBox.has_exact X)).enlarge h.2⟩

end NoFourMUBs.KernelAtlas.WholeBall
