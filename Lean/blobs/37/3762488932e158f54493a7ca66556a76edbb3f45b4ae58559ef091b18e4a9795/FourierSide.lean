import Mathlib.Data.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.FinCases

/-! Algebraic Fourier reconstruction for actual affine three-point data.
This module does not assume distinct individual x or y coordinates. -/
namespace Hadamard6Extensions.FourierSide

noncomputable section

def fourierRow (s A B w : ℂ) : Fin 3 → ℂ :=
  ![s / 3 + A + B, s / 3 + A*w + B*w^2, s / 3 + A*w^2 + B*w]

def affineSide (s t A B C D w : ℂ) : Matrix (Fin 3) (Fin 3) ℂ :=
  ![![1, 1, 1], fourierRow s A B w, fourierRow t C D w]

theorem omega_cube {w : ℂ} (hw : w^2 + w + 1 = 0) : w^3 = 1 := by
  linear_combination (w - 1) * hw

theorem omega_ne_zero {w : ℂ} (hw : w^2 + w + 1 = 0) : w ≠ 0 := by
  intro h
  simp [h] at hw

theorem omega_sq {w : ℂ} (hw : w^2 + w + 1 = 0) : w^2 = -w - 1 := by
  linear_combination hw

theorem omega_four {w : ℂ} (hw : w^2 + w + 1 = 0) : w^4 = w := by
  calc
    w^4 = w^3*w := by ring
    _ = w := by rw [omega_cube hw]; ring

theorem discriminant_factor (A B C D : ℂ) :
    (9*(A*D+B*C))^2 - 4*(9*A*B)*(9*C*D) = (9*(A*D-B*C))^2 := by
  ring

theorem oriented_pivot (A B C D : ℂ) :
    (9*(A*D+B*C) + 9*(A*D-B*C))/2 = 9*A*D := by ring

theorem opposite_pivot (A B C D : ℂ) :
    (9*(A*D+B*C) - 9*(A*D-B*C))/2 = 9*B*C := by ring

theorem one_orientation_nonzero {A B C D : ℂ}
    (hdet : A*D-B*C ≠ 0) : A*D ≠ 0 ∨ B*C ≠ 0 := by
  by_cases h : A*D = 0
  · right
    intro hbc
    exact hdet (by rw [h, hbc]; ring)
  · exact Or.inl h

theorem pure_mode_projection (s t A B C D p q : ℂ) :
    (9*A*D)*(s/3+A*p+B*q) - (9*A*B)*(t/3+C*p+D*q) -
      ((9*A*D)*s-(9*A*B)*t)/3 = (9*(A*D-B*C))*A*p := by
  ring

theorem pure_mode_projection_div (s t A B C D p q : ℂ)
    (hdet : A*D-B*C ≠ 0) :
    ((9*A*D)*(s/3+A*p+B*q) - (9*A*B)*(t/3+C*p+D*q) -
      ((9*A*D)*s-(9*A*B)*t)/3) / (9*(A*D-B*C)) = A*p := by
  rw [pure_mode_projection]
  have hd : (9:ℂ)*(A*D-B*C) ≠ 0 := mul_ne_zero (by norm_num) hdet
  field_simp

theorem reconstruct_coefficients (A B C D : ℂ) (hA : A ≠ 0) (hD : D ≠ 0) :
    (9*A*B)/(9*A) = B ∧ (9*C*D)*A/(9*A*D) = C ∧ (9*A*D)/(9*A) = D := by
  constructor
  · field_simp
  constructor <;> field_simp <;> ring

theorem cubic_factor (A z w : ℂ) (hw : w^2+w+1 = 0) :
    (z-A)*(z-A*w)*(z-A*w^2) = z^3-A^3 := by
  have h3 := omega_cube hw
  have h2 := omega_sq hw
  ring_nf
  rw [h3, h2]
  ring

