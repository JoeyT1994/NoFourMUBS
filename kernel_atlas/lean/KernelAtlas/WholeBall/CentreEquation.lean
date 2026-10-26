import KernelAtlas.WholeBall.CentreFourier
import KernelAtlas.WholeBall.PhysicalCoordinates

/-! The finite quadratic-phase equation is exactly the projected full
Hadamard residual at Z's predictor, with no numerical model discrepancy. -/

open Matrix Complex Hadamard6 NoFourMUBs
open NoFourMUBs.SeedAtlas.Method.WholeBall
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

lemma centreFourier_phase (H : Mat6) (W : Projection) (U : PhaseSeed)
    (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (X : NormalBasis)
    (w : EuclideanSpace ℝ (Fin 4)) (z : EuclideanSpace ℝ (Fin 21)) (i : Fin 90) :
    (centreFourier H W U H₂ X).model.phase i (w, z) =
      (realMatrix phaseFrequencies *ᵥ flatPhase (predictorIncrement U H₂ X w z)) i := by
  simp only [FourierModel.phase, MatrixFourier.linear_apply, MatrixFourier.quadratic_apply]
  change linearEval ((realMatrix phaseFrequencies * U) i) w +
    quadraticEval ((realMatrix phaseFrequencies * H₂) i) w / 2 +
    linearForm ((realMatrix phaseFrequencies * X) i) z = _
  rw [linearForm_apply, ← quadraticEval_tensorPair]
  simp only [predictorIncrement, flatPhase_add, flatPhase_smul, flatPhase_phaseMap,
    Matrix.mulVec_add, Matrix.mulVec_smul, Matrix.mulVec_mulVec]
  change _ = linearEval ((realMatrix phaseFrequencies * U) i) w +
    (1 / 2 : ℝ) * (∑ j, (realMatrix phaseFrequencies * H₂) i j * tensorPair w w j) +
    ∑ j, (realMatrix phaseFrequencies * X) i j * z j
  ring

lemma centreFourier_equation (Q : RMat6) (W : Projection) (U : PhaseSeed)
    (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (X : NormalBasis)
    (w : EuclideanSpace ℝ (Fin 4)) (z : EuclideanSpace ℝ (Fin 21)) :
    (centreFourier (phaseMat Q) W U H₂ X).model.equation (w, z) =
      eucMap W (WithLp.toLp 2 (phaseResidual (Q + predictorIncrement U H₂ X w z))) := by
  ext a
  simp only [FourierModel.equation, WithLp.ofLp_sum, Finset.sum_apply, centreFourier_phase]
  change (∑ i, coefficientMap (fun a =>
      ![(W * realCoefficients (phaseMat Q)) a i, (W * imaginaryCoefficients (phaseMat Q)) a i])
    (Complex.exp (((realMatrix phaseFrequencies *ᵥ flatPhase (predictorIncrement U H₂ X w z)) i : ℝ) * I)) a) =
      ∑ j, W a j * phaseResidual (Q + predictorIncrement U H₂ X w z) j
  simp only [coefficientMap_apply, Matrix.cons_val_zero, Matrix.cons_val_one, phaseResidual_add,
    Matrix.mul_apply, Finset.sum_mul]
  simp only [← Finset.sum_add_distrib]
  rw [Finset.sum_comm]
  simp only [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  apply Finset.sum_congr rfl
  intro i _
  ring

lemma centreFourier_zero {Q : RMat6} (hQ : Hadamard6.IsHadamard (phaseMat Q))
    (W : Projection) (U : PhaseSeed) (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (X : NormalBasis)
    (a : Fin 21) : ∑ i, (centreFourier (phaseMat Q) W U H₂ X).K0 a i = 0 := by
  rw [← MatrixFourier.zero_apply, centreFourier_equation]
  have he : predictorIncrement U H₂ X 0 0 = 0 := by
    ext i j
    simp [predictorIncrement, phaseMap, unflatPhase, tensorPair, Matrix.mulVec, dotProduct]
  rw [he, add_zero, phaseResidual_zero_of_hadamard hQ]
  simp

end NoFourMUBs.KernelAtlas.WholeBall
