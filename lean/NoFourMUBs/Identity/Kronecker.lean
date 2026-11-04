import Mathlib

/-!
# Polynomial identities by a single big-integer evaluation

A `Circ n` is an integer polynomial circuit in `n` variables.  Suppose its degree in each variable `i`
is at most `D i`, and its coefficients have absolute value below `X`.  If it also vanishes at the
Kronecker point `xᵢ = X ^ ∏_{j > i} (D j + 1)`, then it is the zero polynomial (`eq_zero_of_eval_kpt`),
so it vanishes in every commutative ring.  The point is that a polynomial with bounded coefficients
and degrees is the base-`X` expansion of its value there.

The kernel-decided tests that package these hypotheses are in `Sparse` (`Circ.checkSparse`) and `Fast`.
-/

open MvPolynomial

namespace NoFourMUBs.Kronecker

/-- Integer polynomial circuits in the variables `Fin n`. -/
inductive Circ (n : ℕ) where
  | var (i : Fin n)
  | const (z : ℤ)
  | add (a b : Circ n)
  | sub (a b : Circ n)
  | mul (a b : Circ n)
  | pow (a : Circ n) (k : ℕ)

namespace Circ

variable {n : ℕ}

instance : Add (Circ n) := ⟨add⟩
instance : Sub (Circ n) := ⟨sub⟩
instance : Mul (Circ n) := ⟨mul⟩
instance : HPow (Circ n) ℕ (Circ n) := ⟨pow⟩
instance {k : ℕ} : OfNat (Circ n) k := ⟨const k⟩
instance : Neg (Circ n) := ⟨fun a => sub (const 0) a⟩
instance : IntCast (Circ n) := ⟨const⟩

/-- Evaluation in a commutative ring. -/
def eval {R : Type*} [CommRing R] (ρ : Fin n → R) : Circ n → R
  | var i => ρ i
  | const z => (z : R)
  | add a b => a.eval ρ + b.eval ρ
  | sub a b => a.eval ρ - b.eval ρ
  | mul a b => a.eval ρ * b.eval ρ
  | pow a k => a.eval ρ ^ k

section evalLemmas
variable {R : Type*} [CommRing R] (ρ : Fin n → R) (a b : Circ n)
@[simp] theorem eval_var (i : Fin n) : (var i).eval ρ = ρ i := rfl
@[simp] theorem eval_const (z : ℤ) : (const z : Circ n).eval ρ = z := rfl
@[simp] theorem eval_add' : (a + b).eval ρ = a.eval ρ + b.eval ρ := rfl
@[simp] theorem eval_sub' : (a - b).eval ρ = a.eval ρ - b.eval ρ := rfl
@[simp] theorem eval_mul' : (a * b).eval ρ = a.eval ρ * b.eval ρ := rfl
@[simp] theorem eval_pow' (k : ℕ) : (a ^ k).eval ρ = a.eval ρ ^ k := rfl
@[simp] theorem eval_neg' : (-a).eval ρ = -a.eval ρ := by
  change ((0 : ℤ) : R) - a.eval ρ = _; simp
@[simp] theorem eval_ofNat (k : ℕ) [k.AtLeastTwo] : (no_index (OfNat.ofNat k : Circ n)).eval ρ = OfNat.ofNat k := by
  change ((k : ℤ) : R) = _; simp [Nat.cast_ofNat]; rfl
@[simp] theorem eval_zero' : (0 : Circ n).eval ρ = 0 := by change ((0 : ℤ) : R) = _; simp
@[simp] theorem eval_one' : (1 : Circ n).eval ρ = 1 := by change ((1 : ℤ) : R) = _; simp
@[simp] theorem eval_intCast (z : ℤ) : (z : Circ n).eval ρ = z := rfl
end evalLemmas

