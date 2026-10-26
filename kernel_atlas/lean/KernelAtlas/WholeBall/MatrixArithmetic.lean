import KernelAtlas.WholeBall.MatrixEnclosure

/-! Exact interval matrix operations for centre computations. -/

open Matrix
open scoped Matrix.Norms.L2Operator

namespace NoFourMUBs.KernelAtlas.WholeBall

namespace MatrixBox

def exact {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℚ) : MatrixBox m n := ⟨A, 0⟩
def transpose {m n : ℕ} (A : MatrixBox m n) : MatrixBox n m := ⟨A.midᵀ, A.radᵀ⟩
def add {m n : ℕ} (A B : MatrixBox m n) : MatrixBox m n := ⟨A.mid + B.mid, A.rad + B.rad⟩
def neg {m n : ℕ} (A : MatrixBox m n) : MatrixBox m n := ⟨-A.mid, A.rad⟩
def sub {m n : ℕ} (A B : MatrixBox m n) : MatrixBox m n := A.add B.neg

def mul {m n k : ℕ} (A : MatrixBox m n) (B : MatrixBox n k) : MatrixBox m k :=
  ⟨A.mid * B.mid,
    (fun i j => ∑ l, (|A.mid i l| * B.rad l j + A.rad i l * |B.mid l j| + A.rad i l * B.rad l j))⟩

def magnitude {m n : ℕ} (A : MatrixBox m n) : Matrix (Fin m) (Fin n) ℚ :=
  fun i j => |A.mid i j| + A.rad i j

def normCheck {m n : ℕ} (A : MatrixBox m n) (b : ℚ) : Bool :=
  frobeniusCheck A.magnitude b

theorem has_exact {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℚ) : (exact A).Has (realMatrix A) := by
  intro i j
  simp [exact, realMatrix]

theorem Has.transpose {m n : ℕ} {A : MatrixBox m n} {a : Matrix (Fin m) (Fin n) ℝ}
    (h : A.Has a) : A.transpose.Has aᵀ := fun i j => h j i

theorem Has.add {m n : ℕ} {A B : MatrixBox m n} {a b : Matrix (Fin m) (Fin n) ℝ}
    (ha : A.Has a) (hb : B.Has b) : (A.add B).Has (a + b) := by
  intro i j
  change |a i j + b i j - ((A.mid i j + B.mid i j : ℚ) : ℝ)| ≤ ((A.rad i j + B.rad i j : ℚ) : ℝ)
  push_cast
  rw [show a i j + b i j - ((A.mid i j : ℝ) + B.mid i j) =
    (a i j - A.mid i j) + (b i j - B.mid i j) by ring]
  exact (abs_add_le _ _).trans (add_le_add (ha i j) (hb i j))

theorem Has.neg {m n : ℕ} {A : MatrixBox m n} {a : Matrix (Fin m) (Fin n) ℝ}
    (ha : A.Has a) : A.neg.Has (-a) := by
  intro i j
  change |-a i j - ((-A.mid i j : ℚ) : ℝ)| ≤ (A.rad i j : ℝ)
  push_cast
  simpa only [neg_sub_neg, abs_sub_comm] using ha i j

theorem Has.sub {m n : ℕ} {A B : MatrixBox m n} {a b : Matrix (Fin m) (Fin n) ℝ}
    (ha : A.Has a) (hb : B.Has b) : (A.sub B).Has (a - b) := by
  simpa only [MatrixBox.sub, sub_eq_add_neg] using Has.add ha (Has.neg hb)

lemma product_error {a b c d r s : ℝ} (ha : |a - c| ≤ r) (hb : |b - d| ≤ s) :
    |a * b - c * d| ≤ |c| * s + r * |d| + r * s := by
  have hr : 0 ≤ r := (abs_nonneg _).trans ha
  have hs : 0 ≤ s := (abs_nonneg _).trans hb
  rw [show a * b - c * d = c * (b - d) + (a - c) * d + (a - c) * (b - d) by ring]
  calc
    _ ≤ |c * (b - d)| + |(a - c) * d| + |(a - c) * (b - d)| := abs_add_three _ _ _
    _ ≤ _ := by simp only [abs_mul]; gcongr

theorem Has.mul {m n k : ℕ} {A : MatrixBox m n} {B : MatrixBox n k}
    {a : Matrix (Fin m) (Fin n) ℝ} {b : Matrix (Fin n) (Fin k) ℝ}
    (ha : A.Has a) (hb : B.Has b) : (A.mul B).Has (a * b) := by
  intro i j
  change |(∑ l, a i l * b l j) - ((∑ l, A.mid i l * B.mid l j : ℚ) : ℝ)| ≤
    ((∑ l, (|A.mid i l| * B.rad l j + A.rad i l * |B.mid l j| + A.rad i l * B.rad l j) : ℚ) : ℝ)
  push_cast
  rw [← Finset.sum_sub_distrib]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  exact Finset.sum_le_sum (fun l _ => product_error (ha i l) (hb l j))

