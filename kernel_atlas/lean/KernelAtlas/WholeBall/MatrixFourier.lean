import KernelAtlas.WholeBall.PredictorTensors
import NoFourMUBs.SeedAtlas.Method.WholeBallFiniteBounds

/-! Matrix interpretation of the finite quadratic-phase equation. The centre
tensors are summed before a spectral bound is applied. -/

open Matrix Complex
open NoFourMUBs.SeedAtlas.Method.WholeBall

set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

structure MatrixFourier (t m : ℕ) where
  K0 : Matrix (Fin m) (Fin t) ℝ
  K1 : Matrix (Fin m) (Fin t) ℝ
  S : Matrix (Fin t) (Fin 4) ℝ
  T : Matrix (Fin t) (Fin 16) ℝ
  D : Matrix (Fin t) (Fin m) ℝ

noncomputable def MatrixFourier.model {t m : ℕ} (C : MatrixFourier t m) :
    FourierModel (Fin t) (EuclideanSpace ℝ (Fin 4)) (EuclideanSpace ℝ (Fin m)) where
  coeff i := coefficientMap (fun a => ![C.K0 a i, C.K1 a i])
  linear i := linearForm (C.S i)
  quadratic i := bilinearForm (fun a b => C.T i (tensorIndex2 a b))
  normal i := linearForm (C.D i)

lemma MatrixFourier.linear_apply {t m : ℕ} (C : MatrixFourier t m)
    (i : Fin t) (w : EuclideanSpace ℝ (Fin 4)) :
    C.model.linear i w = linearEval (C.S i) w := linearForm_apply _ _

lemma MatrixFourier.quadratic_apply {t m : ℕ} (C : MatrixFourier t m)
    (i : Fin t) (w : EuclideanSpace ℝ (Fin 4)) :
    C.model.quadratic i w w = quadraticEval (C.T i) w := by
  change bilinearForm (fun a b => C.T i (tensorIndex2 a b)) w w = _
  rw [bilinearForm_apply, quadraticEval_sum]

lemma MatrixFourier.zero_apply {t m : ℕ} (C : MatrixFourier t m) (a : Fin m) :
    C.model.equation (0, 0) a = ∑ i, C.K0 a i := by
  simp only [FourierModel.equation, FourierModel.phase, map_zero, zero_div, add_zero,
    Complex.ofReal_zero, zero_mul, Complex.exp_zero, WithLp.ofLp_sum, Finset.sum_apply]
  change (∑ i, coefficientMap (fun a => ![C.K0 a i, C.K1 a i]) 1 a) = _
  simp only [coefficientMap_apply, Matrix.cons_val_zero, Matrix.cons_val_one,
    Complex.one_re, Complex.one_im, mul_one, mul_zero, add_zero]

lemma MatrixFourier.first_apply {t m : ℕ} (C : MatrixFourier t m)
    (w : EuclideanSpace ℝ (Fin 4)) :
    fourierRayJet C.model.coeff (fun i => C.model.linear i w)
      (fun i => C.model.quadratic i w w) 1 0 = eucMap (C.K1 * C.S) w := by
  ext a
  simp only [fourierRayJet, WithLp.ofLp_sum, Finset.sum_apply, chirp, chirpSlope, chirpPoly,
    mul_zero, zero_pow (by omega : 2 ≠ 0), zero_div, add_zero, Complex.ofReal_zero,
    zero_mul, Complex.exp_zero, one_mul, MatrixFourier.linear_apply]
  change (∑ i, coefficientMap (fun a => ![C.K0 a i, C.K1 a i])
    ((linearEval (C.S i) w : ℂ) * I) a) = _
  simp only [coefficientMap_apply, Matrix.cons_val_zero, Matrix.cons_val_one,
    Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.I_re, Complex.I_im, mul_zero, zero_mul, sub_zero, mul_one, zero_add, add_zero]
  change (∑ i, C.K1 a i * (∑ j, C.S i j * w j)) = ∑ j, (∑ i, C.K1 a i * C.S i j) * w j
  simp only [Finset.mul_sum, Finset.sum_mul, mul_assoc]
  rw [Finset.sum_comm]

