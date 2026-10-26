import KernelAtlas.WholeBall.MatrixColumns

namespace NoFourMUBs.KernelAtlas.WholeBall.MatrixBox

/-- Reconstruct a full interval product from arbitrary checked smaller tables.
Their concrete representation is immaterial to this transfer. -/
theorem negSumProducts_encloses_of_expansion {m t n k : ℕ}
    (K L : MatrixBox m t) (A B : MatrixBox t n) (C : MatrixBox m n)
    (a b : MatrixBox t k) (c : MatrixBox m k) (expand : Fin n → Fin k)
    (hA : a.columns expand = A) (hB : b.columns expand = B)
    (hC : c.columns expand = C)
    (h : ((K.mul a).add (L.mul b)).neg.enclosesCheck c = true) :
    ((K.mul A).add (L.mul B)).neg.enclosesCheck C = true := by
  rw [← hA, ← hB, ← hC, mul_columns, mul_columns, add_columns, neg_columns]
  exact enclosesCheck_columns h expand

end NoFourMUBs.KernelAtlas.WholeBall.MatrixBox
