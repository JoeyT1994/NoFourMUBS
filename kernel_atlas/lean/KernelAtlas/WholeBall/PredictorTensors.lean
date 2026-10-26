import KernelAtlas.WholeBall.MatrixForms
import NoFourMUBs.SeedAtlas.Method.WholeBallFourier

/-! The symmetric summed cubic and quartic tensors of Z §3. The flattened
index has its first coordinate in the least significant base-four digit. -/

open Matrix Complex
open NoFourMUBs.SeedAtlas.Method.WholeBall

set_option maxRecDepth 100000

namespace NoFourMUBs.KernelAtlas.WholeBall

def digit4 (j k : ℕ) : Fin 4 := ⟨j / 4 ^ k % 4, by omega⟩

lemma word_digit {n : ℕ} (j : Fin (4 ^ n)) (k : Fin n) :
    finFunctionFinEquiv.symm j k = digit4 j k := rfl

def tensorIndex2 (i j : Fin 4) : Fin 16 := finProdFinEquiv (i, j)

def cubicReal (s : Fin 4 → ℝ) (T : Fin 16 → ℝ) (j : Fin 64) : ℝ :=
  let a := digit4 j 0
  let b := digit4 j 1
  let c := digit4 j 2;
  -(T (tensorIndex2 a b) * s c + T (tensorIndex2 a c) * s b + T (tensorIndex2 b c) * s a)

def cubicImag (s : Fin 4 → ℝ) (j : Fin 64) : ℝ :=
  -(s (digit4 j 0) * s (digit4 j 1) * s (digit4 j 2))

def quarticReal (s : Fin 4 → ℝ) (T : Fin 16 → ℝ) (j : Fin 256) : ℝ :=
  let a := digit4 j 0
  let b := digit4 j 1
  let c := digit4 j 2
  let d := digit4 j 3
  s a * s b * s c * s d -
    (T (tensorIndex2 a b) * T (tensorIndex2 c d) +
     T (tensorIndex2 a c) * T (tensorIndex2 b d) +
     T (tensorIndex2 a d) * T (tensorIndex2 b c))

def quarticImag (s : Fin 4 → ℝ) (T : Fin 16 → ℝ) (j : Fin 256) : ℝ :=
  let a := digit4 j 0
  let b := digit4 j 1
  let c := digit4 j 2
  let d := digit4 j 3;
  -(T (tensorIndex2 a b) * s c * s d + T (tensorIndex2 a c) * s b * s d +
    T (tensorIndex2 a d) * s b * s c + T (tensorIndex2 b c) * s a * s d +
    T (tensorIndex2 b d) * s a * s c + T (tensorIndex2 c d) * s a * s b)

noncomputable def linearEval (s : Fin 4 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) : ℝ :=
  ∑ i, s i * w i

noncomputable def quadraticEval (T : Fin 16 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) : ℝ :=
  ∑ p : Fin 16, T p * w ((finProdFinEquiv (m := 4) (n := 4)).symm p).1 * w ((finProdFinEquiv (m := 4) (n := 4)).symm p).2

noncomputable def wordEval {n : ℕ} (A : (Fin n → Fin 4) → ℝ)
    (w : EuclideanSpace ℝ (Fin 4)) : ℝ := ∑ p, A p * ∏ i, w (p i)