lemma MatrixFourier.second_apply {t m : ℕ} (C : MatrixFourier t m)
    (w : EuclideanSpace ℝ (Fin 4)) :
    fourierRayJet C.model.coeff (fun i => C.model.linear i w)
      (fun i => C.model.quadratic i w w) 2 0 =
      eucMap (C.K1 * C.T - C.K0 * rowTensor C.S C.S) (tensorPair w w) := by
  ext a
  simp only [fourierRayJet, WithLp.ofLp_sum, Finset.sum_apply, chirp, chirpSlope, chirpPoly,
    mul_zero, zero_pow (by omega : 2 ≠ 0), zero_div, add_zero, Complex.ofReal_zero,
    zero_mul, Complex.exp_zero, one_mul, MatrixFourier.linear_apply, MatrixFourier.quadratic_apply]
  change (∑ i, coefficientMap (fun a => ![C.K0 a i, C.K1 a i])
    (((linearEval (C.S i) w : ℂ) * I) ^ 2 + (quadraticEval (C.T i) w : ℂ) * I) a) = _
  have he (s q : ℝ) : ((s : ℂ) * I) ^ 2 + (q : ℂ) * I = (-s ^ 2 : ℝ) + (q : ℂ) * I := by
    apply Complex.ext <;> simp [pow_two] <;> ring
  simp only [he, coefficientMap_apply, Matrix.cons_val_zero, Matrix.cons_val_one]
  simp only [Complex.add_re, Complex.add_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im, mul_zero, zero_mul,
    sub_zero, mul_one, add_zero, zero_add]
  change (∑ i, (C.K0 a i * -(linearEval (C.S i) w) ^ 2 + C.K1 a i * quadraticEval (C.T i) w)) =
    ((C.K1 * C.T - C.K0 * rowTensor C.S C.S) *ᵥ (tensorPair w w : Fin 16 → ℝ)) a
  rw [Matrix.sub_mulVec, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]
  change _ = (∑ i, C.K1 a i * (C.T *ᵥ (tensorPair w w : Fin 16 → ℝ)) i) -
    ∑ i, C.K0 a i * eucMap (rowTensor C.S C.S) (tensorPair w w) i
  simp only [rowTensor_apply]
  have ht i : (C.T *ᵥ (tensorPair w w : Fin 16 → ℝ)) i = quadraticEval (C.T i) w :=
    quadraticEval_tensorPair _ _
  simp only [ht]
  change _ = (∑ i, C.K1 a i * quadraticEval (C.T i) w) -
    ∑ i, C.K0 a i * (linearEval (C.S i) w * linearEval (C.S i) w)
  simp only [Finset.sum_add_distrib, mul_neg, Finset.sum_neg_distrib, pow_two]
  ring

