import Mathlib.Data.Rat.Cast.Order
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-! Exact rational interval arithmetic. Every executable bound has a proof
against ordinary real arithmetic. No floating-point or native-decision oracle
is used. Intervals need not carry a nonemptiness proof: a reversed interval
simply contains no real value. -/
set_option autoImplicit false
namespace SignedMeanIntake20261006

structure QInterval where
  lo : ℚ
  hi : ℚ
  deriving DecidableEq, Repr

namespace QInterval

def Contains (a : QInterval) (x : ℝ) : Prop := (a.lo : ℝ) ≤ x ∧ x ≤ (a.hi : ℝ)
def point (q : ℚ) : QInterval := ⟨q, q⟩
def add (a b : QInterval) : QInterval := ⟨a.lo+b.lo, a.hi+b.hi⟩
def neg (a : QInterval) : QInterval := ⟨-a.hi, -a.lo⟩
def sub (a b : QInterval) : QInterval := add a (neg b)
def mul (a b : QInterval) : QInterval :=
  ⟨min (min (a.lo*b.lo) (a.lo*b.hi)) (min (a.hi*b.lo) (a.hi*b.hi)),
   max (max (a.lo*b.lo) (a.lo*b.hi)) (max (a.hi*b.lo) (a.hi*b.hi))⟩
def pow (a : QInterval) : ℕ → QInterval
  | 0 => point 1
  | n+1 => mul (pow a n) a
def encloses (outer inner : QInterval) : Bool :=
  decide (outer.lo ≤ inner.lo ∧ inner.hi ≤ outer.hi)

theorem point_sound (q : ℚ) : (point q).Contains (q : ℝ) := ⟨le_rfl, le_rfl⟩

theorem add_sound {a b : QInterval} {x y : ℝ}
    (hx : a.Contains x) (hy : b.Contains y) : (add a b).Contains (x+y) := by
  rcases hx with ⟨hxl,hxu⟩
  rcases hy with ⟨hyl,hyu⟩
  constructor <;> simp only [add, Rat.cast_add] <;> linarith

theorem neg_sound {a : QInterval} {x : ℝ} (hx : a.Contains x) :
    (neg a).Contains (-x) := by
  rcases hx with ⟨hl,hu⟩
  constructor <;> simp only [neg, Rat.cast_neg] <;> linarith

theorem sub_sound {a b : QInterval} {x y : ℝ}
    (hx : a.Contains x) (hy : b.Contains y) : (sub a b).Contains (x-y) := by
  simpa only [sub, sub_eq_add_neg] using add_sound hx (neg_sound hy)

