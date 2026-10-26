import KernelAtlas.WholeBall.MatrixArithmetic

/-! Rowwise tensor products, with exact interval propagation. Flattening uses
`finProdFinEquiv`: the second index varies fastest, as in the generators. -/

open Matrix

namespace NoFourMUBs.KernelAtlas.WholeBall

def rowTensor {m n k : ℕ} {R : Type*} [Mul R]
    (A : Matrix (Fin m) (Fin n) R) (B : Matrix (Fin m) (Fin k) R) :
    Matrix (Fin m) (Fin (n * k)) R :=
  fun i j => A i (finProdFinEquiv.symm j).1 * B i (finProdFinEquiv.symm j).2

namespace MatrixBox

def reindex {m n k l : ℕ} (A : MatrixBox m n) (rows : Fin k → Fin m) (cols : Fin l → Fin n) :
    MatrixBox k l := ⟨A.mid.submatrix rows cols, A.rad.submatrix rows cols⟩

theorem Has.reindex {m n k l : ℕ} {A : MatrixBox m n}
    {a : Matrix (Fin m) (Fin n) ℝ} (h : A.Has a) (rows : Fin k → Fin m) (cols : Fin l → Fin n) :
    (A.reindex rows cols).Has (a.submatrix rows cols) := fun i j => h (rows i) (cols j)

def rowTensor {m n k : ℕ} (A : MatrixBox m n) (B : MatrixBox m k) : MatrixBox m (n * k) where
  mid := WholeBall.rowTensor A.mid B.mid
  rad i j :=
    let p := finProdFinEquiv.symm j
    |A.mid i p.1| * B.rad i p.2 + A.rad i p.1 * |B.mid i p.2| + A.rad i p.1 * B.rad i p.2

theorem Has.rowTensor {m n k : ℕ} {A : MatrixBox m n} {B : MatrixBox m k}
    {a : Matrix (Fin m) (Fin n) ℝ} {b : Matrix (Fin m) (Fin k) ℝ}
    (ha : A.Has a) (hb : B.Has b) : (A.rowTensor B).Has (WholeBall.rowTensor a b) := by
  intro i j
  simp only [MatrixBox.rowTensor, WholeBall.rowTensor, Rat.cast_mul, Rat.cast_add, Rat.cast_abs]
  exact product_error (ha i _) (hb i _)

end MatrixBox

end NoFourMUBs.KernelAtlas.WholeBall
