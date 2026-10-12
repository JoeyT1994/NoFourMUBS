import NoFourMUBs.Identity.Sparse

/-!
# Rational expressions over a factor table, with one quadratic element

A context fixes integer polynomial circuits `f k` (the permitted denominators) and a relation
`z² = A z + B` with `A`, `B` fractions.  A `Frac` is `num / ∏ f k ^ den k`; a `QF` is
`x₀ + x₁ z` with `x₀`, `x₁` fractions.  The operations build circuits, and `val` evaluates in a
field.  Each operation commutes with `val` when the factors do not vanish and `z` satisfies its
relation.  So an identity among such expressions holds once the two numerator circuits of
their difference pass `Circ.valid`.
-/

namespace NoFourMUBs.Kronecker

noncomputable section

open Circ

variable {n m : ℕ}

/-- The factor table and the relation `z² = A z + B`. -/
structure Ctx (n m : ℕ) where
  f : Fin m → Circ n
  A : Circ n × (Fin m → ℕ)
  B : Circ n × (Fin m → ℕ)

/-- The fraction `num / ∏ f k ^ den k`. -/
structure Frac (C : Ctx n m) where
  num : Circ n
  den : Fin m → ℕ

/-- Multiply a circuit by `∏ f k ^ d k`, skipping trivial factors. -/
def Ctx.scale (C : Ctx n m) (c : Circ n) (d : Fin m → ℕ) : Circ n :=
  (List.finRange m).foldl
    (fun acc k => cond (Nat.beq (d k) 0) acc (cond (Nat.beq (d k) 1) (acc * C.f k) (acc * C.f k ^ d k))) c

namespace Frac

variable {C : Ctx n m}

def ofCirc (c : Circ n) : Frac C := ⟨c, fun _ => 0⟩

instance : Coe (Circ n) (Frac C) := ⟨ofCirc⟩

def add (x y : Frac C) : Frac C :=
  let E := fun k => max (x.den k) (y.den k)
  ⟨C.scale x.num (fun k => E k - x.den k) + C.scale y.num (fun k => E k - y.den k), E⟩

def sub (x y : Frac C) : Frac C :=
  let E := fun k => max (x.den k) (y.den k)
  ⟨C.scale x.num (fun k => E k - x.den k) - C.scale y.num (fun k => E k - y.den k), E⟩

def mul (x y : Frac C) : Frac C := ⟨x.num * y.num, fun k => x.den k + y.den k⟩

def neg (x : Frac C) : Frac C := ⟨-x.num, x.den⟩

/-- `1 / f k`. -/
def inv (C : Ctx n m) (k : Fin m) : Frac C := ⟨1, fun j => cond (Nat.beq j.val k.val) 1 0⟩

instance : Add (Frac C) := ⟨add⟩
instance : Sub (Frac C) := ⟨sub⟩
instance : Mul (Frac C) := ⟨mul⟩
instance : Neg (Frac C) := ⟨neg⟩
instance {k : ℕ} : OfNat (Frac C) k := ⟨ofCirc (const k)⟩

def pow (x : Frac C) : ℕ → Frac C
  | 0 => 1
  | k + 1 => pow x k * x

instance : HPow (Frac C) ℕ (Frac C) := ⟨pow⟩

/-! ### Semantics -/

variable {F : Type*} [Field F] (ρ : Fin n → F)

/-- The denominator `∏ f k ^ d k`. -/
def dval (C : Ctx n m) (d : Fin m → ℕ) : F := ∏ k, (C.f k).eval ρ ^ d k

def val (x : Frac C) : F := x.num.eval ρ / dval ρ C x.den

