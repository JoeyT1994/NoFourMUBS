import Hadamard6.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.SchurComplement
import Mathlib.Tactic

/-!
# Jacobi's complementary-minor formula for an order-six Hadamard (return H, §4, (4.1))

For `L = [[E, B], [C, D]]` with `L L† = 6 I`,

  `L · [[E†, 0], [B†, I]] = [[6 I, B], [0, D]]`,

so `det L · conj (det E) = 216 · det D` (`jacobi`).  Every split `(I, J)` is brought to this block position by a
permutation, whose sign is absorbed into `det L`; this is (4.1) with `τ = det H / 216`.  Also
`|det L|² = 6⁶` (`det_mul_conj_det`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.FourierVanishing

lemma toBlocks₁₁_six : toBlocks₁₁ ((6 : ℂ) • (1 : Mat6)) = (6 : ℂ) • (1 : Mat3) := by
  ext i j; by_cases h : i = j <;> simp [toBlocks₁₁, Matrix.one_apply, h]

lemma toBlocks₂₁_six : toBlocks₂₁ ((6 : ℂ) • (1 : Mat6)) = 0 := by
  ext i j; simp [toBlocks₂₁]

/-- **Jacobi (4.1)**, block form. -/
theorem jacobi (L : Mat6) (hL : L * Lᴴ = (6 : ℂ) • 1) :
    L.det * conj (toBlocks₁₁ L).det = 216 * (toBlocks₂₂ L).det := by
  set E := toBlocks₁₁ L
  set B := toBlocks₁₂ L
  set C := toBlocks₂₁ L
  set D := toBlocks₂₂ L
  have hLb : L = fromBlocks E B C D := (fromBlocks_toBlocks L).symm
  have hG : fromBlocks (E * Eᴴ + B * Bᴴ) (E * Cᴴ + B * Dᴴ) (C * Eᴴ + D * Bᴴ) (C * Cᴴ + D * Dᴴ) =
      (6 : ℂ) • (1 : Mat6) := by
    rw [← fromBlocks_multiply, ← fromBlocks_conjTranspose, ← hLb, hL]
  have h11 : E * Eᴴ + B * Bᴴ = (6 : ℂ) • 1 := by
    have := congrArg toBlocks₁₁ hG; rwa [toBlocks_fromBlocks₁₁, toBlocks₁₁_six] at this
  have h21 : C * Eᴴ + D * Bᴴ = 0 := by
    have := congrArg toBlocks₂₁ hG; rwa [toBlocks_fromBlocks₂₁, toBlocks₂₁_six] at this
  have hM : L * fromBlocks Eᴴ 0 Bᴴ 1 = fromBlocks ((6 : ℂ) • 1) B 0 D := by
    rw [hLb, fromBlocks_multiply, h11, h21]; simp
  have := congrArg Matrix.det hM
  rw [det_mul, det_fromBlocks_zero₁₂, det_fromBlocks_zero₂₁, det_conjTranspose, det_one, det_smul,
    det_one] at this
  rw [← Complex.star_def]
  simp only [Fintype.card_fin] at this
  linear_combination this

/-- `|det L|² = 6⁶`. -/
theorem det_mul_conj_det (L : Mat6) (hL : L * Lᴴ = (6 : ℂ) • 1) : L.det * conj L.det = 46656 := by
  have := congrArg Matrix.det hL
  rw [det_mul, det_conjTranspose, det_smul, det_one] at this
  rw [← Complex.star_def, this]
  simp [Fintype.card_sum]; norm_num

end NoFourMUBs.FourierVanishing
