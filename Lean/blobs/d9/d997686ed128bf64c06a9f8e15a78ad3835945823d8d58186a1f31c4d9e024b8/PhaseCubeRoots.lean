import Mathlib.Analysis.SpecialFunctions.Complex.Log
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination

/- Unit-circle cubic enclosures. No classification or emptiness assumption. -/
namespace Mub6.PhaseCube
open Complex
local notation "conj" => starRingEnd ℂ
noncomputable section

def omega : ℂ := ⟨-(1/2), Real.sqrt 3 / 2⟩

theorem sqrt_three_sq : (Real.sqrt (3 : ℝ))^2 = 3 := by norm_num

theorem omega_cube : omega^3 = 1 := by
  apply Complex.ext
  · norm_num [omega, Complex.mul_re, Complex.mul_im, pow_succ]
    nlinarith [sqrt_three_sq]
  · norm_num [omega, Complex.mul_re, Complex.mul_im, pow_succ]
    linear_combination -(Real.sqrt 3 / 8) * sqrt_three_sq

theorem omega_unit : normSq omega = 1 := by
  simp [omega, normSq]
  nlinarith [sqrt_three_sq]

theorem cube_unit {z : ℂ} (hz : normSq (z^3) = 1) :
    normSq z = 1 := by
  rw [map_pow] at hz
  have hn := normSq_nonneg z
  nlinarith [sq_nonneg (normSq z - 1)]

theorem exists_unit_cube (xi : ℂ) (hxi : normSq xi = 1) :
    ∃ w : ℂ, w^3 = xi ∧ normSq w = 1 := by
  have hn : xi ≠ 0 := by intro h; simp [h] at hxi
  let w := Complex.exp (Complex.log xi / 3)
  have hw : w^3 = xi := by
    dsimp [w]
    rw [← Complex.exp_nat_mul]
    convert Complex.exp_log hn using 1 <;> congr 1 <;> ring
  exact ⟨w, hw, cube_unit (by rw [hw, hxi])⟩

theorem unit_chord (z : ℂ) (hz : normSq z = 1) :
    normSq (z-1) = 2-2*z.re := by
  simp [normSq, Complex.sub_re, Complex.sub_im] at hz ⊢
  nlinarith

theorem rotation_geometry (x y r : ℝ)
    (hu : x^2+y^2=1) (hr : r^2=3) :
    2-2*x ≤ 1 ∨ 2+x+r*y ≤ 1 ∨ 2+x-r*y ≤ 1 := by
  by_contra h
  push_neg at h
  rcases h with ⟨ha,hb,hc⟩
  have hp := mul_pos (show 0 < 1-2*x by linarith)
    (show 0 < 1+x+r*y by linarith)
  have hq := mul_pos (show 0 < 1-2*x by linarith)
    (show 0 < 1+x-r*y by linarith)
  have hs := mul_pos (show 0 < 1+x+r*y by linarith)
    (show 0 < 1+x-r*y by linarith)
  have hid :
      (1-2*x)*(1+x+r*y)+(1-2*x)*(1+x-r*y)+(1+x+r*y)*(1+x-r*y)=0 := by
    calc
      _ = 3*(1-x^2-y^2)+(3-r^2)*y^2 := by ring
      _ = 0 := by rw [hr]; nlinarith [hu]
  linarith

theorem one_rotation_near_one (z : ℂ) (hz : normSq z = 1) :
    normSq (z-1) ≤ 1 ∨ normSq (omega*z-1) ≤ 1 ∨
      normSq (omega^2*z-1) ≤ 1 := by
  have hz1 : normSq (omega*z) = 1 := by rw [normSq_mul,omega_unit,hz]; norm_num
  have hz2 : normSq (omega^2*z) = 1 := by
    rw [normSq_mul,map_pow,omega_unit,hz]; norm_num
  rw [unit_chord z hz, unit_chord _ hz1, unit_chord _ hz2]
  have hreal : z.re^2+z.im^2=1 := by simpa [normSq, pow_two] using hz
  have h := rotation_geometry z.re z.im (Real.sqrt 3) hreal sqrt_three_sq
  have ho1 : 2-2*(omega*z).re = 2+z.re+Real.sqrt 3*z.im := by
    simp [omega, Complex.mul_re]; ring
  have ho2 : 2-2*(omega^2*z).re = 2+z.re-Real.sqrt 3*z.im := by
    simp [omega, Complex.mul_re, Complex.mul_im, pow_succ]
    nlinarith [sqrt_three_sq, congrArg (fun t : ℝ => t*z.re) sqrt_three_sq]
  rwa [ho1,ho2]

