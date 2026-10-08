import ExactInterval
import SharpPhaseTaylor

/-! A computable rational complex Taylor evaluator and its real analytic
soundness. It reuses the previously checked sharp imaginary-axis remainder.
This certifies transcendental input intervals, not the native Taylor engine. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace SignedMeanIntake20261006
open Centiradian20261006.SharpTaylor20261006

structure QComplex where
  re : ℚ
  im : ℚ
  deriving DecidableEq, Repr

namespace QComplex

def toComplex (z : QComplex) : ℂ := ⟨z.re, z.im⟩
def zero : QComplex := ⟨0,0⟩
def one : QComplex := ⟨1,0⟩
def add (a b : QComplex) : QComplex := ⟨a.re+b.re,a.im+b.im⟩
def mul (a b : QComplex) : QComplex := ⟨a.re*b.re-a.im*b.im,a.re*b.im+a.im*b.re⟩
def divNat (a : QComplex) (n : ℕ) : QComplex := ⟨a.re/n,a.im/n⟩
def pow (a : QComplex) : ℕ → QComplex
  | 0 => one
  | n+1 => mul (pow a n) a
def imaginary (q : ℚ) : QComplex := ⟨0,q⟩
def phasePartialQ (q : ℚ) : ℕ → QComplex
  | 0 => zero
  | n+1 => add (phasePartialQ q n) (divNat (pow (imaginary q) n) n.factorial)

theorem map_zero : toComplex zero=0 := by apply Complex.ext <;> simp [toComplex,zero]
theorem map_one : toComplex one=1 := by apply Complex.ext <;> simp [toComplex,one]
theorem map_add (a b : QComplex) : toComplex (add a b)=toComplex a+toComplex b := by
  apply Complex.ext <;> simp [toComplex,add]
theorem map_mul (a b : QComplex) : toComplex (mul a b)=toComplex a*toComplex b := by
  apply Complex.ext <;> simp [toComplex,mul]
theorem map_divNat (a : QComplex) (n : ℕ) :
    toComplex (divNat a n)=toComplex a/(n : ℂ) := by
  apply Complex.ext <;> simp [toComplex,divNat,Complex.div_natCast_re,Complex.div_natCast_im]
theorem map_pow (a : QComplex) (n : ℕ) : toComplex (pow a n)=toComplex a^n := by
  induction n with
  | zero => simp only [pow,map_one,pow_zero]
  | succ n ih => simp only [pow,map_mul,ih,pow_succ]
theorem map_imaginary (q : ℚ) : toComplex (imaginary q)=Complex.I*((q:ℝ):ℂ) := by
  apply Complex.ext <;> simp [toComplex,imaginary]

theorem phasePartialQ_sound (q : ℚ) (n : ℕ) :
    toComplex (phasePartialQ q n)=phasePartial n (q:ℝ) := by
  induction n with
  | zero => simp only [phasePartialQ,map_zero,phasePartial_zero]
  | succ n ih =>
      rw [phasePartialQ,map_add,map_divNat,map_pow,map_imaginary,ih,phasePartial_succ]

end QComplex

/-- Exact remainder, interpreted in the rationals before any comparison. -/
def phaseError (n : ℕ) (q : ℚ) : ℚ := |q|^n/(n.factorial : ℚ)
def phaseBox (n : ℕ) (q : ℚ) : QInterval × QInterval :=
  let p := QComplex.phasePartialQ q n
  let e := phaseError n q
  (⟨p.re-e,p.re+e⟩, ⟨p.im-e,p.im+e⟩)

theorem phaseError_cast (n : ℕ) (q : ℚ) :
    (phaseError n q : ℝ)=|(q:ℝ)|^n/(n.factorial:ℝ) := by
  simp only [phaseError,Rat.cast_div,Rat.cast_pow,Rat.cast_abs,Rat.cast_natCast]

theorem phaseBox_sound (n : ℕ) (q : ℚ) :
    (phaseBox n q).1.Contains (Real.cos (q:ℝ)) ∧
    (phaseBox n q).2.Contains (Real.sin (q:ℝ)) := by
  have h := phaseRemainder_bound n (q:ℝ)
  rw [phaseRemainder,← QComplex.phasePartialQ_sound q n,← phaseError_cast n q] at h
  have hr := le_trans (Complex.abs_re_le_norm
    (Complex.exp (Complex.I*((q:ℝ):ℂ))-(QComplex.phasePartialQ q n).toComplex)) h
  have hi := le_trans (Complex.abs_im_le_norm
    (Complex.exp (Complex.I*((q:ℝ):ℂ))-(QComplex.phasePartialQ q n).toComplex)) h
  simp only [Complex.sub_re,Complex.sub_im,QComplex.toComplex] at hr hi
  rw [mul_comm Complex.I,Complex.exp_ofReal_mul_I_re] at hr
  rw [mul_comm Complex.I,Complex.exp_ofReal_mul_I_im] at hi
  rcases abs_le.mp hr with ⟨hrl,hru⟩
  rcases abs_le.mp hi with ⟨hil,hiu⟩
  constructor <;> constructor <;>
    simp only [phaseBox,QInterval.Contains,Rat.cast_sub,Rat.cast_add] <;> linarith

/-- This finite checker proves actual sine/cosine bounds once its rational
computation reduces to true. The producer's floating-point assertion is unused. -/
def phaseCheck (n : ℕ) (q : ℚ) (cosBox sinBox : QInterval) : Bool :=
  cosBox.encloses (phaseBox n q).1 && sinBox.encloses (phaseBox n q).2

theorem phaseCheck_sound (n : ℕ) (q : ℚ) (cosBox sinBox : QInterval)
    (hc : phaseCheck n q cosBox sinBox=true) :
    cosBox.Contains (Real.cos (q:ℝ)) ∧ sinBox.Contains (Real.sin (q:ℝ)) := by
  have hh := Bool.and_eq_true.mp hc
  have hb := phaseBox_sound n q
  exact ⟨QInterval.encloses_sound hh.1 hb.1,QInterval.encloses_sound hh.2 hb.2⟩

end SignedMeanIntake20261006

#print axioms SignedMeanIntake20261006.QComplex.phasePartialQ_sound
#print axioms SignedMeanIntake20261006.phaseBox_sound
#print axioms SignedMeanIntake20261006.phaseCheck_sound
