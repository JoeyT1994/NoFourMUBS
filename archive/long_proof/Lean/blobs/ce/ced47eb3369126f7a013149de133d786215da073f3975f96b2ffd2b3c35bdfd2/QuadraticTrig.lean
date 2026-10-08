import QuadraticEnclosures
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderQuadratic20261003
open Mub6.Numerical.IntervalKernel ShoulderRadian20261003
noncomputable section

def sinError (r : ℚ) : Interval := ⟨-r^3/6-r^5/100,r^3/6+r^5/100⟩
def cosError (r : ℚ) : Interval := ⟨-r^4*(5/96),r^4*(5/96)⟩

theorem trig_error_sound {r : ℚ} (hr : 0≤r) (hr1 : r≤1) {x : ℝ}
    (hx : |x|≤(r:ℝ)) :
    Mem (sinError r) (Real.sin x-x) ∧
    Mem (cosError r) (Real.cos x-1+x^2/2) := by
  have hr' : (0:ℝ)≤r := by exact_mod_cast hr
  have hr1' : (r:ℝ)≤1 := by exact_mod_cast hr1
  have h3 : |x^3|≤(r:ℝ)^3 := by rw [abs_pow];exact pow_le_pow_left₀ (abs_nonneg x) hx 3
  have h4 : |x|^4≤(r:ℝ)^4 := pow_le_pow_left₀ (abs_nonneg x) hx 4
  have h5 : |x|^5≤(r:ℝ)^5 := pow_le_pow_left₀ (abs_nonneg x) hx 5
  have hs := abs_le.mp (Real.sin_bound (hx.trans hr1'))
  have hc := abs_le.mp (Real.cos_bound (hx.trans hr1'))
  have hxxx := abs_le.mp h3
  simp only [Mem,sinError,cosError,Rat.cast_sub,Rat.cast_add,Rat.cast_neg,
    Rat.cast_mul,Rat.cast_pow,Rat.cast_div,Rat.cast_ofNat]
  exact ⟨⟨by nlinarith,by nlinarith⟩,⟨by nlinarith,by nlinarith⟩⟩

def cosB (S C : Interval) (r : ℚ) (k : Fin 4) : Box :=
  ⟨C,fun i => if i=k then neg S else point 0,
    fun i j => if i=k ∧ j=k then mul (point (-1/2)) C else point 0,
    sub (mul C (cosError r)) (mul S (sinError r))⟩
def sinB (S C : Interval) (r : ℚ) (k : Fin 4) : Box :=
  ⟨S,fun i => if i=k then C else point 0,
    fun i j => if i=k ∧ j=k then mul (point (-1/2)) S else point 0,
    add (mul S (cosError r)) (mul C (sinError r))⟩

theorem lin_single (k : Fin 4) (a : ℝ) (x : Fin 4 → ℝ) :
    lin (fun i => if i=k then a else 0) x=a*x k := by
  simp [lin,ite_mul]

theorem quad_single (k : Fin 4) (a : ℝ) (x : Fin 4 → ℝ) :
    quad (fun i j => if i=k ∧ j=k then a else 0) x=a*x k*x k := by
  have hh : (fun i j : Fin 4 => if i=k ∧ j=k then a else 0) =
      (fun i j => if i=k then (if j=k then a else 0) else 0) := by
    funext i j
    by_cases hi : i=k <;> by_cases hj : j=k <;> simp [hi,hj]
  rw [hh]
  simp [quad,ite_mul]

theorem cosB_sound {S C : Interval} {r : ℚ} {q : ℝ}
    (ht : Mem S (Real.sin q) ∧ Mem C (Real.cos q))
    (hr : 0≤r) (hr1 : r≤1) (k : Fin 4) (x : Fin 4 → ℝ)
    (hx : |x k|≤(r:ℝ)) : Encloses (cosB S C r k) x (Real.cos (q+x k)) := by
  have herr := trig_error_sound hr hr1 hx
  refine ⟨Real.cos q,fun i => if i=k then -Real.sin q else 0,
    fun i j => if i=k ∧ j=k then (-1/2)*Real.cos q else 0,
    Real.cos q*(Real.cos (x k)-1+(x k)^2/2)-Real.sin q*(Real.sin (x k)-x k),
    ht.2,?_,?_,mem_sub (mem_mul ht.2 herr.2) (mem_mul ht.1 herr.1),?_⟩
  · intro i
    by_cases hi : i=k
    · simpa [cosB,hi] using mem_neg ht.1
    · simp [cosB,hi,Mem,point]
  · intro i j
    by_cases hij : i=k ∧ j=k
    · simpa only [cosB,if_pos hij] using
        mem_mul (show Mem (point (-1/2)) (-1/2:ℝ) by norm_num [point,Mem]) ht.2
    · simp [cosB,hij,Mem,point]
  · rw [lin_single,quad_single,Real.cos_add]
    ring

theorem sinB_sound {S C : Interval} {r : ℚ} {q : ℝ}
    (ht : Mem S (Real.sin q) ∧ Mem C (Real.cos q))
    (hr : 0≤r) (hr1 : r≤1) (k : Fin 4) (x : Fin 4 → ℝ)
    (hx : |x k|≤(r:ℝ)) : Encloses (sinB S C r k) x (Real.sin (q+x k)) := by
  have herr := trig_error_sound hr hr1 hx
  refine ⟨Real.sin q,fun i => if i=k then Real.cos q else 0,
    fun i j => if i=k ∧ j=k then (-1/2)*Real.sin q else 0,
    Real.sin q*(Real.cos (x k)-1+(x k)^2/2)+Real.cos q*(Real.sin (x k)-x k),
    ht.1,?_,?_,mem_add (mem_mul ht.1 herr.2) (mem_mul ht.2 herr.1),?_⟩
  · intro i
    by_cases hi : i=k
    · simpa [sinB,hi] using ht.2
    · simp [sinB,hi,Mem,point]
  · intro i j
    by_cases hij : i=k ∧ j=k
    · simpa only [sinB,if_pos hij] using
        mem_mul (show Mem (point (-1/2)) (-1/2:ℝ) by norm_num [point,Mem]) ht.1
    · simp [sinB,hij,Mem,point]
  · rw [lin_single,quad_single,Real.sin_add]
    ring

#print axioms trig_error_sound
#print axioms cosB_sound
#print axioms sinB_sound
end
end ShoulderQuadratic20261003