theorem unit_relative_chord (w c : ℂ) (hc : normSq c = 1) :
    normSq (w*conj c-1) = normSq (w-c) := by
  have hcc : c*conj c = 1 := by rw [mul_conj,hc]; norm_num
  have he : w*conj c-1 = (w-c)*conj c := by rw [sub_mul,hcc]
  rw [he,normSq_mul,normSq_conj,hc,mul_one]

theorem unit_cubic_chord_one (z : ℂ) (hz : normSq z = 1) :
    normSq (z^3-1) = normSq (z-1)*(3-normSq (z-1))^2 := by
  have hz3 : normSq (z^3) = 1 := by rw [map_pow,hz]; norm_num
  rw [unit_chord _ hz3, unit_chord _ hz]
  have hreal : z.re^2+z.im^2=1 := by simpa [normSq,pow_two] using hz
  have hmul := congrArg (fun t : ℝ => z.re*t) hreal
  simp [Complex.mul_re, Complex.mul_im, pow_succ]
  nlinarith [hmul]

theorem unit_cubic_chord (w c : ℂ)
    (hw : normSq w = 1) (hc : normSq c = 1) :
    normSq (w^3-c^3) = normSq (w-c)*(3-normSq (w-c))^2 := by
  have hrel : normSq (w*conj c) = 1 := by rw [normSq_mul,normSq_conj,hw,hc]; norm_num
  have hc3 : normSq (c^3) = 1 := by rw [map_pow,hc]; norm_num
  have h := unit_cubic_chord_one (w*conj c) hrel
  rw [unit_relative_chord w c hc] at h
  have he : (w*conj c)^3-1 = w^3*conj (c^3)-1 := by rw [map_pow]; ring
  rw [he,unit_relative_chord _ _ hc3] at h
  exact h

theorem exists_near_unit_cube (xi c : ℂ)
    (hxi : normSq xi = 1) (hc : normSq c = 1) :
    ∃ w : ℂ, w^3=xi ∧ normSq w=1 ∧ normSq (w-c) ≤ 1 := by
  obtain ⟨u,hu,hun⟩ := exists_unit_cube xi hxi
  have hur : normSq (u*conj c) = 1 := by rw [normSq_mul,normSq_conj,hun,hc]; norm_num
  rcases one_rotation_near_one (u*conj c) hur with h | h | h
  · exact ⟨u,hu,hun,by rwa [unit_relative_chord u c hc] at h⟩
  · refine ⟨omega*u, ?_, ?_, ?_⟩
    · rw [mul_pow,omega_cube,hu,one_mul]
    · rw [normSq_mul,omega_unit,hun]; norm_num
    · rw [← mul_assoc,unit_relative_chord _ c hc] at h
      exact h
  · refine ⟨omega^2*u, ?_, ?_, ?_⟩
    · calc
        (omega^2*u)^3 = (omega^3)^2*u^3 := by ring
        _ = xi := by rw [omega_cube,hu]; ring
    · rw [normSq_mul,map_pow,omega_unit,hun]; norm_num
    · rw [← mul_assoc,unit_relative_chord _ c hc] at h
      exact h

theorem unit_cube_uniform_linear (xi c : ℂ)
    (hxi : normSq xi = 1) (hc : normSq c = 1) :
    ∃ w : ℂ, w^3=xi ∧ normSq w=1 ∧
      4*normSq (w-c) ≤ normSq (xi-c^3) := by
  obtain ⟨w,hw,hwn,hnear⟩ := exists_near_unit_cube xi c hxi hc
  refine ⟨w,hw,hwn,?_⟩
  rw [← hw,unit_cubic_chord w c hwn hc]
  have hn := normSq_nonneg (w-c)
  have hfac : 4 ≤ (3-normSq (w-c))^2 := by nlinarith
  nlinarith [mul_nonneg hn (sub_nonneg.mpr hfac)]

theorem unit_cube_radius (xi c : ℂ) (e : ℝ)
    (hxi : normSq xi = 1) (hc : normSq c = 1)
    (hres : normSq (xi-c^3) ≤ 4*e^2) :
    ∃ w : ℂ, w^3=xi ∧ normSq w=1 ∧ normSq (w-c) ≤ e^2 := by
  obtain ⟨w,hw,hwn,he⟩ := unit_cube_uniform_linear xi c hxi hc
  exact ⟨w,hw,hwn,by linarith⟩

theorem unit_cube_refined_radius (xi c : ℂ) (r e : ℝ)
    (hxi : normSq xi = 1) (hc : normSq c = 1)
    (hr : r^2 ≤ 1)
    (hcoarse : normSq (xi-c^3) ≤ 4*r^2)
    (hres : normSq (xi-c^3) ≤ (3-r^2)^2*e^2) :
    ∃ w : ℂ, w^3=xi ∧ normSq w=1 ∧ normSq (w-c) ≤ e^2 := by
  obtain ⟨w,hw,hwn,hd⟩ := unit_cube_radius xi c r hxi hc hcoarse
  refine ⟨w,hw,hwn,?_⟩
  have hi := unit_cubic_chord w c hwn hc
  rw [hw] at hi
  have hn := normSq_nonneg (w-c)
  have hfac : (3-r^2)^2 ≤ (3-normSq (w-c))^2 := by nlinarith [sq_nonneg r]
  have hp := mul_le_mul_of_nonneg_left hfac hn
  have hk : 0 < (3-r^2)^2 := sq_pos_of_pos (by nlinarith)
  nlinarith

