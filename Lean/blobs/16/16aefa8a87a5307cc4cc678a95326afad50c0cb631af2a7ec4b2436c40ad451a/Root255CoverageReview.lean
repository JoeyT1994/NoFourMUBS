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
  constructor
  · intro h
    have h0 := abs_le.mp (h 0)
    have h1 := abs_le.mp (h 1)
    have h2 := abs_le.mp (h 2)
    have h3 := abs_le.mp (h 3)
    norm_num [centers] at h0 h1 h2 h3
    constructor
    · constructor <;> linarith
    constructor
    · constructor <;> linarith
    constructor
    · constructor <;> linarith
    · constructor <;> linarith
  · rintro ⟨h0,h1,h2,h3⟩ i
    fin_cases i <;> apply abs_le.mpr <;> norm_num [centers] <;>
      constructor <;> linarith

#print axioms root255_cube_iff_grid
#print axioms ShoulderRoot25520261003.no_hadamard_in_root255
#print ShoulderRoot25520261003.no_hadamard_in_root255
end GlobalAssemblyCoverageReview20261003