theorem eval_scale (c : Circ n) (d : Fin m → ℕ) :
    (C.scale c d).eval ρ = c.eval ρ * dval ρ C d := by
  have key : ∀ (l : List (Fin m)) (c : Circ n),
      (l.foldl (fun acc k => cond (Nat.beq (d k) 0) acc
        (cond (Nat.beq (d k) 1) (acc * C.f k) (acc * C.f k ^ d k))) c).eval ρ =
        c.eval ρ * (l.map fun k => (C.f k).eval ρ ^ d k).prod := by
    intro l
    induction l with
    | nil => intro c; simp
    | cons k l ih =>
      intro c
      rw [List.foldl_cons, ih, List.map_cons, List.prod_cons]
      cases h0 : Nat.beq (d k) 0
      · cases h1 : Nat.beq (d k) 1
        · simp only [cond_false, eval_mul', eval_pow']; ring
        · have : d k = 1 := Nat.eq_of_beq_eq_true h1
          simp only [cond_false, cond_true, eval_mul', this, pow_one]; ring
      · have : d k = 0 := Nat.eq_of_beq_eq_true h0
        simp [this]
  rw [Ctx.scale, key, dval, ← List.ofFn_eq_map, List.prod_ofFn]

variable {ρ}

theorem dval_ne_zero (hC : ∀ k, (C.f k).eval ρ ≠ 0) (d : Fin m → ℕ) : dval ρ C d ≠ 0 :=
  Finset.prod_ne_zero_iff.2 fun k _ => pow_ne_zero _ (hC k)

theorem dval_add (d e : Fin m → ℕ) : dval ρ C (fun k => d k + e k) = dval ρ C d * dval ρ C e := by
  simp only [dval, pow_add, Finset.prod_mul_distrib]

theorem dval_split (d e : Fin m → ℕ) (h : ∀ k, d k ≤ e k) :
    dval ρ C e = dval ρ C (fun k => e k - d k) * dval ρ C d := by
  rw [← dval_add]; congr 1; funext k; have := h k; omega

theorem val_add (hC : ∀ k, (C.f k).eval ρ ≠ 0) (x y : Frac C) : (x + y).val ρ = x.val ρ + y.val ρ := by
  change (add x y).val ρ = _
  simp only [add, val, eval_add', eval_scale]
  have e1 := dval_split (ρ := ρ) (C := C) x.den (fun k => max (x.den k) (y.den k)) (fun k => le_max_left _ _)
  have e2 := dval_split (ρ := ρ) (C := C) y.den (fun k => max (x.den k) (y.den k)) (fun k => le_max_right _ _)
  have h1 := dval_ne_zero hC (C := C) (fun k => max (x.den k) (y.den k) - x.den k)
  have h2 := dval_ne_zero hC (C := C) (fun k => max (x.den k) (y.den k) - y.den k)
  have h3 := dval_ne_zero hC (C := C) x.den
  have h4 := dval_ne_zero hC (C := C) y.den
  rw [e1] at e2 ⊢
  rw [div_add_div _ _ h3 h4, div_eq_div_iff (mul_ne_zero h1 h3) (mul_ne_zero h3 h4)]
  linear_combination (-(y.num.eval ρ) * dval ρ C x.den) * e2

theorem val_sub (hC : ∀ k, (C.f k).eval ρ ≠ 0) (x y : Frac C) : (x - y).val ρ = x.val ρ - y.val ρ := by
  change (sub x y).val ρ = _
  simp only [sub, val, eval_sub', eval_scale]
  have e1 := dval_split (ρ := ρ) (C := C) x.den (fun k => max (x.den k) (y.den k)) (fun k => le_max_left _ _)
  have e2 := dval_split (ρ := ρ) (C := C) y.den (fun k => max (x.den k) (y.den k)) (fun k => le_max_right _ _)
  have h1 := dval_ne_zero hC (C := C) (fun k => max (x.den k) (y.den k) - x.den k)
  have h3 := dval_ne_zero hC (C := C) x.den
  have h4 := dval_ne_zero hC (C := C) y.den
  rw [e1] at e2 ⊢
  rw [div_sub_div _ _ h3 h4, div_eq_div_iff (mul_ne_zero h1 h3) (mul_ne_zero h3 h4)]
  linear_combination (y.num.eval ρ * dval ρ C x.den) * e2

theorem val_mul (x y : Frac C) : (x * y).val ρ = x.val ρ * y.val ρ := by
  change (mul x y).val ρ = _
  simp only [mul, val, eval_mul', dval_add]
  rw [mul_div_mul_comm]

theorem val_neg (x : Frac C) : (-x).val ρ = -x.val ρ := by
  change (neg x).val ρ = _
  simp only [neg, val, eval_neg', neg_div]

theorem val_ofCirc (c : Circ n) : (ofCirc c : Frac C).val ρ = c.eval ρ := by
  simp [ofCirc, val, dval]

theorem val_ofNat (k : ℕ) : (OfNat.ofNat k : Frac C).val ρ = k := by
  change (ofCirc (const k) : Frac C).val ρ = _
  rw [val_ofCirc]; simp

theorem val_inv (k : Fin m) : (inv C k).val ρ = ((C.f k).eval ρ)⁻¹ := by
  simp only [inv, val, eval_one', dval]
  rw [Finset.prod_eq_single k]
  · simp [Nat.beq_refl]
  · intro j _ hj
    have : Nat.beq j.val k.val = false :=
      Bool.eq_false_iff.2 (fun h' => hj (Fin.ext (Nat.eq_of_beq_eq_true h')))
    simp [this]
  · simp

theorem val_pow (x : Frac C) (k : ℕ) : (x ^ k).val ρ = x.val ρ ^ k := by
  change (pow x k).val ρ = _
  induction k with
  | zero => change (OfNat.ofNat 1 : Frac C).val ρ = _; rw [val_ofNat]; simp
  | succ k ih => simp only [pow]; rw [val_mul, ih, pow_succ]

/-- A fraction whose numerator passes the test is zero. -/
theorem val_eq_zero {x : Frac C} {ns : ℕ} (h : x.num.valid ns = true) : x.val ρ = 0 := by
  rw [val, eval_eq_zero_of_valid h, zero_div]

end Frac

/-- `x₀ + x₁ z`. -/
structure QF (C : Ctx n m) where
  x0 : Frac C
  x1 : Frac C

namespace QF

variable {C : Ctx n m}

def ofFrac (x : Frac C) : QF C := ⟨x, 0⟩

instance : Coe (Frac C) (QF C) := ⟨ofFrac⟩

/-- The element `z`. -/
def z : QF C := ⟨0, 1⟩

def relA (C : Ctx n m) : Frac C := ⟨C.A.1, C.A.2⟩
def relB (C : Ctx n m) : Frac C := ⟨C.B.1, C.B.2⟩

instance : Add (QF C) := ⟨fun x y => ⟨x.x0 + y.x0, x.x1 + y.x1⟩⟩
instance : Sub (QF C) := ⟨fun x y => ⟨x.x0 - y.x0, x.x1 - y.x1⟩⟩
instance : Neg (QF C) := ⟨fun x => ⟨-x.x0, -x.x1⟩⟩
instance : Mul (QF C) := ⟨fun x y =>
  let t := x.x1 * y.x1
  ⟨x.x0 * y.x0 + t * relB C, x.x0 * y.x1 + x.x1 * y.x0 + t * relA C⟩⟩
instance {k : ℕ} : OfNat (QF C) k := ⟨ofFrac (OfNat.ofNat k)⟩

def pow (x : QF C) : ℕ → QF C
  | 0 => 1
  | k + 1 => pow x k * x

instance : HPow (QF C) ℕ (QF C) := ⟨pow⟩

variable {F : Type*} [Field F] (ρ : Fin n → F) (ζ : F)

def val (x : QF C) : F := x.x0.val ρ + x.x1.val ρ * ζ

/-- The hypotheses under which `val` is a homomorphism. -/
structure Good (C : Ctx n m) (ρ : Fin n → F) (ζ : F) : Prop where
  ne : ∀ k, (C.f k).eval ρ ≠ 0
  rel : ζ ^ 2 = (relA C).val ρ * ζ + (relB C).val ρ

variable {ρ ζ}

theorem val_add (h : Good C ρ ζ) (x y : QF C) : (x + y).val ρ ζ = x.val ρ ζ + y.val ρ ζ := by
  change (x.x0 + y.x0).val ρ + (x.x1 + y.x1).val ρ * ζ = _
  rw [Frac.val_add h.ne, Frac.val_add h.ne, val, val]; ring

theorem val_sub (h : Good C ρ ζ) (x y : QF C) : (x - y).val ρ ζ = x.val ρ ζ - y.val ρ ζ := by
  change (x.x0 - y.x0).val ρ + (x.x1 - y.x1).val ρ * ζ = _
  rw [Frac.val_sub h.ne, Frac.val_sub h.ne, val, val]; ring

theorem val_neg (x : QF C) : (-x).val ρ ζ = -x.val ρ ζ := by
  change (-x.x0).val ρ + (-x.x1).val ρ * ζ = _
  rw [Frac.val_neg, Frac.val_neg, val]; ring

theorem val_mul (h : Good C ρ ζ) (x y : QF C) : (x * y).val ρ ζ = x.val ρ ζ * y.val ρ ζ := by
  change (x.x0 * y.x0 + x.x1 * y.x1 * relB C).val ρ +
    (x.x0 * y.x1 + x.x1 * y.x0 + x.x1 * y.x1 * relA C).val ρ * ζ = _
  simp only [Frac.val_add h.ne, Frac.val_mul, val]
  linear_combination (-(x.x1.val ρ * y.x1.val ρ)) * h.rel

theorem val_ofFrac (x : Frac C) : (ofFrac x : QF C).val ρ ζ = x.val ρ := by
  change x.val ρ + (OfNat.ofNat 0 : Frac C).val ρ * ζ = _
  rw [Frac.val_ofNat]; simp

theorem val_z : (z : QF C).val ρ ζ = ζ := by
  change (OfNat.ofNat 0 : Frac C).val ρ + (OfNat.ofNat 1 : Frac C).val ρ * ζ = _
  rw [Frac.val_ofNat, Frac.val_ofNat]; simp

theorem val_ofNat (k : ℕ) : (OfNat.ofNat k : QF C).val ρ ζ = k := by
  change (ofFrac (OfNat.ofNat k)).val ρ ζ = _
  rw [val_ofFrac, Frac.val_ofNat]

theorem val_pow (h : Good C ρ ζ) (x : QF C) (k : ℕ) : (x ^ k).val ρ ζ = x.val ρ ζ ^ k := by
  change (pow x k).val ρ ζ = _
  induction k with
  | zero => change (OfNat.ofNat 1 : QF C).val ρ ζ = _; rw [val_ofNat]; simp
  | succ k ih => simp only [pow]; rw [val_mul h, ih, pow_succ]

/-- The test for `x = 0`: both numerators pass `Circ.valid`. -/
def valid (x : QF C) (ns : ℕ) : Bool := x.x0.num.valid ns && x.x1.num.valid ns

theorem val_eq_zero {x : QF C} {ns : ℕ} (hx : x.valid ns = true) : x.val ρ ζ = 0 := by
  simp only [valid, Bool.and_eq_true] at hx
  rw [val, Frac.val_eq_zero hx.1, Frac.val_eq_zero hx.2]; ring

end QF

end


end NoFourMUBs.Kronecker
