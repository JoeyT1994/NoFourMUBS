import KarlssonMobius

namespace Mub6.Classification.KarlssonCover
set_option maxHeartbeats 1600000
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
  have htwo : (starRingEnd ℂ) (2 : ℂ) = 2 := by
    apply Complex.ext <;> norm_num
  rw [htwo] at hf
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
    simp [karlssonCoreB, karlssonF2, shaped, h10, h11] <;> ring

def coeffA (t : ℝ) (p : ℂ) : ℂ := (karlssonCoreA t p 0 1)^2
def coeffB (t : ℝ) (p : ℂ) : ℂ := (karlssonCoreA t p 0 0)^2
def coeffC (t : ℝ) (p : ℂ) : ℂ := (karlssonCoreB t p 0 1)^2
def coeffD (t : ℝ) (p : ℂ) : ℂ := (karlssonCoreB t p 0 0)^2

theorem raw_constraints {t : ℝ} {p z₁ z₂ z₃ z₄ : ℂ}
    (hp : normSq p = 1) (h₁ : normSq z₁ = 1) (h₂ : normSq z₂ = 1)
    (h₃ : normSq z₃ = 1) (h₄ : normSq z₄ = 1)
    (hH : IsHadamard (karlssonRawMatrix t p z₁ z₂ z₃ z₄)) :
    SquareConstraints (coeffA t p) (coeffB t p) (coeffC t p) (coeffD t p)
      (z₁^2) (z₂^2) (z₃^2) (z₄^2) := by
  have hflat := hH.1
  have ha0 : normSq (karlssonBlockProduct z₃ (karlssonCoreA t p) z₁ 0 0) = 1 := by
    simpa [karlssonRawMatrix, reindexMatrix, karlssonMixedChartMatrix,
      karlssonMixedE, karlssonMixedB, karlssonMixedC, karlssonMixedD,
      mixedLeadingBlock, mixedHorizontalBlock] using hflat (Sum.inl 2) (Sum.inl 2)
  have ha1 : normSq (karlssonBlockProduct z₃ (karlssonCoreA t p) z₁ 0 1) = 1 := by
    simpa [karlssonRawMatrix, reindexMatrix, karlssonMixedChartMatrix,
      karlssonMixedE, karlssonMixedB, karlssonMixedC, karlssonMixedD,
      mixedLeadingBlock, mixedHorizontalBlock] using hflat (Sum.inl 2) (Sum.inr 0)
  have hb0 : normSq (karlssonBlockProduct z₃ (karlssonCoreB t p) z₂ 0 0) = 1 := by
    simpa [karlssonRawMatrix, reindexMatrix, karlssonMixedChartMatrix,
      karlssonMixedE, karlssonMixedB, karlssonMixedC, karlssonMixedD,
      mixedLeadingBlock, mixedHorizontalBlock] using hflat (Sum.inl 2) (Sum.inr 1)
  have hb1 : normSq (karlssonBlockProduct z₃ (karlssonCoreB t p) z₂ 0 1) = 1 := by
    simpa [karlssonRawMatrix, reindexMatrix, karlssonMixedChartMatrix,
      karlssonMixedE, karlssonMixedB, karlssonMixedC, karlssonMixedD,
      mixedLeadingBlock, mixedHorizontalBlock] using hflat (Sum.inl 2) (Sum.inr 2)
  have hc0 : normSq (karlssonBlockProduct z₄ (karlssonCoreB t p) z₁ 0 0) = 1 := by
    simpa [karlssonRawMatrix, reindexMatrix, karlssonMixedChartMatrix,
      karlssonMixedE, karlssonMixedB, karlssonMixedC, karlssonMixedD,
      mixedLeadingBlock, mixedHorizontalBlock] using hflat (Sum.inr 1) (Sum.inl 2)
  have hc1 : normSq (karlssonBlockProduct z₄ (karlssonCoreB t p) z₁ 0 1) = 1 := by
    simpa [karlssonRawMatrix, reindexMatrix, karlssonMixedChartMatrix,
      karlssonMixedE, karlssonMixedB, karlssonMixedC, karlssonMixedD,
      mixedLeadingBlock, mixedHorizontalBlock] using hflat (Sum.inr 1) (Sum.inr 0)
  have hd0 : normSq (karlssonBlockProduct z₄ (karlssonCoreA t p) z₂ 0 0) = 1 := by
    simpa [karlssonRawMatrix, reindexMatrix, karlssonMixedChartMatrix,
      karlssonMixedE, karlssonMixedB, karlssonMixedC, karlssonMixedD,
      mixedLeadingBlock, mixedHorizontalBlock] using hflat (Sum.inr 1) (Sum.inr 1)
  have hd1 : normSq (karlssonBlockProduct z₄ (karlssonCoreA t p) z₂ 0 1) = 1 := by
    simpa [karlssonRawMatrix, reindexMatrix, karlssonMixedChartMatrix,
      karlssonMixedE, karlssonMixedB, karlssonMixedC, karlssonMixedD,
      mixedLeadingBlock, mixedHorizontalBlock] using hflat (Sum.inr 1) (Sum.inr 2)
  constructor
  · apply flat_block_rel h₁ h₃
    rw [← coreA_shaped t hp, ha0, ha1]
  · apply flat_block_rel h₂ h₃
    rw [← coreB_shaped t hp, hb0, hb1]
  · apply flat_block_rel h₁ h₄
    rw [← coreB_shaped t hp, hc0, hc1]
  · apply flat_block_rel h₂ h₄
    rw [← coreA_shaped t hp, hd0, hd1]

end
end Mub6.Classification.KarlssonCover
