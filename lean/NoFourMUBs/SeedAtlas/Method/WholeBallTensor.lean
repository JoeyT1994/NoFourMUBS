import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Tactic

/-!
# Flattened tensor bounds

A tensor is flattened only after its Fourier terms have been summed. Its
Euclidean matrix norm then bounds evaluation on tensor products. This is the
bridge from the spectral checks to Z's `t3`, `t4`, `a2`, `c`, `d`, and `β`.
-/

open scoped Matrix.Norms.L2Operator

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {ι κ : Type*} [Fintype ι] [DecidableEq ι] [Fintype κ]

noncomputable def tensorVector (v : ι → EuclideanSpace ℝ κ) : EuclideanSpace ℝ (ι → κ) :=
  WithLp.toLp 2 (fun p => ∏ i, v i (p i))

theorem norm_tensorVector (v : ι → EuclideanSpace ℝ κ) :
    ‖tensorVector v‖ = ∏ i, ‖v i‖ := by
  apply (sq_eq_sq₀ (norm_nonneg _) (Finset.prod_nonneg (fun i _ => norm_nonneg _))).mp
  rw [EuclideanSpace.real_norm_sq_eq, ← Finset.prod_pow]
  simp only [tensorVector, PiLp.toLp_apply, ← Finset.prod_pow,
    EuclideanSpace.real_norm_sq_eq]
  exact (Fintype.prod_sum (fun (_i : ι) (j : κ) => (v _i j) ^ 2)).symm

noncomputable def tensorPower (n : ℕ) (v : EuclideanSpace ℝ κ) :
    EuclideanSpace ℝ (Fin n → κ) := tensorVector (fun _ => v)

theorem norm_tensorPower (n : ℕ) (v : EuclideanSpace ℝ κ) : ‖tensorPower n v‖ = ‖v‖ ^ n := by
  simp [tensorPower, norm_tensorVector]

theorem tensor_flatten_bound {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
    (A : EuclideanSpace ℝ (ι → κ) →L[ℝ] F) (v : ι → EuclideanSpace ℝ κ)
    {b : ℝ} (hA : ‖A‖ ≤ b) : ‖A (tensorVector v)‖ ≤ b * ∏ i, ‖v i‖ := by
  calc
    _ ≤ ‖A‖ * ‖tensorVector v‖ := A.le_opNorm _
    _ ≤ b * ∏ i, ‖v i‖ := by
      rw [norm_tensorVector]
      exact mul_le_mul_of_nonneg_right hA (Finset.prod_nonneg (fun i _ => norm_nonneg _))

theorem tensor_power_bound {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
    {n : ℕ} (A : EuclideanSpace ℝ (Fin n → κ) →L[ℝ] F) (v : EuclideanSpace ℝ κ)
    {b : ℝ} (hA : ‖A‖ ≤ b) : ‖A (tensorPower n v)‖ ≤ b * ‖v‖ ^ n := by
  simpa only [tensorPower, Finset.prod_const, Finset.card_univ, Fintype.card_fin] using
    tensor_flatten_bound A (fun _ => v) hA

/-- Mixed dimensions are needed for `D²Φ[U,X]` and the normal derivative's
parameter tensors. The second coordinate is the fast flattened index. -/
noncomputable def tensorPair {m n : ℕ} (v : EuclideanSpace ℝ (Fin m))
    (w : EuclideanSpace ℝ (Fin n)) : EuclideanSpace ℝ (Fin (m * n)) :=
  WithLp.toLp 2 (fun p => v (finProdFinEquiv.symm p).1 * w (finProdFinEquiv.symm p).2)

theorem norm_tensorPair {m n : ℕ} (v : EuclideanSpace ℝ (Fin m))
    (w : EuclideanSpace ℝ (Fin n)) : ‖tensorPair v w‖ = ‖v‖ * ‖w‖ := by
  apply (sq_eq_sq₀ (norm_nonneg _) (mul_nonneg (norm_nonneg _) (norm_nonneg _))).mp
  rw [mul_pow, EuclideanSpace.real_norm_sq_eq, EuclideanSpace.real_norm_sq_eq,
    EuclideanSpace.real_norm_sq_eq]
  simp only [tensorPair, PiLp.toLp_apply, mul_pow]
  rw [Equiv.sum_comp finProdFinEquiv.symm
    (fun p : Fin m × Fin n => (v p.1) ^ 2 * (w p.2) ^ 2), Fintype.sum_prod_type]
  simp only [← Finset.mul_sum, ← Finset.sum_mul]

theorem tensor_pair_bound {m n : ℕ} {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
    (A : EuclideanSpace ℝ (Fin (m * n)) →L[ℝ] F)
    (v : EuclideanSpace ℝ (Fin m)) (w : EuclideanSpace ℝ (Fin n))
    {b : ℝ} (hA : ‖A‖ ≤ b) : ‖A (tensorPair v w)‖ ≤ b * ‖v‖ * ‖w‖ := by
  calc
    _ ≤ ‖A‖ * ‖tensorPair v w‖ := A.le_opNorm _
    _ ≤ b * ‖tensorPair v w‖ := mul_le_mul_of_nonneg_right hA (norm_nonneg _)
    _ = _ := by rw [norm_tensorPair]; ring

/-- A power tensor indexed by the base-`m` word number. Coordinate zero is
the least significant digit. This convention is explicit in the exporter. -/
noncomputable def flatPower {m : ℕ} (n : ℕ) (v : EuclideanSpace ℝ (Fin m)) :
    EuclideanSpace ℝ (Fin (m ^ n)) :=
  WithLp.toLp 2 (fun j => ∏ i : Fin n, v (finFunctionFinEquiv.symm j i))

theorem norm_flatPower {m : ℕ} (n : ℕ) (v : EuclideanSpace ℝ (Fin m)) :
    ‖flatPower n v‖ = ‖v‖ ^ n := by
  have he : ‖flatPower n v‖ = ‖tensorPower n v‖ := by
    apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
    simp only [EuclideanSpace.real_norm_sq_eq, flatPower, tensorPower, tensorVector,
      PiLp.toLp_apply]
    exact Equiv.sum_comp finFunctionFinEquiv.symm (fun p : Fin n → Fin m => (∏ i, v (p i)) ^ 2)
  rw [he, norm_tensorPower]

end NoFourMUBs.SeedAtlas.Method.WholeBall
