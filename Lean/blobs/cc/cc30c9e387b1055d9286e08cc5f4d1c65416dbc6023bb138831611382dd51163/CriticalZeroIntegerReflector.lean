import CriticalZeroCoefficientCore

set_option autoImplicit false
set_option maxRecDepth 10000
namespace CriticalZeroSplitReduction20261003.IntegerReflector
open Coefficients
variable {R : Type*} [CommRing R]

def evalI (t : R) : List ℤ → R
  | [] => 0
  | a::as => (a : R)+t*evalI t as

theorem evalI_add (t : R) (as bs : List ℤ) :
    evalI t (add as bs)=evalI t as+evalI t bs := by
  induction as generalizing bs with
  | nil => simp [add,evalI]
  | cons a as ih =>
    cases bs with
    | nil => simp [add,evalI]
    | cons b bs => simp only [add,evalI,Int.cast_add,ih]; ring

theorem evalI_neg (t : R) (as : List ℤ) : evalI t (neg as)= -evalI t as := by
  induction as with
  | nil => simp [neg,evalI]
  | cons a as ih =>
    simp only [neg,List.map_cons,evalI,Int.cast_neg] at *
    rw [ih]; ring

theorem evalI_scale (c : ℤ) (t : R) (as : List ℤ) :
    evalI t (scale c as)=(c : R)*evalI t as := by
  induction as with
  | nil => simp [scale,evalI]
  | cons a as ih =>
    simp only [scale,List.map_cons,evalI,Int.cast_mul] at *
    rw [ih]; ring

def mulI : List ℤ → List ℤ → List ℤ
  | [], _ => []
  | a::as, bs => add (scale a bs) (0::mulI as bs)

theorem evalI_mul (t : R) (as bs : List ℤ) :
    evalI t (mulI as bs)=evalI t as*evalI t bs := by
  induction as with
  | nil => simp [mulI,evalI]
  | cons a as ih =>
    simp only [mulI,evalI_add,evalI_scale,evalI,Int.cast_zero,zero_add,ih]
    ring

def evalII (X Y : R) : List (List ℤ) → R
  | [] => 0
  | a::as => evalI Y a+X*evalII X Y as

theorem evalII_add (X Y : R) (as bs : List (List ℤ)) :
    evalII X Y (add2 as bs)=evalII X Y as+evalII X Y bs := by
  induction as generalizing bs with
  | nil => simp [add2,evalII]
  | cons a as ih =>
    cases bs with
    | nil => simp [add2,evalII]
    | cons b bs => simp only [add2,evalII,evalI_add,ih]; ring

theorem evalII_neg (X Y : R) (as : List (List ℤ)) :
    evalII X Y (neg2 as)= -evalII X Y as := by
  induction as with
  | nil => simp [neg2,evalII]
  | cons a as ih =>
    simp only [neg2,List.map_cons,evalII,evalI_neg] at *
    rw [ih]; ring

def rowMul (a : List ℤ) (bs : List (List ℤ)) : List (List ℤ) := bs.map (mulI a)

theorem evalII_rowMul (X Y : R) (a : List ℤ) (bs : List (List ℤ)) :
    evalII X Y (rowMul a bs)=evalI Y a*evalII X Y bs := by
  induction bs with
  | nil => simp [rowMul,evalII]
  | cons b bs ih =>
    simp only [rowMul,List.map_cons,evalII,evalI_mul] at *
    rw [ih]; ring

def mulII : List (List ℤ) → List (List ℤ) → List (List ℤ)
  | [], _ => []
  | a::as, bs => add2 (rowMul a bs) ([]::mulII as bs)

theorem evalII_mul (X Y : R) (as bs : List (List ℤ)) :
    evalII X Y (mulII as bs)=evalII X Y as*evalII X Y bs := by
  induction as with
  | nil => simp [mulII,evalII]
  | cons a as ih =>
    simp only [mulII,evalII_add,evalII_rowMul,evalII,evalI,zero_add,ih]
    ring

def powII (a : List (List ℤ)) : ℕ → List (List ℤ)
  | 0 => [[1]]
  | n+1 => mulII (powII a n) a

theorem evalII_pow (X Y : R) (a : List (List ℤ)) (n : ℕ) :
    evalII X Y (powII a n)=evalII X Y a^n := by
  induction n with
  | zero => simp [powII,evalII,evalI]
  | succ n ih => simp only [powII,evalII_mul,ih,pow_succ]

def zeroI (a : List ℤ) : Bool := a.all (fun x => x==0)
def zeroII (a : List (List ℤ)) : Bool := a.all zeroI

theorem evalI_zero (t : R) (as : List ℤ) (h : zeroI as=true) : evalI t as=0 := by
  induction as with
  | nil => rfl
  | cons a as ih =>
    have h' : a=0 ∧ zeroI as=true := by simpa [zeroI] using h
    simp [evalI,h'.1,ih h'.2]

theorem evalII_zero (X Y : R) (as : List (List ℤ)) (h : zeroII as=true) :
    evalII X Y as=0 := by
  induction as with
  | nil => rfl
  | cons a as ih =>
    have h' : zeroI a=true ∧ zeroII as=true := by simpa [zeroII] using h
    simp [evalII,evalI_zero Y a h'.1,ih h'.2]

inductive Expr where
  | lit : ℤ → Expr
  | x : Expr
  | y : Expr
  | add : Expr → Expr → Expr
  | neg : Expr → Expr
  | mul : Expr → Expr → Expr
  | pow : Expr → ℕ → Expr

def value (X Y : R) : Expr → R
  | .lit a => a
  | .x => X
  | .y => Y
  | .add a b => value X Y a+value X Y b
  | .neg a => -value X Y a
  | .mul a b => value X Y a*value X Y b
  | .pow a n => value X Y a^n

def normalize : Expr → List (List ℤ)
  | .lit a => [[a]]
  | .x => [[],[1]]
  | .y => [[0,1]]
  | .add a b => add2 (normalize a) (normalize b)
  | .neg a => neg2 (normalize a)
  | .mul a b => mulII (normalize a) (normalize b)
  | .pow a n => powII (normalize a) n

theorem normalize_sound (X Y : R) (a : Expr) :
    evalII X Y (normalize a)=value X Y a := by
  induction a with
  | lit a => simp [normalize,evalII,evalI,value]
  | x => simp [normalize,evalII,evalI,value]
  | y => simp [normalize,evalII,evalI,value]
  | add a b ha hb => simp only [normalize,evalII_add,ha,hb,value]
  | neg a ha => simp only [normalize,evalII_neg,ha,value]
  | mul a b ha hb => simp only [normalize,evalII_mul,ha,hb,value]
  | pow a n ha => simp only [normalize,evalII_pow,ha,value]

/-- Kernel reduction of the exact integer coefficient check proves a
generic commutative-ring identity. This never invokes native_decide. -/
theorem certificate_sound (X Y : R) (a : Expr) (h : zeroII (normalize a)=true) :
    value X Y a=0 := by
  rw [← normalize_sound]
  exact evalII_zero X Y _ h

#print axioms evalI_add
#print axioms evalI_neg
#print axioms evalI_scale
#print axioms evalI_mul
#print axioms evalII_add
#print axioms evalII_neg
#print axioms evalII_rowMul
#print axioms evalII_mul
#print axioms evalII_pow
#print axioms evalI_zero
#print axioms evalII_zero
#print axioms normalize_sound
#print axioms certificate_sound
end CriticalZeroSplitReduction20261003.IntegerReflector