/-- A bilinear expression on a rectangle is bounded by its four vertices. -/
theorem real_mul_bounds {al ah bl bh x y : ℝ}
    (hx : al ≤ x ∧ x ≤ ah) (hy : bl ≤ y ∧ y ≤ bh) :
    min (min (al*bl) (al*bh)) (min (ah*bl) (ah*bh)) ≤ x*y ∧
    x*y ≤ max (max (al*bl) (al*bh)) (max (ah*bl) (ah*bh)) := by
  have lower : ∀ a, min (a*bl) (a*bh) ≤ a*y := by
    intro a
    by_cases ha : 0 ≤ a
    · exact le_trans (min_le_left _ _) (mul_le_mul_of_nonneg_left hy.1 ha)
    · exact le_trans (min_le_right _ _) (mul_le_mul_of_nonpos_left hy.2 (le_of_not_ge ha))
  have upper : ∀ a, a*y ≤ max (a*bl) (a*bh) := by
    intro a
    by_cases ha : 0 ≤ a
    · exact le_trans (mul_le_mul_of_nonneg_left hy.2 ha) (le_max_right _ _)
    · exact le_trans (mul_le_mul_of_nonpos_left hy.1 (le_of_not_ge ha)) (le_max_left _ _)
  by_cases hy0 : 0 ≤ y
  · exact ⟨le_trans (min_le_left _ _) (le_trans (lower al)
        (mul_le_mul_of_nonneg_right hx.1 hy0)),
      le_trans (mul_le_mul_of_nonneg_right hx.2 hy0)
        (le_trans (upper ah) (le_max_right _ _))⟩
  · have hy0' := le_of_not_ge hy0
    exact ⟨le_trans (min_le_right _ _) (le_trans (lower ah)
        (mul_le_mul_of_nonpos_right hx.2 hy0')),
      le_trans (mul_le_mul_of_nonpos_right hx.1 hy0')
        (le_trans (upper al) (le_max_left _ _))⟩

theorem mul_sound {a b : QInterval} {x y : ℝ}
    (hx : a.Contains x) (hy : b.Contains y) : (mul a b).Contains (x*y) := by
  simpa only [Contains, mul, Rat.cast_min, Rat.cast_max, Rat.cast_mul] using
    real_mul_bounds hx hy

theorem pow_sound {a : QInterval} {x : ℝ} (hx : a.Contains x) (n : ℕ) :
    (pow a n).Contains (x^n) := by
  induction n with
  | zero => simpa only [pow, pow_zero, Rat.cast_one] using point_sound 1
  | succ n ih => simpa only [pow, pow_succ] using mul_sound ih hx

theorem encloses_sound {outer inner : QInterval} {x : ℝ}
    (h : encloses outer inner = true) (hx : inner.Contains x) : outer.Contains x := by
  have hh : outer.lo ≤ inner.lo ∧ inner.hi ≤ outer.hi := of_decide_eq_true h
  have hl : (outer.lo : ℝ) ≤ (inner.lo : ℝ) := by exact_mod_cast hh.1
  have hu : (inner.hi : ℝ) ≤ (outer.hi : ℝ) := by exact_mod_cast hh.2
  exact ⟨le_trans hl hx.1, le_trans hx.2 hu⟩

end QInterval

/-- Algebraic expressions include no division by variables. Native expressions
which use conjugation instead of negative powers can be represented componentwise. -/
inductive RingExpr (n : ℕ) where
  | rat : ℚ → RingExpr n
  | var : Fin n → RingExpr n
  | add : RingExpr n → RingExpr n → RingExpr n
  | neg : RingExpr n → RingExpr n
  | mul : RingExpr n → RingExpr n → RingExpr n
  deriving Repr

namespace RingExpr

def eval {n : ℕ} (xs : Fin n → ℝ) : RingExpr n → ℝ
  | .rat q => q
  | .var i => xs i
  | .add a b => eval xs a + eval xs b
  | .neg a => -eval xs a
  | .mul a b => eval xs a * eval xs b

def range {n : ℕ} (xs : Fin n → QInterval) : RingExpr n → QInterval
  | .rat q => .point q
  | .var i => xs i
  | .add a b => .add (range xs a) (range xs b)
  | .neg a => .neg (range xs a)
  | .mul a b => .mul (range xs a) (range xs b)

def check {n : ℕ} (xs : Fin n → QInterval) (e : RingExpr n) (expected : QInterval) : Bool :=
  expected.encloses (range xs e)

theorem range_sound {n : ℕ} (e : RingExpr n) (xs : Fin n → QInterval) (v : Fin n → ℝ)
    (hv : ∀ i, (xs i).Contains (v i)) : (range xs e).Contains (eval v e) := by
  induction e with
  | rat q => exact QInterval.point_sound q
  | var i => exact hv i
  | add a b ha hb => exact QInterval.add_sound ha hb
  | neg a ha => exact QInterval.neg_sound ha
  | mul a b ha hb => exact QInterval.mul_sound ha hb

theorem check_sound {n : ℕ} (e : RingExpr n) (xs : Fin n → QInterval)
    (expected : QInterval) (v : Fin n → ℝ)
    (hv : ∀ i, (xs i).Contains (v i)) (hc : check xs e expected = true) :
    expected.Contains (eval v e) := QInterval.encloses_sound hc (range_sound e xs v hv)

end RingExpr
end SignedMeanIntake20261006

#print axioms SignedMeanIntake20261006.QInterval.real_mul_bounds
#print axioms SignedMeanIntake20261006.QInterval.add_sound
#print axioms SignedMeanIntake20261006.QInterval.neg_sound
#print axioms SignedMeanIntake20261006.QInterval.sub_sound
#print axioms SignedMeanIntake20261006.QInterval.mul_sound
#print axioms SignedMeanIntake20261006.QInterval.pow_sound
#print axioms SignedMeanIntake20261006.QInterval.encloses_sound
#print axioms SignedMeanIntake20261006.RingExpr.range_sound
#print axioms SignedMeanIntake20261006.RingExpr.check_sound
