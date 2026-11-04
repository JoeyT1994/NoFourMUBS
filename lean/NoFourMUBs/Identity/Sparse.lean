import NoFourMUBs.Identity.Kronecker

/-!
# Kronecker evaluation with sparse outer variables

The Kronecker criterion needs the value of a circuit at `xᵢ = X ^ wᵢ`.  When some variables carry
huge weights, that integer is too large to form, although the polynomial itself is sparse in those
variables.  Here the first `ns` variables stay symbolic: the value is kept as a sparse expansion
`∑ cₖ Yᵏ` in `Y = X ^ Wd`, whose coefficients are integers in the remaining (dense) variables.
All coefficients vanishing implies the value vanishes, so `Circ.checkSparse` is sound by the
Kronecker criterion.

The list operations are written with recursors, which the kernel reduces directly.
-/

namespace NoFourMUBs.Kronecker

noncomputable section

/-- A sparse expansion `∑ cₖ Yᵏ`, kept sorted by `k` with no zero coefficients. -/
inductive SP where
  | nil
  | cons (k : ℕ) (c : ℤ) (rest : SP)

namespace SP

/-- `true` exactly for `0`. -/
def isZero (c : ℤ) : Bool := Int.rec (fun n => Nat.beq n 0) (fun _ => false) c

theorem isZero_iff (c : ℤ) : isZero c = true ↔ c = 0 := by
  cases c with
  | ofNat n => simp [isZero]
  | negSucc n => simp [isZero]

