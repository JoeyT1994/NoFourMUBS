import Hadamard6.Basic
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

/-!
# Exterior duality forces `A Cᵀ = 0` (return H, §5.1)

Columns are indexed by `I6 = Fin 3 ⊕ Fin 3`.  A three-subset of columns together with its complement is recorded
by a permutation `τ` of `I6`: `leftMinor A τ` takes the columns `τ (inl j)` and `rightMinor C τ` the columns
`τ (inr j)`.  With this bookkeeping the sign `(-1)^(ΣJ + 3)` of the report becomes `sign τ`, and the complementary
duality (5.1) reads

  `det (leftMinor A τ) = sign τ · κ · det (rightMinor C τ)` for every `τ`.

**`duality`.** If this holds and some `leftMinor A τ₀` is nonsingular (`rank A = 3`), then `A Cᵀ = 0`.

The report certifies (5.3) by 180 integer identities.  Here the same statement is proved by normalisation:
permuting columns, and multiplying `A` and `C` on the left by invertible `3 × 3` matrices, preserve the
hypothesis (with a new `κ`) and the conclusion, so one may assume `leftMinor A 1 = 1` and `rightMinor C 1 = 1`.
Then the identity permutation gives `κ = 1`, and the nine transpositions `inl a ↔ inr b` give
`A a (inr b) = - C b (inl a)`, which is `A Cᵀ = 0`.
-/

open Matrix Equiv Hadamard6

noncomputable section

namespace NoFourMUBs.FourierVanishing

/-- The `3 × 3` minor of `A` on the columns `τ (inl j)`. -/
def leftMinor (A : Matrix (Fin 3) I6 ℂ) (τ : Perm I6) : Mat3 := fun i j => A i (τ (.inl j))

/-- The `3 × 3` minor of `A` on the columns `τ (inr j)`. -/
def rightMinor (A : Matrix (Fin 3) I6 ℂ) (τ : Perm I6) : Mat3 := fun i j => A i (τ (.inr j))

/-- The complementary-duality hypothesis (5.1). -/
def Dual (A C : Matrix (Fin 3) I6 ℂ) (κ : ℂ) : Prop :=
  ∀ τ : Perm I6, (leftMinor A τ).det = ((Perm.sign τ : ℤ) : ℂ) * κ * (rightMinor C τ).det

lemma leftMinor_perm (A : Matrix (Fin 3) I6 ℂ) (τ₀ τ : Perm I6) :
    leftMinor (A.submatrix id τ₀) τ = leftMinor A (τ₀ * τ) := rfl

lemma rightMinor_perm (A : Matrix (Fin 3) I6 ℂ) (τ₀ τ : Perm I6) :
    rightMinor (A.submatrix id τ₀) τ = rightMinor A (τ₀ * τ) := rfl

lemma leftMinor_mul (P : Mat3) (A : Matrix (Fin 3) I6 ℂ) (τ : Perm I6) :
    leftMinor (P * A) τ = P * leftMinor A τ := by
  ext i j; simp [leftMinor, Matrix.mul_apply]

lemma rightMinor_mul (P : Mat3) (A : Matrix (Fin 3) I6 ℂ) (τ : Perm I6) :
    rightMinor (P * A) τ = P * rightMinor A τ := by
  ext i j; simp [rightMinor, Matrix.mul_apply]

lemma sign_sq (τ : Perm I6) : ((Perm.sign τ : ℤ) : ℂ) * ((Perm.sign τ : ℤ) : ℂ) = 1 := by
  rcases Int.units_eq_one_or (Perm.sign τ) with h | h <;> simp [h]

/-- Permuting the columns of both matrices preserves the hypothesis. -/
lemma Dual.perm {A C : Matrix (Fin 3) I6 ℂ} {κ : ℂ} (h : Dual A C κ) (τ₀ : Perm I6) :
    Dual (A.submatrix id τ₀) (C.submatrix id τ₀) (((Perm.sign τ₀ : ℤ) : ℂ) * κ) := by
  intro τ
  rw [leftMinor_perm, rightMinor_perm, h, Perm.sign_mul]
  push_cast; ring

lemma Dual.mul_left {A C : Matrix (Fin 3) I6 ℂ} {κ : ℂ} (h : Dual A C κ) (P : Mat3) :
    Dual (P * A) C (P.det * κ) := by
  intro τ
  rw [leftMinor_mul, det_mul, h]; ring

lemma Dual.mul_right {A C : Matrix (Fin 3) I6 ℂ} {κ : ℂ} (h : Dual A C κ) (Q : Mat3) (hQ : Q.det ≠ 0) :
    Dual A (Q * C) (κ / Q.det) := by
  intro τ
  rw [rightMinor_mul, det_mul, h]; field_simp

/-- The determinant of the identity with column `a` replaced by `v`. -/
lemma det_one_updateCol (a : Fin 3) (v : Fin 3 → ℂ) :
    (Matrix.of fun i j => if j = a then v i else (1 : Mat3) i j : Mat3).det = v a := by
  rw [det_fin_three]
  fin_cases a <;> simp [Matrix.one_apply]

