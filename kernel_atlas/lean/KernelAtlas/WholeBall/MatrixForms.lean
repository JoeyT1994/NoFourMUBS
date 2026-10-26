import KernelAtlas.WholeBall.MatrixTensor
import NoFourMUBs.SeedAtlas.Method.WholeBallTensor
import Mathlib.Analysis.InnerProductSpace.LinearMap

/-! Euclidean interpretations of the flattened arrays. These lemmas transfer
matrix spectral certificates to scalar linear/bilinear forms and mixed tensors. -/

open Matrix
open scoped Matrix.Norms.L2Operator
open NoFourMUBs.SeedAtlas.Method.WholeBall

namespace NoFourMUBs.KernelAtlas.WholeBall

noncomputable def linearForm {n : ℕ} (a : Fin n → ℝ) : EuclideanSpace ℝ (Fin n) →L[ℝ] ℝ :=
  innerSL ℝ (WithLp.toLp 2 a)

lemma linearForm_apply {n : ℕ} (a : Fin n → ℝ) (v : EuclideanSpace ℝ (Fin n)) :
    linearForm a v = ∑ j, a j * v j := by
  simp [linearForm, innerSL_apply_apply, PiLp.inner_apply, mul_comm]

lemma norm_linearForm {n : ℕ} (a : Fin n → ℝ) :
    ‖linearForm a‖ = ‖(WithLp.toLp 2 a : EuclideanSpace ℝ (Fin n))‖ :=
  innerSL_apply_norm ℝ _

lemma norm_linearForm_row {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) (i : Fin m) :
    ‖linearForm (A i)‖ ≤ ‖eucMap A‖ := by
  apply ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg _)
  intro v
  have he : linearForm (A i) v = eucMap A v i := linearForm_apply _ _
  rw [he]
  exact (PiLp.norm_apply_le (eucMap A v) i).trans ((eucMap A).le_opNorm v)

noncomputable def bilinearForm {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) :
    EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin n) →L[ℝ] ℝ :=
  (innerSL ℝ).comp (eucMap Aᵀ)

lemma bilinearForm_apply {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ)
    (v w : EuclideanSpace ℝ (Fin n)) : bilinearForm A v w = ∑ i, ∑ j, A i j * v i * w j := by
  change linearForm (Aᵀ *ᵥ (v : Fin n → ℝ)) w = _
  rw [linearForm_apply]
  simp only [Matrix.mulVec, dotProduct, Matrix.transpose_apply, Finset.sum_mul]
  rw [Finset.sum_comm]

lemma norm_bilinearForm {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) :
    ‖bilinearForm A‖ ≤ ‖eucMap A‖ := by
  calc
    _ ≤ ‖innerSL ℝ (E := EuclideanSpace ℝ (Fin n))‖ * ‖eucMap Aᵀ‖ :=
      ContinuousLinearMap.opNorm_comp_le _ _
    _ ≤ 1 * ‖eucMap Aᵀ‖ := mul_le_mul_of_nonneg_right (norm_innerSL_le ℝ) (norm_nonneg _)
    _ = _ := by
      rw [one_mul]
      change ‖Aᵀ‖ = ‖A‖
      rw [← conjTranspose_eq_transpose_of_trivial, Matrix.l2_opNorm_conjTranspose]

lemma rowTensor_apply {m n k : ℕ} (A : Matrix (Fin m) (Fin n) ℝ)
    (B : Matrix (Fin m) (Fin k) ℝ) (v : EuclideanSpace ℝ (Fin n))
    (w : EuclideanSpace ℝ (Fin k)) (i : Fin m) :
    eucMap (rowTensor A B) (tensorPair v w) i = (eucMap A v i) * (eucMap B w i) := by
  change (∑ j : Fin (n * k), (A i (finProdFinEquiv.symm j).1 * B i (finProdFinEquiv.symm j).2) *
    (v (finProdFinEquiv.symm j).1 * w (finProdFinEquiv.symm j).2)) =
      (∑ a, A i a * v a) * ∑ b, B i b * w b
  rw [Equiv.sum_comp finProdFinEquiv.symm
    (fun p : Fin n × Fin k => (A i p.1 * B i p.2) * (v p.1 * w p.2)), Fintype.sum_prod_type]
  simp only [Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  ring

noncomputable def complexCoordinates : ℂ →L[ℝ] EuclideanSpace ℝ (Fin 2) :=
  (PiLp.continuousLinearEquiv 2 ℝ (fun _ : Fin 2 => ℝ)).symm.toContinuousLinearMap.comp
    (ContinuousLinearMap.pi ![Complex.reCLM, Complex.imCLM])

lemma norm_complexCoordinates (z : ℂ) : ‖complexCoordinates z‖ = ‖z‖ := by
  apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
  rw [EuclideanSpace.real_norm_sq_eq, ← Complex.normSq_eq_norm_sq]
  simp [complexCoordinates, Fin.sum_univ_succ, Complex.normSq_apply, pow_two]

noncomputable def coefficientMap {m : ℕ} (A : Matrix (Fin m) (Fin 2) ℝ) :
    ℂ →L[ℝ] EuclideanSpace ℝ (Fin m) := (eucMap A).comp complexCoordinates

lemma coefficientMap_apply {m : ℕ} (A : Matrix (Fin m) (Fin 2) ℝ) (z : ℂ) (i : Fin m) :
    coefficientMap A z i = A i 0 * z.re + A i 1 * z.im := by
  simp [coefficientMap, eucMap, Matrix.toEuclideanLin, complexCoordinates,
    Matrix.mulVec, dotProduct, Fin.sum_univ_succ]

lemma norm_coefficientMap {m : ℕ} (A : Matrix (Fin m) (Fin 2) ℝ) :
    ‖coefficientMap A‖ ≤ ‖eucMap A‖ := by
  apply ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg _)
  intro z
  simpa only [coefficientMap, ContinuousLinearMap.comp_apply, norm_complexCoordinates] using (eucMap A).le_opNorm (complexCoordinates z)

end NoFourMUBs.KernelAtlas.WholeBall
