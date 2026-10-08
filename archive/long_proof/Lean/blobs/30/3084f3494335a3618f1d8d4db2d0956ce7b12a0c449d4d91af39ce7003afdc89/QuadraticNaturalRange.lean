import QuadraticScalarRange
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderQuadratic20261003
open Mub6.Numerical.IntervalKernel ShoulderRadian20261003
noncomputable section

def naturalRange (C D Q E : Interval) (r : ℚ) : Interval :=
  add (add (add C (mul D ⟨-r,r⟩)) (mul Q (square ⟨-r,r⟩))) E

theorem naturalRange_sound {C D Q E : Interval} {r : ℚ} {c d q e x : ℝ}
    (hx : |x|≤(r:ℝ)) (hc : Mem C c) (hd : Mem D d) (hq : Mem Q q) (he : Mem E e) :
    Mem (naturalRange C D Q E r) (c+d*x+q*x^2+e) := by
  have hxx : Mem ⟨-r,r⟩ x := by simpa [Mem] using abs_le.mp hx
  simpa only [naturalRange,pow_two] using
    mem_add (mem_add (mem_add hc (mem_mul hd hxx)) (mem_mul hq (mem_square hxx))) he

def cosNatural (S C : Interval) (r : ℚ) : Interval :=
  naturalRange C (neg S) (mul (point (-1/2)) C)
    (sub (mul C (cosError r)) (mul S (sinError r))) r

theorem cosNatural_sound {S C : Interval} {r : ℚ} {a x : ℝ}
    (ht : Mem S (Real.sin a) ∧ Mem C (Real.cos a))
    (hr : 0≤r) (hr1 : r≤1) (hx : |x|≤(r:ℝ)) :
    Mem (cosNatural S C r) (Real.cos (a+x)) := by
  have he := trig_error_sound hr hr1 hx
  have hh := naturalRange_sound hx ht.2 (mem_neg ht.1)
    (mem_mul (show Mem (point (-1/2)) (-1/2:ℝ) by norm_num [point,Mem]) ht.2)
    (mem_sub (mem_mul ht.2 he.2) (mem_mul ht.1 he.1))
  unfold cosNatural
  convert hh using 1 <;> first | rfl | (rw [Real.cos_add];ring)

#print axioms naturalRange_sound
#print axioms cosNatural_sound
end
end ShoulderQuadratic20261003
