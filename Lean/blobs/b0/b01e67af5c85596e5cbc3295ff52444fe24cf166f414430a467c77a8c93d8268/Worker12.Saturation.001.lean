import Worker12.InjectedRouting

/-! A direct sum-of-squares proof of the order-three determinant equality
case. These identities are kernel checked, not numerical certificates. -/

namespace Worker12

def normSq3 (x : Fin 3 → ℂ) : ℝ :=
  Complex.normSq (x 0) + Complex.normSq (x 1) + Complex.normSq (x 2)

def inner3 (x y : Fin 3 → ℂ) : ℂ :=
  x 0 * star (y 0) + x 1 * star (y 1) + x 2 * star (y 2)

def cross3 (x y : Fin 3 → ℂ) : Fin 3 → ℂ :=
  ![x 1 * y 2 - x 2 * y 1, x 2 * y 0 - x 0 * y 2,
    x 0 * y 1 - x 1 * y 0]

theorem lagrange3 (x y : Fin 3 → ℂ) :
    Complex.normSq (inner3 x y) + normSq3 (cross3 x y) = normSq3 x * normSq3 y := by
  simp [inner3, normSq3, cross3, Complex.normSq_apply, Complex.star_def,
    Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im,
    Complex.mul_re, Complex.mul_im]
  ring

theorem normSq3_nonneg (x : Fin 3 → ℂ) : 0 ≤ normSq3 x := by
  unfold normSq3
  exact add_nonneg (add_nonneg (Complex.normSq_nonneg _) (Complex.normSq_nonneg _))
    (Complex.normSq_nonneg _)

theorem inner3_cauchy (x y : Fin 3 → ℂ) :
    Complex.normSq (inner3 x y) ≤ normSq3 x * normSq3 y := by
  have h := lagrange3 x y
  have hn := normSq3_nonneg (cross3 x y)
  linarith

theorem normSq3_star (x : Fin 3 → ℂ) : normSq3 (fun i ↦ star (x i)) = normSq3 x := by
  simp [normSq3, Complex.star_def]

theorem inner3_star_right (x y : Fin 3 → ℂ) :
    inner3 x (fun i ↦ star (y i)) = x 0 * y 0 + x 1 * y 1 + x 2 * y 2 := by
  simp [inner3]

theorem determinant_cross3 (X : Matrix (Fin 3) (Fin 3) ℂ) :
    Matrix.det X = inner3 (X 2) (fun i ↦ star (cross3 (X 0) (X 1) i)) := by
  rw [inner3_star_right, Matrix.det_fin_three]
  simp [cross3]
  ring

theorem phase_rows_normSq3 {X : Matrix (Fin 3) (Fin 3) ℂ}
    (hunit : Hadamard6.EntrywiseUnit X) (i : Fin 3) : normSq3 (X i) = 3 := by
  norm_num [normSq3, hunit i 0, hunit i 1, hunit i 2]

theorem det_normSq_le_twenty_seven {X : Matrix (Fin 3) (Fin 3) ℂ}
    (hunit : Hadamard6.EntrywiseUnit X) : Complex.normSq X.det ≤ 27 := by
  have hc := inner3_cauchy (X 2) (fun i ↦ star (cross3 (X 0) (X 1) i))
  rw [← determinant_cross3, normSq3_star, phase_rows_normSq3 hunit 2] at hc
  have hl := lagrange3 (X 0) (X 1)
  rw [phase_rows_normSq3 hunit 0, phase_rows_normSq3 hunit 1] at hl
  have hn := Complex.normSq_nonneg (inner3 (X 0) (X 1))
  linarith

theorem saturation_inner01 {X : Matrix (Fin 3) (Fin 3) ℂ}
    (hunit : Hadamard6.EntrywiseUnit X) (hdet : Complex.normSq X.det = 27) :
    inner3 (X 0) (X 1) = 0 := by
  have hc := inner3_cauchy (X 2) (fun i ↦ star (cross3 (X 0) (X 1) i))
  rw [← determinant_cross3, normSq3_star, phase_rows_normSq3 hunit 2, hdet] at hc
  have hl := lagrange3 (X 0) (X 1)
  rw [phase_rows_normSq3 hunit 0, phase_rows_normSq3 hunit 1] at hl
  apply Complex.normSq_eq_zero.mp
  have hn := Complex.normSq_nonneg (inner3 (X 0) (X 1))
  linarith

