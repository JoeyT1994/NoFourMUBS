import SharedRationalIncidence
import IntervalKernel

/-! Executable rational sparse programs. Normalization is an untrusted producer
step: a polynomial identity must be checked before a box receives physical
meaning. Every occurrence of a variable uses the same point and same interval. -/
namespace Mub6.Classification.SparsePolynomialIntervals
open Mub6.Numerical.IntervalKernel MvPolynomial
noncomputable section

structure Term (σ : Type*) where
  coefficient : ℚ
  powers : List (σ × ℕ)

abbrev Program (σ : Type*) := List (Term σ)

def powerBox (B : Interval) : ℕ → Interval
  | 0 => point 1
  | 1 => B
  | n + 2 => mul (square B) (powerBox B n)

theorem powerBox_sound {B : Interval} {x : ℝ} (hx : Mem B x) :
    ∀ n, Mem (powerBox B n) (x ^ n)
  | 0 => by simpa [powerBox] using mem_point 1
  | 1 => by simpa [powerBox] using hx
  | n + 2 => by
      have h := mem_mul (mem_square hx) (powerBox_sound hx n)
      simpa [powerBox, pow_add, mul_comm] using h

def powersPolynomial {σ : Type*} : List (σ × ℕ) → MvPolynomial σ ℚ
  | [] => 1
  | (i, n) :: rest => X i ^ n * powersPolynomial rest

def powersValue {σ : Type*} (p : σ → ℝ) : List (σ × ℕ) → ℝ
  | [] => 1
  | (i, n) :: rest => p i ^ n * powersValue p rest

def powersBox {σ : Type*} (B : σ → Interval) : List (σ × ℕ) → Interval
  | [] => point 1
  | (i, n) :: rest => mul (powerBox (B i) n) (powersBox B rest)

def termPolynomial {σ : Type*} (t : Term σ) : MvPolynomial σ ℚ :=
  C t.coefficient * powersPolynomial t.powers

def termValue {σ : Type*} (p : σ → ℝ) (t : Term σ) : ℝ :=
  (t.coefficient : ℝ) * powersValue p t.powers

def termBox {σ : Type*} (B : σ → Interval) (t : Term σ) : Interval :=
  mul (point t.coefficient) (powersBox B t.powers)

def programPolynomial {σ : Type*} : Program σ → MvPolynomial σ ℚ
  | [] => 0
  | t :: rest => termPolynomial t + programPolynomial rest

def programValue {σ : Type*} (p : σ → ℝ) : Program σ → ℝ
  | [] => 0
  | t :: rest => termValue p t + programValue p rest

def enclose {σ : Type*} (B : σ → Interval) : Program σ → Interval
  | [] => point 0
  | t :: rest => add (termBox B t) (enclose B rest)

theorem powersPolynomial_eval {σ : Type*} (p : σ → ℝ) (ts : List (σ × ℕ)) :
    eval₂ (algebraMap ℚ ℝ) p (powersPolynomial ts) = powersValue p ts := by
  induction ts with
  | nil => simp [powersPolynomial, powersValue]
  | cons t rest ih =>
      rcases t with ⟨i, n⟩
      simp [powersPolynomial, powersValue, ih]

theorem termPolynomial_eval {σ : Type*} (p : σ → ℝ) (t : Term σ) :
    eval₂ (algebraMap ℚ ℝ) p (termPolynomial t) = termValue p t := by
  simp [termPolynomial, termValue, powersPolynomial_eval]

theorem programPolynomial_eval {σ : Type*} (p : σ → ℝ) (ts : Program σ) :
    eval₂ (algebraMap ℚ ℝ) p (programPolynomial ts) = programValue p ts := by
  induction ts with
  | nil => simp [programPolynomial, programValue]
  | cons t rest ih => simp [programPolynomial, programValue, termPolynomial_eval, ih]

theorem powersBox_sound {σ : Type*} (B : σ → Interval) (p : σ → ℝ)
    (hp : ∀ i, Mem (B i) (p i)) (ts : List (σ × ℕ)) :
    Mem (powersBox B ts) (powersValue p ts) := by
  induction ts with
  | nil => simpa [powersBox, powersValue] using mem_point 1
  | cons t rest ih =>
      rcases t with ⟨i, n⟩
      exact mem_mul (powerBox_sound (hp i) n) ih

theorem termBox_sound {σ : Type*} (B : σ → Interval) (p : σ → ℝ)
    (hp : ∀ i, Mem (B i) (p i)) (t : Term σ) :
    Mem (termBox B t) (termValue p t) :=
  mem_mul (mem_point t.coefficient) (powersBox_sound B p hp t.powers)

theorem enclose_sound {σ : Type*} (B : σ → Interval) (p : σ → ℝ)
    (hp : ∀ i, Mem (B i) (p i)) (ts : Program σ) :
    Mem (enclose B ts) (programValue p ts) := by
  induction ts with
  | nil => simpa [enclose, programValue] using mem_point 0
  | cons t rest ih => exact mem_add (termBox_sound B p hp t) ih

/-- The identity binds serialized, normalized terms to the requested polynomial.
The producer is not trusted to supply correct coefficients or exponents. -/
theorem enclose_polynomial {σ : Type*} (B : σ → Interval) (p : σ → ℝ)
    (hp : ∀ i, Mem (B i) (p i)) (ts : Program σ) (P : MvPolynomial σ ℚ)
    (h : programPolynomial ts = P) :
    Mem (enclose B ts) (eval₂ (algebraMap ℚ ℝ) p P) := by
  rw [← h, programPolynomial_eval]
  exact enclose_sound B p hp ts

/-- Any two serialized representations of the same polynomial may be used;
the interval producer may select a representation with better cancellation. -/
theorem enclose_equal_polynomial {σ : Type*} (B : σ → Interval) (p : σ → ℝ)
    (hp : ∀ i, Mem (B i) (p i)) (s t : Program σ)
    (h : programPolynomial s = programPolynomial t) :
    Mem (enclose B s) (programValue p t) := by
  simpa only [programPolynomial_eval] using
    enclose_polynomial B p hp s (programPolynomial t) h

#print axioms Mub6.Classification.SparsePolynomialIntervals.powerBox_sound
#print axioms Mub6.Classification.SparsePolynomialIntervals.powersPolynomial_eval
#print axioms Mub6.Classification.SparsePolynomialIntervals.termPolynomial_eval
#print axioms Mub6.Classification.SparsePolynomialIntervals.programPolynomial_eval
#print axioms Mub6.Classification.SparsePolynomialIntervals.powersBox_sound
#print axioms Mub6.Classification.SparsePolynomialIntervals.termBox_sound
#print axioms Mub6.Classification.SparsePolynomialIntervals.enclose_sound
#print axioms Mub6.Classification.SparsePolynomialIntervals.enclose_polynomial
#print axioms Mub6.Classification.SparsePolynomialIntervals.enclose_equal_polynomial
end
end Mub6.Classification.SparsePolynomialIntervals
