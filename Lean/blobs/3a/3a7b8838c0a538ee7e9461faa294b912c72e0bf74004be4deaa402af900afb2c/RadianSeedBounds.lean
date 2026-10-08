import SharedSeedIntervals
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRadian20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel
noncomputable section

def Includes (a b : Interval) : Prop := b.lo ≤ a.lo ∧ a.hi ≤ b.hi
instance (a b : Interval) : Decidable (Includes a b) := inferInstanceAs (Decidable (_ ∧ _))

theorem mem_mono {a b : Interval} {x : ℝ} (h : Includes a b) (hx : Mem a x) : Mem b x := by
  constructor
  · exact (by exact_mod_cast h.1 : (b.lo : ℝ) ≤ a.lo).trans hx.1
  · exact hx.2.trans (by exact_mod_cast h.2 : (a.hi : ℝ) ≤ b.hi)

def cis (x : ℝ) : ℂ := ⟨Real.cos x, Real.sin x⟩

theorem cis_add (x y : ℝ) : cis (x+y)=cis x*cis y := by
  apply Complex.ext
  · exact Real.cos_add x y
  · simp only [cis,Complex.mul_im,Real.sin_add];ring

def TaylorCheck (q : ℚ) (S C : Interval) : Prop :=
  |q|≤1 ∧ S.lo≤q-q^3/6-|q|^5/100 ∧ q-q^3/6+|q|^5/100≤S.hi ∧
    C.lo≤1-q^2/2-|q|^4*(5/96) ∧ 1-q^2/2+|q|^4*(5/96)≤C.hi
instance (q : ℚ) (S C : Interval) : Decidable (TaylorCheck q S C) := by
  unfold TaylorCheck;infer_instance

theorem taylor_sound {q : ℚ} {S C : Interval} (h : TaylorCheck q S C) :
    Mem S (Real.sin (q:ℝ)) ∧ Mem C (Real.cos (q:ℝ)) := by
  have hq : |(q:ℝ)|≤1 := by exact_mod_cast h.1
  have hs := abs_le.mp (Real.sin_bound hq)
  have hc := abs_le.mp (Real.cos_bound hq)
  have hsl : (S.lo:ℝ)≤(q:ℝ)-(q:ℝ)^3/6-|(q:ℝ)|^5/100 := by exact_mod_cast h.2.1
  have hsu : (q:ℝ)-(q:ℝ)^3/6+|(q:ℝ)|^5/100≤(S.hi:ℝ) := by exact_mod_cast h.2.2.1
  have hcl : (C.lo:ℝ)≤((1-q^2/2-|q|^4*(5/96):ℚ):ℝ) := by exact_mod_cast h.2.2.2.1
  push_cast at hcl
  have hcu : ((1-q^2/2+|q|^4*(5/96):ℚ):ℝ)≤(C.hi:ℝ) := by exact_mod_cast h.2.2.2.2
  push_cast at hcu
  exact ⟨⟨by linarith,by linarith⟩,⟨by linarith,by linarith⟩⟩

def doubleSin (S C : Interval) := mul (mul (point 2) S) C
def doubleCos (S C : Interval) := sub (square C) (square S)

theorem double_sound {x : ℝ} {S C A B : Interval}
    (h : Mem S (Real.sin x) ∧ Mem C (Real.cos x))
    (hs : Includes (doubleSin S C) A) (hc : Includes (doubleCos S C) B) :
    Mem A (Real.sin (2*x)) ∧ Mem B (Real.cos (2*x)) := by
  constructor
  · rw [Real.sin_two_mul]
    exact mem_mono hs (mem_mul (mem_mul (mem_point 2) h.1) h.2)
  · have he : Real.cos (2*x)=Real.cos x*Real.cos x-Real.sin x*Real.sin x := by
      rw [two_mul,Real.cos_add]
    rw [he]
    exact mem_mono hc (mem_sub (mem_square h.2) (mem_square h.1))

def deltaSin (r : ℚ) : Interval := ⟨-r-r^3/6-r^5/100,r+r^3/6+r^5/100⟩
def deltaCos (r : ℚ) : Interval := ⟨1-r^2/2-r^4*(5/96),1⟩

theorem delta_sound {r : ℚ} (hr : 0≤r) (hr1 : r≤1) {x : ℝ} (hx : |x|≤(r:ℝ)) :
    Mem (deltaSin r) (Real.sin x) ∧ Mem (deltaCos r) (Real.cos x) := by
  have hr' : (0:ℝ)≤r := by exact_mod_cast hr
  have hr1' : (r:ℝ)≤1 := by exact_mod_cast hr1
  have h3 : |x^3|≤(r:ℝ)^3 := by
    rw [abs_pow];exact pow_le_pow_left₀ (abs_nonneg x) hx 3
  have h4 : |x|^4≤(r:ℝ)^4 := pow_le_pow_left₀ (abs_nonneg x) hx 4
  have h5 : |x|^5≤(r:ℝ)^5 := pow_le_pow_left₀ (abs_nonneg x) hx 5
  have hs := abs_le.mp (Real.sin_bound (hx.trans hr1'))
  have hc := abs_le.mp (Real.cos_bound (hx.trans hr1'))
  have hxx := abs_le.mp hx
  have hxxx := abs_le.mp h3
  have hsq : x^2≤(r:ℝ)^2 := by nlinarith [sq_abs x]
  simp only [Mem,deltaSin,deltaCos,Rat.cast_sub,Rat.cast_add,Rat.cast_neg,
    Rat.cast_mul,Rat.cast_pow,Rat.cast_div,Rat.cast_ofNat,Rat.cast_one]
  exact ⟨⟨by nlinarith,by nlinarith⟩,⟨by nlinarith,Real.cos_le_one x⟩⟩

def radianBox (S C : Interval) (r : ℚ) : RationalRectangle :=
  boxMul (rectangle C S) (rectangle (deltaCos r) (deltaSin r))

theorem radianBox_sound {q r : ℚ} {S C : Interval}
    (ht : Mem S (Real.sin (q:ℝ)) ∧ Mem C (Real.cos (q:ℝ)))
    (hr : 0≤r) (hr1 : r≤1) {x : ℝ} (hx : |x-(q:ℝ)|≤(r:ℝ)) :
    MemRectangle (radianBox S C r) (cis x) := by
  have hd := delta_sound hr hr1 hx
  have he : cis x=cis (q:ℝ)*cis (x-(q:ℝ)) := by
    rw [← cis_add];congr 1;ring
  rw [he]
  exact mem_boxMul ((mem_rectangle_iff _ _ _).mpr ⟨ht.2,ht.1⟩)
    ((mem_rectangle_iff _ _ _).mpr ⟨hd.2,hd.1⟩)

#print axioms taylor_sound
#print axioms double_sound
#print axioms delta_sound
#print axioms radianBox_sound
end
end ShoulderRadian20261003