theorem distinct_unit_cubes_separated (u v : ℂ)
    (hu : normSq u=1) (hv : normSq v=1)
    (hc : u^3=v^3) (hne : u≠v) :
    normSq (u-v)=3 := by
  have h := unit_cubic_chord u v hu hv
  rw [hc,sub_self,normSq_zero] at h
  have hn : normSq (u-v) ≠ 0 := by
    intro hh
    exact hne (sub_eq_zero.mp (normSq_eq_zero.mp hh))
  have hs : (3-normSq (u-v))^2=0 :=
    (mul_eq_zero.mp h.symm).resolve_left hn
  nlinarith [sq_nonneg (3-normSq (u-v))]

theorem two_chords_bound (u v c : ℂ) :
    normSq (u-v) ≤ 2*(normSq (u-c)+normSq (v-c)) := by
  simp only [normSq_apply,sub_re,sub_im]
  nlinarith [sq_nonneg (u.re+v.re-2*c.re),sq_nonneg (u.im+v.im-2*c.im)]

theorem unique_unit_cube_in_small_ball (xi c u v : ℂ) (e : ℝ)
    (hu : u^3=xi) (hv : v^3=xi)
    (hun : normSq u=1) (hvn : normSq v=1)
    (huc : normSq (u-c) ≤ e^2) (hvc : normSq (v-c) ≤ e^2)
    (he : 4*e^2<3) : u=v := by
  by_contra hne
  have hs := distinct_unit_cubes_separated u v hun hvn (hu.trans hv.symm) hne
  have hb := two_chords_bound u v c
  nlinarith

theorem chord_components (w c : ℂ) (e : ℝ)
    (he : 0 ≤ e) (hd : normSq (w-c) ≤ e^2) :
    c.re-e ≤ w.re ∧ w.re ≤ c.re+e ∧
    c.im-e ≤ w.im ∧ w.im ≤ c.im+e := by
  simp only [normSq_apply,sub_re,sub_im] at hd
  have hr := sq_nonneg (w.re-c.re)
  have hi := sq_nonneg (w.im-c.im)
  constructor
  · nlinarith
  constructor
  · nlinarith
  constructor <;> nlinarith

theorem minus_one_root_distances (w : ℂ) (hw : w^3 = -1) :
    normSq (w-1)=1 ∨ normSq (w-1)=4 := by
  have hn : normSq w=1 := cube_unit (by rw [hw]; norm_num)
  have h := unit_cubic_chord_one w hn
  rw [hw] at h
  norm_num at h
  have hf : (normSq (w-1)-1)^2*(normSq (w-1)-4)=0 := by nlinarith [h]
  rcases mul_eq_zero.mp hf with ha | hb
  · left
    nlinarith [sq_nonneg (normSq (w-1)-1)]
  · right
    linarith

/- The coefficient 4 in the squared linear estimate cannot be increased. -/
theorem uniform_squared_coefficient_optimal (C : ℝ)
    (h : ∀ xi c : ℂ, normSq xi=1 → normSq c=1 →
      ∃ w : ℂ, w^3=xi ∧ normSq w=1 ∧
        C*normSq (w-c) ≤ normSq (xi-c^3)) : C ≤ 4 := by
  obtain ⟨w,hw,_hn,hb⟩ := h (-1) 1 (by norm_num) (by norm_num)
  norm_num at hb
  rcases minus_one_root_distances w hw with h1 | h4
  · rw [h1] at hb
    linarith
  · rw [h4] at hb
    linarith

#print axioms omega_cube
#print axioms omega_unit
#print axioms cube_unit
#print axioms exists_unit_cube
#print axioms unit_chord
#print axioms rotation_geometry
#print axioms one_rotation_near_one
#print axioms unit_relative_chord
#print axioms unit_cubic_chord_one
#print axioms unit_cubic_chord
#print axioms exists_near_unit_cube
#print axioms unit_cube_uniform_linear
#print axioms unit_cube_radius
#print axioms unit_cube_refined_radius
#print axioms distinct_unit_cubes_separated
#print axioms two_chords_bound
#print axioms unique_unit_cube_in_small_ball
#print axioms chord_components
#print axioms minus_one_root_distances
#print axioms uniform_squared_coefficient_optimal
end
end Mub6.PhaseCube
