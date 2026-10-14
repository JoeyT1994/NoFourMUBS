import NoFourMUBs.Identity.Frac

/-!
# A faster form of the sparse test

`Circ.validR` decides the same test as `Circ.valid`, with the circuit traversals (degrees, coefficient
bound, hybrid value) written with the recursor `Circ.rec` instead of structural recursion, which the
kernel reduces much faster.  It also skips the bound comparisons of `checkSparse`, which hold by
construction.  Soundness is reduced to `toPoly_eq_zero_of_checkSparse`.
-/

namespace NoFourMUBs.Kronecker

noncomputable section

variable {n : ℕ}

namespace Circ

/-- `deg`, by the recursor (variables compared by index). -/
def degR (j : ℕ) (c : Circ n) : ℕ :=
  Circ.rec (motive := fun _ => ℕ) (fun i => cond (Nat.beq j i.val) 1 0) (fun _ => 0)
    (fun _ _ x y => cond (Nat.ble x y) y x) (fun _ _ x y => cond (Nat.ble x y) y x)
    (fun _ _ x y => x + y) (fun _ k x => k * x) c

/-- The value of `abs` at `1`, by the recursor. -/
def absR (c : Circ n) : ℕ :=
  Circ.rec (motive := fun _ => ℕ) (fun _ => 1) (fun z => z.natAbs)
    (fun _ _ x y => x + y) (fun _ _ x y => x + y) (fun _ _ x y => x * y) (fun _ k x => x ^ k) c

/-- `hyb`, by the recursor. -/
def hybR (key : Fin n → ℕ) (dval : Fin n → ℤ) (sparse : Fin n → Bool) (c : Circ n) : SP :=
  Circ.rec (motive := fun _ => SP)
    (fun i => cond (sparse i) (.cons (key i) 1 .nil)
      (cond (SP.isZero (dval i)) .nil (.cons 0 (dval i) .nil)))
    (fun z => cond (SP.isZero z) .nil (.cons 0 z .nil))
    (fun _ _ x y => SP.add x y) (fun _ _ x y => SP.add x (SP.neg y))
    (fun _ _ x y => SP.mul x y) (fun _ k x => SP.pow x k) c

def bitsR (c : Circ n) : ℕ := Nat.log2 c.absR + 1

/-- The kernel-decided test, with the first `ns` variables sparse. -/
def validR (c : Circ n) (ns : ℕ) : Bool :=
  decide (ns ≤ n) &&
    SP.allZero (c.hybR (key (fun i => c.degR i.val) ns) (kpt (2 ^ c.bitsR) (fun i => c.degR i.val))
      (fun i => Nat.blt i.val ns))

theorem cond_ble (x y : ℕ) : cond (Nat.ble x y) y x = max x y := by
  cases h : Nat.ble x y
  · have : ¬ x ≤ y := fun hle => by rw [Nat.ble_eq_true_of_le hle] at h; exact Bool.false_ne_true h.symm
    simp only [cond_false]; omega
  · have := Nat.le_of_ble_eq_true h
    simp only [cond_true]; omega

theorem degR_eq (j : Fin n) (c : Circ n) : c.degR j.val = c.deg j := by
  induction c with
  | var i =>
    change cond (Nat.beq j.val i.val) 1 0 = _
    cases hb : Nat.beq j.val i.val
    · have : j ≠ i := fun e => by subst e; simp [Nat.beq_refl] at hb
      simp [deg, this]
    · have := Fin.ext (Nat.eq_of_beq_eq_true hb); simp [deg, this]
  | const z => rfl
  | add a b ha hb =>
    change cond (Nat.ble (a.degR j.val) (b.degR j.val)) (b.degR j.val) (a.degR j.val) = _
    rw [cond_ble, ha, hb]; rfl
  | sub a b ha hb =>
    change cond (Nat.ble (a.degR j.val) (b.degR j.val)) (b.degR j.val) (a.degR j.val) = _
    rw [cond_ble, ha, hb]; rfl
  | mul a b ha hb => change a.degR j.val + b.degR j.val = _; rw [ha, hb]; rfl
  | pow a k ha => change k * a.degR j.val = _; rw [ha]; rfl

theorem absR_eq (c : Circ n) : c.abs.eval (fun _ => (1 : ℤ)) = c.absR := by
  induction c with
  | var i => rfl
  | const z => simp [abs, absR]
  | add a b ha hb => change a.abs.eval _ + b.abs.eval _ = _; rw [ha, hb]; rfl
  | sub a b ha hb => change a.abs.eval _ + b.abs.eval _ = _; rw [ha, hb]; rfl
  | mul a b ha hb => change a.abs.eval _ * b.abs.eval _ = _; rw [ha, hb]; rfl
  | pow a k ha => change a.abs.eval _ ^ k = _; rw [ha]; rfl

theorem hybR_eq (key : Fin n → ℕ) (dval : Fin n → ℤ) (sparse : Fin n → Bool) (c : Circ n) :
    c.hybR key dval sparse = c.hyb key dval sparse := by
  induction c with
  | var i => rfl
  | const z => rfl
  | add a b ha hb => change SP.add (a.hybR _ _ _) (b.hybR _ _ _) = _; rw [ha, hb]; rfl
  | sub a b ha hb => change SP.add (a.hybR _ _ _) (SP.neg (b.hybR _ _ _)) = _; rw [ha, hb]; rfl
  | mul a b ha hb => change SP.mul (a.hybR _ _ _) (b.hybR _ _ _) = _; rw [ha, hb]; rfl
  | pow a k ha => change SP.pow (a.hybR _ _ _) k = _; rw [ha]; rfl

theorem checkSparse_of_validR {c : Circ n} {ns : ℕ} (h : c.validR ns = true) :
    c.checkSparse (fun i => c.degR i.val) c.bitsR ns = true := by
  simp only [validR, Bool.and_eq_true, decide_eq_true_eq] at h
  have hD : (fun i : Fin n => c.degR i.val) = fun i => c.deg i := funext fun i => degR_eq i c
  have hK : c.abs.eval (fun _ => (1 : ℤ)) < 2 ^ c.bitsR := by
    rw [absR_eq, bitsR]; exact_mod_cast Nat.lt_log2_self
  simp only [checkSparse, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, List.mem_finRange,
    true_implies]
  refine ⟨⟨⟨⟨by simp [bitsR], h.1⟩, fun i => (degR_eq i c).ge⟩, hK⟩, ?_⟩
  rw [← hybR_eq]; exact h.2

/-- **Soundness** of the fast test. -/
theorem eval_eq_zero_of_validR {c : Circ n} {ns : ℕ} (h : c.validR ns = true)
    {R : Type*} [CommRing R] (ρ : Fin n → R) : c.eval ρ = 0 :=
  eval_eq_zero_of_checkSparse (checkSparse_of_validR h) ρ

end Circ

/-- A fraction whose numerator passes the fast test is zero. -/
theorem Frac.val_eq_zero_of_validR {m : ℕ} {C : Ctx n m} {x : Frac C} {ns : ℕ} (h : x.num.validR ns = true)
    {F : Type*} [Field F] (ρ : Fin n → F) : x.val ρ = 0 := by
  rw [Frac.val, Circ.eval_eq_zero_of_validR h, zero_div]

end

end NoFourMUBs.Kronecker
