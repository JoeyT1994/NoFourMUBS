import NoFourMUBs.Reuse.Archive.CriticalZeroIntegerReflector
set_option autoImplicit false
namespace CriticalZeroSplitReduction20261003.HornerReflector
open Coefficients IntegerReflector
variable {R : Type*} [CommRing R]

theorem evalI_shift (n : ℕ) (t : R) (as : List ℤ) :
    evalI t (shift n as)=t^n*evalI t as := by
  induction n with
  | zero => simp [shift,evalI]
  | succ n ih =>
    simp only [shift,List.replicate_succ,List.cons_append,evalI,Int.cast_zero,zero_add] at *
    rw [ih,pow_succ]; ring

theorem evalII_shiftY (n : ℕ) (X Y : R) (as : List (List ℤ)) :
    evalII X Y (shiftZ n as)=Y^n*evalII X Y as := by
  induction as with
  | nil => simp [shiftZ,evalII]
  | cons a as ih =>
    simp only [shiftZ,List.map_cons,evalII,evalI_shift] at *
    rw [ih]; ring

theorem evalII_shiftX (n : ℕ) (X Y : R) (as : List (List ℤ)) :
    evalII X Y (shiftK n as)=X^n*evalII X Y as := by
  induction n with
  | zero => simp [shiftK,evalII]
  | succ n ih =>
    simp only [shiftK,List.replicate_succ,List.cons_append,evalII,evalI,zero_add] at *
    rw [ih,pow_succ]; ring

inductive HExpr where
  | lit : ℤ → HExpr
  | x : HExpr
  | y : HExpr
  | add : HExpr → HExpr → HExpr
  | neg : HExpr → HExpr
  | mul : HExpr → HExpr → HExpr
  | pow : HExpr → ℕ → HExpr
  | mulX : HExpr → ℕ → HExpr
  | mulY : HExpr → ℕ → HExpr

def value (X Y : R) : HExpr → R
  | .lit a => a
  | .x => X
  | .y => Y
  | .add a b => value X Y a+value X Y b
  | .neg a => -value X Y a
  | .mul a b => value X Y a*value X Y b
  | .pow a n => value X Y a^n
  | .mulX a n => value X Y a*X^n
  | .mulY a n => value X Y a*Y^n

def normalize : HExpr → List (List ℤ)
  | .lit a => [[a]]
  | .x => [[],[1]]
  | .y => [[0,1]]
  | .add a b => add2 (normalize a) (normalize b)
  | .neg a => neg2 (normalize a)
  | .mul a b => mulII (normalize a) (normalize b)
  | .pow a n => powII (normalize a) n
  | .mulX a n => shiftK n (normalize a)
  | .mulY a n => shiftZ n (normalize a)

theorem normalize_sound (X Y : R) (a : HExpr) :
    evalII X Y (normalize a)=value X Y a := by
  induction a with
  | lit a => simp [normalize,evalII,evalI,value]
  | x => simp [normalize,evalII,evalI,value]
  | y => simp [normalize,evalII,evalI,value]
  | add a b ha hb => simp only [normalize,evalII_add,ha,hb,value]
  | neg a ha => simp only [normalize,evalII_neg,ha,value]
  | mul a b ha hb => simp only [normalize,evalII_mul,ha,hb,value]
  | pow a n ha => simp only [normalize,evalII_pow,ha,value]
  | mulX a n ha => simp only [normalize,evalII_shiftX,ha,value]; exact mul_comm _ _
  | mulY a n ha => simp only [normalize,evalII_shiftY,ha,value]; exact mul_comm _ _

theorem certificate_sound (X Y : R) (a : HExpr) (h : zeroII (normalize a)=true) :
    value X Y a=0 := by
  rw [← normalize_sound]
  exact evalII_zero X Y _ h

#print axioms evalI_shift
#print axioms evalII_shiftY
#print axioms evalII_shiftX
#print axioms normalize_sound
#print axioms certificate_sound
end CriticalZeroSplitReduction20261003.HornerReflector
