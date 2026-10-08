import KarlssonMobius

namespace Mub6.Classification.KarlssonCover
open Complex Hadamard6
noncomputable section

def shaped (a b : ℂ) : Mat2 := !![a,b;star b,-star a]

theorem flat_block_rel {a b x y : ℂ}
    (hx : normSq x = 1) (hy : normSq y = 1)
    (hflat : normSq (karlssonBlockProduct y (shaped a b) x 0 0) =
      normSq (karlssonBlockProduct y (shaped a b) x 0 1)) :
    Rel (b^2) (a^2) (x^2) (y^2) := by
  have hx' := Hadamard6.star_mul_self_of_normSq_one hx
  have hy' := Hadamard6.star_mul_self_of_normSq_one hy
  have hf := congrArg (fun r : ℝ => (r : ℂ)) hflat
  simp only [Complex.normSq_eq_conj_mul_self] at hf
  simp [karlssonBlockProduct, shaped, karlssonZLeft, karlssonZRight,
    Matrix.mul_apply, Fin.sum_univ_two, map_add, map_sub, map_mul,
    map_div₀, Complex.star_def] at hf
  simp only [Rel, star_pow, Complex.star_def] at hx' hy' ⊢
  linear_combination -2*x*y*hf +
    (-y*((starRingEnd ℂ) y)*a^2+y^2*((starRingEnd ℂ) b)^2+
      a*((starRingEnd ℂ) b)*y-a*((starRingEnd ℂ) b)*y^2*((starRingEnd ℂ) y))*hx' +
    (-a^2+x^2*b^2-a*((starRingEnd ℂ) b)*y-
      ((starRingEnd ℂ) a)*b*x^2*y)*hy'

theorem coreA_shaped (t : ℝ) {p : ℂ} (hp : normSq p = 1) :
    karlssonCoreA t p = shaped (karlssonCoreA t p 0 0) (karlssonCoreA t p 0 1) := by
  have hp0 : p ≠ 0 := by intro h; simpa [h] using hp
  have hpinv : p⁻¹ = star p := by
    apply inv_eq_of_mul_eq_one_right
    simpa [mul_comm] using star_mul_self_of_normSq_one hp
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [karlssonCoreA, karlssonF2, karlssonLambda, shaped,
      Matrix.mul_apply, Fin.sum_univ_two, karlssonHalfAngleU, karlssonHalfAngleV,
      div_eq_mul_inv, hpinv, Complex.star_def] <;> ring

theorem coreB_shaped (t : ℝ) {p : ℂ} (hp : normSq p = 1) :
    karlssonCoreB t p = shaped (karlssonCoreB t p 0 0) (karlssonCoreB t p 0 1) := by
  have hA := coreA_shaped t hp
  have h10 := congrArg (fun M : Mat2 => M 1 0) hA
  have h11 := congrArg (fun M : Mat2 => M 1 1) hA
  simp [shaped] at h10 h11
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [karlssonCoreB, karlssonF2, shaped, h10, h11]

end
end Mub6.Classification.KarlssonCover
