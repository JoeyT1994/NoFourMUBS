import NoFourMUBs.Basic

/-!
# Horizontal phase matrices

A real `6 × 6` matrix is *horizontal* if all its row and column sums vanish.  The projector
`hor Y i j = Y i j - rowMean i - colMean j + mean` removes a row-plus-column pattern, which is a pure phase gauge:
`phaseMat (P + Y)` is Hadamard-equivalent to `phaseMat (P + hor Y)` (`phaseMat_equivalent_add_hor` in `Transfer`).
-/

open Matrix Hadamard6

namespace NoFourMUBs

abbrev RMat6 := Matrix I6 I6 ℝ

/-- `exp(i Y)` entrywise. -/
noncomputable def phaseMat (Y : RMat6) : Mat6 := Matrix.of fun i j => Complex.exp (Y i j * Complex.I)

noncomputable def rowMean (Y : RMat6) (i : I6) : ℝ := (∑ j, Y i j) / 6
noncomputable def colMean (Y : RMat6) (j : I6) : ℝ := (∑ i, Y i j) / 6
noncomputable def allMean (Y : RMat6) : ℝ := (∑ i, ∑ j, Y i j) / 36

/-- The horizontal projection. -/
noncomputable def hor (Y : RMat6) : RMat6 :=
  Matrix.of fun i j => Y i j - rowMean Y i - colMean Y j + allMean Y

/-- A matrix is horizontal if every row sum and every column sum vanishes. -/
def IsHorizontal (Y : RMat6) : Prop := (∀ i, ∑ j, Y i j = 0) ∧ ∀ j, ∑ i, Y i j = 0

lemma card_I6 : Fintype.card I6 = 6 := by simp [I6, I3]

lemma sum_const_I6 (x : ℝ) : ∑ _j : I6, x = 6 * x := by
  rw [Finset.sum_const, Finset.card_univ, card_I6]; simp

lemma allMean_eq_rowMean (Y : RMat6) : allMean Y = (∑ i, rowMean Y i) / 6 := by
  simp only [allMean, rowMean, ← Finset.sum_div]; ring

lemma allMean_eq_colMean (Y : RMat6) : allMean Y = (∑ j, colMean Y j) / 6 := by
  simp only [allMean, colMean, ← Finset.sum_div]; rw [Finset.sum_comm]; ring

/-- `hor Y` is horizontal. -/
theorem hor_isHorizontal (Y : RMat6) : IsHorizontal (hor Y) := by
  constructor
  · intro i
    simp only [hor, of_apply, Finset.sum_add_distrib, Finset.sum_sub_distrib, sum_const_I6]
    rw [allMean_eq_colMean]
    have : ∑ j, Y i j = 6 * rowMean Y i := by simp [rowMean]; ring
    rw [this]; ring
  · intro j
    simp only [hor, of_apply, Finset.sum_add_distrib, Finset.sum_sub_distrib, sum_const_I6]
    rw [allMean_eq_rowMean]
    have : ∑ i, Y i j = 6 * colMean Y j := by simp [colMean]; ring
    rw [this]; ring

lemma normSq_exp_real_mul_I (x : ℝ) : Complex.normSq (Complex.exp (x * Complex.I)) = 1 := by
  rw [Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I]; norm_num

end NoFourMUBs
