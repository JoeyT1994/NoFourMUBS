import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic

/-!
# Exact rational spectral witnesses of arbitrary finite size

The factors are proposals. The checker verifies the factorisation and every
pivot exactly. Soundness gives a Euclidean operator bound; no floating-point
eigensolver or proposed factorisation is trusted.
-/

open Matrix
open scoped Matrix.Norms.L2Operator

namespace NoFourMUBs.KernelAtlas.WholeBall

structure PSDWitness (n : ℕ) where
  L : Matrix (Fin n) (Fin n) ℚ
  d : Fin n → ℚ

def psdCheck {n : ℕ} (A : Matrix (Fin n) (Fin n) ℚ) (W : PSDWitness n) : Bool :=
  decide ((∀ i, 0 ≤ W.d i) ∧ A = W.L * diagonal W.d * W.Lᵀ)

noncomputable def realMatrix {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℚ) :
    Matrix (Fin m) (Fin n) ℝ := A.map (Rat.cast : ℚ → ℝ)

lemma realMatrix_mul {m n k : ℕ} (A : Matrix (Fin m) (Fin n) ℚ)
    (B : Matrix (Fin n) (Fin k) ℚ) : realMatrix (A * B) = realMatrix A * realMatrix B := by
  ext i j
  simp only [realMatrix, Matrix.map_apply, Matrix.mul_apply]
  push_cast
  rfl

lemma realMatrix_transpose {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℚ) :
    realMatrix Aᵀ = (realMatrix A)ᵀ := rfl

lemma realMatrix_diagonal {n : ℕ} (d : Fin n → ℚ) :
    realMatrix (diagonal d) = diagonal (fun i => (d i : ℝ)) := by
  ext i j
  by_cases h : i = j <;> simp [realMatrix, h]

theorem psdCheck_sound {n : ℕ} {A : Matrix (Fin n) (Fin n) ℚ} {W : PSDWitness n}
    (h : psdCheck A W = true) : (realMatrix A).PosSemidef := by
  have hh := of_decide_eq_true h
  change (∀ i, 0 ≤ W.d i) ∧ A = W.L * diagonal W.d * W.Lᵀ at hh
  have hd : (diagonal (fun i => (W.d i : ℝ))).PosSemidef :=
    Matrix.PosSemidef.diagonal (fun i => by change (0 : ℝ) ≤ W.d i; exact_mod_cast hh.1 i)
  rw [hh.2, realMatrix_mul, realMatrix_mul, realMatrix_diagonal, realMatrix_transpose]
  simpa only [conjTranspose_eq_transpose_of_trivial] using hd.mul_mul_conjTranspose_same (realMatrix W.L)

noncomputable def eucMap {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) :
    EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin m) :=
  (Matrix.toEuclideanLin A).toContinuousLinearMap

lemma norm_sq_eucMap {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) (v : EuclideanSpace ℝ (Fin n)) :
    ‖eucMap A v‖ ^ 2 = (v : Fin n → ℝ) ⬝ᵥ ((Aᵀ * A) *ᵥ v) := by
  rw [← Matrix.mulVec_mulVec, Matrix.dotProduct_transpose_mulVec]
  rw [EuclideanSpace.real_norm_sq_eq]
  simp only [eucMap, dotProduct, pow_two]
  rfl

theorem norm_eucMap_le_of_gram {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) {b : ℝ}
    (hb : 0 ≤ b) (h : (b ^ 2 • (1 : Matrix (Fin n) (Fin n) ℝ) - Aᵀ * A).PosSemidef) :
    ‖eucMap A‖ ≤ b := by
  apply ContinuousLinearMap.opNorm_le_bound _ hb
  intro v
  have hq := h.dotProduct_mulVec_nonneg (v : Fin n → ℝ)
  have hv : (v : Fin n → ℝ) ⬝ᵥ v = ‖v‖ ^ 2 := by
    rw [EuclideanSpace.real_norm_sq_eq]
    simp only [dotProduct, pow_two]
  simp only [star_trivial, Matrix.sub_mulVec, Matrix.smul_mulVec, Matrix.one_mulVec,
    dotProduct_sub, dotProduct_smul, smul_eq_mul, hv, ← norm_sq_eucMap] at hq
  have hsq : ‖eucMap A v‖ ^ 2 ≤ (b * ‖v‖) ^ 2 := by nlinarith
  exact (sq_le_sq₀ (norm_nonneg _) (mul_nonneg hb (norm_nonneg _))).mp hsq

def spectralCheck {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℚ) (b : ℚ) (W : PSDWitness n) : Bool :=
  decide (0 ≤ b) && psdCheck (b ^ 2 • (1 : Matrix (Fin n) (Fin n) ℚ) - Aᵀ * A) W

theorem spectralCheck_sound {m n : ℕ} {A : Matrix (Fin m) (Fin n) ℚ} {b : ℚ} {W : PSDWitness n}
    (h : spectralCheck A b W = true) : ‖eucMap (realMatrix A)‖ ≤ (b : ℝ) := by
  simp only [spectralCheck, Bool.and_eq_true] at h
  obtain ⟨hb, hW⟩ := h
  have hb' : (0 : ℝ) ≤ b := by exact_mod_cast (of_decide_eq_true hb : 0 ≤ b)
  apply norm_eucMap_le_of_gram _ hb'
  convert psdCheck_sound hW using 1
  ext i j
  simp only [realMatrix, Matrix.map_apply, Matrix.sub_apply, Matrix.smul_apply,
    Matrix.mul_apply, Matrix.transpose_apply, smul_eq_mul, Matrix.one_apply]
  push_cast
  split_ifs <;> simp only [Rat.cast_one, Rat.cast_zero]

/-- Checking the smaller output Gram matrix gives the same spectral bound. -/
theorem spectralCheck_transpose_sound {m n : ℕ} {A : Matrix (Fin m) (Fin n) ℚ} {b : ℚ}
    {W : PSDWitness m} (h : spectralCheck Aᵀ b W = true) :
    ‖eucMap (realMatrix A)‖ ≤ (b : ℝ) := by
  have hh := spectralCheck_sound h
  change ‖realMatrix Aᵀ‖ ≤ (b : ℝ) at hh
  change ‖realMatrix A‖ ≤ (b : ℝ)
  rw [realMatrix_transpose, ← conjTranspose_eq_transpose_of_trivial,
    Matrix.l2_opNorm_conjTranspose] at hh
  exact hh

end NoFourMUBs.KernelAtlas.WholeBall
