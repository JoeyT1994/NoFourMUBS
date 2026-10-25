import KernelAtlas.Edge.SideContinuity
import KernelAtlas.Edge.Forced
import KernelAtlas.Edge.Regular
import Mathlib.Analysis.Convex.Topology

/-! Density of regular labels and extension of a continuous completion across the fold. -/

open Complex Matrix Hadamard6 Set NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

/-- A nonconstant affine label is nonzero on a dense subset of a convex parameter set. -/
theorem affine_regular_dense {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {S : Set E} (hS : Convex ℝ S) (f : E →ₗ[ℝ] ℝ) (c : ℝ)
    (hw : ∃ w ∈ S, f w + c ≠ 0) : S ⊆ closure {w | w ∈ S ∧ f w + c ≠ 0} := by
  obtain ⟨w, hw, hw0⟩ := hw
  intro x hx
  by_cases hx0 : f x + c = 0
  · have hs : openSegment ℝ x w ⊆ {z | z ∈ S ∧ f z + c ≠ 0} := by
      rintro z ⟨a, b, ha, hb, hab, rfl⟩
      refine ⟨hS hx hw ha.le hb.le hab, ?_⟩
      simp only [map_add, map_smul, smul_eq_mul]
      have he : a * f x + b * f w + c = b * (f w + c) := by
        linear_combination a * hx0 - c * hab
      rw [he]
      exact mul_ne_zero (ne_of_gt hb) hw0
    exact closure_mono hs (segment_subset_closure_openSegment (left_mem_segment ℝ x w))
  · exact subset_closure ⟨hx, hx0⟩

lemma convex_inBox (h : List ℕ) : Convex ℝ {u : Fin 4 → ℝ | InBox h u} := by
  intro x hx y hy a b ha hb hab j
  simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  calc |a * x j + b * y j| ≤ |a * x j| + |b * y j| := abs_add_le _ _
    _ = a * |x j| + b * |y j| := by rw [abs_mul, abs_mul, abs_of_nonneg ha, abs_of_nonneg hb]
    _ ≤ a * rn (gn h j) + b * rn (gn h j) :=
      add_le_add (mul_le_mul_of_nonneg_left (hx j) ha) (mul_le_mul_of_nonneg_left (hy j) hb)
    _ = rn (gn h j) := by rw [← add_mul, hab, one_mul]

/-- The matrix completion determined by the two augmented roots. -/
def rootCompletion (a : Fin 3 → ℝ) (ξH ξV : Fin 7 → ℝ) : Mat6 :=
  completion (L1.FlatCircuits.Em (rho4 a (ξH 0)))
    (L1.sideMat (sx (phiOf ξH)) (sy (phiOf ξH))) (L1.sideMat (sx (phiOf ξV)) (sy (phiOf ξV)))ᵀ

@[fun_prop] lemma continuous_Em : Continuous L1.FlatCircuits.Em := by
  apply continuous_pi
  intro i
  apply continuous_pi
  intro j
  fin_cases i <;> fin_cases j <;> simp only [L1.FlatCircuits.Em, Hadamard6.corner, Matrix.of_apply,
    Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two] <;> fun_prop

/-- The forced-block check supplies the invertibility assumption used here. -/
theorem continuous_rootCompletion {P : Type*} [TopologicalSpace P]
    (a : P → (Fin 3 → ℝ)) (ξH ξV : P → (Fin 7 → ℝ))
    (ha : Continuous a) (hH : Continuous ξH) (hV : Continuous ξV)
    (hdet : ∀ p, IsUnit (L1.sideMat (sx (phiOf (ξH p))) (sy (phiOf (ξH p)))).det) :
    Continuous (fun p => rootCompletion (a p) (ξH p) (ξV p)) := by
  let E := fun p => L1.FlatCircuits.Em (rho4 (a p) (ξH p 0))
  let B := fun p => L1.sideMat (sx (phiOf (ξH p))) (sy (phiOf (ξH p)))
  let C := fun p => (L1.sideMat (sx (phiOf (ξV p))) (sy (phiOf (ξV p))))ᵀ
  have hE : Continuous E := by dsimp only [E]; fun_prop
  have hB : Continuous B := by dsimp only [B]; fun_prop
  have hC : Continuous C := by dsimp only [C]; fun_prop
  have hD := continuous_forcedD E B C hE hB hC hdet
  change Continuous (fun p => Matrix.fromBlocks (E p) (B p) (C p) (forcedD (E p) (B p) (C p)))
  apply continuous_pi
  intro i
  apply continuous_pi
  intro j
  cases i <;> cases j <;> simp only [Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₁₂,
    Matrix.fromBlocks_apply₂₁, Matrix.fromBlocks_apply₂₂] <;> fun_prop

/-- Hadamard at the fold follows from continuous side roots, invertibility, and regular density. -/
theorem rootCompletion_hadamard_of_dense {P : Type*} [TopologicalSpace P]
    (a : P → (Fin 3 → ℝ)) (y : P → ℝ) (ξH ξV : P → (Fin 7 → ℝ))
    (ha : Continuous a) (hH : Continuous ξH) (hV : Continuous ξV)
    (hdet : ∀ p, IsUnit (L1.sideMat (sx (phiOf (ξH p))) (sy (phiOf (ξH p)))).det)
    (hd : Dense {p | y p ≠ 0})
    (hzH : ∀ p, edgeF false (a p) (y p) (ξH p) = 0)
    (hzV : ∀ p, edgeF true (a p) (y p) (ξV p) = 0)
    (ht : ∀ p, y p ≠ 0 → ξH p 0 = ξV p 0) :
    ∀ p, Hadamard6.IsHadamard (rootCompletion (a p) (ξH p) (ξV p)) := by
  have hc := continuous_rootCompletion a ξH ξV ha hH hV hdet
  have hclosed := NoFourMUBs.Step2Topology.isClosed_isHadamard.preimage hc
  have hin : {p | y p ≠ 0} ⊆ {p | Hadamard6.IsHadamard (rootCompletion (a p) (ξH p) (ξV p))} :=
    fun p hp => regular_completion (hzH p) (hzV p) hp (ht p hp)
  intro p
  exact closure_minimal hin hclosed (hd p)

end NoFourMUBs.KernelAtlas.Edge
