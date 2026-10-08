import PhaseCubeRoots
import Mathlib.Tactic.Positivity

namespace Mub6.PhaseCube
open Complex
noncomputable section

structure TargetBox where
  reLo : ℚ
  reHi : ℚ
  imLo : ℚ
  imHi : ℚ

def TargetBox.Contains (b : TargetBox) (z : ℂ) : Prop :=
  (b.reLo : ℝ) ≤ z.re ∧ z.re ≤ (b.reHi : ℝ) ∧
  (b.imLo : ℝ) ≤ z.im ∧ z.im ≤ (b.imHi : ℝ)

structure RootRecipe where
  cx : ℚ
  cy : ℚ
  rx : ℚ
  ry : ℚ
  residual : ℚ
  coarse : ℚ
  radius : ℚ

def RootRecipe.center (r : RootRecipe) : ℂ := ⟨r.cx,r.cy⟩
def RootRecipe.cubeRe (r : RootRecipe) : ℚ := r.cx^3-3*r.cx*r.cy^2
def RootRecipe.cubeIm (r : RootRecipe) : ℚ := 3*r.cx^2*r.cy-r.cy^3

/- All conditions are rational arithmetic, independent of a root solver. -/
def RootRecipe.Valid (r : RootRecipe) (b : TargetBox) : Prop :=
  r.cx^2+r.cy^2=1 ∧ 0 ≤ r.rx ∧ 0 ≤ r.ry ∧
  0 ≤ r.radius ∧ r.coarse^2 ≤ 1 ∧
  r.cubeRe-r.rx ≤ b.reLo ∧ b.reHi ≤ r.cubeRe+r.rx ∧
  r.cubeIm-r.ry ≤ b.imLo ∧ b.imHi ≤ r.cubeIm+r.ry ∧
  (r.rx^2+r.ry^2 ≤ r.residual ∨ 4 ≤ r.residual) ∧
  r.residual ≤ 4*r.coarse^2 ∧
  r.residual ≤ (3-r.coarse^2)^2*r.radius^2

theorem center_cube_re (r : RootRecipe) :
    (r.center^3).re = (r.cubeRe : ℝ) := by
  simp [RootRecipe.center,RootRecipe.cubeRe,Complex.mul_re,Complex.mul_im,pow_succ]
  ring

theorem center_cube_im (r : RootRecipe) :
    (r.center^3).im = (r.cubeIm : ℝ) := by
  simp [RootRecipe.center,RootRecipe.cubeIm,Complex.mul_re,Complex.mul_im,pow_succ]
  ring

theorem rational_center_unit (r : RootRecipe) (h : r.cx^2+r.cy^2=1) :
    normSq r.center=1 := by
  simp only [RootRecipe.center,normSq_apply]
  have hh : (r.cx : ℝ)^2+(r.cy : ℝ)^2=1 := by exact_mod_cast h
  nlinarith

theorem rectangle_residual_bound (r : RootRecipe) (b : TargetBox) (z : ℂ)
    (hr : r.Valid b) (hz : b.Contains z) :
    normSq (z-r.center^3) ≤ (r.rx : ℝ)^2+(r.ry : ℝ)^2 := by
  rcases hr with ⟨_,hx,hy,_,_,hl,hu,vl,vu,_,_,_⟩
  rcases hz with ⟨hzl,hzu,hvl,hvu⟩
  have hx' : (0 : ℝ) ≤ r.rx := by exact_mod_cast hx
  have hy' : (0 : ℝ) ≤ r.ry := by exact_mod_cast hy
  have hl' : (r.cubeRe : ℝ)-r.rx ≤ b.reLo := by exact_mod_cast hl
  have hu' : (b.reHi : ℝ) ≤ (r.cubeRe : ℝ)+r.rx := by exact_mod_cast hu
  have vl' : (r.cubeIm : ℝ)-r.ry ≤ b.imLo := by exact_mod_cast vl
  have vu' : (b.imHi : ℝ) ≤ (r.cubeIm : ℝ)+r.ry := by exact_mod_cast vu
  have hsx : (z.re-(r.cubeRe : ℝ))^2 ≤ (r.rx : ℝ)^2 := by nlinarith
  have hsy : (z.im-(r.cubeIm : ℝ))^2 ≤ (r.ry : ℝ)^2 := by nlinarith
  simp only [normSq_apply,sub_re,sub_im,center_cube_re,center_cube_im]
  nlinarith

theorem unit_distance_le_four (z c : ℂ)
    (hz : normSq z=1) (hc : normSq c=1) :
    normSq (z-c) ≤ 4 := by
  have hid : normSq (z-c)+normSq (z+c)=2*(normSq z+normSq c) := by
    simp only [normSq_apply,sub_re,sub_im,add_re,add_im]
    ring
  rw [hz,hc] at hid
  nlinarith [normSq_nonneg (z+c)]

