import KernelAtlas.WholeBall.MatrixArithmetic

namespace NoFourMUBs.KernelAtlas.WholeBall.MatrixBox

/-- Cache one exact row sum before combining a large Frobenius certificate. -/
def squareRowCheck {m n : ℕ} (A : MatrixBox m n) (s : Fin m → ℚ) (i : Fin m) : Bool :=
  decide ((∑ j, (A.magnitude i j) ^ 2) = s i)

theorem normCheck_of_square_rows {m n : ℕ} (A : MatrixBox m n) (b : ℚ) (s : Fin m → ℚ)
    (h : ∀ i, A.squareRowCheck s i = true)
    (hb : decide (0 ≤ b ∧ ∑ i, s i ≤ b ^ 2) = true) : A.normCheck b = true := by
  simp only [normCheck, frobeniusCheck, decide_eq_true_eq]
  have hb' := of_decide_eq_true hb
  refine ⟨hb'.1, ?_⟩
  calc
    (∑ i, ∑ j, (A.magnitude i j) ^ 2) = ∑ i, s i := by
      apply Finset.sum_congr rfl
      intro i _
      exact of_decide_eq_true (h i)
    _ ≤ b ^ 2 := hb'.2

end NoFourMUBs.KernelAtlas.WholeBall.MatrixBox
