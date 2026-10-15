import NoFourMUBs.Record
import KernelAtlas.Trig

/-!
# A kernel-decided checker for the Stage C vector-bin tree (direct tests)

This file turns the **vector-bin cover with the direct single-vector test** of Stage C (`STAGEC.md` C1, C2(a);
`stagec.py: bins, single_tests`) into a Boolean function on integers that `decide +kernel` evaluates, and proves
that a `true` answer yields the `htree`/`hleaf` content of `StageCCert` for the rejected bins.

## Arithmetic

Complex numbers are Gaussian integers at scale `Z = 2^p`, stored as naturals with an offset (`V12`: six complex
numbers = twelve naturals).  For a bin with midpoint `u = (0, k₁, …, k₅)/192`, the column sums
`Σ_i = Σ_j e(u_j) exp(−i P_ji) = √6 S_i` are approximated by `acc = W0 + v₁ + ⋯ + v₅`, where `v_m` is the value
stored at the node of coordinate `m`'s tree (`CT`) with midpoint `k_m`, and every node value is within `ε₁` of the
exact `e(k/192) exp(−i P_mi)` (`NodeOK`; established from the trig enclosures in `Tables.lean`).

## The test (`rejectB`)

For each column, `N_i = |Σ̃_i|²` (exact integer) is compared with thresholds `thi`, `tlo` (per-column direct
test), and then the Frobenius test is applied with the lower bounds
`D_i = ⌊2^q |N_i − 6Z²| / (Z (U_i + ⌈√6 Z⌉))⌋ − e_q ≤ 2^q |‖Σ_i‖ − √6|`, `U_i ≥ √N_i` by two Newton steps.
The thresholds are integers whose validity is a rational inequality (`ParOK`), decided once per Record.

## The traversal (`binOK`, `slabOK`)

Depth `d = 3, 2, 1, 0` is resolution `M = 12, 24, 48, 96` (half-width `2^d/192`).  A bin is rejected, or (if
`d > 0`) all 32 children are checked, or (if `d = 0`) it is handed to `leafOK` (label membership in a complete
Stage C; `true` in the benchmark).  Partial sums are shared between children through β-redexes.

## Soundness (`slabOK_sound`, `topOK_sound`)

Every `β ∈ [0,1]⁵` (with `β₀ = 0`) lies in a bin `(u, a)` that is either rejected for **every** admissible `δ`
(`LeafRej`) or is a depth-0 bin accepted by `leafOK`.  This is exactly `htree` plus the first disjunct of `hleaf`.
-/

open Matrix Hadamard6 Complex

namespace NoFourMUBs.KernelAtlas

open NoFourMUBs.StageC

noncomputable section

/-! ### Data -/

/-- Six complex numbers as twelve offset naturals `(re₀, im₀, …, re₅, im₅)`. -/
structure V12 where
  a0 : ℕ
  b0 : ℕ
  a1 : ℕ
  b1 : ℕ
  a2 : ℕ
  b2 : ℕ
  a3 : ℕ
  b3 : ℕ
  a4 : ℕ
  b4 : ℕ
  a5 : ℕ
  b5 : ℕ

def V12.zero : V12 := ⟨0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0⟩

def V12.add (x y : V12) : V12 :=
  ⟨x.a0 + y.a0, x.b0 + y.b0, x.a1 + y.a1, x.b1 + y.b1, x.a2 + y.a2, x.b2 + y.b2, x.a3 + y.a3, x.b3 + y.b3,
    x.a4 + y.a4, x.b4 + y.b4, x.a5 + y.a5, x.b5 + y.b5⟩

/-- Real and imaginary parts at a column `i : I6` (order `inl 0, inl 1, inl 2, inr 0, inr 1, inr 2`). -/
def V12.re (x : V12) : I6 → ℕ
  | .inl 0 => x.a0 | .inl 1 => x.a1 | .inl 2 => x.a2 | .inr 0 => x.a3 | .inr 1 => x.a4 | .inr 2 => x.a5

def V12.im (x : V12) : I6 → ℕ
  | .inl 0 => x.b0 | .inl 1 => x.b1 | .inl 2 => x.b2 | .inr 0 => x.b3 | .inr 1 => x.b4 | .inr 2 => x.b5

lemma V12.add_re (x y : V12) (i : I6) : (x.add y).re i = x.re i + y.re i := by
  rcases i with i | i <;> fin_cases i <;> rfl

lemma V12.add_im (x y : V12) (i : I6) : (x.add y).im i = x.im i + y.im i := by
  rcases i with i | i <;> fin_cases i <;> rfl

/-- A coordinate tree: node `(k, v, left, right)` at midpoint `k/192`. -/
inductive CT where
  | leaf : CT
  | node (k : ℕ) (v : V12) (l r : CT) : CT

def CT.k (t : CT) : ℕ := CT.rec (motive := fun _ => ℕ) 0 (fun k _ _ _ _ _ => k) t
def CT.v (t : CT) : V12 := CT.rec (motive := fun _ => V12) V12.zero (fun _ v _ _ _ _ => v) t
def CT.l (t : CT) : CT := CT.rec (motive := fun _ => CT) CT.leaf (fun _ _ l _ _ _ => l) t
def CT.r (t : CT) : CT := CT.rec (motive := fun _ => CT) CT.leaf (fun _ _ _ r _ _ => r) t

/-- Per-depth thresholds. -/
structure Thr where
  thi : ℕ
  tlo : ℕ
  thr : ℕ

/-- Per-Record constants of the checker. -/
structure Cfg where
  /-- the offset of one node value (`2^{p+1}`); a bin sum carries `6·boff`. -/
  boff : ℕ
  /-- `Z = 2^p`. -/
  Z : ℕ
  /-- `6 Z²`. -/
  six : ℕ
  /-- `⌈√6 Z⌉` (upper bound). -/
  s6z : ℕ
  /-- `2^q`. -/
  q2 : ℕ
  /-- `⌈E 2^q⌉`. -/
  eq : ℕ
  /-- the row `j = 0` (`e(u₀) = 1`), offset `boff`. -/
  W0 : V12
  lv : ℕ → Thr

/-! ### The test -/

/-- `|a − C|` in `ℕ`. -/
def sqd (C a : ℕ) : ℕ := cond (Nat.ble C a) (a - C) (C - a)

/-- `|re − C|² + |im − C|²`. -/
def nsq (C a b : ℕ) : ℕ := sqd C a * sqd C a + sqd C b * sqd C b

def colRej (t : Thr) (N : ℕ) : Bool := Nat.blt t.thi N || Nat.blt N t.tlo

/-- One Newton step towards `√N` from above: `(x + N/x)/2 + 2`. -/
def newt (N x : ℕ) : ℕ := (x + N / x) / 2 + 2

/-- The lower bound `D` of `2^q |‖Σ‖ − √6|` (see the module doc). -/
def dterm (c : Cfg) (N : ℕ) : ℕ :=
  (c.q2 * sqd c.six N) / (c.Z * (newt N (newt N c.s6z) + c.s6z)) - c.eq

/-- The Frobenius test on the six column values. -/
def frobB (c : Cfg) (t : Thr) (N0 N1 N2 N3 N4 N5 : ℕ) : Bool :=
  Nat.blt t.thr (dterm c N0 * dterm c N0 + dterm c N1 * dterm c N1 + dterm c N2 * dterm c N2 +
    dterm c N3 * dterm c N3 + dterm c N4 * dterm c N4 + dterm c N5 * dterm c N5)

def rejN (c : Cfg) (t : Thr) (N0 N1 N2 N3 N4 N5 : ℕ) : Bool :=
  colRej t N0 || (colRej t N1 || (colRej t N2 || (colRej t N3 || (colRej t N4 || (colRej t N5 ||
    frobB c t N0 N1 N2 N3 N4 N5)))))

/-- **The bin test.** -/
def rejectB (c : Cfg) (t : Thr) (acc : V12) : Bool :=
  rejN c t (nsq (6 * c.boff) acc.a0 acc.b0) (nsq (6 * c.boff) acc.a1 acc.b1) (nsq (6 * c.boff) acc.a2 acc.b2)
    (nsq (6 * c.boff) acc.a3 acc.b3) (nsq (6 * c.boff) acc.a4 acc.b4) (nsq (6 * c.boff) acc.a5 acc.b5)

/-! ### The traversal

Each layer of the 32-fold split is a separate small constant, so that the kernel instantiates only small bodies
and every partial sum is a single shared term. -/

/-- The sum `W0 + v₁ + ⋯ + v₅` of a bin. -/
def sumAcc (W0 : V12) (t1 t2 t3 t4 t5 : CT) : V12 :=
  ((((W0.add t1.v).add t2.v).add t3.v).add t4.v).add t5.v

abbrev LeafFn := V12 → CT → CT → CT → CT → CT → Bool
abbrev BinFn := V12 → CT → CT → CT → CT → CT → Bool

