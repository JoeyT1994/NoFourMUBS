import Mathlib

open Matrix

namespace NoFourMUBsAudit

/-- Direct linear integer arithmetic replaces the 121-pair finite check. -/
theorem count_certificate :
    ∀ a b : Fin 11, a.val + b.val ≤ 10 →
      25 * a.val + 29 * b.val ≤ 270 ∨
        162 ≤ 15 * a.val + 17 * b.val := by
  intro a b hab
  by_cases h9 : a.val + b.val ≤ 9
  · left; omega
  · have h10 : a.val + b.val = 10 := by omega
    by_cases hb : b.val ≤ 5
    · left; omega
    · right; omega

/-- A rational candidate can bound the normal displacement without a square root. -/
theorem normal_bound_of_barrier {x n R sigma L b : ℝ}
    (hL : 0 ≤ L) (hxR : x ≤ R) (hLR : L * R < sigma)
    (hn : L * n ≤ sigma)
    (hx : sigma * x - L / 2 * x ^ 2 ≤ b)
    (hb : b ≤ sigma * n - L / 2 * n ^ 2) : x ≤ n := by
  by_contra h
  have hnx : n < x := lt_of_not_ge h
  have hLx : L * x < sigma := lt_of_le_of_lt (mul_le_mul_of_nonneg_left hxR hL) hLR
  have hpos : 0 < sigma - L / 2 * (x + n) := by nlinarith
  have hprod := mul_pos (sub_pos.mpr hnx) hpos
  nlinarith

/-- Orthogonality gives a sharper outer boundary bound than R+n. -/
theorem orthogonal_shell {R n tangentSq normalSq : ℝ}
    (hnormal : 0 ≤ normalSq) (hn : normalSq ≤ n ^ 2)
    (h : R ^ 2 = tangentSq + normalSq) :
    R ^ 2 - n ^ 2 ≤ tangentSq ∧ tangentSq ≤ R ^ 2 := by
  constructor <;> linarith

/-- Permuting seed rows and columns permutes the weighted defect matrix. -/
theorem weighted_defect_covariance {n : Type*} [Fintype n] [DecidableEq n]
    (P Q B C delta : Matrix n n ℂ) :
    (C * Q)ᴴ * delta * (P * B)ᴴ = Qᴴ * (Cᴴ * delta * Bᴴ) * Pᴴ := by
  simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]

#print axioms weighted_defect_covariance
#print axioms count_certificate
#print axioms normal_bound_of_barrier
#print axioms orthogonal_shell
end NoFourMUBsAudit
