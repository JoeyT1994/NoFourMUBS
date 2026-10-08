import ExactInterval
import Mathlib.Data.Complex.Basic

/-! An exact rational rectangle interpreter. This is an alternative certificate
checker, not a theorem about the C++ floating-point implementation. -/
set_option autoImplicit false
namespace ExactMeanChecker20261006
open SignedMeanIntake20261006
open scoped ComplexConjugate

structure CBox where
  re : QInterval
  im : QInterval
  deriving DecidableEq, Repr

namespace CBox
def Contains (b : CBox) (z : ℂ) : Prop := b.re.Contains z.re ∧ b.im.Contains z.im
def point (r i : ℚ) : CBox := ⟨.point r,.point i⟩
def add (a b : CBox) : CBox := ⟨.add a.re b.re,.add a.im b.im⟩
def neg (a : CBox) : CBox := ⟨.neg a.re,.neg a.im⟩
def mul (a b : CBox) : CBox :=
  ⟨.sub (.mul a.re b.re) (.mul a.im b.im),
   .add (.mul a.re b.im) (.mul a.im b.re)⟩
def star (a : CBox) : CBox := ⟨a.re,.neg a.im⟩

theorem point_sound (r i : ℚ) : (point r i).Contains ⟨(r:ℝ),(i:ℝ)⟩ :=
  ⟨QInterval.point_sound r,QInterval.point_sound i⟩
theorem add_sound {a b : CBox} {z w : ℂ} (hz : a.Contains z) (hw : b.Contains w) :
    (add a b).Contains (z+w) :=
  ⟨QInterval.add_sound hz.1 hw.1,QInterval.add_sound hz.2 hw.2⟩
theorem neg_sound {a : CBox} {z : ℂ} (hz : a.Contains z) : (neg a).Contains (-z) :=
  ⟨QInterval.neg_sound hz.1,QInterval.neg_sound hz.2⟩
theorem mul_sound {a b : CBox} {z w : ℂ} (hz : a.Contains z) (hw : b.Contains w) :
    (mul a b).Contains (z*w) :=
  ⟨QInterval.sub_sound (QInterval.mul_sound hz.1 hw.1) (QInterval.mul_sound hz.2 hw.2),
   QInterval.add_sound (QInterval.mul_sound hz.1 hw.2) (QInterval.mul_sound hz.2 hw.1)⟩
theorem star_sound {a : CBox} {z : ℂ} (hz : a.Contains z) :
    (star a).Contains (conj z) := ⟨hz.1,QInterval.neg_sound hz.2⟩
end CBox

inductive CExpr (n : ℕ) where
  | point : ℚ → ℚ → CExpr n
  | var : Fin n → CExpr n
  | add : CExpr n → CExpr n → CExpr n
  | neg : CExpr n → CExpr n
  | mul : CExpr n → CExpr n → CExpr n
  | star : CExpr n → CExpr n
  deriving Repr

namespace CExpr
instance {n : ℕ} : Add (CExpr n) := ⟨.add⟩
instance {n : ℕ} : Neg (CExpr n) := ⟨.neg⟩
instance {n : ℕ} : Sub (CExpr n) := ⟨fun a b => .add a (.neg b)⟩
instance {n : ℕ} : Mul (CExpr n) := ⟨.mul⟩
instance {n : ℕ} (k : ℕ) : OfNat (CExpr n) k := ⟨.point k 0⟩
def pow {n : ℕ} (a : CExpr n) : ℕ → CExpr n
  | 0 => 1
  | k+1 => .mul (pow a k) a
instance {n : ℕ} : Pow (CExpr n) ℕ := ⟨pow⟩

noncomputable def eval {n : ℕ} (z : Fin n → ℂ) : CExpr n → ℂ
  | .point r i => ⟨(r:ℝ),(i:ℝ)⟩
  | .var i => z i
  | .add a b => eval z a+eval z b
  | .neg a => -eval z a
  | .mul a b => eval z a*eval z b
  | .star a => conj (eval z a)
def range {n : ℕ} (b : Fin n → CBox) : CExpr n → CBox
  | .point r i => .point r i
  | .var i => b i
  | .add a c => .add (range b a) (range b c)
  | .neg a => .neg (range b a)
  | .mul a c => .mul (range b a) (range b c)
  | .star a => .star (range b a)

@[simp] theorem eval_add {n : ℕ} (z : Fin n → ℂ) (a b : CExpr n) :
    eval z (a+b)=eval z a+eval z b := rfl
@[simp] theorem eval_neg {n : ℕ} (z : Fin n → ℂ) (a : CExpr n) :
    eval z (-a)= -eval z a := rfl
@[simp] theorem eval_sub {n : ℕ} (z : Fin n → ℂ) (a b : CExpr n) :
    eval z (a-b)=eval z a-eval z b := by
  change eval z a + -eval z b = eval z a - eval z b
  exact (sub_eq_add_neg _ _).symm
@[simp] theorem eval_mul {n : ℕ} (z : Fin n → ℂ) (a b : CExpr n) :
    eval z (a*b)=eval z a*eval z b := rfl
@[simp] theorem eval_star {n : ℕ} (z : Fin n → ℂ) (a : CExpr n) :
    eval z (star a)=conj (eval z a) := rfl
@[simp] theorem eval_ofNat {n : ℕ} (z : Fin n → ℂ) (k : ℕ) :
    eval z (ofNat(k):CExpr n)=(k:ℂ) := by
  change (⟨((k:ℚ):ℝ),((0:ℚ):ℝ)⟩:ℂ)=(k:ℂ)
  apply Complex.ext <;> simp
@[simp] theorem eval_pow {n : ℕ} (z : Fin n → ℂ) (a : CExpr n) (k : ℕ) :
    eval z (a^k)=eval z a^k := by
  induction k with
  | zero =>
    change eval z (1:CExpr n)=eval z a^0
    rw [eval_ofNat,pow_zero]; norm_num
  | succ k ih => change eval z (a^k)*eval z a=eval z a^(k+1); rw [ih,pow_succ]

theorem range_sound {n : ℕ} (e : CExpr n) (b : Fin n → CBox) (z : Fin n → ℂ)
    (hz : ∀ i, (b i).Contains (z i)) : (range b e).Contains (eval z e) := by
  induction e with
  | point r i => exact CBox.point_sound r i
  | var i => exact hz i
  | add a c ha hc => exact CBox.add_sound ha hc
  | neg a ha => exact CBox.neg_sound ha
  | mul a c ha hc => exact CBox.mul_sound ha hc
  | star a ha => exact CBox.star_sound ha
end CExpr
end ExactMeanChecker20261006

#print axioms ExactMeanChecker20261006.CBox.point_sound
#print axioms ExactMeanChecker20261006.CBox.add_sound
#print axioms ExactMeanChecker20261006.CBox.neg_sound
#print axioms ExactMeanChecker20261006.CBox.mul_sound
#print axioms ExactMeanChecker20261006.CBox.star_sound
#print axioms ExactMeanChecker20261006.CExpr.eval_add
#print axioms ExactMeanChecker20261006.CExpr.eval_neg
#print axioms ExactMeanChecker20261006.CExpr.eval_sub
#print axioms ExactMeanChecker20261006.CExpr.eval_mul
#print axioms ExactMeanChecker20261006.CExpr.eval_star
#print axioms ExactMeanChecker20261006.CExpr.eval_ofNat
#print axioms ExactMeanChecker20261006.CExpr.eval_pow
#print axioms ExactMeanChecker20261006.CExpr.range_sound