lemma MatrixFourier.normal_zero_eq {t m : ℕ} (C : MatrixFourier t m) :
    normalDerivative C.model.equation 0 0 = eucMap (C.K1 * C.D) := by
  rw [FourierModel.normalDerivative_eq]
  ext v a
  simp only [FourierModel.normalMap, _root_.sum_apply, WithLp.ofLp_sum, Finset.sum_apply,
    ContinuousLinearMap.smulRight_apply, WithLp.ofLp_smul, Pi.smul_apply, smul_eq_mul, FourierModel.phase, map_zero, add_zero,
    zero_div, Complex.ofReal_zero, zero_mul, Complex.exp_zero, one_mul]
  change (∑ i, (linearForm (C.D i) v) *
    coefficientMap (fun a => ![C.K0 a i, C.K1 a i]) I a) = _
  simp only [coefficientMap_apply, Matrix.cons_val_zero, Matrix.cons_val_one,
    Complex.I_re, Complex.I_im, mul_zero, mul_one, zero_add, linearForm_apply]
  change (∑ i, (∑ j, C.D i j * v j) * C.K1 a i) = ∑ j, (∑ i, C.K1 a i * C.D i j) * v j
  simp only [Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro j _
  apply Finset.sum_congr rfl
  intro i _
  ring

def MatrixFourier.cubic {t m : ℕ} (C : MatrixFourier t m) : Matrix (Fin m) (Fin 64) ℝ :=
  fun a j => ∑ i, (C.K0 a i * cubicReal (C.S i) (C.T i) j + C.K1 a i * cubicImag (C.S i) j)

def MatrixFourier.quartic {t m : ℕ} (C : MatrixFourier t m) : Matrix (Fin m) (Fin 256) ℝ :=
  fun a j => ∑ i, (C.K0 a i * quarticReal (C.S i) (C.T i) j + C.K1 a i * quarticImag (C.S i) (C.T i) j)

lemma MatrixFourier.cubic_apply {t m : ℕ} (C : MatrixFourier t m)
    (w : EuclideanSpace ℝ (Fin 4)) :
    eucMap C.cubic (flatPower 3 w) =
      fourierRayJet C.model.coeff (fun i => C.model.linear i w)
        (fun i => C.model.quadratic i w w) 3 0 := by
  ext a
  change (∑ j, (∑ i, (C.K0 a i * cubicReal (C.S i) (C.T i) j +
    C.K1 a i * cubicImag (C.S i) j)) * flatPower 3 w j) = _
  simp only [Finset.sum_mul]
  rw [Finset.sum_comm]
  simp only [fourierRayJet, WithLp.ofLp_sum, Finset.sum_apply]
  apply Finset.sum_congr rfl
  intro i _
  simp only [add_mul, mul_assoc, Finset.sum_add_distrib, ← Finset.mul_sum,
    cubicReal_eval, cubicImag_eval, MatrixFourier.linear_apply, MatrixFourier.quadratic_apply]
  change _ = coefficientMap (fun a => ![C.K0 a i, C.K1 a i])
    (chirp (linearEval (C.S i) w) (quadraticEval (C.T i) w) 0 *
      chirpPoly 3 (chirpSlope (linearEval (C.S i) w) (quadraticEval (C.T i) w) 0)
        ((quadraticEval (C.T i) w : ℂ) * I)) a
  rw [coefficientMap_apply]
  simp [chirp, chirpSlope, chirpPoly, pow_succ] <;> ring <;> simp

lemma MatrixFourier.quartic_apply {t m : ℕ} (C : MatrixFourier t m)
    (w : EuclideanSpace ℝ (Fin 4)) :
    eucMap C.quartic (flatPower 4 w) =
      fourierRayJet C.model.coeff (fun i => C.model.linear i w)
        (fun i => C.model.quadratic i w w) 4 0 := by
  ext a
  change (∑ j, (∑ i, (C.K0 a i * quarticReal (C.S i) (C.T i) j +
    C.K1 a i * quarticImag (C.S i) (C.T i) j)) * flatPower 4 w j) = _
  simp only [Finset.sum_mul]
  rw [Finset.sum_comm]
  simp only [fourierRayJet, WithLp.ofLp_sum, Finset.sum_apply]
  apply Finset.sum_congr rfl
  intro i _
  simp only [add_mul, mul_assoc, Finset.sum_add_distrib, ← Finset.mul_sum,
    quarticReal_eval, quarticImag_eval, MatrixFourier.linear_apply, MatrixFourier.quadratic_apply]
  change _ = coefficientMap (fun a => ![C.K0 a i, C.K1 a i])
    (chirp (linearEval (C.S i) w) (quadraticEval (C.T i) w) 0 *
      chirpPoly 4 (chirpSlope (linearEval (C.S i) w) (quadraticEval (C.T i) w) 0)
        ((quadraticEval (C.T i) w : ℂ) * I)) a
  rw [coefficientMap_apply]
  simp [chirp, chirpSlope, chirpPoly, pow_succ] <;> ring <;> simp

theorem MatrixFourier.cubic_bound {t m : ℕ} (C : MatrixFourier t m) {b : ℝ}
    (h : ‖eucMap C.cubic‖ ≤ b) (w : EuclideanSpace ℝ (Fin 4)) :
    ‖fourierRayJet C.model.coeff (fun i => C.model.linear i w)
      (fun i => C.model.quadratic i w w) 3 0‖ ≤ b * ‖w‖ ^ 3 := by
  rw [← C.cubic_apply]
  exact ((eucMap C.cubic).le_opNorm _).trans (by rw [norm_flatPower]; gcongr)

theorem MatrixFourier.quartic_bound {t m : ℕ} (C : MatrixFourier t m) {b : ℝ}
    (h : ‖eucMap C.quartic‖ ≤ b) (w : EuclideanSpace ℝ (Fin 4)) :
    ‖fourierRayJet C.model.coeff (fun i => C.model.linear i w)
      (fun i => C.model.quadratic i w w) 4 0‖ ≤ b * ‖w‖ ^ 4 := by
  rw [← C.quartic_apply]
  exact ((eucMap C.quartic).le_opNorm _).trans (by rw [norm_flatPower]; gcongr)

end NoFourMUBs.KernelAtlas.WholeBall