lemma wordEval_flat {n : ℕ} (A : (Fin n → Fin 4) → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    (∑ j : Fin (4 ^ n), A (finFunctionFinEquiv.symm j) * flatPower n w j) = wordEval A w :=
  Equiv.sum_comp finFunctionFinEquiv.symm (fun p => A p * ∏ i, w (p i))

lemma wordEval_add {n : ℕ} (A B : (Fin n → Fin 4) → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    wordEval (fun p => A p + B p) w = wordEval A w + wordEval B w := by
  simp only [wordEval, add_mul, Finset.sum_add_distrib]

lemma wordEval_neg {n : ℕ} (A : (Fin n → Fin 4) → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    wordEval (fun p => -A p) w = -wordEval A w := by
  simp only [wordEval, neg_mul, Finset.sum_neg_distrib]

lemma wordEval_sub {n : ℕ} (A B : (Fin n → Fin 4) → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    wordEval (fun p => A p - B p) w = wordEval A w - wordEval B w := by
  simp only [wordEval, sub_mul, Finset.sum_sub_distrib]

def permuteWord {n : ℕ} (σ : Equiv.Perm (Fin n)) : (Fin n → Fin 4) ≃ (Fin n → Fin 4) where
  toFun p := p ∘ σ
  invFun p := p ∘ σ.symm
  left_inv p := by ext i; simp
  right_inv p := by ext i; simp

lemma wordEval_perm {n : ℕ} (A : (Fin n → Fin 4) → ℝ) (w : EuclideanSpace ℝ (Fin 4))
    (σ : Equiv.Perm (Fin n)) : wordEval (fun p => A (p ∘ σ)) w = wordEval A w := by
  unfold wordEval
  calc
    _ = ∑ p, A (p ∘ σ) * ∏ i, w ((p ∘ σ) i) := by
      apply Finset.sum_congr rfl
      intro p _
      congr 1
      exact (Equiv.prod_comp σ (fun i => w (p i))).symm
    _ = _ := Equiv.sum_comp (permuteWord σ) (fun p => A p * ∏ i, w (p i))

def tripleWord : (Fin 3 → Fin 4) ≃ (Fin 4 × Fin 4) × Fin 4 where
  toFun p := ((p 0, p 1), p 2)
  invFun p := ![p.1.1, p.1.2, p.2]
  left_inv p := by ext i; fin_cases i <;> rfl
  right_inv p := rfl

def quadrupleWord : (Fin 4 → Fin 4) ≃ (Fin 4 × Fin 4) × (Fin 4 × Fin 4) where
  toFun p := ((p 0, p 1), (p 2, p 3))
  invFun p := ![p.1.1, p.1.2, p.2.1, p.2.2]
  left_inv p := by ext i; fin_cases i <;> rfl
  right_inv p := rfl

lemma tripleWord_symm (p : (Fin 4 × Fin 4) × Fin 4) :
    tripleWord.symm p = ![p.1.1, p.1.2, p.2] := rfl

lemma quadrupleWord_symm (p : (Fin 4 × Fin 4) × (Fin 4 × Fin 4)) :
    quadrupleWord.symm p = ![p.1.1, p.1.2, p.2.1, p.2.2] := rfl

lemma quadraticEval_sum (T : Fin 16 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    quadraticEval T w = ∑ a : Fin 4, ∑ b : Fin 4, T (tensorIndex2 a b) * w a * w b := by
  unfold quadraticEval
  have hh := Equiv.sum_comp (finProdFinEquiv (m := 4) (n := 4)).symm
    (fun p : Fin 4 × Fin 4 => T (tensorIndex2 p.1 p.2) * w p.1 * w p.2)
  let e : (Fin 4 × Fin 4) ≃ Fin 16 := finProdFinEquiv
  have he (i : Fin 16) : tensorIndex2 (e.symm i).1 (e.symm i).2 = i := by
    exact e.apply_symm_apply i
  calc
    _ = ∑ i : Fin 16, T (tensorIndex2 (e.symm i).1 (e.symm i).2) *
        w (e.symm i).1 * w (e.symm i).2 := by
      apply Finset.sum_congr rfl
      intro i _
      rw [he]
    _ = _ := hh.trans (Fintype.sum_prod_type _)

lemma quadraticEval_tensorPair (T : Fin 16 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    (∑ j, T j * tensorPair w w j) = quadraticEval T w := by
  unfold quadraticEval tensorPair
  apply Finset.sum_congr rfl
  intro j _
  change T j * (w ((finProdFinEquiv (m := 4) (n := 4)).symm j).1 * w ((finProdFinEquiv (m := 4) (n := 4)).symm j).2) = _
  ring

lemma wordEval_three_base (T : Fin 16 → ℝ) (s : Fin 4 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    wordEval (fun p : Fin 3 → Fin 4 => T (tensorIndex2 (p 0) (p 1)) * s (p 2)) w =
      quadraticEval T w * linearEval s w := by
  unfold wordEval
  rw [← Equiv.sum_comp tripleWord.symm]
  simp only [tripleWord_symm, Fin.prod_univ_succ, Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.cons_val_two, Fin.prod_univ_zero, mul_one, Fintype.sum_prod_type]
  rw [quadraticEval_sum]
  unfold linearEval
  simp_rw [Finset.sum_mul]
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  apply Finset.sum_congr rfl
  intro c _
  dsimp
  ring!

lemma wordEval_four_base (T U : Fin 16 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    wordEval (fun p : Fin 4 → Fin 4 => T (tensorIndex2 (p 0) (p 1)) * U (tensorIndex2 (p 2) (p 3))) w =
      quadraticEval T w * quadraticEval U w := by
  unfold wordEval
  rw [← Equiv.sum_comp quadrupleWord.symm]
  simp only [quadrupleWord_symm, Fin.prod_univ_succ, Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_succ, Fin.prod_univ_zero,
    mul_one, Fintype.sum_prod_type]
  rw [quadraticEval_sum, quadraticEval_sum]
  simp_rw [Finset.sum_mul]
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  apply Finset.sum_congr rfl
  intro c _
  apply Finset.sum_congr rfl
  intro d _
  dsimp
  ring!

lemma wordEval_pure (n : ℕ) (s : Fin 4 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    wordEval (fun p : Fin n → Fin 4 => ∏ i, s (p i)) w = (linearEval s w) ^ n := by
  unfold wordEval
  simp only [← Finset.prod_mul_distrib]
  rw [← Fintype.prod_sum (fun (_ : Fin n) (j : Fin 4) => s j * w j)]
  simp [linearEval]

lemma quadraticEval_rank_one (s : Fin 4 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    quadraticEval (fun p => s ((finProdFinEquiv (m := 4) (n := 4)).symm p).1 *
      s ((finProdFinEquiv (m := 4) (n := 4)).symm p).2) w = (linearEval s w) ^ 2 := by
  rw [quadraticEval_sum]
  simp only [tensorIndex2, Equiv.symm_apply_apply]
  unfold linearEval
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro a _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro b _
  ring

noncomputable def perm3a : Equiv.Perm (Fin 3) := Equiv.ofBijective ![0, 2, 1] (by decide +kernel)
noncomputable def perm3b : Equiv.Perm (Fin 3) := Equiv.ofBijective ![1, 2, 0] (by decide +kernel)
noncomputable def perm4a : Equiv.Perm (Fin 4) := Equiv.ofBijective ![0, 2, 1, 3] (by decide +kernel)
noncomputable def perm4b : Equiv.Perm (Fin 4) := Equiv.ofBijective ![0, 3, 1, 2] (by decide +kernel)
noncomputable def perm4c : Equiv.Perm (Fin 4) := Equiv.ofBijective ![1, 2, 0, 3] (by decide +kernel)
noncomputable def perm4d : Equiv.Perm (Fin 4) := Equiv.ofBijective ![1, 3, 0, 2] (by decide +kernel)
noncomputable def perm4e : Equiv.Perm (Fin 4) := Equiv.ofBijective ![2, 3, 0, 1] (by decide +kernel)

lemma cubicReal_eval (s : Fin 4 → ℝ) (T : Fin 16 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    (∑ j : Fin 64, cubicReal s T j * flatPower 3 w j) =
      -3 * quadraticEval T w * linearEval s w := by
  let A := fun p : Fin 3 → Fin 4 => T (tensorIndex2 (p 0) (p 1)) * s (p 2)
  change (∑ j : Fin (4 ^ 3), (-(A (finFunctionFinEquiv.symm j) +
    A ((finFunctionFinEquiv.symm j) ∘ perm3a) + A ((finFunctionFinEquiv.symm j) ∘ perm3b))) *
    flatPower 3 w j) = _
  rw [wordEval_flat (fun p => -(A p + A (p ∘ perm3a) + A (p ∘ perm3b))) w,
    wordEval_neg, wordEval_add, wordEval_add,
    wordEval_perm, wordEval_perm, wordEval_three_base]
  ring

lemma cubicImag_eval (s : Fin 4 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    (∑ j : Fin 64, cubicImag s j * flatPower 3 w j) = -(linearEval s w) ^ 3 := by
  have hh := wordEval_flat (fun p : Fin 3 → Fin 4 => -(∏ i, s (p i))) w
  rw [wordEval_neg, wordEval_pure] at hh
  convert hh using 1
  apply Finset.sum_congr rfl
  intro j _
  simp only [cubicImag, Fin.prod_univ_succ, Fin.prod_univ_zero, word_digit]
  ring!

lemma quarticReal_eval (s : Fin 4 → ℝ) (T : Fin 16 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    (∑ j : Fin 256, quarticReal s T j * flatPower 4 w j) =
      (linearEval s w) ^ 4 - 3 * (quadraticEval T w) ^ 2 := by
  let A := fun p : Fin 4 → Fin 4 => T (tensorIndex2 (p 0) (p 1)) * T (tensorIndex2 (p 2) (p 3))
  have hh := wordEval_flat (fun p : Fin 4 → Fin 4 => (∏ i, s (p i)) -
    (A p + A (p ∘ perm4a) + A (p ∘ perm4b))) w
  rw [wordEval_sub, wordEval_add, wordEval_add, wordEval_perm, wordEval_perm,
    wordEval_pure, wordEval_four_base] at hh
  calc
    _ = _ := ?_
    _ = _ := hh
    _ = _ := by ring
  apply Finset.sum_congr rfl
  intro j _
  simp only [quarticReal, A, Function.comp_def, perm4a, perm4b, Equiv.ofBijective_apply,
    Fin.prod_univ_succ, Fin.prod_univ_zero, word_digit, Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_succ]
  ring!

lemma quarticImag_eval (s : Fin 4 → ℝ) (T : Fin 16 → ℝ) (w : EuclideanSpace ℝ (Fin 4)) :
    (∑ j : Fin 256, quarticImag s T j * flatPower 4 w j) =
      -6 * quadraticEval T w * (linearEval s w) ^ 2 := by
  let A := fun p : Fin 4 → Fin 4 => T (tensorIndex2 (p 0) (p 1)) * s (p 2) * s (p 3)
  change (∑ j : Fin (4 ^ 4), (-(A (finFunctionFinEquiv.symm j) +
    A ((finFunctionFinEquiv.symm j) ∘ perm4a) + A ((finFunctionFinEquiv.symm j) ∘ perm4b) +
    A ((finFunctionFinEquiv.symm j) ∘ perm4c) + A ((finFunctionFinEquiv.symm j) ∘ perm4d) +
    A ((finFunctionFinEquiv.symm j) ∘ perm4e))) * flatPower 4 w j) = _
  rw [wordEval_flat (fun p => -(A p + A (p ∘ perm4a) + A (p ∘ perm4b) +
    A (p ∘ perm4c) + A (p ∘ perm4d) + A (p ∘ perm4e))) w, wordEval_neg]
  simp only [wordEval_add, wordEval_perm]
  have he : wordEval A w = quadraticEval T w * (linearEval s w) ^ 2 := by
    have hh := wordEval_four_base T (fun p => s ((finProdFinEquiv (m := 4) (n := 4)).symm p).1 *
      s ((finProdFinEquiv (m := 4) (n := 4)).symm p).2) w
    rw [quadraticEval_rank_one] at hh
    convert hh using 1
    unfold wordEval
    apply Finset.sum_congr rfl
    intro p _
    simp only [A, tensorIndex2, Equiv.symm_apply_apply]
    ring
  rw [he]
  ring

end NoFourMUBs.KernelAtlas.WholeBall
