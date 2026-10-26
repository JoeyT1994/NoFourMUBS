import KernelAtlas.WholeBall.MatrixArithmetic

/-! Scalar interval operations used in the finite tensor polynomials. -/

namespace NoFourMUBs.KernelAtlas.WholeBall

structure RealInterval where
  mid : ℚ
  rad : ℚ

def RealInterval.Has (A : RealInterval) (x : ℝ) : Prop := |x - (A.mid : ℝ)| ≤ (A.rad : ℝ)

def RealInterval.add (A B : RealInterval) : RealInterval := ⟨A.mid + B.mid, A.rad + B.rad⟩
def RealInterval.neg (A : RealInterval) : RealInterval := ⟨-A.mid, A.rad⟩
def RealInterval.sub (A B : RealInterval) : RealInterval := A.add B.neg
def RealInterval.mul (A B : RealInterval) : RealInterval :=
  ⟨A.mid * B.mid, |A.mid| * B.rad + A.rad * |B.mid| + A.rad * B.rad⟩

lemma RealInterval.Has.add {A B : RealInterval} {a b : ℝ}
    (ha : A.Has a) (hb : B.Has b) : (A.add B).Has (a + b) := by
  unfold RealInterval.Has RealInterval.add at *
  push_cast
  rw [show a + b - ((A.mid : ℝ) + B.mid) = (a - A.mid) + (b - B.mid) by ring]
  exact (abs_add_le _ _).trans (add_le_add ha hb)

lemma RealInterval.Has.neg {A : RealInterval} {a : ℝ} (ha : A.Has a) : A.neg.Has (-a) := by
  simpa only [RealInterval.Has, RealInterval.neg, Rat.cast_neg, neg_sub_neg, abs_sub_comm] using ha

lemma RealInterval.Has.sub {A B : RealInterval} {a b : ℝ}
    (ha : A.Has a) (hb : B.Has b) : (A.sub B).Has (a - b) := by
  simpa only [RealInterval.sub, sub_eq_add_neg] using ha.add hb.neg

lemma RealInterval.Has.mul {A B : RealInterval} {a b : ℝ}
    (ha : A.Has a) (hb : B.Has b) : (A.mul B).Has (a * b) := by
  unfold RealInterval.Has RealInterval.mul at *
  push_cast
  exact MatrixBox.product_error ha hb

def MatrixBox.entry {m n : ℕ} (A : MatrixBox m n) (i : Fin m) (j : Fin n) : RealInterval :=
  ⟨A.mid i j, A.rad i j⟩

lemma MatrixBox.Has.entry {m n : ℕ} {A : MatrixBox m n} {a : Matrix (Fin m) (Fin n) ℝ}
    (ha : A.Has a) (i : Fin m) (j : Fin n) : (A.entry i j).Has (a i j) := ha i j

def intervalMatrix {m n : ℕ} (A : Fin m → Fin n → RealInterval) : MatrixBox m n :=
  ⟨fun i j => (A i j).mid, fun i j => (A i j).rad⟩

lemma intervalMatrix_sound {m n : ℕ} {A : Fin m → Fin n → RealInterval}
    {a : Matrix (Fin m) (Fin n) ℝ} (ha : ∀ i j, (A i j).Has (a i j)) :
    (intervalMatrix A).Has a := ha

end NoFourMUBs.KernelAtlas.WholeBall
