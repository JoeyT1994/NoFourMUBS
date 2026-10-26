import KernelAtlas.WholeBall.MatrixRefinement

namespace NoFourMUBs.KernelAtlas.WholeBall

/-- A short contiguous column block keeps kernel reduction bounded even for
the 256-column quartic tensor. -/
def MatrixBox.enclosesBlockCheck {m k b : ℕ} (A B : MatrixBox m (k * b))
    (i : Fin m) (j : Fin k) : Bool :=
  (List.finRange b).all fun l =>
    decide ((|A.mid i (finProdFinEquiv (j, l)) - B.mid i (finProdFinEquiv (j, l))| +
      A.rad i (finProdFinEquiv (j, l)) : ℚ) ≤ B.rad i (finProdFinEquiv (j, l)))

lemma MatrixBox.enclosesCheck_of_blocks {m k b : ℕ} (A B : MatrixBox m (k * b))
    (h : ∀ i j, A.enclosesBlockCheck B i j = true) : A.enclosesCheck B = true := by
  simp only [MatrixBox.enclosesCheck, List.all_eq_true, List.mem_finRange, forall_const]
  intro i j
  obtain ⟨⟨a, c⟩, rfl⟩ := finProdFinEquiv.surjective j
  have hh := h i a
  simp only [MatrixBox.enclosesBlockCheck, List.all_eq_true, List.mem_finRange,
    forall_const] at hh
  exact hh c

def MatrixBox.exactRowCheck {m n : ℕ} (A B : MatrixBox m n) (i : Fin m) : Bool :=
  (List.finRange n).all fun j => decide (A.mid i j = B.mid i j ∧ A.rad i j = B.rad i j)

theorem MatrixBox.eq_of_exact_rows {m n : ℕ} (A B : MatrixBox m n)
    (h : ∀ i, A.exactRowCheck B i = true) : A = B := by
  simp only [MatrixBox.exactRowCheck, List.all_eq_true, List.mem_finRange,
    forall_const, decide_eq_true_eq] at h
  cases A
  cases B
  congr 1 <;> funext i j
  · exact (h i j).1
  · exact (h i j).2

end NoFourMUBs.KernelAtlas.WholeBall
