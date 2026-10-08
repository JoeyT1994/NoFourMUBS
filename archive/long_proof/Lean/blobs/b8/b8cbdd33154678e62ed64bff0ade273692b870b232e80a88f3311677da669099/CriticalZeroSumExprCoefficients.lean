import CriticalZeroSumCoefficientOps
import CriticalZeroHornerReflector
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003.ExprCoefficients
open CriticalZeroSplitReduction20261003
open HornerReflector
variable {R : Type*} [CommRing R]

def interpret (X Y : R) : List HExpr → List R
  | [] => []
  | a::as => value X Y a::interpret X Y as
def add : List HExpr → List HExpr → List HExpr
  | [], bs => bs
  | as, [] => as
  | a::as, b::bs => .add a b::add as bs
def neg : List HExpr → List HExpr
  | [] => []
  | a::as => .neg a::neg as
def scale (c : HExpr) : List HExpr → List HExpr
  | [] => []
  | a::as => .mul c a::scale c as
def shift (n : ℕ) (as : List HExpr) : List HExpr := List.replicate n (.lit 0)++as
def mul : List HExpr → List HExpr → List HExpr
  | [], _ => []
  | a::as, bs => add (scale a bs) (.lit 0::mul as bs)
def pow (as : List HExpr) : ℕ → List HExpr
  | 0 => [.lit 1]
  | n+1 => mul as (pow as n)

theorem interpret_add (X Y : R) (as bs : List HExpr) :
    interpret X Y (add as bs)=Coefficients.add (interpret X Y as) (interpret X Y bs) := by
  induction as generalizing bs with
  | nil => simp [add,interpret,Coefficients.add]
  | cons a as ih =>
      cases bs with
      | nil => simp [add,interpret,Coefficients.add]
      | cons b bs => simp [add,interpret,Coefficients.add,value,ih]

theorem interpret_neg (X Y : R) (as : List HExpr) :
    interpret X Y (neg as)=Coefficients.neg (interpret X Y as) := by
  induction as with
  | nil => simp [neg,interpret,Coefficients.neg]
  | cons a as ih => simp [neg,interpret,Coefficients.neg,value,ih]

theorem interpret_scale (X Y : R) (c : HExpr) (as : List HExpr) :
    interpret X Y (scale c as)=Coefficients.scale (value X Y c) (interpret X Y as) := by
  induction as with
  | nil => simp [scale,interpret,Coefficients.scale]
  | cons a as ih => simp [scale,interpret,Coefficients.scale,value,ih]

theorem interpret_shift (X Y : R) (n : ℕ) (as : List HExpr) :
    interpret X Y (shift n as)=Coefficients.shift n (interpret X Y as) := by
  induction n with
  | zero => simp [shift,Coefficients.shift]
  | succ n ih =>
      simp only [shift,Coefficients.shift,List.replicate_succ,List.cons_append,
        interpret,value,Int.cast_zero] at *
      rw [ih]

theorem interpret_mul (X Y : R) (as bs : List HExpr) :
    interpret X Y (mul as bs)=
      CriticalZeroSumAssembly20261003.Coefficients.mul (interpret X Y as) (interpret X Y bs) := by
  induction as with
  | nil => simp [mul,interpret,CriticalZeroSumAssembly20261003.Coefficients.mul]
  | cons a as ih =>
      simp only [mul,interpret_add,interpret_scale,interpret,value,Int.cast_zero,
        CriticalZeroSumAssembly20261003.Coefficients.mul,ih]

theorem interpret_pow (X Y : R) (as : List HExpr) (n : ℕ) :
    interpret X Y (pow as n)=
      CriticalZeroSumAssembly20261003.Coefficients.pow (interpret X Y as) n := by
  induction n with
  | zero => simp [pow,interpret,value,CriticalZeroSumAssembly20261003.Coefficients.pow]
  | succ n ih => simp [pow,interpret_mul,ih,CriticalZeroSumAssembly20261003.Coefficients.pow]

theorem interpret_length (X Y : R) (as : List HExpr) :
    (interpret X Y as).length=as.length := by
  induction as with
  | nil => rfl
  | cons a as ih => simp [interpret,ih]

theorem interpret_getD (X Y : R) (as : List HExpr) (n : ℕ) :
    (interpret X Y as).getD n 0=value X Y (as.getD n (.lit 0)) := by
  induction as generalizing n with
  | nil => simp [interpret,value]
  | cons a as ih =>
      cases n with
      | zero => rfl
      | succ n => simpa only [interpret,List.getD_cons_succ] using ih n

/-- Each closed integer check is reduced in the kernel. The interpretation
and the final polynomial variable are arbitrary ring elements. -/
theorem allZero_of_certificates (X Y : R) (as : List HExpr)
    (h : ∀ n : ℕ, n<as.length →
      IntegerReflector.zeroII (HornerReflector.normalize (as.getD n (.lit 0)))=true) :
    Coefficients.allZero (interpret X Y as) := by
  apply CriticalZeroSumAssembly20261003.Coefficients.allZero_of_getD
  intro n hn
  rw [interpret_getD]
  apply HornerReflector.certificate_sound
  exact h n (by simpa only [interpret_length] using hn)

#print axioms interpret_add
#print axioms interpret_neg
#print axioms interpret_scale
#print axioms interpret_shift
#print axioms interpret_mul
#print axioms interpret_pow
#print axioms interpret_length
#print axioms interpret_getD
#print axioms allZero_of_certificates
end CriticalZeroSumAssembly20261003.ExprCoefficients
