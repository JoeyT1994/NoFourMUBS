import RationalCarrierIntervals

/-! Guarded complex division and pole-safe enclosures for a physical phase.
All rectangle operations below use rational arithmetic. -/
namespace Mub6.Classification.RadicalIntervals
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals
noncomputable section

def boxScale (q : ℚ) (a : RationalRectangle) : RationalRectangle :=
  boxMul (boxPoint q 0) a

theorem mem_boxPoint_complex (a b : ℚ) :
    MemRectangle (boxPoint a b) (⟨a,b⟩ : ℂ) := by
  simp [MemRectangle,boxPoint,rectangle,point]

theorem mem_boxScale (q : ℚ) {a : RationalRectangle} {z : ℂ}
    (hz : MemRectangle a z) : MemRectangle (boxScale q a) ((q : ℂ)*z) := by
  have hq : MemRectangle (boxPoint q 0) (q : ℂ) := by
    simpa using mem_boxPoint_complex q 0
  exact mem_boxMul hq hz

def boxPow (a : RationalRectangle) : ℕ → RationalRectangle
  | 0 => boxPoint 1 0
  | n+1 => boxMul (boxPow a n) a

theorem mem_boxPow {a : RationalRectangle} {z : ℂ} (hz : MemRectangle a z) (n : ℕ) :
    MemRectangle (boxPow a n) (z^n) := by
  induction n with
  | zero => simpa using mem_boxPoint_complex 1 0
  | succ n hn => simpa only [boxPow,pow_succ] using mem_boxMul hn hz

def boxDivide (a b : RationalRectangle) (floor : ℚ) : RationalRectangle :=
  boxDivideReal (boxMul a (boxConj b)) (clampLower (boxNormSq b) floor)

theorem complex_divide_identity (z w : ℂ) :
    z*star w/(Complex.normSq w : ℂ)=z/w := by
  rw [div_eq_mul_inv,div_eq_mul_inv,Complex.inv_def w]
  simp only [Complex.ofReal_inv]
  ring

theorem mem_boxDivide {a b : RationalRectangle} {z w : ℂ} {floor : ℚ}
    (hp : 0 < floor) (hz : MemRectangle a z) (hw : MemRectangle b w)
    (hl : (floor : ℝ) ≤ Complex.normSq w) :
    MemRectangle (boxDivide a b floor) (z/w) := by
  have hm := mem_clampLower (mem_boxNormSq hw) hl
  have hpos : 0 < (clampLower (boxNormSq b) floor).lo :=
    lt_of_lt_of_le hp (le_max_right _ _)
  have h := mem_boxDivideReal hpos (mem_boxMul hz (mem_boxConj hw)) hm
  simpa only [boxDivide,complex_divide_identity] using h

def unitBox : RationalRectangle := ⟨-1,1,-1,1⟩

theorem mem_unitBox {z : ℂ} (hz : Complex.normSq z ≤ 1) : MemRectangle unitBox z := by
  simp only [Complex.normSq_apply] at hz
  norm_num only [MemRectangle,unitBox,Rat.cast_neg,Rat.cast_one]
  constructor
  · nlinarith [sq_nonneg z.im, sq_nonneg (z.re+1)]
  constructor
  · nlinarith [sq_nonneg z.im, sq_nonneg (z.re-1)]
  constructor
  · nlinarith [sq_nonneg z.re, sq_nonneg (z.im+1)]
  · nlinarith [sq_nonneg z.re, sq_nonneg (z.im-1)]

def boxMeet (a b : RationalRectangle) : RationalRectangle :=
  ⟨max a.reLo b.reLo,min a.reHi b.reHi,max a.imLo b.imLo,min a.imHi b.imHi⟩

theorem mem_boxMeet {a b : RationalRectangle} {z : ℂ}
    (ha : MemRectangle a z) (hb : MemRectangle b z) : MemRectangle (boxMeet a b) z := by
  simp only [MemRectangle,boxMeet,Rat.cast_max,Rat.cast_min]
  exact ⟨max_le ha.1 hb.1,le_min ha.2.1 hb.2.1,
    max_le ha.2.2.1 hb.2.2.1,le_min ha.2.2.2 hb.2.2.2⟩

/-- If a whole denominator box is separated from zero, use the quotient and
unit-circle information. Otherwise retain the entire phase box. -/
def phaseQuotientBox (numerator denominator : RationalRectangle) : RationalRectangle :=
  if 0 < (boxNormSq denominator).lo then
    boxMeet (boxDivide numerator denominator (boxNormSq denominator).lo) unitBox
  else unitBox

theorem phaseQuotientBox_sound {a b : RationalRectangle} {n d L : ℂ}
    (hn : MemRectangle a n) (hd : MemRectangle b d)
    (hL : Complex.normSq L=1) (he : n=d*L) :
    MemRectangle (phaseQuotientBox a b) L := by
  have hu := mem_unitBox (le_of_eq hL)
  unfold phaseQuotientBox
  split_ifs with hp
  · have hlo := (mem_boxNormSq hd).1
    have hnz : d≠0 := by
      intro hz
      have hpos : (0 : ℝ) < (boxNormSq b).lo := by exact_mod_cast hp
      simp only [hz,map_zero] at hlo
      linarith
    have hdiv := mem_boxDivide hp hn hd hlo
    have hq : n/d=L := by rw [he]; field_simp
    rw [hq] at hdiv
    exact mem_boxMeet hdiv hu
  · exact hu

#check mem_boxPoint_complex
#print axioms mem_boxPoint_complex
#check mem_boxScale
#print axioms mem_boxScale
#check mem_boxPow
#print axioms mem_boxPow
#check complex_divide_identity
#print axioms complex_divide_identity
#check mem_boxDivide
#print axioms mem_boxDivide
#check mem_unitBox
#print axioms mem_unitBox
#check mem_boxMeet
#print axioms mem_boxMeet
#check phaseQuotientBox_sound
#print axioms phaseQuotientBox_sound
end
end Mub6.Classification.RadicalIntervals
