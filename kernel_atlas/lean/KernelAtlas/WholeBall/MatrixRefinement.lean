import KernelAtlas.WholeBall.MatrixArithmetic

/-! Checked outward rounding prevents the rational denominators of successive
matrix products from growing without bound. -/

namespace NoFourMUBs.KernelAtlas.WholeBall

open Matrix

/-- `A.enclosesCheck B`: every entry interval of `A` is contained in `B`. -/
def MatrixBox.enclosesCheck {m n : ℕ} (A B : MatrixBox m n) : Bool :=
  (List.finRange m).all fun i => (List.finRange n).all fun j =>
    decide ((|A.mid i j - B.mid i j| + A.rad i j : ℚ) ≤ B.rad i j)

theorem MatrixBox.Has.enlarge {m n : ℕ} {A B : MatrixBox m n}
    {a : Matrix (Fin m) (Fin n) ℝ} (ha : A.Has a) (h : A.enclosesCheck B = true) : B.Has a := by
  simp only [MatrixBox.enclosesCheck, List.all_eq_true, List.mem_finRange,
    forall_const, decide_eq_true_eq] at h
  intro i j
  calc
    _ ≤ |a i j - (A.mid i j : ℝ)| + |(A.mid i j : ℝ) - (B.mid i j : ℝ)| :=
      abs_sub_le (a i j) (A.mid i j : ℝ) (B.mid i j : ℝ)
    _ ≤ (A.rad i j : ℝ) + |(A.mid i j : ℝ) - (B.mid i j : ℝ)| := add_le_add (ha i j) le_rfl
    _ ≤ (B.rad i j : ℝ) := by
      have hi : |(A.mid i j : ℝ) - (B.mid i j : ℝ)| + (A.rad i j : ℝ) ≤ (B.rad i j : ℝ) := by
        exact_mod_cast h i j
      linarith

/-- A row is an independent kernel leaf, limiting the peak proof memory for
large flattened tensors. Combining leaves does not repeat their arithmetic. -/
def MatrixBox.enclosesRowCheck {m n : ℕ} (A B : MatrixBox m n) (i : Fin m) : Bool :=
  (List.finRange n).all fun j => decide ((|A.mid i j - B.mid i j| + A.rad i j : ℚ) ≤ B.rad i j)

lemma MatrixBox.enclosesCheck_of_rows {m n : ℕ} (A B : MatrixBox m n)
    (h : ∀ i, A.enclosesRowCheck B i = true) : A.enclosesCheck B = true := by
  simp only [MatrixBox.enclosesCheck, List.all_eq_true]
  intro i _
  simpa only [MatrixBox.enclosesRowCheck, List.all_eq_true] using h i

end NoFourMUBs.KernelAtlas.WholeBall