theorem cube_roots_are_modes {A z w : ℂ} (hw : w^2+w+1 = 0)
    (hz : z^3 = A^3) : z = A ∨ z = A*w ∨ z = A*w^2 := by
  have hp : (z-A)*(z-A*w)*(z-A*w^2) = 0 := by
    rw [cubic_factor A z w hw, hz]
    ring
  rcases mul_eq_zero.mp hp with hp | hp
  · rcases mul_eq_zero.mp hp with hp | hp
    · exact Or.inl (sub_eq_zero.mp hp)
    · exact Or.inr (Or.inl (sub_eq_zero.mp hp))
  · exact Or.inr (Or.inr (sub_eq_zero.mp hp))

theorem fourier_inverse (x₀ x₁ x₂ w : ℂ) (hw : w^2+w+1 = 0) :
    fourierRow (x₀+x₁+x₂)
      ((x₀+w^2*x₁+w*x₂)/3) ((x₀+w*x₁+w^2*x₂)/3) w = ![x₀,x₁,x₂] := by
  have h2 := omega_sq hw
  have h3 := omega_cube hw
  have h4 := omega_four hw
  ext j
  fin_cases j <;> simp only [fourierRow, Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons] <;>
    ring_nf <;> simp only [h4,h3,h2] <;> ring

theorem row_sum (s A B w : ℂ) (hw : w^2+w+1 = 0) :
    fourierRow s A B w 0 + fourierRow s A B w 1 + fourierRow s A B w 2 = s := by
  have h2 := omega_sq hw
  simp only [fourierRow, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
  ring_nf
  simp only [h2]
  ring

theorem centered_second_moment (s A B w : ℂ) (hw : w^2+w+1 = 0) :
    s^2 - 3 * (fourierRow s A B w 0 * fourierRow s A B w 1 +
      fourierRow s A B w 0 * fourierRow s A B w 2 +
      fourierRow s A B w 1 * fourierRow s A B w 2) = 9*A*B := by
  have h2 := omega_sq hw
  have h3 := omega_cube hw
  have h4 := omega_four hw
  simp only [fourierRow, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
  ring_nf
  simp only [h4,h3,h2]
  ring

theorem row_product (s A B w : ℂ) (hw : w^2+w+1 = 0) :
    fourierRow s A B w 0 * fourierRow s A B w 1 * fourierRow s A B w 2 =
      s^3/27 + A^3+B^3-s*A*B := by
  have h2 := omega_sq hw
  have h3 := omega_cube hw
  have h4 := omega_four hw
  simp only [fourierRow, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
  ring_nf
  simp only [h4,h3,h2]
  ring

theorem determinant_factor (s t A B C D w : ℂ) (hw : w^2+w+1 = 0) :
    (affineSide s t A B C D w).det = 3*(w^2-w)*(A*D-B*C) := by
  have h2 := omega_sq hw
  have h3 := omega_cube hw
  have h4 := omega_four hw
  rw [Matrix.det_fin_three]
  simp only [affineSide, fourierRow,
    Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
  ring_nf
  simp only [h4,h3,h2]
  ring

theorem determinant_discriminant (s t A B C D w : ℂ) (hw : w^2+w+1 = 0) :
    -3 * (affineSide s t A B C D w).det^2 = (9*(A*D-B*C))^2 := by
  rw [determinant_factor s t A B C D w hw]
  have h2 := omega_sq hw
  have h3 := omega_cube hw
  have h4 := omega_four hw
  ring_nf
  simp only [h4,h3,h2]
  ring

theorem invertible_side_has_nonzero_discriminant
    (s t A B C D w : ℂ) (hw : w^2+w+1 = 0)
    (hinv : (affineSide s t A B C D w).det ≠ 0) :
    9*(A*D-B*C) ≠ 0 := by
  intro hzero
  have h := determinant_discriminant s t A B C D w hw
  rw [hzero] at h
  have hsq : (affineSide s t A B C D w).det^2 = 0 := by
    linear_combination (-1/3:ℂ) * h
  exact hinv (sq_eq_zero_iff.mp hsq)

#print axioms discriminant_factor
#print axioms one_orientation_nonzero
#print axioms pure_mode_projection_div
#print axioms reconstruct_coefficients
#print axioms cube_roots_are_modes
#print axioms fourier_inverse
#print axioms centered_second_moment
#print axioms row_product
#print axioms determinant_discriminant
#print axioms invertible_side_has_nonzero_discriminant

end

end Hadamard6Extensions.FourierSide
