import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCoefficients
set_option autoImplicit false
namespace CriticalZeroSumAssembly20261003.DenseCoefficients
open CriticalZeroSplitReduction20261003 IntegerReflector
variable {R : Type*} [CommRing R]

abbrev XY := List (List ℤ)
def interpret (X Y : R) : List XY → List R
  | [] => []
  | a::as => evalII X Y a::interpret X Y as
def fromExpr : List HornerReflector.HExpr → List XY
  | [] => []
  | a::as => HornerReflector.normalize a::fromExpr as
def add : List XY → List XY → List XY
  | [], bs => bs
  | as, [] => as
  | a::as, b::bs => Coefficients.add2 a b::add as bs
def neg : List XY → List XY
  | [] => []
  | a::as => Coefficients.neg2 a::neg as
def scale (c : XY) : List XY → List XY
  | [] => []
  | a::as => mulII c a::scale c as
def shift (n : ℕ) (as : List XY) : List XY := List.replicate n []++as
def mul : List XY → List XY → List XY
  | [], _ => []
  | a::as, bs => add (scale a bs) ([]::mul as bs)
def pow (as : List XY) : ℕ → List XY
  | 0 => [[[1]]]
  | n+1 => mul as (pow as n)

theorem interpret_fromExpr (X Y : R) (as : List HornerReflector.HExpr) :
    interpret X Y (fromExpr as)=ExprCoefficients.interpret X Y as := by
  induction as with
  | nil => rfl
  | cons a as ih => simp only [fromExpr,interpret,ExprCoefficients.interpret,
      HornerReflector.normalize_sound,ih]

theorem interpret_add (X Y : R) (as bs : List XY) :
    interpret X Y (add as bs)=Coefficients.add (interpret X Y as) (interpret X Y bs) := by
  induction as generalizing bs with
  | nil => simp [add,interpret,Coefficients.add]
  | cons a as ih =>
      cases bs with
      | nil => simp [add,interpret,Coefficients.add]
      | cons b bs => simp [add,interpret,Coefficients.add,evalII_add,ih]

theorem interpret_neg (X Y : R) (as : List XY) :
    interpret X Y (neg as)=Coefficients.neg (interpret X Y as) := by
  induction as with
  | nil => simp [neg,interpret,Coefficients.neg]
  | cons a as ih => simp [neg,interpret,Coefficients.neg,evalII_neg,ih]

theorem interpret_scale (X Y : R) (c : XY) (as : List XY) :
    interpret X Y (scale c as)=Coefficients.scale (evalII X Y c) (interpret X Y as) := by
  induction as with
  | nil => simp [scale,interpret,Coefficients.scale]
  | cons a as ih => simp [scale,interpret,Coefficients.scale,evalII_mul,ih]

theorem interpret_shift (X Y : R) (n : ℕ) (as : List XY) :
    interpret X Y (shift n as)=Coefficients.shift n (interpret X Y as) := by
  induction n with
  | zero => simp [shift,Coefficients.shift]
  | succ n ih =>
      simp only [shift,Coefficients.shift,List.replicate_succ,List.cons_append,
        interpret,evalII] at *
      rw [ih]

theorem interpret_mul (X Y : R) (as bs : List XY) :
    interpret X Y (mul as bs)=
      CriticalZeroSumAssembly20261003.Coefficients.mul (interpret X Y as) (interpret X Y bs) := by
  induction as with
  | nil => simp [mul,interpret,CriticalZeroSumAssembly20261003.Coefficients.mul]
  | cons a as ih =>
      simp only [mul,interpret_add,interpret_scale,interpret,evalII,
        CriticalZeroSumAssembly20261003.Coefficients.mul,ih]

theorem interpret_pow (X Y : R) (as : List XY) (n : ℕ) :
    interpret X Y (pow as n)=
      CriticalZeroSumAssembly20261003.Coefficients.pow (interpret X Y as) n := by
  induction n with
  | zero => simp [pow,interpret,evalII,evalI,CriticalZeroSumAssembly20261003.Coefficients.pow]
  | succ n ih => simp [pow,interpret_mul,ih,CriticalZeroSumAssembly20261003.Coefficients.pow]

theorem interpret_length (X Y : R) (as : List XY) :
    (interpret X Y as).length=as.length := by
  induction as with
  | nil => rfl
  | cons a as ih => simp [interpret,ih]

theorem interpret_getD (X Y : R) (as : List XY) (n : ℕ) :
    (interpret X Y as).getD n 0=evalII X Y (as.getD n []) := by
  induction as generalizing n with
  | nil => simp [interpret,evalII]
  | cons a as ih =>
      cases n with
      | zero => rfl
      | succ n => simpa only [interpret,List.getD_cons_succ] using ih n

theorem allZero_of_certificates (X Y : R) (as : List XY)
    (h : ∀ n : ℕ, n<as.length → zeroII (as.getD n [])=true) :
    Coefficients.allZero (interpret X Y as) := by
  apply CriticalZeroSumAssembly20261003.Coefficients.allZero_of_getD
  intro n hn
  rw [interpret_getD]
  apply evalII_zero
  exact h n (by simpa only [interpret_length] using hn)

#print axioms interpret_fromExpr
#print axioms interpret_add
#print axioms interpret_neg
#print axioms interpret_scale
#print axioms interpret_shift
#print axioms interpret_mul
#print axioms interpret_pow
#print axioms interpret_length
#print axioms interpret_getD
#print axioms allZero_of_certificates
end CriticalZeroSumAssembly20261003.DenseCoefficients
