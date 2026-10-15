import Mathlib

/-!
# Positivity of integer polynomials on intervals, decided by the kernel

A polynomial is a coefficient list `p : List ℤ` (constant term first), with value `peval p x`.

**Piece test.**  For the interval `[α/D, β/D]` put `G(u) = D ^ n · p((α + (β − α) u)/D)`, an integer
polynomial (`compT`), and `P(y) = (1 + y) ^ m · G(y/(1 + y))` (`bern`, `m = deg G`).  The
coefficients of `P` are the (scaled) Bernstein coefficients of `p` on the interval.  If they are all
`≥ 0` and one is `> 0`, then `P > 0` on `y > 0`, so `p > 0` on the open interval (`pieceOK`).

**Covers.**  `coverOK p D a [b₁, …, bₘ]` checks the pieces `[a, b₁], [b₁, b₂], …` (all over `D`)
and the values at the interior cut points, giving `p > 0` on `(a/D, bₘ/D)`.

**Unbounded ranges.**  `p > 0` on `(1, ∞)` follows from positivity of the reversed list on `(0, 1)`.

All arithmetic is exact integer arithmetic, so `decide +kernel` evaluates the tests.

`Fac`/`Reg`/`facOK` package such certificates for a factor `F ^ e` of a polynomial on an open
range: either `F > 0` there by a cover, or `e` is even and `F ≠ 0` is supplied separately.
-/

namespace NoFourMUBs.RootFree

/-- Horner value of a coefficient list (constant term first). -/
def peval {R : Type*} [CommRing R] (p : List ℤ) (x : R) : R :=
  p.foldr (fun (a : ℤ) (acc : R) => (a : R) + x * acc) 0

section evalLemmas
variable {R : Type*} [CommRing R]

@[simp] theorem peval_nil (x : R) : peval [] x = 0 := rfl

@[simp] theorem peval_cons (a : ℤ) (p : List ℤ) (x : R) :
    peval (a :: p) x = a + x * peval p x := rfl

theorem peval_append_single (l : List ℤ) (a : ℤ) (x : R) :
    peval (l ++ [a]) x = peval l x + a * x ^ l.length := by
  induction l with
  | nil => simp
  | cons b l ih => simp only [List.cons_append, peval_cons, ih, List.length_cons, pow_succ]; ring

/-- The value of a list at an integer point is the cast of its integer value. -/
theorem peval_intCast (p : List ℤ) (z : ℤ) : peval p (z : R) = ((peval p z : ℤ) : R) := by
  induction p with
  | nil => simp
  | cons a p ih => simp [ih]

end evalLemmas

/-! ### Exact list arithmetic -/

/-- Sum of two coefficient lists. -/
def addL : List ℤ → List ℤ → List ℤ
  | [], q => q
  | a :: p, [] => a :: p
  | a :: p, b :: q => (a + b) :: addL p q

/-- Scalar multiple. -/
def smulL (c : ℤ) : List ℤ → List ℤ
  | [] => []
  | a :: p => (c * a) :: smulL c p

/-- `(α + β y) · G`, given the previous coefficient `prev` (start with `0`). -/
def mulLinAux (α β : ℤ) : ℤ → List ℤ → List ℤ
  | prev, [] => [β * prev]
  | prev, g :: G => (α * g + β * prev) :: mulLinAux α β g G

/-- `(α + β y) · G`. -/
def mulLin (α β : ℤ) (G : List ℤ) : List ℤ := mulLinAux α β 0 G

/-- `compT α β D p = (G, D ^ p.length)` where `G(u) = D ^ p.length · p((α + β u)/D)`. -/
def compT (α β D : ℤ) : List ℤ → List ℤ × ℤ
  | [] => ([], 1)
  | a :: p =>
    match compT α β D p with
    | (G, s) => (addL [a * (s * D)] (mulLin α β G), s * D)

/-- The binomial row of `(1 + y) ^ m`. -/
def row : ℕ → List ℤ
  | 0 => [1]
  | m + 1 => mulLin 1 1 (row m)

/-- `bern G m = (1 + y) ^ m · G(y/(1 + y))`, for `G.length ≤ m + 1`. -/
def bern : List ℤ → ℕ → List ℤ
  | [], _ => []
  | a :: G, m => addL (smulL a (row m)) (0 :: bern G (m - 1))

/-- All entries are `≥ 0`. -/
def allNonneg : List ℤ → Bool
  | [] => true
  | a :: p => decide (0 ≤ a) && allNonneg p

/-- Some entry is `> 0`. -/
def anyPos : List ℤ → Bool
  | [] => false
  | a :: p => decide (0 < a) || anyPos p

/-- The test on one piece `[α/D, β/D]`. -/
def pieceOK (p : List ℤ) (α β D : ℤ) : Bool :=
  decide (α < β) &&
    (match compT α (β - α) D p with
     | (G, _) => match bern G (G.length - 1) with
       | P => allNonneg P && anyPos P)

