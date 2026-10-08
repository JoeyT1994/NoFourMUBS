import FourierOrientation
import Mathlib.Tactic.Linarith
import Mathlib.Algebra.Order.Field.Basic

/-! Uniform conditioning for the Fourier coordinates of actual phase sides. -/
namespace Hadamard6Extensions.FourierConditioning
open Hadamard6Extensions.FourierSide
noncomputable section

theorem cube_equal_normSq {z a : ℂ} (h : z^3 = a^3) :
    Complex.normSq z = Complex.normSq a := by
  have hn := congrArg Complex.normSq h
  simp only [map_pow] at hn
  exact (pow_left_inj₀ (Complex.normSq_nonneg z)
    (Complex.normSq_nonneg a) (by decide : (3 : ℕ) ≠ 0)).mp hn

theorem omega_normSq {w : ℂ} (hw : w^2+w+1=0) :
    Complex.normSq w = 1 := by
  have hh : w^3 = (1 : ℂ)^3 := by simpa using omega_cube hw
  simpa using cube_equal_normSq hh

theorem normSq_sum_three_le (a b c : ℂ) :
    Complex.normSq (a+b+c) ≤
      3*(Complex.normSq a+Complex.normSq b+Complex.normSq c) := by
  have hab := Complex.normSq_nonneg (a-b)
  have hac := Complex.normSq_nonneg (a-c)
  have hbc := Complex.normSq_nonneg (b-c)
  simp only [Complex.normSq_apply, Complex.add_re, Complex.add_im,
    Complex.sub_re, Complex.sub_im] at *
  nlinarith

theorem firstMode_normSq_le_one (x : Fin 3 → ℂ) (w : ℂ)
    (hw : w^2+w+1=0) (hx : ∀ j, Complex.normSq (x j)=1) :
    Complex.normSq (firstMode x w) ≤ 1 := by
  have hh := normSq_sum_three_le (x 0) (w^2*x 1) (w*x 2)
  have hw1 := omega_normSq hw
  simp only [map_mul, map_pow, hw1, hx, one_pow, one_mul] at hh
  have hc : Complex.normSq (3 : ℂ) = 9 := by norm_num [Complex.normSq_apply]
  rw [firstMode, Complex.normSq_div, hc]
  linarith

theorem secondMode_normSq_le_one (x : Fin 3 → ℂ) (w : ℂ)
    (hw : w^2+w+1=0) (hx : ∀ j, Complex.normSq (x j)=1) :
    Complex.normSq (secondMode x w) ≤ 1 := by
  have hh := normSq_sum_three_le (x 0) (w*x 1) (w^2*x 2)
  have hw1 := omega_normSq hw
  simp only [map_mul, map_pow, hw1, hx, one_pow, one_mul] at hh
  have hc : Complex.normSq (3 : ℂ) = 9 := by norm_num [Complex.normSq_apply]
  rw [secondMode, Complex.normSq_div, hc]
  linarith

theorem normSq_sub_le_twice (a b : ℂ) :
    Complex.normSq (a-b) ≤ 2*(Complex.normSq a+Complex.normSq b) := by
  have hh := Complex.normSq_nonneg (a+b)
  simp only [Complex.normSq_apply, Complex.add_re, Complex.add_im,
    Complex.sub_re, Complex.sub_im] at *
  nlinarith

theorem discriminant_normSq (s t A B C D w : ℂ) (hw : w^2+w+1=0) :
    Complex.normSq (9*(A*D-B*C)) =
      3*Complex.normSq (affineSide s t A B C D w).det := by
  have hh := congrArg Complex.normSq
    (determinant_discriminant s t A B C D w hw)
  have hleft : Complex.normSq (-3*(affineSide s t A B C D w).det^2) =
      (3*Complex.normSq (affineSide s t A B C D w).det)^2 := by
    simp only [map_mul, map_pow]
    norm_num [Complex.normSq_apply]
    ring
  rw [hleft, map_pow] at hh
  exact ((pow_left_inj₀
    (mul_nonneg (by norm_num) (Complex.normSq_nonneg _))
    (Complex.normSq_nonneg _) (by decide : (2 : ℕ) ≠ 0)).mp hh).symm

theorem larger_product_bounds (A B C D : ℂ) (g : ℝ)
    (hdisc : Complex.normSq (9*(A*D-B*C))=3*g)
    (hlarge : Complex.normSq (B*C) ≤ Complex.normSq (A*D))
    (hA : Complex.normSq A ≤ 1) (hD : Complex.normSq D ≤ 1) :
    g/108 ≤ Complex.normSq A ∧
    g/108 ≤ Complex.normSq D ∧
    3*g/4 ≤ Complex.normSq (9*A*D) := by
  have hh := normSq_sub_le_twice (A*D) (B*C)
  have hnA := Complex.normSq_nonneg A
  have hnD := Complex.normSq_nonneg D
  have hpA : Complex.normSq (A*D) ≤ Complex.normSq A := by
    rw [map_mul]
    nlinarith
  have hpD : Complex.normSq (A*D) ≤ Complex.normSq D := by
    rw [map_mul]
    nlinarith
  have hd : Complex.normSq (9*(A*D-B*C)) =
      81*Complex.normSq (A*D-B*C) := by
    rw [map_mul]
    norm_num [Complex.normSq_apply]
  have hp : Complex.normSq (9*A*D) = 81*Complex.normSq (A*D) := by
    simp only [map_mul]
    norm_num [Complex.normSq_apply]
    ring
  rw [hd] at hdisc
  constructor
  · linarith
  constructor
  · linarith
  · rw [hp]
    linarith

theorem inverse_normSq_le_ten {z : ℂ} (hz : (1/10 : ℝ) ≤ Complex.normSq z) :
    Complex.normSq z⁻¹ ≤ 10 := by
  rw [Complex.normSq_inv]
  have hp : 0 < Complex.normSq z := by linarith
  exact (inv_le_iff_one_le_mul₀ hp).2 (by linarith)

#print axioms cube_equal_normSq
#print axioms omega_normSq
#print axioms normSq_sum_three_le
#print axioms firstMode_normSq_le_one
#print axioms secondMode_normSq_le_one
#print axioms normSq_sub_le_twice
#print axioms discriminant_normSq
#print axioms larger_product_bounds
#print axioms inverse_normSq_le_ten
end
end Hadamard6Extensions.FourierConditioning
