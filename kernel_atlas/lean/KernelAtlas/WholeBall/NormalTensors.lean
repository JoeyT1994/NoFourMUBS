import KernelAtlas.WholeBall.MatrixFourier

/-! Flattened mixed and normal tensors for the first two parameter jets of
the normal derivative and for its centre variation. -/

open Matrix Complex
open NoFourMUBs.SeedAtlas.Method.WholeBall

set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

def MatrixFourier.mixed {t m : ℕ} (C : MatrixFourier t m) : Matrix (Fin m) (Fin (4 * m)) ℝ :=
  -(C.K0 * rowTensor C.S C.D)

def MatrixFourier.normalSecond {t m : ℕ} (C : MatrixFourier t m) : Matrix (Fin m) (Fin (16 * m)) ℝ :=
  -(C.K0 * rowTensor C.T C.D + C.K1 * rowTensor (rowTensor C.S C.S) C.D)

def MatrixFourier.normalTensor {t m : ℕ} (C : MatrixFourier t m) : Matrix (Fin m) (Fin (m * m)) ℝ :=
  -(C.K0 * rowTensor C.D C.D)

lemma MatrixFourier.normal_first_apply {t m : ℕ} (C : MatrixFourier t m)
    (w : EuclideanSpace ℝ (Fin 4)) (v : EuclideanSpace ℝ (Fin m)) :
    fourierRayJet C.model.normalCoeff (fun i => C.model.linear i w)
      (fun i => C.model.quadratic i w w) 1 0 v = eucMap C.mixed (tensorPair w v) := by
  ext a
  simp only [fourierRayJet, _root_.sum_apply, WithLp.ofLp_sum, Finset.sum_apply,
    FourierModel.normalCoeff_apply, ContinuousLinearMap.smulRight_apply,
    WithLp.ofLp_smul, Pi.smul_apply, smul_eq_mul]
  change (∑ i, linearForm (C.D i) v * coefficientMap (fun a => ![C.K0 a i, C.K1 a i])
    ((chirp (C.model.linear i w) (C.model.quadratic i w w) 0 *
      chirpPoly 1 (chirpSlope (C.model.linear i w) (C.model.quadratic i w w) 0)
        ((C.model.quadratic i w w : ℂ) * I)) * I) a) = _
  simp only [chirp, chirpSlope, chirpPoly, mul_zero, zero_pow (by omega : 2 ≠ 0),
    zero_div, add_zero, Complex.ofReal_zero, zero_mul, Complex.exp_zero, one_mul,
    mul_assoc, Complex.I_mul_I, mul_neg_one, coefficientMap_apply,
    Matrix.cons_val_zero, Matrix.cons_val_one, Complex.neg_re, Complex.neg_im,
    Complex.ofReal_re, Complex.ofReal_im, neg_zero, mul_zero, add_zero]
  change _ = (-(C.K0 * rowTensor C.S C.D) *ᵥ (tensorPair w v : Fin (4 * m) → ℝ)) a
  rw [Matrix.neg_mulVec, ← Matrix.mulVec_mulVec]
  change _ = -(∑ i, C.K0 a i * eucMap (rowTensor C.S C.D) (tensorPair w v) i)
  simp only [rowTensor_apply, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro i _
  change linearForm (C.D i) v * (C.K0 a i * -(linearForm (C.S i) w)) =
    -(C.K0 a i * (eucMap C.S w i * eucMap C.D v i))
  rw [linearForm_apply, linearForm_apply]
  change (∑ j, C.D i j * v j) * (C.K0 a i * -(∑ j, C.S i j * w j)) =
    -(C.K0 a i * ((∑ j, C.S i j * w j) * (∑ j, C.D i j * v j)))
  ring

theorem MatrixFourier.normal_first_bound {t m : ℕ} (C : MatrixFourier t m) {b : ℝ}
    (h : ‖eucMap C.mixed‖ ≤ b) (w : EuclideanSpace ℝ (Fin 4)) :
    ‖fourierRayJet C.model.normalCoeff (fun i => C.model.linear i w)
      (fun i => C.model.quadratic i w w) 1 0‖ ≤ b * ‖w‖ := by
  apply ContinuousLinearMap.opNorm_le_bound _ (mul_nonneg ((norm_nonneg _).trans h) (norm_nonneg _))
  intro v
  rw [C.normal_first_apply]
  exact tensor_pair_bound (eucMap C.mixed) w v h

lemma MatrixFourier.normal_second_apply {t m : ℕ} (C : MatrixFourier t m)
    (w : EuclideanSpace ℝ (Fin 4)) (v : EuclideanSpace ℝ (Fin m)) :
    fourierRayJet C.model.normalCoeff (fun i => C.model.linear i w)
      (fun i => C.model.quadratic i w w) 2 0 v =
      eucMap C.normalSecond (tensorPair (tensorPair w w) v) := by
  ext a
  simp only [fourierRayJet, _root_.sum_apply, WithLp.ofLp_sum, Finset.sum_apply,
    FourierModel.normalCoeff_apply, ContinuousLinearMap.smulRight_apply,
    WithLp.ofLp_smul, Pi.smul_apply, smul_eq_mul]
  change (∑ i, linearForm (C.D i) v * coefficientMap (fun a => ![C.K0 a i, C.K1 a i])
    ((chirp (C.model.linear i w) (C.model.quadratic i w w) 0 *
      chirpPoly 2 (chirpSlope (C.model.linear i w) (C.model.quadratic i w w) 0)
        ((C.model.quadratic i w w : ℂ) * I)) * I) a) = _
  simp only [chirp, chirpSlope, chirpPoly, mul_zero, zero_pow (by omega : 2 ≠ 0),
    zero_div, add_zero, Complex.ofReal_zero, zero_mul, Complex.exp_zero, one_mul,
    MatrixFourier.linear_apply, MatrixFourier.quadratic_apply]
  have he (s q : ℝ) : (((s : ℂ) * I) ^ 2 + (q : ℂ) * I) * I =
      (-q : ℝ) + ((-s ^ 2 : ℝ) : ℂ) * I := by
    apply Complex.ext <;> simp [pow_two] <;> ring
  simp only [he, coefficientMap_apply, Matrix.cons_val_zero, Matrix.cons_val_one]
  simp only [Complex.add_re, Complex.add_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im, mul_zero, zero_mul,
    sub_zero, mul_one, add_zero, zero_add]
  change _ = (-(C.K0 * rowTensor C.T C.D + C.K1 * rowTensor (rowTensor C.S C.S) C.D) *ᵥ
    (tensorPair (tensorPair w w) v : Fin (16 * m) → ℝ)) a
  rw [Matrix.neg_mulVec, Matrix.add_mulVec, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]
  change _ = -((∑ i, C.K0 a i * eucMap (rowTensor C.T C.D) (tensorPair (tensorPair w w) v) i) +
    ∑ i, C.K1 a i * eucMap (rowTensor (rowTensor C.S C.S) C.D) (tensorPair (tensorPair w w) v) i)
  simp only [rowTensor_apply, ← Finset.sum_add_distrib, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro i _
  have ht : eucMap C.T (tensorPair w w) i = quadraticEval (C.T i) w := quadraticEval_tensorPair _ _
  rw [ht, linearForm_apply]
  change (∑ j, C.D i j * v j) *
    (C.K0 a i * -quadraticEval (C.T i) w + C.K1 a i * -linearEval (C.S i) w ^ 2) = _
  change _ = -(C.K0 a i * (quadraticEval (C.T i) w * (∑ j, C.D i j * v j)) +
    C.K1 a i * ((linearEval (C.S i) w * linearEval (C.S i) w) * (∑ j, C.D i j * v j)))
  ring

theorem MatrixFourier.normal_second_bound {t m : ℕ} (C : MatrixFourier t m) {b : ℝ}
    (h : ‖eucMap C.normalSecond‖ ≤ b) (w : EuclideanSpace ℝ (Fin 4)) :
    ‖fourierRayJet C.model.normalCoeff (fun i => C.model.linear i w)
      (fun i => C.model.quadratic i w w) 2 0‖ ≤ b * ‖w‖ ^ 2 := by
  apply ContinuousLinearMap.opNorm_le_bound _ (mul_nonneg ((norm_nonneg _).trans h) (sq_nonneg _))
  intro v
  rw [C.normal_second_apply]
  have hh := tensor_pair_bound (eucMap C.normalSecond) (tensorPair w w) v h
  rw [norm_tensorPair w w] at hh
  simpa only [pow_two, mul_assoc] using hh

lemma MatrixFourier.tube_centre_apply {t m : ℕ} (C : MatrixFourier t m)
    (z v : EuclideanSpace ℝ (Fin m)) :
    C.model.tubeJet 0 z v = eucMap C.normalTensor (tensorPair z v) := by
  ext a
  simp only [FourierModel.tubeJet, _root_.sum_apply, WithLp.ofLp_sum, Finset.sum_apply,
    FourierModel.normalCoeff_apply, ContinuousLinearMap.smulRight_apply,
    WithLp.ofLp_smul, Pi.smul_apply, smul_eq_mul, FourierModel.phase, map_zero,
    zero_div, add_zero, Complex.ofReal_zero, zero_mul, Complex.exp_zero, one_mul]
  change (∑ i, linearForm (C.D i) v * coefficientMap (fun a => ![C.K0 a i, C.K1 a i])
    (((linearForm (C.D i) z : ℝ) : ℂ) * I * I) a) = _
  simp only [mul_assoc, Complex.I_mul_I, mul_neg_one, coefficientMap_apply,
    Matrix.cons_val_zero, Matrix.cons_val_one, Complex.neg_re, Complex.neg_im,
    Complex.ofReal_re, Complex.ofReal_im, neg_zero, mul_zero, add_zero]
  change _ = (-(C.K0 * rowTensor C.D C.D) *ᵥ (tensorPair z v : Fin (m * m) → ℝ)) a
  rw [Matrix.neg_mulVec, ← Matrix.mulVec_mulVec]
  change _ = -(∑ i, C.K0 a i * eucMap (rowTensor C.D C.D) (tensorPair z v) i)
  simp only [rowTensor_apply, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [linearForm_apply, linearForm_apply]
  change (∑ j, C.D i j * v j) * (C.K0 a i * -(∑ j, C.D i j * z j)) =
    -(C.K0 a i * ((∑ j, C.D i j * z j) * (∑ j, C.D i j * v j)))
  ring

theorem MatrixFourier.tube_centre_bound {t m : ℕ} (C : MatrixFourier t m) {b : ℝ}
    (h : ‖eucMap C.normalTensor‖ ≤ b) (z : EuclideanSpace ℝ (Fin m)) :
    ‖C.model.tubeJet 0 z‖ ≤ b * ‖z‖ := by
  apply ContinuousLinearMap.opNorm_le_bound _ (mul_nonneg ((norm_nonneg _).trans h) (norm_nonneg _))
  intro v
  rw [C.tube_centre_apply]
  exact tensor_pair_bound (eucMap C.normalTensor) z v h

end NoFourMUBs.KernelAtlas.WholeBall