def lvl5 (ih : BinFn) (a4 : V12) (c1 c2 c3 c4 t5 : CT) : Bool :=
  ih (a4.add t5.l.v) c1 c2 c3 c4 t5.l && ih (a4.add t5.r.v) c1 c2 c3 c4 t5.r

def lvl4 (ih : BinFn) (a3 : V12) (c1 c2 c3 t4 t5 : CT) : Bool :=
  lvl5 ih (a3.add t4.l.v) c1 c2 c3 t4.l t5 && lvl5 ih (a3.add t4.r.v) c1 c2 c3 t4.r t5

def lvl3 (ih : BinFn) (a2 : V12) (c1 c2 t3 t4 t5 : CT) : Bool :=
  lvl4 ih (a2.add t3.l.v) c1 c2 t3.l t4 t5 && lvl4 ih (a2.add t3.r.v) c1 c2 t3.r t4 t5

def lvl2 (ih : BinFn) (a1 : V12) (c1 t2 t3 t4 t5 : CT) : Bool :=
  lvl3 ih (a1.add t2.l.v) c1 t2.l t3 t4 t5 && lvl3 ih (a1.add t2.r.v) c1 t2.r t3 t4 t5

/-- The 32 children of a bin. -/
def kids (W0 : V12) (ih : BinFn) (t1 t2 t3 t4 t5 : CT) : Bool :=
  lvl2 ih (W0.add t1.l.v) t1.l t2 t3 t4 t5 && lvl2 ih (W0.add t1.r.v) t1.r t2 t3 t4 t5

def baseB (c : Cfg) (leafOK : LeafFn) (acc : V12) (t1 t2 t3 t4 t5 : CT) : Bool :=
  rejectB c (c.lv 0) acc || leafOK acc t1 t2 t3 t4 t5

def stepB (c : Cfg) (d : ℕ) (ih : BinFn) (acc : V12) (t1 t2 t3 t4 t5 : CT) : Bool :=
  rejectB c (c.lv (d + 1)) acc || kids c.W0 ih t1 t2 t3 t4 t5

/-- The recursive check of one bin at depth `d` whose coordinate trees are `t₁…t₅` and sum `acc`. -/
def binOK (c : Cfg) (leafOK : LeafFn) (d : ℕ) : BinFn :=
  Nat.rec (motive := fun _ => BinFn) (baseB c leafOK) (fun d ih => stepB c d ih) d

def allL {α : Type} (l : List α) (f : α → Bool) : Bool :=
  List.rec (motive := fun _ => Bool) true (fun a _ r => f a && r) l

def top5 (c : Cfg) (leafOK : LeafFn) (a4 : V12) (c1 c2 c3 c4 : CT) (L5 : List CT) : Bool :=
  allL L5 fun c5 => binOK c leafOK 3 (a4.add c5.v) c1 c2 c3 c4 c5

def top4 (c : Cfg) (leafOK : LeafFn) (a3 : V12) (c1 c2 c3 : CT) (L4 L5 : List CT) : Bool :=
  allL L4 fun c4 => top5 c leafOK (a3.add c4.v) c1 c2 c3 c4 L5

def top3 (c : Cfg) (leafOK : LeafFn) (a2 : V12) (c1 c2 : CT) (L3 L4 L5 : List CT) : Bool :=
  allL L3 fun c3 => top4 c leafOK (a2.add c3.v) c1 c2 c3 L4 L5

/-- All level-12 bins whose first coordinate tree is `c1` (one "slab", `12⁴` bins). -/
def slabOK (c : Cfg) (leafOK : LeafFn) (c1 : CT) (L2 L3 L4 L5 : List CT) : Bool :=
  allL L2 fun c2 => top3 c leafOK ((c.W0.add c1.v).add c2.v) c1 c2 L3 L4 L5

def topOK (c : Cfg) (leafOK : LeafFn) (L1 L2 L3 L4 L5 : List CT) : Bool :=
  allL L1 fun c1 => slabOK c leafOK c1 L2 L3 L4 L5

/-! ### Semantics -/

/-- The complex number stored at column `i`, offset `B`: `(re − B) + i (im − B)`. -/
def cval (B : ℕ) (x : V12) (i : I6) : ℂ := (((x.re i : ℝ) - B : ℝ) : ℂ) + (((x.im i : ℝ) - B : ℝ) : ℂ) * I

lemma cval_add (B B' : ℕ) (x y : V12) (i : I6) : cval (B + B') (x.add y) i = cval B x i + cval B' y i := by
  simp only [cval, V12.add_re, V12.add_im]; push_cast; ring

/-- The record centre in radians, from rational data indexed like `I6`. -/
def Pmat (Pq : I6 → I6 → ℚ) : RMat6 := fun j i => (Pq j i : ℝ)

/-- The exact column sums `Σ_i = Σ_j e(u_j) exp(−i P_ji)`. -/
def sigma (P : RMat6) (u : I6 → ℝ) (i : I6) : ℂ := ∑ j, e (u j) * Complex.exp (((-P j i : ℝ) : ℂ) * I)

lemma e_sub_cyc (a b : ℝ) : e (a - (1 / (2 * Real.pi)) * b) = e a * Complex.exp (((-b : ℝ) : ℂ) * I) := by
  rw [e, e, ← Complex.exp_add]; congr 1
  have : (2 * Real.pi * (a - 1 / (2 * Real.pi) * b) : ℝ) = 2 * Real.pi * a + -b := by
    field_simp; ring
  rw [this]; push_cast; ring

lemma S_eq_sigma (P : RMat6) (u : I6 → ℝ) (i : I6) :
    S ((1 / (2 * Real.pi)) • P) u i = sigma P u i / ((Real.sqrt 6 : ℝ) : ℂ) := by
  simp only [S, q, sigma, Finset.sum_div, Matrix.smul_apply, smul_eq_mul]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [e_sub_cyc]

lemma norm_S_eq (P : RMat6) (u : I6 → ℝ) (i : I6) :
    ‖S ((1 / (2 * Real.pi)) • P) u i‖ = ‖sigma P u i‖ / Real.sqrt 6 := by
  rw [S_eq_sigma, norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (Real.sqrt_nonneg 6)]

/-- The midpoint of a bin. -/
def uvec (k1 k2 k3 k4 k5 : ℕ) : I6 → ℝ
  | .inl 0 => 0 | .inl 1 => k1 / 192 | .inl 2 => k2 / 192 | .inr 0 => k3 / 192 | .inr 1 => k4 / 192
  | .inr 2 => k5 / 192

/-- The coordinates `m = 1, …, 5`. -/
def m1 : I6 := .inl 1
def m2 : I6 := .inl 2
def m3 : I6 := .inr 0
def m4 : I6 := .inr 1
def m5 : I6 := .inr 2

/-- A node value is within `ε₁` of `e(k/192) exp(−i P_mi)` in every column. -/
def NodeOK (P : RMat6) (Z boff : ℕ) (ε1 : ℝ) (m : I6) (k : ℕ) (v : V12) : Prop :=
  ∀ i, ‖cval boff v i / (Z : ℂ) - e ((k : ℝ) / 192) * Complex.exp (((-P m i : ℝ) : ℂ) * I)‖ ≤ ε1

/-- A tree of depth `d`: correct values, children at `k ∓ 2^{d-1}`. -/
def TreeOK (P : RMat6) (Z boff : ℕ) (ε1 : ℝ) (m : I6) : ℕ → CT → Prop
  | _, .leaf => False
  | 0, .node k v _ _ => NodeOK P Z boff ε1 m k v
  | d + 1, .node k v l r => NodeOK P Z boff ε1 m k v ∧ l.k + 2 ^ d = k ∧ r.k = k + 2 ^ d ∧
      TreeOK P Z boff ε1 m d l ∧ TreeOK P Z boff ε1 m d r

lemma TreeOK.node {P : RMat6} {Z boff : ℕ} {ε1 : ℝ} {m : I6} {d : ℕ} {t : CT} (h : TreeOK P Z boff ε1 m d t) :
    NodeOK P Z boff ε1 m t.k t.v := by
  cases t with
  | leaf => cases d <;> exact h.elim
  | node k v l r => cases d with
    | zero => exact h
    | succ d => exact h.1

/-- The rational side conditions on the thresholds (decided by the kernel per Record). -/
structure ParQ where
  pihi : ℚ
  s6lo : ℚ
  s6hi : ℚ
  i6hi : ℚ
  x29hi : ℚ
  rbar : ℚ
  rFbar : ℚ
  Kbar : ℚ
  E : ℚ
  eps1 : ℚ

/-- Half-width at depth `d`. -/
def ahalf (d : ℕ) : ℚ := 2 ^ d / 192

def tauQ (pq : ParQ) (d : ℕ) : ℚ := 2 * pq.pihi * (5 * ahalf d * pq.i6hi + pq.rbar)
def loQ (pq : ParQ) (d : ℕ) : ℚ := pq.s6lo * (1 - tauQ pq d) - pq.E
def FQ (pq : ParQ) (d : ℕ) : ℚ := 2 * pq.pihi * (pq.Kbar * (pq.x29hi * ahalf d) + pq.rFbar)

