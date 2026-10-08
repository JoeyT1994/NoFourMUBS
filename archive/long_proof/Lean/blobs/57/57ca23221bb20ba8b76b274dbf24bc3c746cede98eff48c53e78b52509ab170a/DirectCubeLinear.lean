import PhaseCubeRoots
import LocalRootLipschitz

namespace Mub6.PhaseCube
open Complex
open Hadamard6Extensions.LocalRootEnclosures
local notation "conj" => starRingEnd ℂ
noncomputable section

theorem omega_quadratic_direct : omega^2+omega+1=0 := by
  apply Complex.ext <;> norm_num [omega,pow_succ,Complex.mul_re,Complex.mul_im]
  all_goals nlinarith [sqrt_three_sq]

theorem exists_complex_cube (T : ℂ) : ∃ u : ℂ, u^3=T := by
  by_cases hT : T=0
  · exact ⟨0,by simp [hT]⟩
  · refine ⟨Complex.exp (Complex.log T/3),?_⟩
    rw [← Complex.exp_nat_mul]
    convert Complex.exp_log hT using 1 <;> congr 1 <;> ring

theorem cubic_factor_norm_identity (u c : ℂ) :
    normSq (u^2+u*c+c^2) =
      (normSq u)^2+(normSq c)^2-normSq u*normSq c+
      4*((u*conj c).re)^2+2*(u*conj c).re*(normSq u+normSq c) := by
  simp [normSq,Complex.mul_re,Complex.mul_im,pow_succ]
  ring

theorem cubic_factor_halfplane_lower (u c : ℂ) (h : 0 ≤ (u*conj c).re) :
    3*(normSq c)^2 ≤ 4*normSq (u^2+u*c+c^2) := by
  rw [cubic_factor_norm_identity]
  have hp := mul_nonneg h (add_nonneg (normSq_nonneg u) (normSq_nonneg c))
  nlinarith [sq_nonneg (2*normSq u-normSq c),sq_nonneg ((u*conj c).re)]

theorem exists_cube_in_halfplane (T c : ℂ) :
    ∃ u : ℂ, u^3=T ∧ 0 ≤ (u*conj c).re := by
  obtain ⟨u,hu⟩ := exists_complex_cube T
  have hz : u*conj c+(omega*u)*conj c+(omega^2*u)*conj c=0 := by
    linear_combination u*conj c*omega_quadratic_direct
  have hr := congrArg Complex.re hz
  simp only [Complex.add_re,Complex.zero_re] at hr
  by_cases h0 : 0 ≤ (u*conj c).re
  · exact ⟨u,hu,h0⟩
  by_cases h1 : 0 ≤ ((omega*u)*conj c).re
  · refine ⟨omega*u,?_,h1⟩
    rw [mul_pow,omega_cube,hu,one_mul]
  · refine ⟨omega^2*u,?_,by linarith⟩
    calc
      (omega^2*u)^3=(omega^3)^2*u^3 := by ring
      _ = T := by rw [omega_cube,hu]; ring

theorem direct_cube_linear_bound (T c : ℂ) :
    ∃ u : ℂ, u^3=T ∧
      3*(normSq c)^2*normSq (u-c) ≤ 4*normSq (T-c^3) := by
  obtain ⟨u,hu,hh⟩ := exists_cube_in_halfplane T c
  have hf := cubic_factor_halfplane_lower u c hh
  have hid : (u-c)*(u^2+u*c+c^2)=T-c^3 := by rw [← hu]; ring
  have hn := congrArg normSq hid
  rw [normSq_mul] at hn
  have hp := mul_le_mul_of_nonneg_right hf (normSq_nonneg (u-c))
  exact ⟨u,hu,by nlinarith⟩

theorem direct_cube_linear_radius (T c : ℂ) (r : ℝ)
    (hc : c≠0)
    (hres : 4*normSq (T-c^3) ≤ 3*(normSq c)^2*r^2) :
    ∃ u : ℂ, u^3=T ∧ normSq (u-c) ≤ r^2 := by
  obtain ⟨u,hu,hb⟩ := direct_cube_linear_bound T c
  have hp : 0 < (normSq c)^2 := sq_pos_of_pos (normSq_pos.mpr hc)
  exact ⟨u,hu,by nlinarith⟩

theorem direct_cube_refined_linear (T c : ℂ) (r M k : ℝ)
    (hc : c≠0) (hr : 0 ≤ r) (hM : 0 ≤ M) (hk : 0 < k)
    (hres : 4*normSq (T-c^3) ≤ 3*(normSq c)^2*r^2)
    (hU : normSq c ≤ M^2)
    (hsep : k ≤ 3*normSq c-3*M*r-r^2) :
    ∃ u : ℂ, u^3=T ∧ normSq (u-c) ≤ r^2 ∧
      normSq (u-c) ≤ normSq (T-c^3)/k^2 := by
  obtain ⟨u,hu,hd⟩ := direct_cube_linear_radius T c r hc hres
  have href := cube_local_normSq_lipschitz u c r (normSq c) M k
    hr hM hk hd le_rfl hU hsep
  exact ⟨u,hu,hd,by simpa only [hu] using href⟩

#print axioms omega_quadratic_direct
#print axioms exists_complex_cube
#print axioms cubic_factor_norm_identity
#print axioms cubic_factor_halfplane_lower
#print axioms exists_cube_in_halfplane
#print axioms direct_cube_linear_bound
#print axioms direct_cube_linear_radius
#print axioms direct_cube_refined_linear
end
end Mub6.PhaseCube
