import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Group.Constructions
import Hadamard6.FiniteCornerFromBlocks

/-!
# The forced block by residual correction (`proof/seed_atlas/SPEC.md` §2, step 3)

* `forced_mul`: in a Hadamard matrix `[[E, B], [C, D]]`, `D B* = −C E*` (the bottom rows are orthogonal to the top
  rows).
* `residual_correction`: then, for **any** predictor `X`, `D − X = −(C E* + X B*)(B*)⁻¹`: the error of the
  predictor is the residual `C E* + X B*` times `(B*)⁻¹` (the SPEC's "do not form `D` as a product with an inverse").
* `neumann`: an entrywise bound on an inverse.  If `‖I − A₀ M‖_∞ ≤ q < 1` (row sums of moduli) and `a_j` bounds
  column `j` of `|A₀|`, then `M` is invertible and `|(M⁻¹)ᵢⱼ| ≤ |(A₀)ᵢⱼ| + q aⱼ / (1 − q)`.  With
  `M = B*(u) = B*_c + Δ(u)` over the box and `A₀ ≈ (B*_c)⁻¹`, `‖I − A₀ M‖_∞ ≤ ‖|I − A₀ B*_c| + |A₀| var(B*)‖_∞`.
* `norm_correction_le`: `|(D − X)ᵢⱼ| ≤ Σₗ |(C E* + X B*)ᵢₗ| Nₗⱼ` for any entrywise bound `N ≥ |(B*)⁻¹|`.
-/

open Matrix

noncomputable section

namespace NoFourMUBs.SeedAtlas.Method

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

omit [DecidableEq ι] in
lemma norm_mul_apply_le (A B : Matrix ι ι ℂ) (i j : ι) : ‖(A * B) i j‖ ≤ ∑ l, ‖A i l‖ * ‖B l j‖ := by
  rw [Matrix.mul_apply]; exact (norm_sum_le _ _).trans (Finset.sum_le_sum fun l _ => (norm_mul _ _).le)

omit [DecidableEq ι] in
/-- The bottom rows of a Hadamard matrix are orthogonal to its top rows: `D B* = −C E*`. -/
theorem forced_mul {E B C D : Matrix ι ι ℂ} (hcross : E * Cᴴ + B * Dᴴ = 0) : D * Bᴴ = -(C * Eᴴ) := by
  have h := congrArg Matrix.conjTranspose hcross
  rw [Matrix.conjTranspose_add, Matrix.conjTranspose_mul, Matrix.conjTranspose_mul,
    Matrix.conjTranspose_conjTranspose, Matrix.conjTranspose_conjTranspose, Matrix.conjTranspose_zero] at h
  exact eq_neg_of_add_eq_zero_right h

/-- **Residual correction:** `D − X = −(C E* + X B*)(B*)⁻¹`. -/
theorem residual_correction {Bs CE D X : Matrix ι ι ℂ} (hD : D * Bs = -CE) (hB : IsUnit Bs.det) :
    D - X = -(CE + X * Bs) * Bs⁻¹ := by
  have h := mul_nonsing_inv Bs hB
  calc D - X = (D * Bs - X * Bs) * Bs⁻¹ := by rw [sub_mul, mul_assoc, h, mul_assoc, h, mul_one, mul_one]
    _ = _ := by rw [hD]; noncomm_ring

/-- The entrywise bound of the correction. -/
theorem norm_correction_le {Bs CE D X : Matrix ι ι ℂ} (hD : D * Bs = -CE) (hB : IsUnit Bs.det)
    {N : ι → ι → ℝ} (hN : ∀ l j, ‖Bs⁻¹ l j‖ ≤ N l j) (i j : ι) :
    ‖(D - X) i j‖ ≤ ∑ l, ‖(CE + X * Bs) i l‖ * N l j := by
  rw [residual_correction hD hB, Matrix.neg_mul, Matrix.neg_apply, norm_neg]
  exact (norm_mul_apply_le _ _ i j).trans
    (Finset.sum_le_sum fun l _ => mul_le_mul_of_nonneg_left (hN l j) (norm_nonneg _))

omit [DecidableEq ι] in
lemma abs_le_sup_norm (w : ι → ℂ) (i : ι) : ‖w i‖ ≤ ‖w‖ := norm_le_pi_norm w i

/-- **The Neumann bound.** -/
theorem neumann (M A₀ : Matrix ι ι ℂ) {q : ℝ} (hq : q < 1) (hE : ∀ i, ∑ l, ‖(1 - A₀ * M) i l‖ ≤ q)
    {a : ι → ℝ} (ha : ∀ l j, ‖A₀ l j‖ ≤ a j) :
    IsUnit M.det ∧ ∀ i j, ‖M⁻¹ i j‖ ≤ ‖A₀ i j‖ + q * a j / (1 - q) := by
  set E := 1 - A₀ * M
  -- `A₀ M` is injective, hence invertible
  have hinj : Function.Injective (A₀ * M).mulVec := by
    intro w₁ w₂ h
    set w := w₁ - w₂
    have hw : (A₀ * M).mulVec w = 0 := by simp only [w, Matrix.mulVec_sub, h, sub_self]
    have hcomp : ∀ i, ‖w i‖ ≤ q * ‖w‖ := by
      intro i
      have e : w i = (E.mulVec w) i := by
        simp only [E, Matrix.sub_mulVec, Matrix.one_mulVec, hw, sub_zero]
      rw [e]
      simp only [Matrix.mulVec, dotProduct]
      refine (norm_sum_le _ _).trans ?_
      calc ∑ l, ‖E i l * w l‖ ≤ ∑ l, ‖E i l‖ * ‖w‖ :=
            Finset.sum_le_sum fun l _ => by
              rw [norm_mul]; exact mul_le_mul_of_nonneg_left (abs_le_sup_norm w l) (norm_nonneg _)
        _ = (∑ l, ‖E i l‖) * ‖w‖ := by rw [Finset.sum_mul]
        _ ≤ q * ‖w‖ := mul_le_mul_of_nonneg_right (hE i) (norm_nonneg _)
    rcases isEmpty_or_nonempty ι with hι | ⟨⟨i0⟩⟩
    · funext i; exact isEmptyElim i
    · have hq0 : 0 ≤ q := (Finset.sum_nonneg fun l _ => norm_nonneg _).trans (hE i0)
      have h1 : ‖w‖ ≤ q * ‖w‖ := (pi_norm_le_iff_of_nonneg (by positivity)).2 hcomp
      have h0 : ‖w‖ = 0 := by nlinarith [norm_nonneg w]
      exact sub_eq_zero.1 (norm_eq_zero.1 h0)
  have hu : IsUnit (A₀ * M) := Matrix.mulVec_injective_iff_isUnit.1 hinj
  rw [Matrix.isUnit_iff_isUnit_det, Matrix.det_mul] at hu
  have hM : IsUnit M.det := isUnit_of_mul_isUnit_right hu
  refine ⟨hM, ?_⟩
  -- `M⁻¹ = A₀ + E M⁻¹`
  have hinv : M⁻¹ = A₀ + E * M⁻¹ := by
    have h := mul_nonsing_inv M hM
    simp only [E, sub_mul, one_mul, mul_assoc, h, mul_one]; abel
  have hentry : ∀ i j, ‖M⁻¹ i j‖ ≤ ‖A₀ i j‖ + ∑ l, ‖E i l‖ * ‖M⁻¹ l j‖ := by
    intro i j
    calc ‖M⁻¹ i j‖ = ‖A₀ i j + (E * M⁻¹) i j‖ := by rw [← Matrix.add_apply, ← hinv]
      _ ≤ ‖A₀ i j‖ + ‖(E * M⁻¹) i j‖ := norm_add_le _ _
      _ ≤ _ := add_le_add le_rfl (norm_mul_apply_le _ _ i j)
  intro i j
  have hq0 : 0 ≤ q := (Finset.sum_nonneg fun l _ => norm_nonneg _).trans (hE i)
  obtain ⟨l0, -, hl0⟩ := Finset.exists_max_image Finset.univ (fun l => ‖M⁻¹ l j‖) ⟨i, Finset.mem_univ i⟩
  set c := ‖M⁻¹ l0 j‖
  have hrow : ∀ i', ∑ l, ‖E i' l‖ * ‖M⁻¹ l j‖ ≤ q * c := fun i' =>
    calc ∑ l, ‖E i' l‖ * ‖M⁻¹ l j‖ ≤ ∑ l, ‖E i' l‖ * c :=
          Finset.sum_le_sum fun l _ => mul_le_mul_of_nonneg_left (hl0 l (Finset.mem_univ l)) (norm_nonneg _)
      _ = (∑ l, ‖E i' l‖) * c := by rw [Finset.sum_mul]
      _ ≤ q * c := mul_le_mul_of_nonneg_right (hE i') (norm_nonneg _)
  have hc : c ≤ a j / (1 - q) := by
    have h1 : c ≤ a j + q * c := (hentry l0 j).trans (add_le_add (ha l0 j) (hrow l0))
    rw [le_div_iff₀ (by linarith)]; linarith
  calc ‖M⁻¹ i j‖ ≤ ‖A₀ i j‖ + q * c := (hentry i j).trans (add_le_add le_rfl (hrow i))
    _ ≤ ‖A₀ i j‖ + q * (a j / (1 - q)) := add_le_add le_rfl (mul_le_mul_of_nonneg_left hc hq0)
    _ = _ := by ring

end NoFourMUBs.SeedAtlas.Method
