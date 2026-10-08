import Root255Certificate

set_option autoImplicit false
namespace GlobalAssemblyCoverageReview20261003
open ShoulderRoot255Trig20261003

/-- The author's closed center-radius cube is exactly the four recorded
closed rational grid intervals; endpoints are retained. -/
theorem root255_cube_iff_grid (θ : Fin 4 → ℝ) :
    Cube θ ↔
      (-253 / 256 ≤ θ 0 ∧ θ 0 ≤ -252 / 256) ∧
      (281 / 256 ≤ θ 1 ∧ θ 1 ≤ 282 / 256) ∧
      (282 / 256 ≤ θ 2 ∧ θ 2 ≤ 283 / 256) ∧
      (-254 / 256 ≤ θ 3 ∧ θ 3 ≤ -253 / 256) := by
  have cq0 : centers 0 = (-505/512 : ℚ) := by decide +kernel
  have cq1 : centers 1 = (563/512 : ℚ) := by decide +kernel
  have cq2 : centers 2 = (565/512 : ℚ) := by decide +kernel
  have cq3 : centers 3 = (-507/512 : ℚ) := by decide +kernel
  have c0 : (centers 0 : ℝ) = -505/512 := by rw [cq0]; norm_num
  have c1 : (centers 1 : ℝ) = 563/512 := by rw [cq1]; norm_num
  have c2 : (centers 2 : ℝ) = 565/512 := by rw [cq2]; norm_num
  have c3 : (centers 3 : ℝ) = -507/512 := by rw [cq3]; norm_num
  constructor
  · intro h
    have h0 := abs_le.mp (h 0)
    have h1 := abs_le.mp (h 1)
    have h2 := abs_le.mp (h 2)
    have h3 := abs_le.mp (h 3)
    rw [c0] at h0
    rw [c1] at h1
    rw [c2] at h2
    rw [c3] at h3
    constructor
    · constructor <;> linarith
    constructor
    · constructor <;> linarith
    constructor
    · constructor <;> linarith
    · constructor <;> linarith
  · rintro ⟨h0,h1,h2,h3⟩ i
    fin_cases i
    · change |θ 0-(centers 0:ℝ)| ≤ 1/512
      rw [c0]
      apply abs_le.mpr; constructor <;> linarith
    · change |θ 1-(centers 1:ℝ)| ≤ 1/512
      rw [c1]
      apply abs_le.mpr; constructor <;> linarith
    · change |θ 2-(centers 2:ℝ)| ≤ 1/512
      rw [c2]
      apply abs_le.mpr; constructor <;> linarith
    · change |θ 3-(centers 3:ℝ)| ≤ 1/512
      rw [c3]
      apply abs_le.mpr; constructor <;> linarith

#print axioms root255_cube_iff_grid
#print axioms ShoulderRoot25520261003.no_hadamard_in_root255
#print ShoulderRoot25520261003.no_hadamard_in_root255
end GlobalAssemblyCoverageReview20261003