/-- The polynomial a circuit computes. -/
noncomputable def toPoly : Circ n → MvPolynomial (Fin n) ℤ
  | var i => X i
  | const z => C z
  | add a b => a.toPoly + b.toPoly
  | sub a b => a.toPoly - b.toPoly
  | mul a b => a.toPoly * b.toPoly
  | pow a k => a.toPoly ^ k

theorem eval_eq_aeval {R : Type*} [CommRing R] (ρ : Fin n → R) (c : Circ n) :
    c.eval ρ = MvPolynomial.eval₂ (Int.castRingHom R) ρ c.toPoly := by
  induction c with
  | var i => simp [eval, toPoly]
  | const z => show (z : R) = eval₂ _ ρ (C z); rw [eval₂_C]; rfl
  | add a b ha hb => simp [eval, toPoly, ha, hb]
  | sub a b ha hb => simp [eval, toPoly, ha, hb]
  | mul a b ha hb => simp [eval, toPoly, ha, hb]
  | pow a k ha => simp [eval, toPoly, ha]

theorem eval_eq_eval (ρ : Fin n → ℤ) (c : Circ n) : c.eval ρ = MvPolynomial.eval ρ c.toPoly := by
  rw [eval_eq_aeval]; rfl

/-! ### Syntactic bounds -/

/-- A bound on the degree in the variable `j`. -/
def deg (j : Fin n) : Circ n → ℕ
  | var i => if j = i then 1 else 0
  | const _ => 0
  | add a b => max (a.deg j) (b.deg j)
  | sub a b => max (a.deg j) (b.deg j)
  | mul a b => a.deg j + b.deg j
  | pow a k => k * a.deg j

theorem degreeOf_le (j : Fin n) (c : Circ n) : degreeOf j c.toPoly ≤ c.deg j := by
  induction c with
  | var i => simp [toPoly, deg, degreeOf_X]
  | const z => simp only [toPoly, deg]; exact (degreeOf_C _ _).le
  | add a b ha hb => exact (degreeOf_add_le _ _ _).trans (max_le_max ha hb)
  | sub a b ha hb => exact (degreeOf_sub_le _ _ _).trans (max_le_max ha hb)
  | mul a b ha hb => exact (degreeOf_mul_le _ _ _).trans (add_le_add ha hb)
  | pow a k ha => exact (degreeOf_pow_le _ _ _).trans (Nat.mul_le_mul_left _ ha)

/-- The same circuit with every constant and every subtraction made positive.  Its polynomial
dominates the original coefficientwise. -/
def abs : Circ n → Circ n
  | var i => var i
  | const z => const |z|
  | add a b => add a.abs b.abs
  | sub a b => add a.abs b.abs
  | mul a b => mul a.abs b.abs
  | pow a k => pow a.abs k

/-- Coefficientwise domination. -/
def Dom (P Q : MvPolynomial (Fin n) ℤ) : Prop := ∀ m, |P.coeff m| ≤ Q.coeff m

