import NoFourMUBs.Identity.Fast

/-!
# A dense Kronecker test evaluated with integer arithmetic

`Circ.validD c` is the dense case of the Kronecker test (`Circ.check` with the degree bounds and the
coefficient bound read off the circuit), with the value at the Kronecker point computed by `Circ.evalR`,
a recursor-based integer evaluation that the kernel reduces with GMP arithmetic and without the sparse
expansions of `Circ.validR`.  Soundness (`Circ.eval_eq_zero_of_validD`) is `Circ.toPoly_eq_zero`.
-/

namespace NoFourMUBs.Kronecker

noncomputable section

namespace Circ

variable {n : ℕ}

/-- Integer evaluation by the recursor. -/
def evalR (x : Fin n → ℤ) (c : Circ n) : ℤ :=
  Circ.rec (motive := fun _ => ℤ) (fun i => x i) (fun z => z) (fun _ _ a b => a + b) (fun _ _ a b => a - b)
    (fun _ _ a b => a * b) (fun _ k a => Nat.rec (motive := fun _ => ℤ) 1 (fun _ acc => acc * a) k) c

theorem evalR_eq (x : Fin n → ℤ) (c : Circ n) : c.evalR x = c.eval x := by
  induction c with
  | var i => rfl
  | const z => rfl
  | add a b ha hb => change a.evalR x + b.evalR x = _; rw [ha, hb]; rfl
  | sub a b ha hb => change a.evalR x - b.evalR x = _; rw [ha, hb]; rfl
  | mul a b ha hb => change a.evalR x * b.evalR x = _; rw [ha, hb]; rfl
  | pow a k ha =>
    change Nat.rec (motive := fun _ => ℤ) 1 (fun _ acc => acc * a.evalR x) k = _
    rw [ha]
    change _ = a.eval x ^ k
    induction k with
    | zero => rw [pow_zero]; rfl
    | succ k ih => rw [pow_succ, ← ih]

/-- The offset of the Kronecker base: any natural number works; an odd 64-bit constant spreads the low
bits of the big intermediate values, on which the kernel's caches hash. -/
def baseOff : ℕ := 11400714819323198485

/-- The dense Kronecker test, evaluated with `evalR`, at the base `2 ^ K + baseOff`. -/
def validD (c : Circ n) : Bool :=
  decide (c.evalR (kpt (2 ^ c.bitsR + baseOff) (fun i => c.degR i.val)) = 0)

theorem toPoly_eq_zero_of_validD {c : Circ n} (h : c.validD = true) : c.toPoly = 0 := by
  simp only [validD, decide_eq_true_eq] at h
  have hD : (fun i : Fin n => c.degR i.val) = fun i => c.deg i := funext fun i => degR_eq i c
  have hK : c.abs.eval (fun _ => (1 : ℤ)) < 2 ^ c.bitsR := by
    rw [absR_eq, bitsR]; exact_mod_cast Nat.lt_log2_self
  rw [hD, evalR_eq] at h
  refine eq_zero_of_eval_kpt (2 ^ c.bitsR + baseOff)
    (by have := Nat.one_le_two_pow (n := c.bitsR); simp only [baseOff]; omega)
    (c.abs.eval (fun _ => (1 : ℤ))) (by push_cast; simp only [baseOff]; push_cast; linarith)
    (fun i => c.deg i) c.toPoly
    (c.abs_coeff_le) (fun i => c.degreeOf_le i) ?_
  rw [← eval_eq_eval]; exact h

/-- **Soundness** of the dense test. -/
theorem eval_eq_zero_of_validD {c : Circ n} (h : c.validD = true) {R : Type*} [CommRing R]
    (ρ : Fin n → R) : c.eval ρ = 0 := by
  rw [eval_eq_aeval, toPoly_eq_zero_of_validD h, MvPolynomial.eval₂_zero]

/-! ### The dense test with natural-number arithmetic

`evalP` evaluates a circuit at a point with natural coordinates as a pair `(positive, negative)` of
natural numbers, with value `positive − negative`; the kernel reduces each step to one GMP operation on
literals (integer arithmetic goes through the constructors of `ℤ`). -/

/-- Natural-number pair evaluation by the recursor. -/
def evalP (x : Fin n → ℕ) (c : Circ n) : ℕ × ℕ :=
  Circ.rec (motive := fun _ => ℕ × ℕ) (fun i => (x i, 0)) (fun z => (z.toNat, (-z).toNat))
    (fun _ _ a b => (a.1 + b.1, a.2 + b.2)) (fun _ _ a b => (a.1 + b.2, a.2 + b.1))
    (fun _ _ a b => (a.1 * b.1 + a.2 * b.2, a.1 * b.2 + a.2 * b.1))
    (fun _ k a => Nat.rec (motive := fun _ => ℕ × ℕ) (1, 0)
      (fun _ acc => (acc.1 * a.1 + acc.2 * a.2, acc.1 * a.2 + acc.2 * a.1)) k) c

