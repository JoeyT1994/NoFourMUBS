import NoFourMUBs.Step2.MatchedUnique

/-!
# The entrywise square of a `3 × 3` phase block (return H, §3)

For a `3 × 3` matrix `X` with unit entries, `P_X = ∏ X_ab` and `X^[2]` its entrywise square:

* `det_sqMat` (3.1): `det X^[2] = perm X · det X − 2 P_X · conj (det X)`;
* `det_mul_det_sqMat` (3.2): `det X · det X^[2] · conj P_X = −sideSignature X − 2 |det X|²`,
  where `sideSignature X = −perm X (det X)² conj P_X = −Ψ(X)` is the project's denominator-free signature.

Consequently a singular block has a singular square, and a block with nonreal signature has a nonsingular
square (`det_sqMat_ne_zero`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.FourierVanishing

/-- The entrywise square `X^[2]`. -/
def sqMat {m n : Type*} (X : Matrix m n ℂ) : Matrix m n ℂ := Matrix.of fun i j => X i j ^ 2

/-- The product of all nine entries, `P_X`. -/
def cellProd (X : Mat3) : ℂ := ∏ i, ∏ j, X i j

lemma conj_cellProd_mul (X : Mat3) (hX : EntrywiseUnit X) : cellProd X * conj (cellProd X) = 1 := by
  have hX' : ∀ i j, Complex.normSq (X i j) = 1 := hX
  rw [Complex.mul_conj]
  simp [cellProd, map_prod, hX']

lemma cellProd_ne_zero (X : Mat3) (hX : EntrywiseUnit X) : cellProd X ≠ 0 := by
  intro h; have := conj_cellProd_mul X hX; rw [h, zero_mul] at this; exact zero_ne_one this

/-- **(3.1)** `det X^[2] = perm X · det X − 2 P_X · conj (det X)` for unit entries. -/
theorem det_sqMat (X : Mat3) (hX : EntrywiseUnit X) :
    (sqMat X).det = Step2.permanent3 X * X.det - 2 * cellProd X * conj X.det := by
  have c : ∀ i j, conj (X i j) = (X i j)⁻¹ := fun i j => Side.conj_eq_inv (hX i j)
  have n : ∀ i j, X i j ≠ 0 := fun i j => Side.ne_zero_of_normSq (hX i j)
  rw [det_fin_three (sqMat X), Step2.permanent3_expand, det_fin_three X]
  simp only [sqMat, cellProd, Matrix.of_apply, Fin.prod_univ_three, map_add, map_sub, map_mul, c]
  have := n 0 0; have := n 0 1; have := n 0 2; have := n 1 0; have := n 1 1; have := n 1 2
  have := n 2 0; have := n 2 1; have := n 2 2
  field_simp
  ring

lemma sideSignature_eq (X : Mat3) :
    Step2.sideSignature X = -Step2.permanent3 X * X.det ^ 2 * conj (cellProd X) := by
  simp [Step2.sideSignature, cellProd, map_prod]

/-- **(3.2)** `det X · det X^[2] · conj P_X = −sideSignature X − 2 |det X|²`. -/
theorem det_mul_det_sqMat (X : Mat3) (hX : EntrywiseUnit X) :
    X.det * (sqMat X).det * conj (cellProd X) =
      -Step2.sideSignature X - 2 * (X.det * conj X.det) := by
  rw [det_sqMat X hX, sideSignature_eq]
  linear_combination (-2 * X.det * conj X.det) * conj_cellProd_mul X hX

lemma det_sqMat_eq_zero (X : Mat3) (hX : EntrywiseUnit X) (h : X.det = 0) : (sqMat X).det = 0 := by
  rw [det_sqMat X hX, h]; simp

/-- A block with nonreal signature has a nonsingular entrywise square (§7). -/
theorem det_sqMat_ne_zero (X : Mat3) (hX : EntrywiseUnit X) (h : (Step2.sideSignature X).im ≠ 0) :
    (sqMat X).det ≠ 0 := by
  intro h0
  have e := det_mul_det_sqMat X hX
  rw [h0, mul_zero, zero_mul, Complex.mul_conj] at e
  apply h
  have : Step2.sideSignature X = -2 * (Complex.normSq X.det : ℂ) := by linear_combination e
  rw [this]; simp

end NoFourMUBs.FourierVanishing