theorem Dom.mul {P Q P' Q' : MvPolynomial (Fin n) ℤ} (h : Dom P P') (h' : Dom Q Q') :
    Dom (P * Q) (P' * Q') := by
  intro m
  rw [coeff_mul, coeff_mul]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun x _ => ?_)
  rw [abs_mul]
  exact mul_le_mul (h _) (h' _) (abs_nonneg _) ((abs_nonneg _).trans (h _))

theorem Dom.pow {P P' : MvPolynomial (Fin n) ℤ} (h : Dom P P') (k : ℕ) : Dom (P ^ k) (P' ^ k) := by
  induction k with
  | zero => intro m; simp only [pow_zero, coeff_one]; split_ifs <;> simp
  | succ k ih => rw [pow_succ, pow_succ]; exact ih.mul h

theorem dom (c : Circ n) : Dom c.toPoly c.abs.toPoly := by
  induction c with
  | var i => intro m; simp only [toPoly, abs, coeff_X]; split_ifs <;> simp
  | const z => intro m; simp only [toPoly, abs, coeff_C]; split_ifs <;> simp
  | add a b ha hb =>
    intro m; simp only [toPoly, abs, coeff_add]
    exact (abs_add_le _ _).trans (add_le_add (ha m) (hb m))
  | sub a b ha hb =>
    intro m; simp only [toPoly, abs, coeff_add, coeff_sub]
    exact (abs_sub _ _).trans (add_le_add (ha m) (hb m))
  | mul a b ha hb => exact ha.mul hb
  | pow a k ha => exact ha.pow k

theorem coeff_le_eval_one {Q : MvPolynomial (Fin n) ℤ} (hQ : ∀ m, 0 ≤ Q.coeff m) (m : Fin n →₀ ℕ) :
    Q.coeff m ≤ MvPolynomial.eval (fun _ => 1) Q := by
  rw [MvPolynomial.eval_eq]
  simp only [one_pow, Finset.prod_const_one, mul_one]
  by_cases hm : m ∈ Q.support
  · exact Finset.single_le_sum (fun i _ => hQ i) hm
  · rw [notMem_support_iff.mp hm]; exact Finset.sum_nonneg fun i _ => hQ i

/-- Every coefficient is bounded by the value of the positive circuit at `1`. -/
theorem abs_coeff_le (c : Circ n) (m : Fin n →₀ ℕ) :
    |c.toPoly.coeff m| ≤ c.abs.eval (fun _ => (1 : ℤ)) := by
  rw [eval_eq_eval]
  exact (c.dom m).trans
    (coeff_le_eval_one (fun m' => (abs_nonneg _).trans (c.dom m')) m)

end Circ

/-! ### The Kronecker point and the digit argument -/

/-- The number of base-`X` digits used by degree bounds `D`. -/
def W : {n : ℕ} → (Fin n → ℕ) → ℕ
  | 0, _ => 1
  | _ + 1, D => (D 0 + 1) * W (Fin.tail D)

/-- The Kronecker point: variable `0` carries the largest weight. -/
def kpt (X : ℕ) : {n : ℕ} → (Fin n → ℕ) → Fin n → ℤ
  | 0, _ => Fin.elim0
  | _ + 1, D => Fin.cons ((X ^ W (Fin.tail D) : ℕ) : ℤ) (kpt X (Fin.tail D))

theorem eval_fin_zero (x : Fin 0 → ℤ) (P : MvPolynomial (Fin 0) ℤ) : MvPolynomial.eval x P = P.coeff 0 := by
  rw [MvPolynomial.eval_eq']
  simp only [Finset.univ_eq_empty, Finset.prod_empty, mul_one]
  exact Finset.sum_eq_single 0 (fun b _ hb => absurd (Subsingleton.elim b 0) hb)
    (fun h => notMem_support_iff.mp h)

/-- Digits below the base vanish when the expansion does. -/
theorem digits_eq_zero (Y : ℤ) (hY : 0 < Y) : ∀ (N : ℕ) (c : ℕ → ℤ), (∀ j < N, |c j| < Y) →
    ∑ j ∈ Finset.range N, c j * Y ^ j = 0 → ∀ j < N, c j = 0
  | 0, _, _, _ => fun j hj => absurd hj (Nat.not_lt_zero j)
  | N + 1, c, hc, hs => by
    rw [Finset.sum_range_succ'] at hs
    simp only [pow_succ, pow_zero, mul_one] at hs
    have hfac : ∑ j ∈ Finset.range N, c (j + 1) * (Y ^ j * Y) = Y * ∑ j ∈ Finset.range N, c (j + 1) * Y ^ j := by
      rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by ring
    rw [hfac] at hs
    have hc0 : c 0 = 0 :=
      Int.eq_zero_of_abs_lt_dvd ⟨-(∑ j ∈ Finset.range N, c (j + 1) * Y ^ j), by linarith⟩ (hc 0 (by omega))
    have hrest : ∑ j ∈ Finset.range N, c (j + 1) * Y ^ j = 0 := by
      rw [hc0, add_zero] at hs
      exact (mul_eq_zero.mp hs).resolve_left hY.ne'
    intro j hj
    cases j with
    | zero => exact hc0
    | succ j => exact digits_eq_zero Y hY N (fun j => c (j + 1)) (fun j hj => hc _ (by omega)) hrest j (by omega)

/-- The value at the Kronecker point is bounded by the coefficients. -/
theorem abs_eval_kpt_le (X : ℕ) (hX : 1 ≤ X) (M : ℤ) : ∀ {n : ℕ} (D : Fin n → ℕ) (P : MvPolynomial (Fin n) ℤ),
    (∀ m, |P.coeff m| ≤ M) → (∀ i, degreeOf i P ≤ D i) →
    |MvPolynomial.eval (kpt X D) P| * ((X : ℤ) - 1) ≤ M * ((X : ℤ) ^ W D - 1)
  | 0, D, P, hP, _ => by
    rw [eval_fin_zero]
    simp only [W, pow_one]
    exact mul_le_mul_of_nonneg_right (hP 0) (by simp [hX])
  | n + 1, D, P, hP, hD => by
    set Y : ℤ := (X : ℤ) ^ W (Fin.tail D) with hY
    have hY1 : 1 ≤ Y := one_le_pow₀ (by exact_mod_cast hX)
    set Q := finSuccEquiv ℤ n P
    have hN : (Q.map (MvPolynomial.eval (kpt X (Fin.tail D)))).natDegree < D 0 + 1 :=
      lt_of_le_of_lt ((Polynomial.natDegree_map_le).trans (by rw [natDegree_finSuccEquiv]; exact hD 0))
        (Nat.lt_succ_self _)
    simp only [kpt]
    rw [eval_eq_eval_mv_eval', Nat.cast_pow, ← hY, Polynomial.eval_eq_sum_range' hN]
    simp only [Polynomial.coeff_map]
    have hc : ∀ j, |MvPolynomial.eval (kpt X (Fin.tail D)) (Q.coeff j)| * ((X : ℤ) - 1) ≤ M * (Y - 1) :=
      fun j => abs_eval_kpt_le X hX M (Fin.tail D) (Q.coeff j)
        (fun m => by rw [finSuccEquiv_coeff_coeff]; exact hP _)
        (fun i => (degreeOf_coeff_finSuccEquiv P i j).trans (hD i.succ))
    have hX0 : (0 : ℤ) ≤ (X : ℤ) - 1 := by simp [hX]
    calc |∑ j ∈ Finset.range (D 0 + 1), MvPolynomial.eval (kpt X (Fin.tail D)) (Q.coeff j) * Y ^ j| * ((X : ℤ) - 1)
        ≤ (∑ j ∈ Finset.range (D 0 + 1), |MvPolynomial.eval (kpt X (Fin.tail D)) (Q.coeff j)| * Y ^ j) * ((X : ℤ) - 1) := by
          refine mul_le_mul_of_nonneg_right ((Finset.abs_sum_le_sum_abs _ _).trans (le_of_eq ?_)) hX0
          refine Finset.sum_congr rfl fun j _ => ?_
          rw [abs_mul, abs_of_nonneg (pow_nonneg (show (0 : ℤ) ≤ Y by linarith) _)]
      _ = ∑ j ∈ Finset.range (D 0 + 1), (|MvPolynomial.eval (kpt X (Fin.tail D)) (Q.coeff j)| * ((X : ℤ) - 1)) * Y ^ j := by
          rw [Finset.sum_mul]; exact Finset.sum_congr rfl fun j _ => by ring
      _ ≤ ∑ j ∈ Finset.range (D 0 + 1), M * (Y - 1) * Y ^ j :=
          Finset.sum_le_sum fun j _ => mul_le_mul_of_nonneg_right (hc j) (pow_nonneg (by linarith) _)
      _ = M * ((∑ j ∈ Finset.range (D 0 + 1), Y ^ j) * (Y - 1)) := by
          rw [Finset.sum_mul, Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by ring
      _ = M * ((X : ℤ) ^ W D - 1) := by
          rw [geom_sum_mul, hY, ← pow_mul]; simp only [W]; rw [mul_comm (D 0 + 1)]

/-- **Kronecker's criterion.** Bounded coefficients and degrees, and a zero at the Kronecker point,
force the zero polynomial. -/
theorem eq_zero_of_eval_kpt (X : ℕ) (hX : 2 ≤ X) (M : ℤ) (hM : M < X) : ∀ {n : ℕ} (D : Fin n → ℕ)
    (P : MvPolynomial (Fin n) ℤ), (∀ m, |P.coeff m| ≤ M) → (∀ i, degreeOf i P ≤ D i) →
    MvPolynomial.eval (kpt X D) P = 0 → P = 0
  | 0, D, P, _, _, h0 => by
    rw [eval_fin_zero] at h0
    ext m
    rw [Subsingleton.elim m 0, h0, coeff_zero]
  | n + 1, D, P, hP, hD, h0 => by
    set Y : ℤ := (X : ℤ) ^ W (Fin.tail D) with hY
    have hY1 : 1 ≤ Y := one_le_pow₀ (by exact_mod_cast (show 1 ≤ X by omega))
    set Q := finSuccEquiv ℤ n P
    have hN : (Q.map (MvPolynomial.eval (kpt X (Fin.tail D)))).natDegree < D 0 + 1 :=
      lt_of_le_of_lt ((Polynomial.natDegree_map_le).trans (by rw [natDegree_finSuccEquiv]; exact hD 0))
        (Nat.lt_succ_self _)
    simp only [kpt] at h0
    rw [eval_eq_eval_mv_eval', Nat.cast_pow, ← hY, Polynomial.eval_eq_sum_range' hN] at h0
    simp only [Polynomial.coeff_map] at h0
    have hPj : ∀ j, ∀ m, |(Q.coeff j).coeff m| ≤ M := fun j m => by rw [finSuccEquiv_coeff_coeff]; exact hP _
    have hDj : ∀ j, ∀ i, degreeOf i (Q.coeff j) ≤ Fin.tail D i :=
      fun j i => (degreeOf_coeff_finSuccEquiv P i j).trans (hD i.succ)
    have hX2 : (2 : ℤ) ≤ X := by exact_mod_cast hX
    have hX1 : (0 : ℤ) < (X : ℤ) - 1 := by linarith
    have hsmall : ∀ j < D 0 + 1, |MvPolynomial.eval (kpt X (Fin.tail D)) (Q.coeff j)| < Y := by
      intro j _
      have hb := abs_eval_kpt_le X (by omega) M (Fin.tail D) (Q.coeff j) (hPj j) (hDj j)
      rw [← hY] at hb
      have : M * (Y - 1) ≤ ((X : ℤ) - 1) * (Y - 1) := mul_le_mul_of_nonneg_right (by linarith) (by linarith)
      by_contra hc
      push Not at hc
      nlinarith
    have hzero := digits_eq_zero Y (by linarith) (D 0 + 1) _ hsmall h0
    have hQ : Q = 0 := by
      ext1 j
      rw [Polynomial.coeff_zero]
      by_cases hj : j < D 0 + 1
      · exact eq_zero_of_eval_kpt X hX M hM (Fin.tail D) _ (hPj j) (hDj j) (hzero j hj)
      · exact Polynomial.coeff_eq_zero_of_natDegree_lt
          (by rw [natDegree_finSuccEquiv]; exact lt_of_le_of_lt (hD 0) (by omega))
    exact (finSuccEquiv ℤ n).injective (hQ.trans (map_zero _).symm)

end NoFourMUBs.Kronecker
