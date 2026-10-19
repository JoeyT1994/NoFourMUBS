import Mathlib

/-!
# Elementary rational bounds for the cubic exceptional value

From the ten-corner return of 14 Oct 2026 (`covret/result`); repaired and compiled here, and
tightened for return S (`proof/coverage/returns/S_endpoints_by_counting`): with the endpoints
counted alongside, the window `(17/3, 29/5)` would admit spurious count patterns (e.g. `143/25`), so
`p⋆ ≈ 5.72221` is bracketed in `(5.722, 5.723)` (`CoverageEndCount.no_window`).  No irrationality
or field-degree argument is used.
-/

noncomputable section

namespace NoFourMUBs.PRM.CoverageTen

def pStar (k : ℝ) : ℝ := 9 - 4 / (1 + k ^ 2)

/-- Any positive root of the stated cubic lies in a rational interval (`κ ≈ 0.469396`). -/
theorem kappa_rational_bounds {k : ℝ} (hk : 0 < k)
    (hc : 3 * k ^ 3 + k ^ 2 + k - 1 = 0) :
    (11733 : ℝ) / 25000 < k ∧ k < (4697 : ℝ) / 10000 := by
  -- `f(k) − f(a) = (k − a)(3k² + 3ak + 3a² + k + a + 1)`, `f(11733/25000) < 0 < f(4697/10000)`
  have hlow : (k - 11733 / 25000) *
      (3 * k ^ 2 + 3 * (11733 / 25000) * k + 3 * (11733 / 25000) ^ 2 + k + 11733 / 25000 + 1) =
        -(3 * (11733 / 25000 : ℝ) ^ 3 + (11733 / 25000) ^ 2 + 11733 / 25000 - 1) := by
    linear_combination hc
  have hupp : (k - 4697 / 10000) *
      (3 * k ^ 2 + 3 * (4697 / 10000) * k + 3 * (4697 / 10000) ^ 2 + k + 4697 / 10000 + 1) =
        -(3 * (4697 / 10000 : ℝ) ^ 3 + (4697 / 10000) ^ 2 + 4697 / 10000 - 1) := by
    linear_combination hc
  have plow : 0 < 3 * k ^ 2 + 3 * (11733 / 25000) * k + 3 * (11733 / 25000 : ℝ) ^ 2 + k +
      11733 / 25000 + 1 := by positivity
  have pupp : 0 < 3 * k ^ 2 + 3 * (4697 / 10000) * k + 3 * (4697 / 10000 : ℝ) ^ 2 + k +
      4697 / 10000 + 1 := by positivity
  constructor
  · by_contra h
    have hle : k - 11733 / 25000 ≤ 0 := by linarith
    have hp := mul_nonpos_of_nonpos_of_nonneg hle plow.le
    norm_num at hlow hp
    linarith
  · by_contra h
    have hge : 0 ≤ k - 4697 / 10000 := by linarith
    have hp := mul_nonneg hge pupp.le
    norm_num at hupp hp
    linarith

/-- **`p⋆ ∈ (5.722, 5.723)`** (`p⋆ ≈ 5.722206`). -/
theorem pStar_bounds {k : ℝ} (hk : 0 < k)
    (hc : 3 * k ^ 3 + k ^ 2 + k - 1 = 0) :
    (2861 : ℝ) / 500 < pStar k ∧ pStar k < (5723 : ℝ) / 1000 := by
  obtain ⟨hl, hu⟩ := kappa_rational_bounds hk hc
  have hslo : (11733 : ℝ) ^ 2 / 25000 ^ 2 < k ^ 2 := by
    have hp := mul_pos (show 0 < k - 11733 / 25000 by linarith)
      (show 0 < k + 11733 / 25000 by linarith)
    nlinarith
  have hshi : k ^ 2 < (4697 : ℝ) ^ 2 / 10000 ^ 2 := by
    have hp := mul_pos (show 0 < 4697 / 10000 - k by linarith)
      (show 0 < 4697 / 10000 + k by linarith)
    nlinarith
  have hd : 0 < 1 + k ^ 2 := by positivity
  have hdivhi : 4 / (1 + k ^ 2) < (1639 : ℝ) / 500 :=
    (div_lt_iff₀ hd).2 (by nlinarith)
  have hdivlo : (3277 : ℝ) / 1000 < 4 / (1 + k ^ 2) :=
    (lt_div_iff₀ hd).2 (by nlinarith)
  unfold pStar
  constructor <;> linarith

end NoFourMUBs.PRM.CoverageTen
