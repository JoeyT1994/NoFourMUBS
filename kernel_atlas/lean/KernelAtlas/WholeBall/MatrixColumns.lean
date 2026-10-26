import KernelAtlas.WholeBall.MatrixBlocks

/-! Exact column reuse for interval tensors. The generator may discover equal
columns, but every proposed equality is checked before a compressed product is
used. No tensor symmetry is assumed. -/

namespace NoFourMUBs.KernelAtlas.WholeBall.MatrixBox

def exactBlockCheck {m k b : ℕ} (A B : MatrixBox m (k * b))
    (i : Fin m) (j : Fin k) : Bool :=
  (List.finRange b).all fun l =>
    decide (A.mid i (finProdFinEquiv (j, l)) = B.mid i (finProdFinEquiv (j, l)) ∧
      A.rad i (finProdFinEquiv (j, l)) = B.rad i (finProdFinEquiv (j, l)))

theorem eq_of_exact_blocks {m k b : ℕ} (A B : MatrixBox m (k * b))
    (h : ∀ i j, A.exactBlockCheck B i j = true) : A = B := by
  apply eq_of_exact_rows
  intro i
  simp only [exactRowCheck, List.all_eq_true, List.mem_finRange, forall_const]
  intro l
  obtain ⟨⟨j, c⟩, rfl⟩ := finProdFinEquiv.surjective l
  have hh := h i j
  simp only [exactBlockCheck, List.all_eq_true, List.mem_finRange, forall_const] at hh
  exact hh c

def columns {m n k : ℕ} (A : MatrixBox m n) (e : Fin k → Fin n) : MatrixBox m k :=
  ⟨fun i j => A.mid i (e j), fun i j => A.rad i (e j)⟩

theorem mul_columns {m n k p : ℕ} (A : MatrixBox m n) (B : MatrixBox n k)
    (e : Fin p → Fin k) : A.mul (B.columns e) = (A.mul B).columns e := rfl

theorem add_columns {m n k : ℕ} (A B : MatrixBox m n) (e : Fin k → Fin n) :
    (A.columns e).add (B.columns e) = (A.add B).columns e := rfl

theorem neg_columns {m n k : ℕ} (A : MatrixBox m n) (e : Fin k → Fin n) :
    (A.columns e).neg = A.neg.columns e := rfl

theorem enclosesCheck_columns {m n k : ℕ} {A B : MatrixBox m n}
    (h : A.enclosesCheck B = true) (e : Fin k → Fin n) :
    (A.columns e).enclosesCheck (B.columns e) = true := by
  simp only [enclosesCheck, List.all_eq_true, List.mem_finRange, forall_const] at h ⊢
  exact fun i j => h i (e j)

theorem sumProducts_encloses_of_columns {m t n k : ℕ}
    (K L : MatrixBox m t) (A B : MatrixBox t n) (C : MatrixBox m n)
    (pick : Fin k → Fin n) (expand : Fin n → Fin k)
    (hA : (A.columns pick).columns expand = A)
    (hB : (B.columns pick).columns expand = B)
    (hC : (C.columns pick).columns expand = C)
    (h : ((K.mul (A.columns pick)).add (L.mul (B.columns pick))).enclosesCheck
      (C.columns pick) = true) : ((K.mul A).add (L.mul B)).enclosesCheck C = true := by
  rw [← hA, ← hB, ← hC, mul_columns K (A.columns pick) expand,
    mul_columns L (B.columns pick) expand, add_columns]
  exact enclosesCheck_columns h expand

theorem negSumProducts_encloses_of_columns {m t n k : ℕ}
    (K L : MatrixBox m t) (A B : MatrixBox t n) (C : MatrixBox m n)
    (pick : Fin k → Fin n) (expand : Fin n → Fin k)
    (hA : (A.columns pick).columns expand = A)
    (hB : (B.columns pick).columns expand = B)
    (hC : (C.columns pick).columns expand = C)
    (h : ((K.mul (A.columns pick)).add (L.mul (B.columns pick))).neg.enclosesCheck
      (C.columns pick) = true) : ((K.mul A).add (L.mul B)).neg.enclosesCheck C = true := by
  rw [← hA, ← hB, ← hC, mul_columns K (A.columns pick) expand,
    mul_columns L (B.columns pick) expand, add_columns, neg_columns]
  exact enclosesCheck_columns h expand

end NoFourMUBs.KernelAtlas.WholeBall.MatrixBox
