import CriticalZeroCoefficientCore

set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
namespace Coefficients
variable {R : Type*} [CommRing R]
open CriticalZeroSplitReduction20261003.Coefficients

def mul : List R → List R → List R
  | [], _ => []
  | a::as, bs => add (scale a bs) (0::mul as bs)

def pow (as : List R) : ℕ → List R
  | 0 => [1]
  | n+1 => mul as (pow as n)

theorem eval_mul (t : R) (as bs : List R) :
    eval t (mul as bs)=eval t as*eval t bs := by
  induction as with
  | nil => simp [mul,eval]
  | cons a as ih =>
      simp only [mul,eval_add,eval_scale,eval,zero_add,ih]
      ring

theorem eval_pow (t : R) (as : List R) (n : ℕ) :
    eval t (pow as n)=(eval t as)^n := by
  induction n with
  | zero => simp [pow,eval]
  | succ n ih => rw [pow,eval_mul,ih,pow_succ]; ring

theorem allZero_of_getD (as : List R)
    (h : ∀ n : ℕ, n<as.length → as.getD n 0=0) : allZero as := by
  induction as with
  | nil => trivial
  | cons a as ih =>
      constructor
      · exact h 0 (by simp)
      · apply ih
        intro n hn
        exact h (n+1) (by simpa only [List.length_cons,Nat.add_lt_add_iff_right] using hn)

end Coefficients
#print axioms Coefficients.eval_mul
#print axioms Coefficients.eval_pow
#print axioms Coefficients.allZero_of_getD
end CriticalZeroSumAssembly20261003
