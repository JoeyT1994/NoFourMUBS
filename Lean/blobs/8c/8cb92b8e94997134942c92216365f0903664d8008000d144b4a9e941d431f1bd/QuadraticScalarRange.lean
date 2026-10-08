import QuadraticTrig
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderQuadratic20261003
open Mub6.Numerical.IntervalKernel ShoulderRadian20261003
noncomputable section

def hull (A B : Interval) : Interval := ⟨min A.lo B.lo,max A.hi B.hi⟩
def slopeI (D Q : Interval) (r : ℚ) : Interval := add D (mul Q ⟨-2*r,2*r⟩)
def MonotoneCheck (D Q : Interval) (r : ℚ) : Prop :=
  0≤(slopeI D Q r).lo ∨ (slopeI D Q r).hi≤0
instance (D Q : Interval) (r : ℚ) : Decidable (MonotoneCheck D Q r) := by
  unfold MonotoneCheck;infer_instance
def endpointI (C D Q : Interval) (x : ℚ) : Interval :=
  add (add C (mul D (point x))) (mul Q (point (x^2)))
def monotoneRange (C D Q E : Interval) (r : ℚ) : Interval :=
  add (hull (endpointI C D Q (-r)) (endpointI C D Q r)) E

theorem endpointI_sound {C D Q : Interval} {c d q : ℝ}
    (hc : Mem C c) (hd : Mem D d) (hq : Mem Q q) (x : ℚ) :
    Mem (endpointI C D Q x) (c+d*(x:ℝ)+q*(x:ℝ)^2) := by
  simpa only [Rat.cast_pow] using
    mem_add (mem_add hc (mem_mul hd (mem_point x))) (mem_mul hq (mem_point (x^2)))

theorem hull_between {A B : Interval} {a b z : ℝ}
    (ha : Mem A a) (hb : Mem B b)
    (hz : (a≤z ∧ z≤b) ∨ (b≤z ∧ z≤a)) : Mem (hull A B) z := by
  simp only [Mem,hull,Rat.cast_min,Rat.cast_max]
  rcases hz with hz | hz
  · exact ⟨(min_le_left _ _).trans (ha.1.trans hz.1),
      hz.2.trans (hb.2.trans (le_max_right _ _))⟩
  · exact ⟨(min_le_right _ _).trans (hb.1.trans hz.1),
      hz.2.trans (ha.2.trans (le_max_left _ _))⟩

theorem monotoneRange_sound {C D Q E : Interval} {r : ℚ} {c d q e x : ℝ}
    (hr : 0≤r) (hx : |x|≤(r:ℝ)) (check : MonotoneCheck D Q r)
    (hc : Mem C c) (hd : Mem D d) (hq : Mem Q q) (he : Mem E e) :
    Mem (monotoneRange C D Q E r) (c+d*x+q*x^2+e) := by
  have hr' : (0:ℝ)≤r := Rat.cast_nonneg.mpr hr
  have hxx := abs_le.mp hx
  have hl : Mem (slopeI D Q r) (d+q*(x-(r:ℝ))) := by
    apply mem_add hd
    apply mem_mul hq
    simp only [Mem,Rat.cast_mul,Rat.cast_neg,Rat.cast_ofNat]
    constructor <;> linarith
  have hu : Mem (slopeI D Q r) (d+q*(x+(r:ℝ))) := by
    apply mem_add hd
    apply mem_mul hq
    simp only [Mem,Rat.cast_mul,Rat.cast_neg,Rat.cast_ofNat]
    constructor <;> linarith
  apply mem_add (hull_between (endpointI_sound hc hd hq (-r)) (endpointI_sound hc hd hq r) ?_) he
  simp only [Rat.cast_neg]
  rcases check with check | check
  · have hn : (0:ℝ)≤((slopeI D Q r).lo:ℝ) := Rat.cast_nonneg.mpr check
    left;constructor
    · apply sub_nonneg.mp
      convert mul_nonneg (show 0≤x+(r:ℝ) by linarith) (hn.trans hl.1) using 1 <;> ring
    · apply sub_nonneg.mp
      convert mul_nonneg (show 0≤(r:ℝ)-x by linarith) (hn.trans hu.1) using 1 <;> ring
  · have hn : ((slopeI D Q r).hi:ℝ)≤0 := by exact_mod_cast check
    right;constructor
    · apply sub_nonneg.mp
      convert mul_nonneg (show x-(r:ℝ)≤0 by linarith) (hu.2.trans hn) using 1 <;> ring
    · apply sub_nonneg.mp
      convert mul_nonneg (show -((r:ℝ)+x)≤0 by linarith) (hl.2.trans hn) using 1 <;> ring

def cosMono (S C : Interval) (r : ℚ) : Interval :=
  monotoneRange C (neg S) (mul (point (-1/2)) C)
    (sub (mul C (cosError r)) (mul S (sinError r))) r
def sinMono (S C : Interval) (r : ℚ) : Interval :=
  monotoneRange S C (mul (point (-1/2)) S)
    (add (mul S (cosError r)) (mul C (sinError r))) r

theorem cosMono_sound {S C : Interval} {r : ℚ} {a x : ℝ}
    (ht : Mem S (Real.sin a) ∧ Mem C (Real.cos a))
    (hr : 0≤r) (hr1 : r≤1) (hx : |x|≤(r:ℝ))
    (chk : MonotoneCheck (neg S) (mul (point (-1/2)) C) r) :
    Mem (cosMono S C r) (Real.cos (a+x)) := by
  have he := trig_error_sound hr hr1 hx
  have hh := monotoneRange_sound hr hx chk ht.2 (mem_neg ht.1)
    (mem_mul (show Mem (point (-1/2)) (-1/2:ℝ) by norm_num [point,Mem]) ht.2)
    (mem_sub (mem_mul ht.2 he.2) (mem_mul ht.1 he.1))
  convert hh using 1
  rw [Real.cos_add];ring

theorem sinMono_sound {S C : Interval} {r : ℚ} {a x : ℝ}
    (ht : Mem S (Real.sin a) ∧ Mem C (Real.cos a))
    (hr : 0≤r) (hr1 : r≤1) (hx : |x|≤(r:ℝ))
    (chk : MonotoneCheck C (mul (point (-1/2)) S) r) :
    Mem (sinMono S C r) (Real.sin (a+x)) := by
  have he := trig_error_sound hr hr1 hx
  have hh := monotoneRange_sound hr hx chk ht.1 ht.2
    (mem_mul (show Mem (point (-1/2)) (-1/2:ℝ) by norm_num [point,Mem]) ht.1)
    (mem_add (mem_mul ht.1 he.2) (mem_mul ht.2 he.1))
  convert hh using 1
  rw [Real.sin_add];ring

def clipUnit (I : Interval) : Interval := ⟨max (-1) I.lo,min 1 I.hi⟩
theorem clipUnit_sound {I : Interval} {x : ℝ} (h : Mem I x) (hx : -1≤x ∧ x≤1) :
    Mem (clipUnit I) x := by
  simp only [Mem,clipUnit,Rat.cast_max,Rat.cast_min,Rat.cast_neg,Rat.cast_one]
  exact ⟨max_le hx.1 h.1,le_min hx.2 h.2⟩

#print axioms monotoneRange_sound
#print axioms cosMono_sound
#print axioms sinMono_sound
end
end ShoulderQuadratic20261003