/-- Merge `(k, c) :: p` into `q`, where `rec` merges `p`. -/
def addAux (k : ℕ) (c : ℤ) (p : SP) (rec : SP → SP) (q : SP) : SP :=
  SP.rec (motive := fun _ => SP) (cons k c p)
    (fun k₂ c₂ q' ih =>
      cond (Nat.blt k k₂) (cons k c (rec (cons k₂ c₂ q')))
        (cond (Nat.blt k₂ k) (cons k₂ c₂ ih)
          (cond (isZero (c + c₂)) (rec q') (cons k (c + c₂) (rec q')))))
    q

/-- Sum of two expansions. -/
def add (p : SP) : SP → SP :=
  SP.rec (motive := fun _ => SP → SP) (fun q => q) (fun k c p' ih => addAux k c p' ih) p

/-- Multiplication by `c Yᵏ`. -/
def scale (k : ℕ) (c : ℤ) (q : SP) : SP :=
  SP.rec (motive := fun _ => SP) nil (fun k' c' _ ih => cons (k + k') (c * c') ih) q

/-- Sum adjacent pairs of a list of expansions. -/
def pairUp : List SP → List SP
  | x :: y :: rest => add x y :: pairUp rest
  | l => l

/-- Sum a list by repeated pairing (at most `2 ^ fuel` entries are needed). -/
def mergeAll : ℕ → List SP → SP
  | _, [] => nil
  | _, [x] => x
  | 0, l => l.foldr add nil
  | k + 1, l => mergeAll k (pairUp l)

/-- The rows `cₖ Yᵏ · q` of a product. -/
def rows (p q : SP) : List SP :=
  SP.rec (motive := fun _ => List SP) [] (fun k c _ ih => scale k c q :: ih) p

/-- Product, summing the rows by divide and conquer. -/
def mul (p q : SP) : SP := mergeAll 64 (rows p q)

def neg (p : SP) : SP := scale 0 (-1) p

def pow (p : SP) (k : ℕ) : SP :=
  Nat.rec (motive := fun _ => SP) (cons 0 1 nil) (fun _ ih => mul ih p) k

/-- Every coefficient vanishes. -/
def allZero (p : SP) : Bool :=
  SP.rec (motive := fun _ => Bool) true (fun _ c _ ih => isZero c && ih) p

def eval (Y : ℤ) : SP → ℤ
  | nil => 0
  | cons k c p => c * Y ^ k + eval Y p

variable (Y : ℤ)

theorem blt_false {a b : ℕ} (h : Nat.blt a b = false) : b ≤ a := by
  have : ¬ a < b := fun hab => by rw [← Nat.blt_eq, h] at hab; exact Bool.false_ne_true hab
  omega

theorem eval_add (p q : SP) : eval Y (add p q) = eval Y p + eval Y q := by
  induction p generalizing q with
  | nil => simp [add, eval]
  | cons k c p ih =>
    change eval Y (addAux k c p (add p) q) = _
    induction q with
    | nil => simp [addAux, eval]
    | cons k₂ c₂ q ihq =>
      change eval Y (cond (Nat.blt k k₂) (cons k c (add p (cons k₂ c₂ q)))
        (cond (Nat.blt k₂ k) (cons k₂ c₂ (addAux k c p (add p) q))
          (cond (isZero (c + c₂)) (add p q) (cons k (c + c₂) (add p q))))) = _
      cases h₁ : Nat.blt k k₂
      · cases h₂ : Nat.blt k₂ k
        · have hk : k = k₂ := le_antisymm (blt_false h₂) (blt_false h₁)
          subst hk
          cases h₃ : isZero (c + c₂)
          · simp only [cond_false, eval, ih]; ring
          · have := (isZero_iff _).1 h₃
            simp only [cond_true, cond_false, eval, ih]
            linear_combination (-(Y ^ k)) * this
        · simp only [cond_false, cond_true, eval] at ihq ⊢
          rw [ihq]; ring
      · simp only [cond_true, eval, ih]; ring

theorem eval_scale (k : ℕ) (c : ℤ) (q : SP) : eval Y (scale k c q) = c * Y ^ k * eval Y q := by
  induction q with
  | nil => simp [scale, eval]
  | cons k' c' q ih =>
    change (c * c') * Y ^ (k + k') + eval Y (scale k c q) = _
    rw [ih, eval, pow_add]; ring

theorem eval_pairUp (l : List SP) : ((pairUp l).map (eval Y)).sum = (l.map (eval Y)).sum := by
  induction l using pairUp.induct with
  | case1 x y rest ih => simp only [pairUp, List.map_cons, List.sum_cons, eval_add, ih]; ring
  | case2 l h => rw [pairUp]; exact h

theorem eval_foldr (l : List SP) : eval Y (l.foldr add nil) = (l.map (eval Y)).sum := by
  induction l with
  | nil => rfl
  | cons x l ih => rw [List.foldr_cons, eval_add, ih, List.map_cons, List.sum_cons]

theorem eval_mergeAll (k : ℕ) (l : List SP) : eval Y (mergeAll k l) = (l.map (eval Y)).sum := by
  induction k, l using mergeAll.induct with
  | case1 => simp [mergeAll, eval]
  | case2 _ x => simp [mergeAll]
  | case3 l h1 h2 => rw [mergeAll, eval_foldr] <;> assumption
  | case4 k l h1 h2 ih => rw [mergeAll, ih, eval_pairUp] <;> assumption

theorem eval_mul (p q : SP) : eval Y (mul p q) = eval Y p * eval Y q := by
  rw [mul, eval_mergeAll]
  induction p with
  | nil => simp [rows, eval]
  | cons k c p ih =>
    change ((scale k c q :: rows p q).map (eval Y)).sum = _
    rw [List.map_cons, List.sum_cons, ih, eval_scale, eval]; ring

theorem eval_neg (p : SP) : eval Y (neg p) = -eval Y p := by
  rw [neg, eval_scale]; ring

theorem eval_pow (p : SP) (k : ℕ) : eval Y (pow p k) = eval Y p ^ k := by
  induction k with
  | zero => simp [pow, eval]
  | succ k ih => change eval Y (mul (pow p k) p) = _; rw [eval_mul, ih, pow_succ]

theorem eval_eq_zero_of_allZero {p : SP} (h : allZero p = true) : eval Y p = 0 := by
  induction p with
  | nil => rfl
  | cons k c p ih =>
    change (isZero c && allZero p) = true at h
    rw [Bool.and_eq_true, isZero_iff] at h
    rw [eval, h.1, ih h.2]; ring

end SP

/-! ### Splitting the Kronecker weights -/

/-- Weight of the first `ns` variables (the sparse block). -/
def Ws : {n : ℕ} → (Fin n → ℕ) → ℕ → ℕ
  | 0, _, _ => 1
  | _ + 1, _, 0 => 1
  | _ + 1, D, ns + 1 => (D 0 + 1) * Ws (Fin.tail D) ns

/-- Weight of the variables after the first `ns` (the dense block). -/
def Wd : {n : ℕ} → (Fin n → ℕ) → ℕ → ℕ
  | 0, _, _ => 1
  | _ + 1, D, 0 => W D
  | _ + 1, D, ns + 1 => Wd (Fin.tail D) ns

/-- The exponent of `Y = X ^ Wd` carried by a sparse variable. -/
def key : {n : ℕ} → (Fin n → ℕ) → ℕ → Fin n → ℕ
  | 0, _, _ => Fin.elim0
  | _ + 1, _, 0 => fun _ => 0
  | _ + 1, D, ns + 1 => Fin.cons (Ws (Fin.tail D) ns) (key (Fin.tail D) ns)

theorem W_eq : ∀ {n : ℕ} (D : Fin n → ℕ) (ns : ℕ), ns ≤ n → W D = Ws D ns * Wd D ns
  | 0, _, _, _ => rfl
  | _ + 1, D, 0, _ => by simp [Ws, Wd]
  | _ + 1, D, ns + 1, h => by
    simp only [W, Ws, Wd]
    rw [W_eq (Fin.tail D) ns (by omega), mul_assoc]

theorem kpt_sparse (X : ℕ) : ∀ {n : ℕ} (D : Fin n → ℕ) (ns : ℕ), ns ≤ n → ∀ i : Fin n, i.val < ns →
    kpt X D i = ((X : ℤ) ^ Wd D ns) ^ key D ns i
  | 0, _, _, _, i, _ => i.elim0
  | _ + 1, _, 0, _, _, hi => absurd hi (Nat.not_lt_zero _)
  | _ + 1, D, ns + 1, h, i, hi => by
    induction i using Fin.cases with
    | zero =>
      simp only [kpt, key, Wd, Fin.cons_zero, Nat.cast_pow]
      rw [← pow_mul, mul_comm, ← W_eq (Fin.tail D) ns (by omega)]
    | succ j =>
      simp only [kpt, key, Wd, Fin.cons_succ]
      exact kpt_sparse X (Fin.tail D) ns (by omega) j (by simpa using hi)

namespace Circ

variable {n : ℕ}

/-- Hybrid evaluation: variable `i` becomes `Y ^ key i` if sparse, the integer `dval i` if dense. -/
def hyb (key : Fin n → ℕ) (dval : Fin n → ℤ) (sparse : Fin n → Bool) : Circ n → SP
  | var i => cond (sparse i) (.cons (key i) 1 .nil)
      (cond (SP.isZero (dval i)) .nil (.cons 0 (dval i) .nil))
  | const z => cond (SP.isZero z) .nil (.cons 0 z .nil)
  | add a b => SP.add (a.hyb key dval sparse) (b.hyb key dval sparse)
  | sub a b => SP.add (a.hyb key dval sparse) (SP.neg (b.hyb key dval sparse))
  | mul a b => SP.mul (a.hyb key dval sparse) (b.hyb key dval sparse)
  | pow a k => SP.pow (a.hyb key dval sparse) k

theorem eval_hyb (Y : ℤ) (key : Fin n → ℕ) (dval : Fin n → ℤ) (sparse : Fin n → Bool) (c : Circ n) :
    SP.eval Y (c.hyb key dval sparse) = c.eval (fun i => cond (sparse i) (Y ^ key i) (dval i)) := by
  induction c with
  | var i =>
    simp only [hyb, eval]
    cases sparse i
    · cases h : SP.isZero (dval i)
      · simp [SP.eval]
      · simp [SP.eval, (SP.isZero_iff _).1 h]
    · simp [SP.eval]
  | const z =>
    simp only [hyb, eval]
    cases h : SP.isZero z
    · simp [SP.eval]
    · simp [SP.eval, (SP.isZero_iff _).1 h]
  | add a b ha hb => simp only [hyb, eval, SP.eval_add, ha, hb]
  | sub a b ha hb => simp only [hyb, eval, SP.eval_add, SP.eval_neg, ha, hb]; ring
  | mul a b ha hb => simp only [hyb, eval, SP.eval_mul, ha, hb]
  | pow a k ha => simp only [hyb, eval, SP.eval_pow, ha]

/-- The kernel-decided test: a positive exponent `K`, the degree bounds `D`, the coefficient bound
`2 ^ K`, and every coefficient of the hybrid value vanishing, with the first `ns` variables sparse. -/
def checkSparse (c : Circ n) (D : Fin n → ℕ) (K ns : ℕ) : Bool :=
  decide (1 ≤ K) && decide (ns ≤ n) && (List.finRange n).all (fun i => decide (c.deg i ≤ D i)) &&
    decide (c.abs.eval (fun _ => (1 : ℤ)) < 2 ^ K) &&
    SP.allZero (c.hyb (key D ns) (kpt (2 ^ K) D) (fun i => Nat.blt i.val ns))

theorem toPoly_eq_zero_of_checkSparse {c : Circ n} {D : Fin n → ℕ} {K ns : ℕ}
    (h : c.checkSparse D K ns = true) : c.toPoly = 0 := by
  simp only [checkSparse, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true,
    List.mem_finRange, true_implies] at h
  obtain ⟨⟨⟨⟨hK, hns⟩, hD⟩, hM⟩, h0⟩ := h
  refine eq_zero_of_eval_kpt (2 ^ K) ?_ _ (by exact_mod_cast hM) D c.toPoly (c.abs_coeff_le)
    (fun i => (c.degreeOf_le i).trans (hD i)) ?_
  · calc 2 = 2 ^ 1 := rfl
      _ ≤ 2 ^ K := Nat.pow_le_pow_right (by norm_num) hK
  · rw [← eval_eq_eval]
    have hpt : (fun i => cond (Nat.blt i.val ns) ((((2 ^ K : ℕ) : ℤ) ^ Wd D ns) ^ key D ns i)
        (kpt (2 ^ K) D i)) = kpt (2 ^ K) D := by
      funext i
      cases hi : Nat.blt i.val ns
      · rfl
      · exact (kpt_sparse (2 ^ K) D ns hns i (by rw [← Nat.blt_eq]; exact hi)).symm
    rw [← hpt, ← eval_hyb]
    exact SP.eval_eq_zero_of_allZero _ h0

/-- **Soundness** of the sparse test. -/
theorem eval_eq_zero_of_checkSparse {c : Circ n} {D : Fin n → ℕ} {K ns : ℕ}
    (h : c.checkSparse D K ns = true) {R : Type*} [CommRing R] (ρ : Fin n → R) : c.eval ρ = 0 := by
  rw [eval_eq_aeval, toPoly_eq_zero_of_checkSparse h, MvPolynomial.eval₂_zero]

/-- The exponent `K` for which `2 ^ K` exceeds the coefficient bound. -/
def bits (c : Circ n) : ℕ := Nat.log2 (c.abs.eval (fun _ => (1 : ℤ))).toNat + 1

/-- `checkSparse` with the bounds read off the circuit itself. -/
def valid (c : Circ n) (ns : ℕ) : Bool := c.checkSparse (fun i => c.deg i) c.bits ns

theorem eval_eq_zero_of_valid {c : Circ n} {ns : ℕ} (h : c.valid ns = true)
    {R : Type*} [CommRing R] (ρ : Fin n → R) : c.eval ρ = 0 :=
  eval_eq_zero_of_checkSparse h ρ

end Circ

end

end NoFourMUBs.Kronecker