/-- `D ^ n · p(b/D) > 0`. -/
def valPos (p : List ℤ) (b D : ℤ) : Bool :=
  decide (0 < ((compT b 0 D p).1.headD 0))

/-- The last entry of `a :: l`. -/
def lastOr : ℤ → List ℤ → ℤ
  | a, [] => a
  | _, b :: l => lastOr b l

/-- A cover of `[a/D, last/D]` by pieces with positive values at the interior cuts. -/
def coverOK (p : List ℤ) (D : ℤ) : ℤ → List ℤ → Bool
  | _, [] => false
  | a, b :: rest => pieceOK p a b D && (rest.isEmpty || (valPos p b D && coverOK p D b rest))

/-! ### Soundness -/

section sound
variable {R : Type*} [CommRing R]

theorem peval_addL (p q : List ℤ) (x : R) : peval (addL p q) x = peval p x + peval q x := by
  induction p generalizing q with
  | nil => simp [addL]
  | cons a p ih =>
    cases q with
    | nil => simp [addL]
    | cons b q => simp only [addL, peval_cons, ih, Int.cast_add]; ring

theorem peval_smulL (c : ℤ) (p : List ℤ) (x : R) : peval (smulL c p) x = c * peval p x := by
  induction p with
  | nil => simp [smulL]
  | cons a p ih => simp only [smulL, peval_cons, ih, Int.cast_mul]; ring

theorem peval_mulLinAux (α β prev : ℤ) (G : List ℤ) (x : R) :
    peval (mulLinAux α β prev G) x = β * prev + (α + β * x) * peval G x := by
  induction G generalizing prev with
  | nil => simp [mulLinAux]
  | cons g G ih => simp only [mulLinAux, peval_cons, ih, Int.cast_add, Int.cast_mul]; ring

theorem peval_mulLin (α β : ℤ) (G : List ℤ) (x : R) :
    peval (mulLin α β G) x = (α + β * x) * peval G x := by
  simp [mulLin, peval_mulLinAux]

theorem compT_snd (α β D : ℤ) (p : List ℤ) : (compT α β D p).2 = D ^ p.length := by
  induction p with
  | nil => simp [compT]
  | cons a p ih =>
    show (match compT α β D p with | (G, s) => (addL [a * (s * D)] (mulLin α β G), s * D)).2 = _
    rcases h : compT α β D p with ⟨G, s⟩
    rw [h] at ih
    simp only at ih ⊢
    rw [ih, List.length_cons, pow_succ]

theorem peval_compT (α β D : ℤ) (p : List ℤ) (x u : R) (hx : (D : R) * x = α + β * u) :
    peval (compT α β D p).1 u = (D : R) ^ p.length * peval p x := by
  induction p with
  | nil => simp [compT]
  | cons a p ih =>
    have hs := compT_snd α β D p
    show peval (match compT α β D p with
      | (G, s) => (addL [a * (s * D)] (mulLin α β G), s * D)).1 u = _
    rcases h : compT α β D p with ⟨G, s⟩
    rw [h] at ih hs
    simp only at ih hs ⊢
    rw [peval_addL, peval_mulLin, ih, hs]
    simp only [peval_cons, peval_nil, mul_zero, add_zero, Int.cast_mul, Int.cast_pow,
      List.length_cons, pow_succ]
    linear_combination (↑D ^ p.length * peval p x) * hx.symm

theorem peval_row (m : ℕ) (y : R) : peval (row m) y = (1 + y) ^ m := by
  induction m with
  | zero => simp [row]
  | succ m ih => rw [row, peval_mulLin, ih]; simp; ring

theorem peval_bern {F : Type*} [Field F] (G : List ℤ) (m : ℕ) (hG : G.length ≤ m + 1) (y : F)
    (hy : 1 + y ≠ 0) : (1 + y) ^ m * peval G (y / (1 + y)) = peval (bern G m) y := by
  induction G generalizing m with
  | nil => simp [bern]
  | cons a G ih =>
    simp only [bern, peval_addL, peval_smulL, peval_row, peval_cons, Int.cast_zero, zero_add]
    rcases m with _ | m
    · have : G = [] := List.eq_nil_of_length_eq_zero (by simp only [List.length_cons] at hG; omega)
      subst this; simp [bern]
    · simp only [List.length_cons] at hG
      have := ih m (by omega)
      simp only [Nat.add_sub_cancel]
      rw [← this]
      field_simp
      ring

theorem peval_nonneg {P : List ℤ} (h : allNonneg P = true) {y : ℝ} (hy : 0 ≤ y) :
    0 ≤ peval P y := by
  induction P with
  | nil => simp
  | cons a P ih =>
    simp only [allNonneg, Bool.and_eq_true, decide_eq_true_eq] at h
    simp only [peval_cons]
    have := ih h.2
    have ha : (0 : ℝ) ≤ a := by exact_mod_cast h.1
    positivity