theorem phase_residual_bound (r : RootRecipe) (b : TargetBox) (z : ℂ)
    (hr : r.Valid b) (hz : b.Contains z) (hunit : normSq z=1) :
    normSq (z-r.center^3) ≤ (r.residual : ℝ) := by
  have hrect := rectangle_residual_bound r b z hr hz
  have hcenter : normSq r.center=1 := rational_center_unit r hr.1
  have hc3 : normSq (r.center^3)=1 := by rw [map_pow,hcenter]; norm_num
  rcases hr with ⟨_,_,_,_,_,_,_,_,_,hbound,_,_⟩
  rcases hbound with hb | hb
  · have hb' : (r.rx : ℝ)^2+(r.ry : ℝ)^2 ≤ r.residual := by exact_mod_cast hb
    exact hrect.trans hb'
  · have hb' : (4 : ℝ) ≤ r.residual := by exact_mod_cast hb
    exact (unit_distance_le_four z _ hunit hc3).trans hb'

theorem phase_box_root_sound (r : RootRecipe) (b : TargetBox)
    (hr : r.Valid b) (z : ℂ) (hz : b.Contains z) (hunit : normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ normSq w=1 ∧
      normSq (w-r.center) ≤ (r.radius : ℝ)^2 ∧
      (r.cx : ℝ)-r.radius ≤ w.re ∧ w.re ≤ (r.cx : ℝ)+r.radius ∧
      (r.cy : ℝ)-r.radius ≤ w.im ∧ w.im ≤ (r.cy : ℝ)+r.radius := by
  have hres := phase_residual_bound r b z hr hz hunit
  rcases hr with ⟨hcenter,_,_,he,hco,_,_,_,_,_,hc,hf⟩
  have hco' : (r.coarse : ℝ)^2 ≤ 1 := by exact_mod_cast hco
  have hc' : (r.residual : ℝ) ≤ 4*(r.coarse : ℝ)^2 := by exact_mod_cast hc
  have hf' : (r.residual : ℝ) ≤ (3-(r.coarse : ℝ)^2)^2*(r.radius : ℝ)^2 := by exact_mod_cast hf
  obtain ⟨w,hw,hwn,hd⟩ := unit_cube_refined_radius z r.center r.coarse r.radius
    hunit (rational_center_unit r hcenter) hco' (hres.trans hc') (hres.trans hf')
  have he' : (0 : ℝ) ≤ r.radius := by exact_mod_cast he
  have hb := chord_components w r.center r.radius he' hd
  exact ⟨w,hw,hwn,hd,hb⟩

theorem phase_box_root_unique (r : RootRecipe) (b : TargetBox)
    (hr : r.Valid b) (hsmall : 4*r.radius^2<3)
    (z : ℂ) (hz : b.Contains z) (hunit : normSq z=1) :
    ∃! w : ℂ, w^3=z ∧ normSq w=1 ∧
      normSq (w-r.center) ≤ (r.radius : ℝ)^2 := by
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound r b hr z hz hunit
  refine ⟨w,⟨hw,hwn,hd⟩,?_⟩
  intro v hv
  have hs : 4*(r.radius : ℝ)^2<3 := by exact_mod_cast hsmall
  exact unique_unit_cube_in_small_ball z r.center v w r.radius
    hv.1 hw hv.2.1 hwn hv.2.2 hd hs

def fallbackRecipe (b : TargetBox) : RootRecipe where
  cx := 1
  cy := 0
  rx := |b.reLo-1|+|b.reHi-1|
  ry := |b.imLo|+|b.imHi|
  residual := 4
  coarse := 1
  radius := 1

theorem fallback_valid (b : TargetBox) : (fallbackRecipe b).Valid b := by
  have h1 := abs_nonneg (b.reLo-1)
  have h2 := abs_nonneg (b.reHi-1)
  have h3 := abs_nonneg b.imLo
  have h4 := abs_nonneg b.imHi
  have l1 := neg_abs_le (b.reLo-1)
  have u1 := le_abs_self (b.reHi-1)
  have l2 := neg_abs_le b.imLo
  have u2 := le_abs_self b.imHi
  norm_num [RootRecipe.Valid,fallbackRecipe,RootRecipe.cubeRe,RootRecipe.cubeIm]
  refine ⟨?_,?_,?_,?_,?_,?_⟩ <;> linarith

theorem every_phase_box_has_recipe (b : TargetBox) :
    ∃ r : RootRecipe, r.Valid b := ⟨fallbackRecipe b,fallback_valid b⟩

#print axioms center_cube_re
#print axioms center_cube_im
#print axioms rational_center_unit
#print axioms rectangle_residual_bound
#print axioms unit_distance_le_four
#print axioms phase_residual_bound
#print axioms phase_box_root_sound
#print axioms phase_box_root_unique
#print axioms fallback_valid
#print axioms every_phase_box_has_recipe
end
end Mub6.PhaseCube