theorem Has.magnitude {m n : ℕ} {A : MatrixBox m n} {a : Matrix (Fin m) (Fin n) ℝ}
    (h : A.Has a) (i j) : |a i j| ≤ (A.magnitude i j : ℝ) := by
  have hh := abs_add_le (a i j - (A.mid i j : ℝ)) (A.mid i j : ℝ)
  rw [sub_add_cancel] at hh
  change |a i j| ≤ ((|A.mid i j| + A.rad i j : ℚ) : ℝ)
  push_cast
  linarith [h i j]

theorem normCheck_sound {m n : ℕ} {A : MatrixBox m n} {a : Matrix (Fin m) (Fin n) ℝ}
    (h : A.Has a) {b : ℚ} (hb : A.normCheck b = true) : ‖eucMap a‖ ≤ (b : ℝ) := by
  have hh : 0 ≤ b ∧ ∑ i, ∑ j, (A.magnitude i j) ^ 2 ≤ b ^ 2 := of_decide_eq_true hb
  apply norm_eucMap_le_of_sum_sq _ (by exact_mod_cast hh.1)
  calc
    _ ≤ ∑ i, ∑ j, ((A.magnitude i j : ℝ)) ^ 2 := by
      apply Finset.sum_le_sum
      intro i _
      apply Finset.sum_le_sum
      intro j _
      exact (sq_abs _).symm.le.trans
        (pow_le_pow_left₀ (abs_nonneg _) (Has.magnitude h i j) 2)
    _ ≤ (b : ℝ) ^ 2 := by exact_mod_cast hh.2

end MatrixBox

def inverseBox {n : ℕ} (Y : Matrix (Fin n) (Fin n) ℚ) (e : ℚ) : MatrixBox n n :=
  ⟨Y, fun _ _ => e⟩

def inverseCheck {n : ℕ} (A : MatrixBox n n) (Y : Matrix (Fin n) (Fin n) ℚ) (q y e : ℚ) : Bool :=
  ((MatrixBox.exact 1).sub ((MatrixBox.exact Y).mul A)).normCheck q &&
    frobeniusCheck Y y && decide (q < 1 ∧ q * y ≤ e * (1 - q))

theorem inverseCheck_sound {n : ℕ} {A : MatrixBox n n} {a : Matrix (Fin n) (Fin n) ℝ}
    (hA : A.Has a) {Y : Matrix (Fin n) (Fin n) ℚ} {q y e : ℚ}
    (h : inverseCheck A Y q y e = true) : IsUnit a.det ∧ (inverseBox Y e).Has a⁻¹ := by
  simp only [inverseCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨hres, hY⟩, hq, he⟩ := h
  have h1 : realMatrix (1 : Matrix (Fin n) (Fin n) ℚ) = 1 := by
    ext i j
    by_cases hij : i = j <;> simp [realMatrix, Matrix.one_apply, hij]
  have hr := MatrixBox.normCheck_sound
    (MatrixBox.Has.sub (MatrixBox.has_exact (1 : Matrix (Fin n) (Fin n) ℚ))
      (MatrixBox.Has.mul (MatrixBox.has_exact Y) hA)) hres
  rw [h1] at hr
  obtain ⟨hinv, -, herr⟩ := inverse_enclosure a (realMatrix Y)
    (by exact_mod_cast hq) hr (frobeniusCheck_sound hY)
  refine ⟨hinv, fun i j => ?_⟩
  have hsmall : (q : ℝ) * y / (1 - q) ≤ e := by
    apply (div_le_iff₀ (by exact_mod_cast sub_pos.mpr hq)).mpr
    exact_mod_cast he
  exact (abs_entry_le_opNorm (a⁻¹ - realMatrix Y) i j).trans (herr.trans hsmall)

/-- The interval output encloses Z's specified Gram left inverse, not merely
some preconditioner with a small residual. -/
theorem gramProjection_enclosure {m n : ℕ} {A : MatrixBox m n}
    {a : Matrix (Fin m) (Fin n) ℝ} (hA : A.Has a)
    {Y : Matrix (Fin n) (Fin n) ℚ} {q y e : ℚ}
    (h : inverseCheck (A.transpose.mul A) Y q y e = true) :
    IsUnit (aᵀ * a).det ∧ ((inverseBox Y e).mul A.transpose).Has ((aᵀ * a)⁻¹ * aᵀ) := by
  obtain ⟨hG, hInv⟩ := inverseCheck_sound (MatrixBox.Has.mul (MatrixBox.Has.transpose hA) hA) h
  exact ⟨hG, MatrixBox.Has.mul hInv (MatrixBox.Has.transpose hA)⟩

end NoFourMUBs.KernelAtlas.WholeBall
