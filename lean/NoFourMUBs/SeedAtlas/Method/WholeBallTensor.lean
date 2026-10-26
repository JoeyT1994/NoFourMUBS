import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Algebra.BigOperators.Ring.Finset
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

end NoFourMUBs.SeedAtlas.Method.WholeBall
