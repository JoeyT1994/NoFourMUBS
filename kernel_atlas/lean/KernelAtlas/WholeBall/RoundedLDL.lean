import KernelAtlas.WholeBall.MatrixBounds
import NoFourMUBs.SeedAtlas.Method.NormalTube

/-!
# Rounded LDL factors with a checked residual

Large exact rational LDL factors acquire large odd denominators. This checker
also accepts dyadic factors when their residual is symmetric and diagonally
dominant with nonnegative diagonal. The residual is checked, never discarded.
-/

open Matrix

namespace NoFourMUBs.KernelAtlas.WholeBall

def dominantCheck {n : ℕ} (A : Matrix (Fin n) (Fin n) ℚ) : Bool :=
  decide (Aᵀ = A ∧ ∀ i, 0 ≤ 2 * A i i - ∑ j, |A i j|)

theorem dominantCheck_sound {n : ℕ} {A : Matrix (Fin n) (Fin n) ℚ}
    (h : dominantCheck A = true) : (realMatrix A).PosSemidef := by
  have hh : Aᵀ = A ∧ ∀ i, 0 ≤ 2 * A i i - ∑ j, |A i j| := of_decide_eq_true h
  have hsym : ∀ i j, realMatrix A i j = realMatrix A j i := by
    intro i j
    change (A i j : ℝ) = (A j i : ℝ)
    exact congrArg (Rat.cast : ℚ → ℝ) (congrFun (congrFun hh.1 j) i)
  apply Matrix.PosSemidef.of_dotProduct_mulVec_nonneg
  · rw [Matrix.IsHermitian, Matrix.conjTranspose_eq_transpose_of_trivial]
    ext i j
    exact hsym j i
  · intro v
    have hg := NoFourMUBs.SeedAtlas.Method.gershgorin hsym (lam := (0 : ℝ))
      (fun i => by change 0 ≤ 2 * (A i i : ℝ) - ∑ j, |(A i j : ℝ)|; exact_mod_cast hh.2 i) v
    simp only [zero_mul] at hg
    convert! hg using 1
    simp only [dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring

def roundedPSDCheck {n : ℕ} (A : Matrix (Fin n) (Fin n) ℚ) (W : PSDWitness n) : Bool :=
  decide (∀ i, 0 ≤ W.d i) && dominantCheck (A - W.L * diagonal W.d * W.Lᵀ)

theorem roundedPSDCheck_sound {n : ℕ} {A : Matrix (Fin n) (Fin n) ℚ} {W : PSDWitness n}
    (h : roundedPSDCheck A W = true) : (realMatrix A).PosSemidef := by
  simp only [roundedPSDCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  have hLDL : psdCheck (W.L * diagonal W.d * W.Lᵀ) W = true := by
    apply decide_eq_true
    exact ⟨h.1, rfl⟩
  have hh := (psdCheck_sound hLDL).add (dominantCheck_sound h.2)
  convert hh using 1
  ext i j
  simp only [realMatrix, Matrix.map_apply, Matrix.add_apply, Matrix.sub_apply, Rat.cast_sub]
  ring

def roundedSpectralCheck {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℚ) (b : ℚ) (W : PSDWitness n) : Bool :=
  decide (0 ≤ b) && roundedPSDCheck (b ^ 2 • (1 : Matrix (Fin n) (Fin n) ℚ) - Aᵀ * A) W

theorem roundedSpectralCheck_sound {m n : ℕ} {A : Matrix (Fin m) (Fin n) ℚ} {b : ℚ}
    {W : PSDWitness n} (h : roundedSpectralCheck A b W = true) :
    ‖eucMap (realMatrix A)‖ ≤ (b : ℝ) := by
  simp only [roundedSpectralCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  apply norm_eucMap_le_of_gram _ (by exact_mod_cast h.1)
  convert roundedPSDCheck_sound h.2 using 1
  ext i j
  simp only [realMatrix, Matrix.map_apply, Matrix.sub_apply, Matrix.smul_apply,
    Matrix.mul_apply, Matrix.transpose_apply, smul_eq_mul, Matrix.one_apply]
  push_cast
  split_ifs <;> simp only [Rat.cast_one, Rat.cast_zero]

end NoFourMUBs.KernelAtlas.WholeBall