theorem peval_pos {P : List ℤ} (h : allNonneg P = true) (h' : anyPos P = true) {y : ℝ}
    (hy : 0 < y) : 0 < peval P y := by
  induction P with
  | nil => simp [anyPos] at h'
  | cons a P ih =>
    simp only [allNonneg, Bool.and_eq_true, decide_eq_true_eq] at h
    simp only [anyPos, Bool.or_eq_true, decide_eq_true_eq] at h'
    simp only [peval_cons]
    have ha : (0 : ℝ) ≤ a := by exact_mod_cast h.1
    rcases h' with h' | h'
    · have : (0 : ℝ) < a := by exact_mod_cast h'
      have := peval_nonneg h.2 hy.le
      positivity
    · have := ih h.2 h'
      positivity

/-- **Soundness of the piece test.** -/
theorem pos_of_pieceOK {p : List ℤ} {α β D : ℤ} (hD : 0 < D) (h : pieceOK p α β D = true)
    {x : ℝ} (h1 : (α : ℝ) < D * x) (h2 : (D : ℝ) * x < β) : 0 < peval p x := by
  simp only [pieceOK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨hab, h⟩ := h
  rcases hc : compT α (β - α) D p with ⟨G, s⟩
  rw [hc] at h
  simp only at h
  have hba : (0 : ℝ) < β - α := by exact_mod_cast sub_pos.2 hab
  set u : ℝ := (D * x - α) / (β - α) with hu
  have hu0 : 0 < u := div_pos (by linarith) hba
  have hu1 : u < 1 := (div_lt_one hba).2 (by linarith)
  have hxu : (D : ℝ) * x = α + ((β - α : ℤ) : ℝ) * u := by
    rw [hu]; push_cast; field_simp; ring
  have hG := peval_compT α (β - α) D p x u hxu
  rw [hc] at hG
  simp only at hG
  set y : ℝ := u / (1 - u)
  have h1u : (0 : ℝ) < 1 - u := by linarith
  have hy : 0 < y := div_pos hu0 h1u
  have hy1 : 1 + y ≠ 0 := by positivity
  have hyu : y / (1 + y) = u := by
    simp only [y]; field_simp; ring
  have hB := peval_bern G (G.length - 1) (by omega) y hy1
  rw [hyu, hG] at hB
  have hP := peval_pos h.1 h.2 hy
  rw [← hB] at hP
  have hDpos : (0 : ℝ) < (D : ℝ) ^ p.length := pow_pos (by exact_mod_cast hD) _
  have : 0 < (D : ℝ) ^ p.length * peval p x := pos_of_mul_pos_right hP (by positivity)
  exact pos_of_mul_pos_right this hDpos.le

theorem pos_of_valPos {p : List ℤ} {b D : ℤ} (hD : 0 < D) (h : valPos p b D = true) {x : ℝ}
    (hx : (D : ℝ) * x = b) : 0 < peval p x := by
  simp only [valPos, decide_eq_true_eq] at h
  have hG := peval_compT b 0 D p x (0 : ℝ) (by simp [hx])
  have h0 : ∀ G : List ℤ, peval G (0 : ℝ) = (G.headD 0 : ℤ) := by
    intro G; cases G <;> simp
  rw [h0] at hG
  have : (0 : ℝ) < (D : ℝ) ^ p.length * peval p x := by rw [← hG]; exact_mod_cast h
  exact pos_of_mul_pos_right this (pow_pos (by exact_mod_cast hD) _).le

/-- **Soundness of covers.** -/
theorem pos_of_coverOK {p : List ℤ} {D : ℤ} (hD : 0 < D) :
    ∀ {a : ℤ} {l : List ℤ}, coverOK p D a l = true → ∀ {x : ℝ}, (a : ℝ) < D * x →
      (D : ℝ) * x < (lastOr a l : ℤ) → 0 < peval p x := by
  intro a l
  induction l generalizing a with
  | nil => intro h; simp [coverOK] at h
  | cons b rest ih =>
    intro h x h1 h2
    simp only [coverOK, Bool.and_eq_true, Bool.or_eq_true] at h
    obtain ⟨hp, hr⟩ := h
    rcases lt_trichotomy ((D : ℝ) * x) b with hlt | heq | hgt
    · exact pos_of_pieceOK hD hp h1 hlt
    · rcases hr with hr | hr
      · have : rest = [] := by simpa using hr
        subst this; simp [lastOr] at h2; linarith
      · exact pos_of_valPos hD hr.1 heq
    · rcases hr with hr | hr
      · have : rest = [] := by simpa using hr
        subst this; simp [lastOr] at h2; linarith
      · refine ih hr.2 hgt ?_
        cases rest with
        | nil => simp [coverOK] at hr
        | cons c rest' => exact h2

theorem peval_reverse (p : List ℤ) {u : ℝ} (hu : u ≠ 0) :
    u * peval p.reverse u = u ^ p.length * peval p u⁻¹ := by
  induction p with
  | nil => simp
  | cons a p ih =>
    rw [List.reverse_cons, peval_append_single, List.length_reverse, mul_add, ih,
      List.length_cons, peval_cons]
    field_simp
    ring

/-- Positivity on `(1, ∞)` from positivity of the reversed list on `(0, 1)`. -/
theorem pos_of_reverse {p : List ℤ} (h : ∀ u : ℝ, 0 < u → u < 1 → 0 < peval p.reverse u)
    {x : ℝ} (hx : 1 < x) : 0 < peval p x := by
  have hx0 : 0 < x := by linarith
  have hu0 : 0 < x⁻¹ := inv_pos.2 hx0
  have hu1 : x⁻¹ < 1 := inv_lt_one_of_one_lt₀ hx
  have e := peval_reverse p hu0.ne'
  rw [inv_inv] at e
  have : 0 < x⁻¹ * peval p.reverse x⁻¹ := mul_pos hu0 (h _ hu0 hu1)
  rw [e] at this
  exact pos_of_mul_pos_right this (pow_pos hu0 _).le

end sound

/-! ### Certificates for the factors of a polynomial on an open range -/

/-- How a factor `F ^ e` is shown positive: a cover (of `F`, or of `F` reversed on an unbounded
range), or an even exponent together with `F ≠ 0` supplied by the caller. -/
inductive Cert where
  | cover (D a : ℤ) (cuts : List ℤ)
  | evenNZ

/-- A factor `poly ^ exp` with its certificate. -/
structure Fac where
  poly : List ℤ
  exp : ℕ
  cert : Cert

/-- An open range: `(lo/d, hi/d)` or `(1, ∞)`. -/
inductive Reg where
  | fin (lo hi d : ℤ)
  | inf

def Reg.mem : Reg → ℝ → Prop
  | .fin lo hi d, x => (lo : ℝ) < d * x ∧ (d : ℝ) * x < hi
  | .inf, x => 1 < x

/-- The test for one factor. -/
def facOK (reg : Reg) (f : Fac) : Bool :=
  match f.cert with
  | .evenNZ => f.exp % 2 == 0
  | .cover D a cuts =>
    decide (0 < D) &&
      match reg with
      | .fin lo hi d => decide (0 < d) && a * d == lo * D && lastOr a cuts * d == hi * D &&
          coverOK f.poly D a cuts
      | .inf => a == 0 && lastOr a cuts == D && coverOK f.poly.reverse D a cuts

theorem pow_pos_of_facOK {reg : Reg} {f : Fac} (h : facOK reg f = true) {x : ℝ} (hx : reg.mem x)
    (hnz : f.cert = .evenNZ → peval f.poly x ≠ 0) : 0 < peval f.poly x ^ f.exp := by
  rcases f with ⟨F, e, c⟩
  cases c with
  | evenNZ =>
    simp only [facOK, beq_iff_eq] at h
    have he : Even e := Nat.even_iff.2 h
    exact he.pow_pos (hnz rfl)
  | cover D a cuts =>
    simp only [facOK, Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨hD, h⟩ := h
    have hDr : (0 : ℝ) < D := by exact_mod_cast hD
    apply pow_pos
    cases reg with
    | fin lo hi d =>
      simp only [Bool.and_eq_true, decide_eq_true_eq, beq_iff_eq] at h
      obtain ⟨⟨⟨hd, ha⟩, hb⟩, hc⟩ := h
      obtain ⟨h1, h2⟩ := hx
      have hdr : (0 : ℝ) < d := by exact_mod_cast hd
      have ha' : (a : ℝ) * d = lo * D := by exact_mod_cast ha
      have hb' : ((lastOr a cuts : ℤ) : ℝ) * d = hi * D := by exact_mod_cast hb
      refine pos_of_coverOK hD hc ?_ ?_
      · have : (a : ℝ) * d < D * x * d := by nlinarith
        exact lt_of_mul_lt_mul_right this hdr.le
      · have : (D : ℝ) * x * d < ((lastOr a cuts : ℤ) : ℝ) * d := by nlinarith
        exact lt_of_mul_lt_mul_right this hdr.le
    | inf =>
      simp only [Bool.and_eq_true, beq_iff_eq] at h
      obtain ⟨⟨ha, hb⟩, hc⟩ := h
      refine pos_of_reverse (fun u hu0 hu1 => pos_of_coverOK hD hc ?_ ?_) hx
      · rw [ha]; simp; positivity
      · rw [hb]; nlinarith

end NoFourMUBs.RootFree
