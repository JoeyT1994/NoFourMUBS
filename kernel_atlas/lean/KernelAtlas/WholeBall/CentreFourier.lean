import KernelAtlas.WholeBall.MatrixFourier
import KernelAtlas.WholeBall.PhaseFourier
import NoFourMUBs.SeedAtlas.Method.WholeBallCentre

/-! The finite Fourier arrays are formed from Z's exact centre construction.
The low jets cancel algebraically; no small numerical residual is substituted
for these equalities. -/

open Matrix Complex Hadamard6
open NoFourMUBs.SeedAtlas.Method.WholeBall

namespace NoFourMUBs.KernelAtlas.WholeBall

noncomputable def centreFourier (H : Mat6) (W : Projection)
    (U : PhaseSeed) (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (X : NormalBasis) : MatrixFourier 90 21 where
  K0 := W * realCoefficients H
  K1 := W * imaginaryCoefficients H
  S := realMatrix phaseFrequencies * U
  T := realMatrix phaseFrequencies * H₂
  D := realMatrix phaseFrequencies * X

lemma centreFourier_first (H : Mat6) (W : Projection) (U : PhaseSeed)
    (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (X : NormalBasis) :
    (centreFourier H W U H₂ X).K1 * (centreFourier H W U H₂ X).S =
      W * centreJacobian H * U := by
  simp only [centreFourier, centreJacobian_factor, Matrix.mul_assoc]

lemma centreFourier_second (H : Mat6) (W : Projection) (U : PhaseSeed)
    (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (X : NormalBasis) :
    (centreFourier H W U H₂ X).K1 * (centreFourier H W U H₂ X).T -
      (centreFourier H W U H₂ X).K0 *
        rowTensor (centreFourier H W U H₂ X).S (centreFourier H W U H₂ X).S =
      W * (centreJacobian H * H₂ + phaseSecondTensor H U U) := by
  simp only [centreFourier, centreJacobian_factor, phaseSecondTensor,
    Matrix.mul_add, Matrix.mul_neg, Matrix.mul_assoc, sub_eq_add_neg]

lemma centreFourier_normal (H : Mat6) (W : Projection) (U : PhaseSeed)
    (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (X : NormalBasis) :
    (centreFourier H W U H₂ X).K1 * (centreFourier H W U H₂ X).D =
      W * centreJacobian H * X := by
  simp only [centreFourier, centreJacobian_factor, Matrix.mul_assoc]

theorem centreFourier_cancel (H : Mat6) (V : PhaseSeed) (X : NormalBasis)
    (M : Matrix (Fin 4) (Fin 4) ℝ)
    (hi : IsUnit (((centreJacobian H * X)ᵀ * (centreJacobian H * X)).det)) :
    let J := centreJacobian H
    let W := centreProjection J X
    let U := tangentPredictor V X W J M
    let H₂ := secondJet X W (phaseSecondTensor H U U)
    let C := centreFourier H W U H₂ X
    C.K1 * C.S = 0 ∧ C.K1 * C.T - C.K0 * rowTensor C.S C.S = 0 ∧ C.K1 * C.D = 1 := by
  dsimp only
  have hW := centreProjection_identity (centreJacobian H) X hi
  refine ⟨?_, ?_, ?_⟩
  · rw [centreFourier_first]
    exact projected_tangent V X _ _ M hW
  · rw [centreFourier_second]
    exact projected_secondJet _ _ _ _ hW
  · rw [centreFourier_normal]
    exact hW

end NoFourMUBs.KernelAtlas.WholeBall