/-- The normalised case: `leftMinor A 1 = 1`, `rightMinor C 1 = 1`. -/
lemma duality_normalised {A C : Matrix (Fin 3) I6 ℂ} {κ : ℂ} (h : Dual A C κ)
    (hA : leftMinor A 1 = 1) (hC : rightMinor C 1 = 1) : A * Cᵀ = 0 := by
  have hA' : ∀ i j, A i (.inl j) = (1 : Mat3) i j := fun i j => congrFun (congrFun hA i) j
  have hC' : ∀ i j, C i (.inr j) = (1 : Mat3) i j := fun i j => congrFun (congrFun hC i) j
  have hκ : κ = 1 := by
    have := h 1
    rw [hA, hC] at this; simpa using this.symm
  have key : ∀ a b, A a (.inr b) = - C b (.inl a) := by
    intro a b
    have e := h (swap (.inl a) (.inr b))
    rw [Perm.sign_swap (by simp), hκ] at e
    have eL : leftMinor A (swap (.inl a) (.inr b)) =
        (Matrix.of fun i j => if j = a then A i (.inr b) else (1 : Mat3) i j : Mat3) := by
      ext i j
      simp only [leftMinor, Matrix.of_apply]
      by_cases hj : j = a
      · subst hj; simp
      · rw [swap_apply_of_ne_of_ne (by simpa using hj) (by simp), if_neg hj, hA']
    have eR : rightMinor C (swap (.inl a) (.inr b)) =
        (Matrix.of fun i j => if j = b then C i (.inl a) else (1 : Mat3) i j : Mat3) := by
      ext i j
      simp only [rightMinor, Matrix.of_apply]
      by_cases hj : j = b
      · subst hj; simp
      · rw [swap_apply_of_ne_of_ne (by simp) (by simpa using hj), if_neg hj, hC']
    rw [eL, eR, det_one_updateCol, det_one_updateCol] at e
    rw [e]; simp
  ext r s
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Fintype.sum_sum_type, hA', hC', key,
    Matrix.zero_apply]
  simp [Matrix.one_apply]

/-- **Exterior duality (§5.1, (5.2)).** If `det A_J = κ ε(J) det C_{Jᶜ}` for every split and `A` has a nonsingular
`3 × 3` minor, then `A Cᵀ = 0`. -/
theorem duality {A C : Matrix (Fin 3) I6 ℂ} {κ : ℂ} (h : Dual A C κ) (τ₀ : Perm I6)
    (h₀ : (leftMinor A τ₀).det ≠ 0) : A * Cᵀ = 0 := by
  -- move the nonsingular minor to the identity permutation
  set A₁ := A.submatrix id τ₀
  set C₁ := C.submatrix id τ₀
  have h₁ := h.perm τ₀
  have hAC : A₁ * C₁ᵀ = A * Cᵀ := by
    ext r s
    simp only [A₁, C₁, Matrix.mul_apply, Matrix.transpose_apply, Matrix.submatrix_apply, id]
    exact Equiv.sum_comp τ₀ (fun k => A r k * C s k)
  have h₀' : (leftMinor A₁ 1).det ≠ 0 := by rwa [leftMinor_perm, mul_one]
  -- normalise `A`
  set P := (leftMinor A₁ 1)⁻¹
  have hPu : IsUnit (leftMinor A₁ 1).det := isUnit_iff_ne_zero.2 h₀'
  have hP : P * leftMinor A₁ 1 = 1 := Matrix.nonsing_inv_mul _ hPu
  have hPdet : P.det ≠ 0 := by
    intro h0; have := congrArg Matrix.det hP; rw [det_mul, h0, zero_mul, det_one] at this
    exact zero_ne_one this
  have h₂ := h₁.mul_left P
  -- normalise `C`
  have hR : (rightMinor C₁ 1).det ≠ 0 := by
    intro h0
    have := h₂ 1
    rw [leftMinor_mul, hP, h0] at this; simp at this
  set Q := (rightMinor C₁ 1)⁻¹
  have hQu : IsUnit (rightMinor C₁ 1).det := isUnit_iff_ne_zero.2 hR
  have hQ : Q * rightMinor C₁ 1 = 1 := Matrix.nonsing_inv_mul _ hQu
  have hQdet : Q.det ≠ 0 := by
    intro h0; have := congrArg Matrix.det hQ; rw [det_mul, h0, zero_mul, det_one] at this
    exact zero_ne_one this
  have h₃ := h₂.mul_right Q hQdet
  have hz := duality_normalised h₃ (by rw [leftMinor_mul, hP]) (by rw [rightMinor_mul, hQ])
  -- undo the normalisation
  have e : (P * A₁) * (Q * C₁)ᵀ = P * (A * Cᵀ) * Qᵀ := by
    rw [Matrix.transpose_mul, ← hAC]; simp only [Matrix.mul_assoc]
  rw [e] at hz
  have hPi : IsUnit P := (Matrix.isUnit_iff_isUnit_det P).2 (isUnit_iff_ne_zero.2 hPdet)
  have hQi : IsUnit Qᵀ := (Matrix.isUnit_iff_isUnit_det _).2 (by rw [det_transpose]; exact isUnit_iff_ne_zero.2 hQdet)
  have h1 : P * (A * Cᵀ) = 0 := by
    have := congrArg (· * Qᵀ⁻¹) hz
    simpa [Matrix.mul_assoc, Matrix.mul_nonsing_inv _ ((Matrix.isUnit_iff_isUnit_det _).1 hQi)] using this
  have := congrArg (P⁻¹ * ·) h1
  simpa [← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ ((Matrix.isUnit_iff_isUnit_det _).1 hPi)] using this

end NoFourMUBs.FourierVanishing