/-- Conditions at one depth. -/
def LevelOK (c : Cfg) (pq : ParQ) (d : ℕ) : Prop :=
  ((pq.s6hi * (1 + tauQ pq d) + pq.E) * c.Z) ^ 2 ≤ ((c.lv d).thi : ℚ) ∧
  ((c.lv d).tlo = 0 ∨ (0 ≤ loQ pq d ∧ ((c.lv d).tlo : ℚ) ≤ (loQ pq d * c.Z) ^ 2)) ∧
  6 * FQ pq d ^ 2 * (c.q2 : ℚ) ^ 2 ≤ ((c.lv d).thr : ℚ)

/-- All rational side conditions. -/
def ParOK (c : Cfg) (pq : ParQ) : Prop :=
  (31415926535897932385 / 10 ^ 19 ≤ pq.pihi) ∧ 0 < pq.s6lo ∧ pq.s6lo ^ 2 ≤ 6 ∧ 0 ≤ pq.s6hi ∧ 6 ≤ pq.s6hi ^ 2 ∧
  0 ≤ pq.i6hi ∧ 1 ≤ 6 * pq.i6hi ^ 2 ∧ 0 ≤ pq.x29hi ∧ 29 ≤ 6 * pq.x29hi ^ 2 ∧
  0 ≤ pq.rbar ∧ 0 ≤ pq.rFbar ∧ 0 ≤ pq.Kbar ∧ 0 ≤ pq.eps1 ∧ 6 * pq.eps1 ≤ pq.E ∧
  0 < c.Z ∧ c.six = 6 * c.Z ^ 2 ∧ pq.s6hi * c.Z ≤ (c.s6z : ℚ) ∧ 0 < c.s6z ∧ 0 < c.q2 ∧
  pq.E * c.q2 ≤ (c.eq : ℚ) ∧
  LevelOK c pq 0 ∧ LevelOK c pq 1 ∧ LevelOK c pq 2 ∧ LevelOK c pq 3

instance (c : Cfg) (pq : ParQ) (d : ℕ) : Decidable (LevelOK c pq d) := by unfold LevelOK; infer_instance
instance (c : Cfg) (pq : ParQ) : Decidable (ParOK c pq) := by unfold ParOK; infer_instance

/-! ### Real-number facts from the rational conditions -/

lemma sqrt6_le_of {s : ℝ} (h0 : 0 ≤ s) (h : 6 ≤ s ^ 2) : Real.sqrt 6 ≤ s := by
  rw [Real.sqrt_le_left h0]; linarith [h]

lemma le_sqrt6_of {s : ℝ} (h : s ^ 2 ≤ 6) : s ≤ Real.sqrt 6 := Real.le_sqrt_of_sq_le h

lemma inv_sqrt6_le {s : ℝ} (h0 : 0 ≤ s) (h : 1 ≤ 6 * s ^ 2) : 1 / Real.sqrt 6 ≤ s := by
  have h6 : 0 < Real.sqrt 6 := Real.sqrt_pos.mpr (by norm_num)
  rw [div_le_iff₀ h6]
  have : 1 ≤ (s * Real.sqrt 6) ^ 2 := by rw [mul_pow, Real.sq_sqrt (by norm_num)]; linarith
  have hp : 0 ≤ s * Real.sqrt 6 := mul_nonneg h0 (Real.sqrt_nonneg 6)
  nlinarith

lemma sqrt296_le {s : ℝ} (h0 : 0 ≤ s) (h : 29 ≤ 6 * s ^ 2) : Real.sqrt (29 / 6) ≤ s := by
  rw [Real.sqrt_le_left h0]; linarith [h]

lemma pi_le_of {s : ℝ} (h : 31415926535897932385 / 10 ^ 19 ≤ s) : Real.pi ≤ s := by
  have := Real.pi_lt_d20; linarith

/-! ### Soundness of one column -/

lemma sqd_cast (C a : ℕ) : ((sqd C a : ℕ) : ℝ) = |(a : ℝ) - C| := by
  unfold sqd
  cases h : Nat.ble C a
  · have : a < C := Nat.lt_of_not_le fun hc => by rw [Nat.ble_eq_true_of_le hc] at h; exact Bool.noConfusion h
    simp only [cond_false]; rw [Nat.cast_sub this.le, abs_of_neg (sub_neg.mpr (by exact_mod_cast this))]; ring
  · have : C ≤ a := Nat.le_of_ble_eq_true h
    simp only [cond_true]; rw [Nat.cast_sub this, abs_of_nonneg (sub_nonneg.mpr (by exact_mod_cast this))]

lemma norm_sq_cval (C : ℕ) (x : V12) (i : I6) :
    ‖cval C x i‖ ^ 2 = (nsq C (x.re i) (x.im i) : ℝ) := by
  have hs : ∀ a : ℕ, ((sqd C a : ℕ) : ℝ) = |(a : ℝ) - C| := by
    intro a; exact sqd_cast C a
  rw [cval, Complex.sq_norm, Complex.normSq_add_mul_I, nsq]; push_cast; rw [hs, hs, abs_mul_abs_self,
    abs_mul_abs_self]; ring

/-- `N ≤ newt N x ^ 2` for `x ≥ 1`. -/
lemma newt_sq (N x : ℕ) (hx : 0 < x) : N ≤ newt N x ^ 2 := by
  unfold newt
  have h1 : N < N / x * x + x := Nat.lt_div_mul_add hx
  generalize N / x = qq at h1 ⊢
  have h2 : x + qq ≤ (x + qq) / 2 * 2 + 1 := by omega
  generalize (x + qq) / 2 = w at h2 ⊢
  have h3 : (N : ℤ) < (qq : ℤ) * x + x := by exact_mod_cast h1
  have h5 := four_mul_le_sq_add (x : ℤ) ((qq : ℤ) + 1)
  have h6 : (x : ℤ) + qq + 3 ≤ 2 * w + 4 := by omega
  have h7 : (0 : ℤ) ≤ (x : ℤ) + qq + 3 := by positivity
  have h8 := mul_le_mul h6 h6 h7 (by omega)
  have hx0 : (0 : ℤ) ≤ x := by positivity
  have hq0 : (0 : ℤ) ≤ qq := by positivity
  have : (N : ℤ) ≤ ((w : ℤ) + 2) ^ 2 := by nlinarith
  exact_mod_cast this

lemma newt_pos (N x : ℕ) : 0 < newt N x := by unfold newt; exact Nat.succ_pos _

