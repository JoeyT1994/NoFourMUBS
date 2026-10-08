import CriticalZeroSumExprCoefficients
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003.SmartExprCoefficients
open CriticalZeroSplitReduction20261003 HornerReflector
open ExprCoefficients (interpret)
variable {R : Type*} [CommRing R]

def isZero : HExpr → Bool
  | .lit a => a == 0
  | _ => false
def isOne : HExpr → Bool
  | .lit a => a == 1
  | _ => false

theorem value_isZero (X Y : R) (a : HExpr) (h : isZero a=true) : value X Y a=0 := by
  cases a <;> simp_all [isZero,value]
theorem value_isOne (X Y : R) (a : HExpr) (h : isOne a=true) : value X Y a=1 := by
  cases a <;> simp_all [isOne,value]

def mkAdd (a b : HExpr) : HExpr :=
  if isZero a then b else if isZero b then a else .add a b
def mkMul (a b : HExpr) : HExpr :=
  if isZero a then .lit 0 else if isZero b then .lit 0 else
  if isOne a then b else if isOne b then a else .mul a b

theorem value_mkAdd (X Y : R) (a b : HExpr) :
    value X Y (mkAdd a b)=value X Y a+value X Y b := by
  unfold mkAdd
  split
  · rename_i h
    rw [value_isZero X Y a h,zero_add]
  · split
    · rename_i h
      rw [value_isZero X Y b h,add_zero]
    · rfl

theorem value_mkMul (X Y : R) (a b : HExpr) :
    value X Y (mkMul a b)=value X Y a*value X Y b := by
  unfold mkMul
  split
  · rename_i h
    rw [value_isZero X Y a h,zero_mul]
    exact Int.cast_zero
  · split
    · rename_i h
      rw [value_isZero X Y b h,mul_zero]
      exact Int.cast_zero
    · split
      · rename_i h
        rw [value_isOne X Y a h,one_mul]
      · split
        · rename_i h
          rw [value_isOne X Y b h,mul_one]
        · rfl

def add : List HExpr → List HExpr → List HExpr
  | [], bs => bs
  | as, [] => as
  | a::as, b::bs => mkAdd a b::add as bs
def scale (c : HExpr) : List HExpr → List HExpr
  | [] => []
  | a::as => mkMul c a::scale c as
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
      | cons b bs => simp [add,interpret,Coefficients.add,value_mkAdd,ih]

theorem interpret_scale (X Y : R) (c : HExpr) (as : List HExpr) :
    interpret X Y (scale c as)=Coefficients.scale (value X Y c) (interpret X Y as) := by
  induction as with
  | nil => simp [scale,interpret,Coefficients.scale]
  | cons a as ih => simp [scale,interpret,Coefficients.scale,value_mkMul,ih]

theorem interpret_shift (X Y : R) (n : ℕ) (as : List HExpr) :
    interpret X Y (shift n as)=Coefficients.shift n (interpret X Y as) :=
  ExprCoefficients.interpret_shift X Y n as

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

#print axioms value_isZero
#print axioms value_isOne
#print axioms value_mkAdd
#print axioms value_mkMul
#print axioms interpret_add
#print axioms interpret_scale
#print axioms interpret_shift
#print axioms interpret_mul
#print axioms interpret_pow
end CriticalZeroSumAssembly20261003.SmartExprCoefficients