theorem evalP_eq (x : Fin n → ℕ) (c : Circ n) :
    ((c.evalP x).1 : ℤ) - (c.evalP x).2 = c.eval (fun i => (x i : ℤ)) := by
  induction c with
  | var i => change ((x i : ℕ) : ℤ) - ((0 : ℕ) : ℤ) = _; simp [eval]
  | const z =>
    change ((z.toNat : ℕ) : ℤ) - (((-z).toNat : ℕ) : ℤ) = ((z : ℤ) : ℤ)
    rw [Int.toNat_sub_toNat_neg]
  | add a b ha hb =>
    change (((a.evalP x).1 + (b.evalP x).1 : ℕ) : ℤ) - (((a.evalP x).2 + (b.evalP x).2 : ℕ) : ℤ) = _
    change _ = Circ.eval _ a + Circ.eval _ b; push_cast; rw [← ha, ← hb]; ring
  | sub a b ha hb =>
    change (((a.evalP x).1 + (b.evalP x).2 : ℕ) : ℤ) - (((a.evalP x).2 + (b.evalP x).1 : ℕ) : ℤ) = _
    change _ = Circ.eval _ a - Circ.eval _ b; push_cast; rw [← ha, ← hb]; ring
  | mul a b ha hb =>
    change (((a.evalP x).1 * (b.evalP x).1 + (a.evalP x).2 * (b.evalP x).2 : ℕ) : ℤ) -
      (((a.evalP x).1 * (b.evalP x).2 + (a.evalP x).2 * (b.evalP x).1 : ℕ) : ℤ) = _
    change _ = Circ.eval _ a * Circ.eval _ b; push_cast; rw [← ha, ← hb]; ring
  | pow a k ha =>
    change ((Nat.rec (motive := fun _ => ℕ × ℕ) (1, 0)
      (fun _ acc => (acc.1 * (a.evalP x).1 + acc.2 * (a.evalP x).2,
        acc.1 * (a.evalP x).2 + acc.2 * (a.evalP x).1)) k).1 : ℤ) -
      ((Nat.rec (motive := fun _ => ℕ × ℕ) (1, 0)
      (fun _ acc => (acc.1 * (a.evalP x).1 + acc.2 * (a.evalP x).2,
        acc.1 * (a.evalP x).2 + acc.2 * (a.evalP x).1)) k).2 : ℤ) = _
    change _ = Circ.eval _ a ^ k
    rw [← ha]
    induction k with
    | zero => simp
    | succ k ih => simp only [pow_succ]; rw [← ih]; push_cast; ring

theorem kpt_nonneg (X : ℕ) : ∀ {n : ℕ} (D : Fin n → ℕ) (i : Fin n), 0 ≤ kpt X D i
  | 0, _, i => i.elim0
  | _ + 1, D, i => by
    induction i using Fin.cases with
    | zero => simp [kpt]
    | succ j => simp only [kpt, Fin.cons_succ]; exact kpt_nonneg X (Fin.tail D) j

/-- The dense Kronecker test with natural-number arithmetic. -/
def validN (c : Circ n) : Bool :=
  let p := c.evalP (fun i => (kpt (2 ^ c.bitsR + baseOff) (fun i => c.degR i.val) i).toNat)
  Nat.beq p.1 p.2

theorem validD_of_validN {c : Circ n} (h : c.validN = true) : c.validD = true := by
  simp only [validN] at h
  have e := Nat.eq_of_beq_eq_true h
  have := evalP_eq (fun i => (kpt (2 ^ c.bitsR + baseOff) (fun i => c.degR i.val) i).toNat) c
  have hpt : (fun i : Fin n => (((kpt (2 ^ c.bitsR + baseOff) (fun i : Fin n => c.degR i.val) i).toNat :
      ℕ) : ℤ)) = kpt (2 ^ c.bitsR + baseOff) (fun i : Fin n => c.degR i.val) :=
    funext fun i => Int.toNat_of_nonneg (kpt_nonneg _ _ i)
  rw [e, sub_self, hpt] at this
  simp only [validD, decide_eq_true_eq]
  rw [evalR_eq]; exact this.symm

theorem eval_eq_zero_of_validN {c : Circ n} (h : c.validN = true) {R : Type*} [CommRing R]
    (ρ : Fin n → R) : c.eval ρ = 0 :=
  eval_eq_zero_of_validD (validD_of_validN h) ρ

end Circ

end

end NoFourMUBs.Kronecker

namespace NoFourMUBs.PRM.Coverage.StripId

open NoFourMUBs.Kronecker

variable {n m : ℕ} {C : Ctx n m}

/-- The dense test on both components of a `QF`. -/
noncomputable def qvalidD (x : QF C) : Bool := x.x0.num.validN && x.x1.num.validN

theorem QF.eq_of_validD {ρ : Fin n → ℂ} {ζ : ℂ} (h : QF.Good C ρ ζ) {x y : QF C}
    (hx : qvalidD (x - y) = true) : x.val ρ ζ = y.val ρ ζ := by
  simp only [qvalidD, Bool.and_eq_true] at hx
  have e : (x - y).val ρ ζ = 0 := by
    rw [QF.val, Frac.val, Frac.val, Circ.eval_eq_zero_of_validN hx.1, Circ.eval_eq_zero_of_validN hx.2]
    simp
  rw [QF.val_sub h] at e
  exact sub_eq_zero.1 e

end NoFourMUBs.PRM.Coverage.StripId