/-- Lower bound used by the Frobenius test: `D/2^q ≤ |‖σ‖ − √6|`. -/
lemma dterm_le {c : Cfg} {pq : ParQ} (hp : ParOK c pq) {N : ℕ} {St σ : ℂ} (hN : ‖St‖ ^ 2 = N)
    (herr : ‖St / (c.Z : ℂ) - σ‖ ≤ pq.E) :
    (dterm c N : ℝ) / c.q2 ≤ |‖σ‖ - Real.sqrt 6| := by
  obtain ⟨-, -, -, hs6hi0, hs6hi, -, -, -, -, -, -, -, -, -, hZ, hsix, hs6z, hs6z0, hq2, heq, -⟩ := hp
  have hZr : (0 : ℝ) < c.Z := by exact_mod_cast hZ
  have hq2r : (0 : ℝ) < c.q2 := by exact_mod_cast hq2
  have hs6 : Real.sqrt 6 ≤ (pq.s6hi : ℝ) := sqrt6_le_of (by exact_mod_cast hs6hi0) (by exact_mod_cast hs6hi)
  have hs6z' : Real.sqrt 6 * c.Z ≤ (c.s6z : ℝ) := by
    have : ((pq.s6hi * c.Z : ℚ) : ℝ) ≤ ((c.s6z : ℚ) : ℝ) := by exact_mod_cast hs6z
    push_cast at this; nlinarith
  have hsq6 : (0 : ℝ) < Real.sqrt 6 := Real.sqrt_pos.mpr (by norm_num)
  show (((c.q2 * sqd c.six N / (c.Z * (newt N (newt N c.s6z) + c.s6z)) - c.eq : ℕ) : ℝ) / c.q2 ≤ _)
  set U := newt N (newt N c.s6z)
  set x := ‖St‖
  have hx0 : 0 ≤ x := norm_nonneg _
  have hU : x ≤ U := by
    have h := newt_sq N (newt N c.s6z) (newt_pos _ _)
    have h2 : x ^ 2 ≤ (U : ℝ) ^ 2 := by rw [hN]; exact_mod_cast h
    have hU0 : (0 : ℝ) ≤ U := Nat.cast_nonneg _
    nlinarith
  have hpos : 0 ≤ x + Real.sqrt 6 * c.Z := add_nonneg hx0 (mul_nonneg (Real.sqrt_nonneg 6) hZr.le)
  have hg : ((sqd c.six N : ℕ) : ℝ) = |x - Real.sqrt 6 * c.Z| * (x + Real.sqrt 6 * c.Z) := by
    have hsq : ((sqd c.six N : ℕ) : ℝ) = |(N : ℝ) - c.six| := sqd_cast c.six N
    have h6 : Real.sqrt 6 ^ 2 = 6 := Real.sq_sqrt (by norm_num)
    rw [hsq, hsix, ← hN, ← abs_of_nonneg hpos, ← abs_mul]; congr 1; push_cast
    linear_combination ((c.Z : ℝ) ^ 2) * h6
  have hden : 0 < (c.Z : ℝ) * (U + c.s6z) :=
    mul_pos hZr (add_pos_of_nonneg_of_pos (Nat.cast_nonneg _) (by exact_mod_cast hs6z0))
  have hL : (((c.q2 * sqd c.six N) / (c.Z * (U + c.s6z)) : ℕ) : ℝ) ≤ (c.q2 : ℝ) * |x / c.Z - Real.sqrt 6| := by
    refine (Nat.cast_div_le).trans ?_
    push_cast
    rw [hg, div_le_iff₀ hden]
    have e1 : |x - Real.sqrt 6 * c.Z| = |x / c.Z - Real.sqrt 6| * c.Z := by
      rw [show x - Real.sqrt 6 * c.Z = (x / c.Z - Real.sqrt 6) * c.Z by
        rw [sub_mul, div_mul_cancel₀ _ hZr.ne'], abs_mul, abs_of_pos hZr]
    calc (c.q2 : ℝ) * (|x - Real.sqrt 6 * c.Z| * (x + Real.sqrt 6 * c.Z))
        ≤ (c.q2 : ℝ) * (|x - Real.sqrt 6 * c.Z| * (U + c.s6z)) := by
          gcongr
      _ = (c.q2 : ℝ) * |x / c.Z - Real.sqrt 6| * (c.Z * (U + c.s6z)) := by rw [e1]; ring
  have hσ : |‖σ‖ - x / c.Z| ≤ pq.E := by
    have : ‖St / (c.Z : ℂ)‖ = x / c.Z := by rw [norm_div, Complex.norm_natCast]
    rw [← this]; exact (abs_norm_sub_norm_le _ _).trans (by rw [norm_sub_rev]; exact herr)
  have heq' : (pq.E : ℝ) * c.q2 ≤ c.eq := by exact_mod_cast heq
  rw [div_le_iff₀ hq2r]
  rcases le_or_gt (c.eq) ((c.q2 * sqd c.six N) / (c.Z * (U + c.s6z))) with hle | hlt
  · rw [Nat.cast_sub hle]
    have h3 : |x / c.Z - Real.sqrt 6| ≤ |‖σ‖ - Real.sqrt 6| + pq.E := by
      calc |x / c.Z - Real.sqrt 6| = |(x / c.Z - ‖σ‖) + (‖σ‖ - Real.sqrt 6)| := by ring_nf
        _ ≤ |x / c.Z - ‖σ‖| + |‖σ‖ - Real.sqrt 6| := abs_add_le _ _
        _ ≤ _ := by rw [abs_sub_comm]; linarith
    nlinarith
  · rw [Nat.sub_eq_zero_of_le hlt.le, Nat.cast_zero]; positivity

/-! ### Real parameters -/

/-- The real-number consequences of `ParOK`. -/
structure RealFacts (pq : ParQ) : Prop where
  pi : Real.pi ≤ pq.pihi
  s6hi : Real.sqrt 6 ≤ pq.s6hi
  s6lo : (pq.s6lo : ℝ) ≤ Real.sqrt 6
  s6lo0 : (0 : ℝ) < pq.s6lo
  i6 : 1 / Real.sqrt 6 ≤ pq.i6hi
  x29 : Real.sqrt (29 / 6) ≤ pq.x29hi
  rbar0 : (0 : ℝ) ≤ pq.rbar
  rFbar0 : (0 : ℝ) ≤ pq.rFbar
  Kbar0 : (0 : ℝ) ≤ pq.Kbar
  E0 : (0 : ℝ) ≤ pq.E
  pihi0 : (0 : ℝ) ≤ pq.pihi
  s6hi0 : (0 : ℝ) ≤ pq.s6hi
  i6hi0 : (0 : ℝ) ≤ pq.i6hi
  x29hi0 : (0 : ℝ) ≤ pq.x29hi
  eps : 6 * (pq.eps1 : ℝ) ≤ pq.E

lemma realFacts {c : Cfg} {pq : ParQ} (hp : ParOK c pq) : RealFacts pq := by
  obtain ⟨hpi, hs6lo0, hs6lo, hs6hi0, hs6hi, hi60, hi6, hx0, hx, hr0, hrF0, hK0, he10, he1, -⟩ := hp
  have hE : (0 : ℚ) ≤ pq.E := by linarith
  have hpi' := (Rat.cast_le (K := ℝ)).mpr hpi
  push_cast at hpi' 
  exact ⟨pi_le_of hpi', sqrt6_le_of (by exact_mod_cast hs6hi0) (by exact_mod_cast hs6hi),
    le_sqrt6_of (by exact_mod_cast hs6lo), by exact_mod_cast hs6lo0,
    inv_sqrt6_le (by exact_mod_cast hi60) (by exact_mod_cast hi6),
    sqrt296_le (by exact_mod_cast hx0) (by exact_mod_cast hx),
    by exact_mod_cast hr0, by exact_mod_cast hrF0, by exact_mod_cast hK0, by exact_mod_cast hE,
    by linarith, by exact_mod_cast hs6hi0, by exact_mod_cast hi60, by exact_mod_cast hx0,
    by exact_mod_cast he1⟩

lemma levelOK_of {c : Cfg} {pq : ParQ} (hp : ParOK c pq) {d : ℕ} (hd : d ≤ 3) : LevelOK c pq d := by
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, h0, h1, h2, h3⟩ := hp
  interval_cases d <;> assumption

lemma Z_pos {c : Cfg} {pq : ParQ} (hp : ParOK c pq) : (0 : ℝ) < c.Z := by
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, hZ, -⟩ := hp
  exact_mod_cast hZ

lemma q2_pos {c : Cfg} {pq : ParQ} (hp : ParOK c pq) : (0 : ℝ) < c.q2 := by
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, hq, -⟩ := hp
  exact_mod_cast hq

lemma tauQ_cast (pq : ParQ) (d : ℕ) :
    ((tauQ pq d : ℚ) : ℝ) = 2 * pq.pihi * (5 * ((2 : ℝ) ^ d / 192) * pq.i6hi + pq.rbar) := by
  unfold tauQ ahalf; push_cast; ring

lemma loQ_cast (pq : ParQ) (d : ℕ) :
    ((loQ pq d : ℚ) : ℝ) = pq.s6lo * (1 - ((tauQ pq d : ℚ) : ℝ)) - pq.E := by
  unfold loQ; push_cast; ring

lemma FQ_cast (pq : ParQ) (d : ℕ) :
    ((FQ pq d : ℚ) : ℝ) = 2 * pq.pihi * (pq.Kbar * (pq.x29hi * ((2 : ℝ) ^ d / 192)) + pq.rFbar) := by
  unfold FQ ahalf; push_cast; ring

/-- `‖σ‖` is within `E` of `‖Σ̃‖/Z`. -/
lemma norm_close {c : Cfg} {E : ℝ} {St σ : ℂ} (herr : ‖St / (c.Z : ℂ) - σ‖ ≤ E) :
    ‖St‖ / c.Z - E ≤ ‖σ‖ ∧ ‖σ‖ ≤ ‖St‖ / c.Z + E := by
  have hn : ‖St / (c.Z : ℂ)‖ = ‖St‖ / c.Z := by rw [norm_div, Complex.norm_natCast]
  have h := (abs_norm_sub_norm_le (St / (c.Z : ℂ)) σ).trans herr
  rw [hn] at h
  obtain ⟨h1, h2⟩ := abs_le.mp h
  constructor <;> linarith

/-- **One column, direct test.** -/
lemma col_sound {c : Cfg} {pq : ParQ} (hp : ParOK c pq) {d : ℕ} (hL : LevelOK c pq d) {N : ℕ} {St σ : ℂ}
    (hN : ‖St‖ ^ 2 = N) (herr : ‖St / (c.Z : ℂ) - σ‖ ≤ pq.E) (h : colRej (c.lv d) N = true)
    {r : ℝ} (hr0 : 0 ≤ r) (hr : r ≤ pq.rbar) :
    2 * Real.pi * (5 * ((2 : ℝ) ^ d / 192) / Real.sqrt 6 + r) < |‖σ‖ / Real.sqrt 6 - 1| := by
  have F := realFacts hp
  have hZr := Z_pos hp
  have h6 : 0 < Real.sqrt 6 := Real.sqrt_pos.mpr (by norm_num)
  set a : ℝ := (2 : ℝ) ^ d / 192 with ha
  have ha0 : 0 ≤ a := by positivity
  set τ : ℝ := ((tauQ pq d : ℚ) : ℝ) with hτdef
  have hτ : τ = 2 * pq.pihi * (5 * a * pq.i6hi + pq.rbar) := by rw [hτdef, tauQ_cast]
  have h2 : 0 ≤ 5 * a / Real.sqrt 6 + r := add_nonneg (by positivity) hr0
  have hτ0 : 2 * Real.pi * (5 * a / Real.sqrt 6 + r) ≤ τ := by
    rw [hτ]
    have h1 : 5 * a / Real.sqrt 6 ≤ 5 * a * pq.i6hi := by
      calc 5 * a / Real.sqrt 6 = 5 * a * (1 / Real.sqrt 6) := by ring
        _ ≤ 5 * a * pq.i6hi := mul_le_mul_of_nonneg_left F.i6 (by positivity)
    have h3 : 5 * a / Real.sqrt 6 + r ≤ 5 * a * pq.i6hi + pq.rbar := add_le_add h1 hr
    calc 2 * Real.pi * (5 * a / Real.sqrt 6 + r) ≤ 2 * pq.pihi * (5 * a / Real.sqrt 6 + r) :=
          mul_le_mul_of_nonneg_right (by linarith [F.pi]) h2
      _ ≤ _ := mul_le_mul_of_nonneg_left h3 (by linarith [F.pihi0])
  have hτp : 0 ≤ τ := le_trans (mul_nonneg (by positivity) h2) hτ0
  obtain ⟨hσlo, hσhi⟩ := norm_close herr
  obtain ⟨hthi, htlo, -⟩ := hL
  unfold colRej at h
  rw [Bool.or_eq_true] at h
  rcases h with h | h
  · have hlt : (c.lv d).thi < N := by simpa using h
    have h' : ((((pq.s6hi * (1 + tauQ pq d) + pq.E) * c.Z) ^ 2 : ℚ) : ℝ) ≤ (((c.lv d).thi : ℚ) : ℝ) := by
      exact_mod_cast hthi
    push_cast at h'
    have hlt' : ((c.lv d).thi : ℝ) < N := by exact_mod_cast hlt
    have hX : ((pq.s6hi * (1 + τ) + pq.E) * c.Z) ^ 2 < ‖St‖ ^ 2 := by rw [hN]; linarith
    have hgt : (pq.s6hi * (1 + τ) + pq.E) * c.Z < ‖St‖ := lt_of_pow_lt_pow_left₀ 2 (norm_nonneg _) hX
    have hgt' : pq.s6hi * (1 + τ) + pq.E < ‖St‖ / c.Z := by rw [lt_div_iff₀ hZr]; exact hgt
    have h4 : Real.sqrt 6 * (1 + τ) ≤ pq.s6hi * (1 + τ) := mul_le_mul_of_nonneg_right F.s6hi (by linarith)
    have h5 : 1 + τ < ‖σ‖ / Real.sqrt 6 := by rw [lt_div_iff₀ h6]; nlinarith
    calc _ ≤ τ := hτ0
      _ < ‖σ‖ / Real.sqrt 6 - 1 := by linarith
      _ ≤ _ := le_abs_self _
  · rcases htlo with h0 | ⟨hlo0, hlo⟩
    · rw [h0] at h; simp at h
    · have hlt : N < (c.lv d).tlo := by simpa using h
      set lo : ℝ := ((loQ pq d : ℚ) : ℝ) with hlodef
      have hloeq : lo = pq.s6lo * (1 - τ) - pq.E := by rw [hlodef, loQ_cast]
      have hlo0' : 0 ≤ lo := by rw [hlodef]; exact_mod_cast hlo0
      have h' : (((c.lv d).tlo : ℚ) : ℝ) ≤ (((loQ pq d * c.Z) ^ 2 : ℚ) : ℝ) := by exact_mod_cast hlo
      push_cast at h'
      have hlt' : (N : ℝ) < (c.lv d).tlo := by exact_mod_cast hlt
      have hX : ‖St‖ ^ 2 < (lo * c.Z) ^ 2 := by rw [hN]; linarith
      have hlt2 : ‖St‖ < lo * c.Z := lt_of_pow_lt_pow_left₀ 2 (mul_nonneg hlo0' hZr.le) hX
      have hlt3 : ‖St‖ / c.Z < lo := by rw [div_lt_iff₀ hZr]; exact hlt2
      have h1τ : 0 ≤ 1 - τ := by
        by_contra hc; push Not at hc
        have := mul_neg_of_pos_of_neg F.s6lo0 hc
        linarith [F.E0]
      have h4 : (pq.s6lo : ℝ) * (1 - τ) ≤ Real.sqrt 6 * (1 - τ) := mul_le_mul_of_nonneg_right F.s6lo h1τ
      have h5 : ‖σ‖ / Real.sqrt 6 < 1 - τ := by rw [div_lt_iff₀ h6]; nlinarith
      calc _ ≤ τ := hτ0
        _ < 1 - ‖σ‖ / Real.sqrt 6 := by linarith
        _ ≤ _ := by rw [abs_sub_comm]; exact le_abs_self _

/-- **Frobenius test.** -/
lemma frob_sound {c : Cfg} {pq : ParQ} (hp : ParOK c pq) {d : ℕ} (hL : LevelOK c pq d)
    {N : I6 → ℕ} {St σ : I6 → ℂ} (hN : ∀ i, ‖St i‖ ^ 2 = N i) (herr : ∀ i, ‖St i / (c.Z : ℂ) - σ i‖ ≤ pq.E)
    (h : frobB c (c.lv d) (N (.inl 0)) (N (.inl 1)) (N (.inl 2)) (N (.inr 0)) (N (.inr 1)) (N (.inr 2)) = true)
    {K rF : ℝ} (hK0 : 0 ≤ K) (hK : K ≤ pq.Kbar) (hrF0 : 0 ≤ rF) (hrF : rF ≤ pq.rFbar) :
    (2 * Real.pi * (K * (Real.sqrt (29 / 6) * ((2 : ℝ) ^ d / 192)) + rF)) ^ 2 <
      ∑ i, (‖σ i‖ / Real.sqrt 6 - 1) ^ 2 := by
  have F := realFacts hp
  have hq2 := q2_pos hp
  have h6 : 0 < Real.sqrt 6 := Real.sqrt_pos.mpr (by norm_num)
  have h66 : Real.sqrt 6 ^ 2 = 6 := Real.sq_sqrt (by norm_num)
  set a : ℝ := (2 : ℝ) ^ d / 192 with ha
  have ha0 : 0 ≤ a := by positivity
  obtain ⟨-, -, hthr⟩ := hL
  have hthr' : ((6 * FQ pq d ^ 2 * (c.q2 : ℚ) ^ 2 : ℚ) : ℝ) ≤ (((c.lv d).thr : ℚ) : ℝ) := by exact_mod_cast hthr
  push_cast at hthr'
  rw [FQ_cast] at hthr'
  set D : I6 → ℕ := fun i => dterm c (N i) with hDdef
  have hD : ∀ i, ((D i : ℝ) / c.q2) ^ 2 ≤ (‖σ i‖ - Real.sqrt 6) ^ 2 := by
    intro i
    have := dterm_le hp (hN i) (herr i)
    rw [← sq_abs (‖σ i‖ - Real.sqrt 6)]
    exact pow_le_pow_left₀ (by positivity) this 2
  have hsum : ((c.lv d).thr : ℝ) < ∑ i, (D i : ℝ) ^ 2 := by
    unfold frobB at h
    have h' : (c.lv d).thr < D (.inl 0) * D (.inl 0) + D (.inl 1) * D (.inl 1) + D (.inl 2) * D (.inl 2) +
        D (.inr 0) * D (.inr 0) + D (.inr 1) * D (.inr 1) + D (.inr 2) * D (.inr 2) := by simpa using h
    have h'' : ((c.lv d).thr : ℝ) < ((D (.inl 0) * D (.inl 0) + D (.inl 1) * D (.inl 1) + D (.inl 2) * D (.inl 2) +
        D (.inr 0) * D (.inr 0) + D (.inr 1) * D (.inr 1) + D (.inr 2) * D (.inr 2) : ℕ) : ℝ) := by
      exact_mod_cast h'
    rw [sum_I6]; push_cast at h''; nlinarith
  have hterm : ∀ i, (‖σ i‖ / Real.sqrt 6 - 1) ^ 2 = (‖σ i‖ - Real.sqrt 6) ^ 2 / 6 := by
    intro i; rw [div_sub_one h6.ne', div_pow, h66]
  have hlow : (∑ i, (D i : ℝ) ^ 2) / (6 * (c.q2 : ℝ) ^ 2) ≤ ∑ i, (‖σ i‖ / Real.sqrt 6 - 1) ^ 2 := by
    rw [Finset.sum_div]
    refine Finset.sum_le_sum fun i _ => ?_
    rw [hterm i]
    have := hD i
    rw [div_pow] at this
    calc (D i : ℝ) ^ 2 / (6 * (c.q2 : ℝ) ^ 2) = (D i : ℝ) ^ 2 / (c.q2 : ℝ) ^ 2 / 6 := by ring
      _ ≤ _ := by gcongr
  -- the threshold
  set FQr : ℝ := 2 * pq.pihi * (pq.Kbar * (pq.x29hi * a) + pq.rFbar)
  have hF0 : 0 ≤ 2 * Real.pi * (K * (Real.sqrt (29 / 6) * a) + rF) := by positivity
  have hFle : 2 * Real.pi * (K * (Real.sqrt (29 / 6) * a) + rF) ≤ FQr := by
    have h1 : K * (Real.sqrt (29 / 6) * a) ≤ pq.Kbar * (pq.x29hi * a) :=
      mul_le_mul hK (mul_le_mul_of_nonneg_right F.x29 ha0) (by positivity) F.Kbar0
    have h2 : 0 ≤ K * (Real.sqrt (29 / 6) * a) + rF := by positivity
    calc 2 * Real.pi * (K * (Real.sqrt (29 / 6) * a) + rF) ≤ 2 * pq.pihi * (K * (Real.sqrt (29 / 6) * a) + rF) :=
          mul_le_mul_of_nonneg_right (by linarith [F.pi]) h2
      _ ≤ FQr := mul_le_mul_of_nonneg_left (add_le_add h1 hrF) (by linarith [F.pihi0])
  have hFsq : (2 * Real.pi * (K * (Real.sqrt (29 / 6) * a) + rF)) ^ 2 ≤ FQr ^ 2 := pow_le_pow_left₀ hF0 hFle 2
  have hq2sq : 0 < 6 * (c.q2 : ℝ) ^ 2 := by positivity
  have hmid : FQr ^ 2 < (∑ i, (D i : ℝ) ^ 2) / (6 * (c.q2 : ℝ) ^ 2) := by
    rw [lt_div_iff₀ hq2sq]; nlinarith
  linarith

/-- **Soundness of the bin test**: a rejected bin contains no vector unbiased to every column, for every
admissible `δ`. -/
theorem rejectB_sound {c : Cfg} {pq : ParQ} (hp : ParOK c pq) {d : ℕ} (hd : d ≤ 3)
    {P : RMat6} {u : I6 → ℝ} {acc : V12}
    (herr : ∀ i, ‖cval (6 * c.boff) acc i / (c.Z : ℂ) - sigma P u i‖ ≤ pq.E)
    (h : rejectB c (c.lv d) acc = true)
    {T : Fin 4 → RMat6} {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) :
    ∀ δ, Admissible T rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • P) δ u ((2 : ℝ) ^ d / 192) := by
  intro δ hδ
  have hr0 : 0 ≤ r := (vnorm_nonneg _).trans (hδ.2.1 j0)
  have hrF0 : 0 ≤ rF := (frob_nonneg δ).trans hδ.2.2
  have hL := levelOK_of hp hd
  refine leafRej_of_direct (by positivity) hK0 hK hδ.2.1 hδ.2.2 ?_
  simp only [norm_S_eq]
  unfold rejectB rejN at h
  simp only [Bool.or_eq_true] at h
  rcases h with h | h | h | h | h | h | h
  · exact Or.inl ⟨.inl 0, col_sound hp hL (norm_sq_cval _ acc (.inl 0)) (herr (.inl 0)) h hr0 hr⟩
  · exact Or.inl ⟨.inl 1, col_sound hp hL (norm_sq_cval _ acc (.inl 1)) (herr (.inl 1)) h hr0 hr⟩
  · exact Or.inl ⟨.inl 2, col_sound hp hL (norm_sq_cval _ acc (.inl 2)) (herr (.inl 2)) h hr0 hr⟩
  · exact Or.inl ⟨.inr 0, col_sound hp hL (norm_sq_cval _ acc (.inr 0)) (herr (.inr 0)) h hr0 hr⟩
  · exact Or.inl ⟨.inr 1, col_sound hp hL (norm_sq_cval _ acc (.inr 1)) (herr (.inr 1)) h hr0 hr⟩
  · exact Or.inl ⟨.inr 2, col_sound hp hL (norm_sq_cval _ acc (.inr 2)) (herr (.inr 2)) h hr0 hr⟩
  · exact Or.inr (frob_sound hp hL (N := fun i => nsq (6 * c.boff) (acc.re i) (acc.im i))
      (St := fun i => cval (6 * c.boff) acc i) (σ := sigma P u) (fun i => norm_sq_cval _ acc i) herr h hK0 hKb
      hrF0 hrF)

/-! ### The bin sums -/

lemma sigma_expand (P : RMat6) (k1 k2 k3 k4 k5 : ℕ) (i : I6) :
    sigma P (uvec k1 k2 k3 k4 k5) i =
      e 0 * Complex.exp (((-P j0 i : ℝ) : ℂ) * I) + e ((k1 : ℝ) / 192) * Complex.exp (((-P m1 i : ℝ) : ℂ) * I) +
        e ((k2 : ℝ) / 192) * Complex.exp (((-P m2 i : ℝ) : ℂ) * I) +
      (e ((k3 : ℝ) / 192) * Complex.exp (((-P m3 i : ℝ) : ℂ) * I) +
        e ((k4 : ℝ) / 192) * Complex.exp (((-P m4 i : ℝ) : ℂ) * I) +
        e ((k5 : ℝ) / 192) * Complex.exp (((-P m5 i : ℝ) : ℂ) * I)) := by
  unfold sigma
  rw [Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_three]
  rfl

/-- The error of a bin sum: at most `6 ε₁ ≤ E`. -/
lemma acc_err {P : RMat6} {c : Cfg} {pq : ParQ} (hp : ParOK c pq)
    (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0) {t1 t2 t3 t4 t5 : CT}
    (h1 : NodeOK P c.Z c.boff pq.eps1 m1 t1.k t1.v) (h2 : NodeOK P c.Z c.boff pq.eps1 m2 t2.k t2.v)
    (h3 : NodeOK P c.Z c.boff pq.eps1 m3 t3.k t3.v) (h4 : NodeOK P c.Z c.boff pq.eps1 m4 t4.k t4.v)
    (h5 : NodeOK P c.Z c.boff pq.eps1 m5 t5.k t5.v) (i : I6) :
    ‖cval (6 * c.boff) (sumAcc c.W0 t1 t2 t3 t4 t5) i / (c.Z : ℂ) -
      sigma P (uvec t1.k t2.k t3.k t4.k t5.k) i‖ ≤ pq.E := by
  have F := realFacts hp
  have hB : 6 * c.boff = c.boff + c.boff + c.boff + c.boff + c.boff + c.boff := by ring
  rw [hB, sumAcc, cval_add, cval_add, cval_add, cval_add, cval_add, sigma_expand]
  have hW' := hW i
  rw [Nat.cast_zero, zero_div] at hW'
  have e1 := h1 i; have e2 := h2 i; have e3 := h3 i; have e4 := h4 i; have e5 := h5 i
  set x0 := cval c.boff c.W0 i / (c.Z : ℂ) - e 0 * Complex.exp (((-P j0 i : ℝ) : ℂ) * I)
  set x1 := cval c.boff t1.v i / (c.Z : ℂ) - e ((t1.k : ℝ) / 192) * Complex.exp (((-P m1 i : ℝ) : ℂ) * I)
  set x2 := cval c.boff t2.v i / (c.Z : ℂ) - e ((t2.k : ℝ) / 192) * Complex.exp (((-P m2 i : ℝ) : ℂ) * I)
  set x3 := cval c.boff t3.v i / (c.Z : ℂ) - e ((t3.k : ℝ) / 192) * Complex.exp (((-P m3 i : ℝ) : ℂ) * I)
  set x4 := cval c.boff t4.v i / (c.Z : ℂ) - e ((t4.k : ℝ) / 192) * Complex.exp (((-P m4 i : ℝ) : ℂ) * I)
  set x5 := cval c.boff t5.v i / (c.Z : ℂ) - e ((t5.k : ℝ) / 192) * Complex.exp (((-P m5 i : ℝ) : ℂ) * I)
  have hsplit : (cval c.boff c.W0 i + cval c.boff t1.v i + cval c.boff t2.v i + cval c.boff t3.v i +
      cval c.boff t4.v i + cval c.boff t5.v i) / (c.Z : ℂ) -
      (e 0 * Complex.exp (((-P j0 i : ℝ) : ℂ) * I) + e ((t1.k : ℝ) / 192) * Complex.exp (((-P m1 i : ℝ) : ℂ) * I) +
        e ((t2.k : ℝ) / 192) * Complex.exp (((-P m2 i : ℝ) : ℂ) * I) +
      (e ((t3.k : ℝ) / 192) * Complex.exp (((-P m3 i : ℝ) : ℂ) * I) +
        e ((t4.k : ℝ) / 192) * Complex.exp (((-P m4 i : ℝ) : ℂ) * I) +
        e ((t5.k : ℝ) / 192) * Complex.exp (((-P m5 i : ℝ) : ℂ) * I))) = x0 + x1 + x2 + x3 + x4 + x5 := by
    simp only [x0, x1, x2, x3, x4, x5]; ring
  rw [hsplit]
  have a1 := norm_add_le (x0 + x1 + x2 + x3 + x4) x5
  have a2 := norm_add_le (x0 + x1 + x2 + x3) x4
  have a3 := norm_add_le (x0 + x1 + x2) x3
  have a4 := norm_add_le (x0 + x1) x2
  have a5 := norm_add_le x0 x1
  linarith [F.eps]

/-! ### The traversal -/

lemma lvl5_mem {ih : BinFn} {a4 : V12} {c1 c2 c3 c4 t5 c5 : CT} (h : lvl5 ih a4 c1 c2 c3 c4 t5 = true)
    (h5 : c5 = t5.l ∨ c5 = t5.r) : ih (a4.add c5.v) c1 c2 c3 c4 c5 = true := by
  unfold lvl5 at h; rw [Bool.and_eq_true] at h; rcases h5 with rfl | rfl; exacts [h.1, h.2]

lemma lvl4_mem {ih : BinFn} {a3 : V12} {c1 c2 c3 t4 t5 c4 : CT} (h : lvl4 ih a3 c1 c2 c3 t4 t5 = true)
    (h4 : c4 = t4.l ∨ c4 = t4.r) : lvl5 ih (a3.add c4.v) c1 c2 c3 c4 t5 = true := by
  unfold lvl4 at h; rw [Bool.and_eq_true] at h; rcases h4 with rfl | rfl; exacts [h.1, h.2]

lemma lvl3_mem {ih : BinFn} {a2 : V12} {c1 c2 t3 t4 t5 c3 : CT} (h : lvl3 ih a2 c1 c2 t3 t4 t5 = true)
    (h3 : c3 = t3.l ∨ c3 = t3.r) : lvl4 ih (a2.add c3.v) c1 c2 c3 t4 t5 = true := by
  unfold lvl3 at h; rw [Bool.and_eq_true] at h; rcases h3 with rfl | rfl; exacts [h.1, h.2]

lemma lvl2_mem {ih : BinFn} {a1 : V12} {c1 t2 t3 t4 t5 c2 : CT} (h : lvl2 ih a1 c1 t2 t3 t4 t5 = true)
    (h2 : c2 = t2.l ∨ c2 = t2.r) : lvl3 ih (a1.add c2.v) c1 c2 t3 t4 t5 = true := by
  unfold lvl2 at h; rw [Bool.and_eq_true] at h; rcases h2 with rfl | rfl; exacts [h.1, h.2]

lemma kids_mem {W0 : V12} {ih : BinFn} {t1 t2 t3 t4 t5 c1 c2 c3 c4 c5 : CT}
    (h : kids W0 ih t1 t2 t3 t4 t5 = true) (h1 : c1 = t1.l ∨ c1 = t1.r) (h2 : c2 = t2.l ∨ c2 = t2.r)
    (h3 : c3 = t3.l ∨ c3 = t3.r) (h4 : c4 = t4.l ∨ c4 = t4.r) (h5 : c5 = t5.l ∨ c5 = t5.r) :
    ih (sumAcc W0 c1 c2 c3 c4 c5) c1 c2 c3 c4 c5 = true := by
  have hk : lvl2 ih (W0.add c1.v) c1 t2 t3 t4 t5 = true := by
    unfold kids at h; rw [Bool.and_eq_true] at h; rcases h1 with rfl | rfl; exacts [h.1, h.2]
  exact lvl5_mem (lvl4_mem (lvl3_mem (lvl2_mem hk h2) h3) h4) h5

/-- Choosing the child box containing a point. -/
lemma child {P : RMat6} {Z boff : ℕ} {ε1 : ℝ} {m : I6} {d : ℕ} {t : CT} (hT : TreeOK P Z boff ε1 m (d + 1) t)
    {x : ℝ} (hx : |x - t.k / 192| ≤ 2 ^ (d + 1) / 192) :
    ∃ c', (c' = t.l ∨ c' = t.r) ∧ TreeOK P Z boff ε1 m d c' ∧ |x - c'.k / 192| ≤ 2 ^ d / 192 := by
  cases t with
  | leaf => exact hT.elim
  | node k v l r =>
    obtain ⟨-, hl, hr, hTl, hTr⟩ := hT
    change |x - (k : ℝ) / 192| ≤ 2 ^ (d + 1) / 192 at hx
    have hl' : (l.k : ℝ) = k - 2 ^ d := by
      have : ((l.k + 2 ^ d : ℕ) : ℝ) = k := by rw [hl]
      push_cast at this; linarith
    have hr' : (r.k : ℝ) = k + 2 ^ d := by rw [hr]; push_cast; ring
    rw [pow_succ, abs_le] at hx
    rcases le_total x ((k : ℝ) / 192) with hle | hle
    · refine ⟨l, Or.inl rfl, hTl, ?_⟩
      rw [hl', abs_le]; constructor <;> linarith [hx.1]
    · refine ⟨r, Or.inr rfl, hTr, ?_⟩
      rw [hr', abs_le]; constructor <;> linarith [hx.2]

/-- The conclusion for one point `β`: `htree` together with the first disjunct of `hleaf` of `StageCCert`, or a
depth-0 bin accepted by `leafOK`. -/
def Covered (P : RMat6) (T : Fin 4 → RMat6) (rH n r rF : ℝ) (W0 : V12) (leafOK : LeafFn) (β : I6 → ℝ) : Prop :=
  ∃ u : I6 → ℝ, ∃ a : ℝ, u j0 = 0 ∧ 0 ≤ a ∧ (∀ j, |β j - u j| ≤ a) ∧
    ((∀ δ, Admissible T rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • P) δ u a) ∨
      ∃ t1 t2 t3 t4 t5 : CT, u = uvec t1.k t2.k t3.k t4.k t5.k ∧ a = 1 / 192 ∧
        leafOK (sumAcc W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 = true)

/-- `β` lies in the bin of `(t₁, …, t₅)` at depth `d`. -/
def InBox (β : I6 → ℝ) (d : ℕ) (t1 t2 t3 t4 t5 : CT) : Prop :=
  β j0 = 0 ∧ |β m1 - t1.k / 192| ≤ 2 ^ d / 192 ∧ |β m2 - t2.k / 192| ≤ 2 ^ d / 192 ∧
    |β m3 - t3.k / 192| ≤ 2 ^ d / 192 ∧ |β m4 - t4.k / 192| ≤ 2 ^ d / 192 ∧ |β m5 - t5.k / 192| ≤ 2 ^ d / 192

lemma inBox_dist {β : I6 → ℝ} {d : ℕ} {t1 t2 t3 t4 t5 : CT} (h : InBox β d t1 t2 t3 t4 t5) :
    ∀ j, |β j - uvec t1.k t2.k t3.k t4.k t5.k j| ≤ 2 ^ d / 192 := by
  obtain ⟨h0, h1, h2, h3, h4, h5⟩ := h
  intro j
  rcases j with j | j <;> fin_cases j
  · change |β j0 - 0| ≤ _; rw [h0, sub_zero, abs_zero]; positivity
  · exact h1
  · exact h2
  · exact h3
  · exact h4
  · exact h5

/-- **Soundness of the recursive bin check.** -/
theorem binOK_sound {P : RMat6} {c : Cfg} {pq : ParQ} (hp : ParOK c pq)
    (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {T : Fin 4 → RMat6} {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (leafOK : LeafFn) :
    ∀ d, d ≤ 3 → ∀ t1 t2 t3 t4 t5 : CT,
      TreeOK P c.Z c.boff pq.eps1 m1 d t1 → TreeOK P c.Z c.boff pq.eps1 m2 d t2 →
      TreeOK P c.Z c.boff pq.eps1 m3 d t3 → TreeOK P c.Z c.boff pq.eps1 m4 d t4 →
      TreeOK P c.Z c.boff pq.eps1 m5 d t5 →
      binOK c leafOK d (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 = true →
      ∀ β, InBox β d t1 t2 t3 t4 t5 → Covered P T rH n r rF c.W0 leafOK β := by
  intro d
  induction d with
  | zero =>
    intro hd t1 t2 t3 t4 t5 h1 h2 h3 h4 h5 h β hβ
    have h0 : baseB c leafOK (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 = true := h
    unfold baseB at h0
    rw [Bool.or_eq_true] at h0
    refine ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ 0 / 192, rfl, by positivity, inBox_dist hβ, ?_⟩
    rcases h0 with hrej | hleaf
    · exact Or.inl (rejectB_sound hp hd (acc_err hp hW h1.node h2.node h3.node h4.node h5.node) hrej hK0 hK hKb
        hr hrF)
    · exact Or.inr ⟨t1, t2, t3, t4, t5, rfl, by norm_num, hleaf⟩
  | succ d ih =>
    intro hd t1 t2 t3 t4 t5 h1 h2 h3 h4 h5 h β hβ
    have h0 : stepB c d (binOK c leafOK d) (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 = true := h
    unfold stepB at h0
    rw [Bool.or_eq_true] at h0
    rcases h0 with hrej | hk
    · exact ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ (d + 1) / 192, rfl, by positivity, inBox_dist hβ,
        Or.inl (rejectB_sound hp hd (acc_err hp hW h1.node h2.node h3.node h4.node h5.node) hrej hK0 hK hKb hr hrF)⟩
    · obtain ⟨hb0, hb1, hb2, hb3, hb4, hb5⟩ := hβ
      obtain ⟨c1, hc1, hT1, hd1⟩ := child h1 hb1
      obtain ⟨c2, hc2, hT2, hd2⟩ := child h2 hb2
      obtain ⟨c3, hc3, hT3, hd3⟩ := child h3 hb3
      obtain ⟨c4, hc4, hT4, hd4⟩ := child h4 hb4
      obtain ⟨c5, hc5, hT5, hd5⟩ := child h5 hb5
      exact ih (by omega) c1 c2 c3 c4 c5 hT1 hT2 hT3 hT4 hT5 (kids_mem hk hc1 hc2 hc3 hc4 hc5) β
        ⟨hb0, hd1, hd2, hd3, hd4, hd5⟩

/-! ### The top level -/

lemma allL_mem {α : Type} {l : List α} {f : α → Bool} (h : allL l f = true) : ∀ a ∈ l, f a = true := by
  induction l with
  | nil => intro a ha; cases ha
  | cons x xs ih =>
    have h' : (f x && allL xs f) = true := h
    rw [Bool.and_eq_true] at h'
    intro a ha
    rcases List.mem_cons.mp ha with rfl | ha
    · exact h'.1
    · exact ih h'.2 a ha

lemma allL_of_forall {α : Type} {l : List α} {f : α → Bool} (h : ∀ a ∈ l, f a = true) : allL l f = true := by
  induction l with
  | nil => rfl
  | cons x xs ih =>
    show (f x && allL xs f) = true
    rw [Bool.and_eq_true]
    exact ⟨h x List.mem_cons_self, ih fun a ha => h a (List.mem_cons_of_mem _ ha)⟩

/-- A slab from its twelve sub-slabs (one declaration each, to bound kernel memory). -/
lemma slabOK_of_sub {c : Cfg} {leafOK : LeafFn} {c1 : CT} {L2 L3 L4 L5 : List CT}
    (h : ∀ c2 ∈ L2, slabOK c leafOK c1 [c2] L3 L4 L5 = true) : slabOK c leafOK c1 L2 L3 L4 L5 = true := by
  apply allL_of_forall
  intro c2 hc2
  have h' : (top3 c leafOK ((c.W0.add c1.v).add c2.v) c1 c2 L3 L4 L5 && true) = true := h c2 hc2
  simpa using h'

/-- `L` lists the twelve level-12 roots, midpoints `k = 8, 24, …, 184`. -/
def RootsK (L : List CT) : Prop := L.map CT.k = [8, 24, 40, 56, 72, 88, 104, 120, 136, 152, 168, 184]

instance (L : List CT) : Decidable (RootsK L) := by unfold RootsK; infer_instance

lemma roots_cover {L : List CT} (hL : RootsK L) {x : ℝ} (h0 : 0 ≤ x) (h1 : x ≤ 1) :
    ∃ c ∈ L, |x - c.k / 192| ≤ 2 ^ 3 / 192 := by
  have key : ∃ b : ℕ, b ≤ 11 ∧ (b : ℝ) ≤ 12 * x ∧ 12 * x ≤ b + 1 := by
    refine ⟨min ⌊12 * x⌋₊ 11, min_le_right _ _, ?_, ?_⟩
    · have := Nat.floor_le (show 0 ≤ 12 * x by linarith)
      rw [Nat.cast_min]; exact min_le_of_left_le this
    · rcases le_total ⌊12 * x⌋₊ 11 with h | h
      · rw [min_eq_left h]; exact (Nat.lt_floor_add_one _).le
      · rw [min_eq_right h]; push_cast; linarith
  obtain ⟨b, hb, hlo, hhi⟩ := key
  have hmem : 16 * b + 8 ∈ L.map CT.k := by rw [hL]; interval_cases b <;> simp
  obtain ⟨c, hc, hck⟩ := List.mem_map.mp hmem
  refine ⟨c, hc, ?_⟩
  rw [hck, abs_le]; push_cast; constructor <;> linarith

/-- **One slab.** -/
theorem slabOK_sound {P : RMat6} {c : Cfg} {pq : ParQ} (hp : ParOK c pq)
    (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {T : Fin 4 → RMat6} {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (leafOK : LeafFn)
    {c1 : CT} {L2 L3 L4 L5 : List CT} (hT1 : TreeOK P c.Z c.boff pq.eps1 m1 3 c1)
    (hT2 : ∀ t ∈ L2, TreeOK P c.Z c.boff pq.eps1 m2 3 t) (hT3 : ∀ t ∈ L3, TreeOK P c.Z c.boff pq.eps1 m3 3 t)
    (hT4 : ∀ t ∈ L4, TreeOK P c.Z c.boff pq.eps1 m4 3 t) (hT5 : ∀ t ∈ L5, TreeOK P c.Z c.boff pq.eps1 m5 3 t)
    (hR2 : RootsK L2) (hR3 : RootsK L3) (hR4 : RootsK L4) (hR5 : RootsK L5)
    (h : slabOK c leafOK c1 L2 L3 L4 L5 = true) :
    ∀ β : I6 → ℝ, β j0 = 0 → |β m1 - c1.k / 192| ≤ 2 ^ 3 / 192 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) →
      Covered P T rH n r rF c.W0 leafOK β := by
  intro β hβ0 hβ1 hβ
  obtain ⟨c2, hc2, hd2⟩ := roots_cover hR2 (hβ m2).1 (hβ m2).2
  obtain ⟨c3, hc3, hd3⟩ := roots_cover hR3 (hβ m3).1 (hβ m3).2
  obtain ⟨c4, hc4, hd4⟩ := roots_cover hR4 (hβ m4).1 (hβ m4).2
  obtain ⟨c5, hc5, hd5⟩ := roots_cover hR5 (hβ m5).1 (hβ m5).2
  have g2 := allL_mem h c2 hc2
  have g3 := allL_mem g2 c3 hc3
  have g4 := allL_mem g3 c4 hc4
  have g5 := allL_mem g4 c5 hc5
  exact binOK_sound hp hW hK0 hK hKb hr hrF leafOK 3 le_rfl c1 c2 c3 c4 c5 hT1 (hT2 c2 hc2) (hT3 c3 hc3)
    (hT4 c4 hc4) (hT5 c5 hc5) g5 β ⟨hβ0, hβ1, hd2, hd3, hd4, hd5⟩

/-- **The whole bin tree** (`htree` + `hleaf` of `StageCCert` for the direct test): every phase vector
`β ∈ [0,1]⁵` lies in a bin that is rejected for all admissible `δ`, or in a depth-0 bin accepted by `leafOK`. -/
theorem topOK_sound {P : RMat6} {c : Cfg} {pq : ParQ} (hp : ParOK c pq)
    (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {T : Fin 4 → RMat6} {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (leafOK : LeafFn)
    {L1 L2 L3 L4 L5 : List CT}
    (hT1 : ∀ t ∈ L1, TreeOK P c.Z c.boff pq.eps1 m1 3 t)
    (hT2 : ∀ t ∈ L2, TreeOK P c.Z c.boff pq.eps1 m2 3 t) (hT3 : ∀ t ∈ L3, TreeOK P c.Z c.boff pq.eps1 m3 3 t)
    (hT4 : ∀ t ∈ L4, TreeOK P c.Z c.boff pq.eps1 m4 3 t) (hT5 : ∀ t ∈ L5, TreeOK P c.Z c.boff pq.eps1 m5 3 t)
    (hR1 : RootsK L1) (hR2 : RootsK L2) (hR3 : RootsK L3) (hR4 : RootsK L4) (hR5 : RootsK L5)
    (h : ∀ c1 ∈ L1, slabOK c leafOK c1 L2 L3 L4 L5 = true) :
    ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) → Covered P T rH n r rF c.W0 leafOK β := by
  intro β hβ0 hβ
  obtain ⟨c1, hc1, hd1⟩ := roots_cover hR1 (hβ m1).1 (hβ m1).2
  exact slabOK_sound hp hW hK0 hK hKb hr hrF leafOK (hT1 c1 hc1) hT2 hT3 hT4 hT5 hR2 hR3 hR4 hR5 (h c1 hc1) β
    hβ0 hd1 hβ

end

end NoFourMUBs.KernelAtlas