theorem inner3_swap (x y : Fin 3 → ℂ) : inner3 y x = star (inner3 x y) := by
  simp only [inner3, star_add, star_mul, star_star]

theorem saturation_inner02 {X : Matrix (Fin 3) (Fin 3) ℂ}
    (hunit : Hadamard6.EntrywiseUnit X) (hdet : Complex.normSq X.det = 27) :
    inner3 (X 0) (X 2) = 0 := by
  let Y : Matrix (Fin 3) (Fin 3) ℂ := ![X 0, X 2, X 1]
  have hYunit : Hadamard6.EntrywiseUnit Y := by
    intro i j
    fin_cases i <;> exact hunit _ j
  have hYdet : Y.det = -X.det := by
    simp [Y, Matrix.det_fin_three]
    ring
  have hYnorm : Complex.normSq Y.det = 27 := by rw [hYdet, Complex.normSq_neg, hdet]
  exact saturation_inner01 hYunit hYnorm

theorem saturation_inner12 {X : Matrix (Fin 3) (Fin 3) ℂ}
    (hunit : Hadamard6.EntrywiseUnit X) (hdet : Complex.normSq X.det = 27) :
    inner3 (X 1) (X 2) = 0 := by
  let Y : Matrix (Fin 3) (Fin 3) ℂ := ![X 1, X 2, X 0]
  have hYunit : Hadamard6.EntrywiseUnit Y := by
    intro i j
    fin_cases i <;> exact hunit _ j
  have hYdet : Y.det = X.det := by
    simp [Y, Matrix.det_fin_three]
    ring
  have hYnorm : Complex.normSq Y.det = 27 := by rw [hYdet, hdet]
  exact saturation_inner01 hYunit hYnorm

/-- Equality at 27 gives all row orthogonality equations, with no external
Hadamard-inequality equality theorem left as a premise. -/
theorem phase_det_twenty_seven_isHadamard3 {X : Matrix (Fin 3) (Fin 3) ℂ}
    (hunit : Hadamard6.EntrywiseUnit X) (hdet : Complex.normSq X.det = 27) :
    Hadamard6.IsHadamard3 X := by
  refine ⟨hunit, ?_⟩
  have h01 := saturation_inner01 hunit hdet
  have h02 := saturation_inner02 hunit hdet
  have h12 := saturation_inner12 hunit hdet
  have h10 : inner3 (X 1) (X 0) = 0 := by rw [inner3_swap, h01, star_zero]
  have h20 : inner3 (X 2) (X 0) = 0 := by rw [inner3_swap, h02, star_zero]
  have h21 : inner3 (X 2) (X 1) = 0 := by rw [inner3_swap, h12, star_zero]
  have hdiag (i : Fin 3) : inner3 (X i) (X i) = 3 := by
    simp only [inner3]
    rw [Hadamard6.unit_mul_star_of_normSq_one (hunit i 0),
      Hadamard6.unit_mul_star_of_normSq_one (hunit i 1),
      Hadamard6.unit_mul_star_of_normSq_one (hunit i 2)]
    norm_num
  ext i j
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Fin.sum_univ_three,
    Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
  change inner3 (X i) (X j) = 3 * (if i = j then 1 else 0)
  fin_cases i <;> fin_cases j <;> simp [h01, h02, h12, h10, h20, h21, hdiag]

theorem saturated_selectedMinor_allFourBlocks
    {H : Mub6.BasisMatrix} (hH : Mub6.IsPhaseHadamard6 H)
    (rows cols : Fin 3 ↪ Fin 6)
    (hdet : Complex.normSq (Matrix.det (selectedMinor H rows cols)) = 27) :
    Hadamard6.AllFourBlocksHadamard (selectedMatrix H rows cols) := by
  apply Hadamard6.allFourBlocksHadamard_of_topLeft (selectedMatrix_isHadamard hH rows cols)
  rw [selectedMatrix_corner]
  exact phase_det_twenty_seven_isHadamard3 (fun i j ↦ hH.1 (rows i) (cols j)) hdet

#print axioms lagrange3
#print axioms phase_det_twenty_seven_isHadamard3
#print axioms saturated_selectedMinor_allFourBlocks

end Worker12
