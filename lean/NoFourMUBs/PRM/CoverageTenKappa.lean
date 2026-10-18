import NoFourMUBs.PRM.CoverageTenArith

/-!
# Elementary rational bounds for the cubic exceptional value

From the ten-corner return of 14 Oct 2026 (`covret/result`); repaired and compiled here.
The field-degree/irreducibility argument in MC1 is unnecessary for this route.
-/

noncomputable section

namespace NoFourMUBs.PRM.CoverageTen

def pStar (k : ℝ) : ℝ := 9 - 4 / (1 + k ^ 2)

/-- Any positive root of the stated cubic lies in a rational interval. -/
theorem kappa_rational_bounds {k : ℝ} (hk : 0 < k)
    (hc : 3 * k ^ 3 + k ^ 2 + k - 1 = 0) :
    (9 : ℝ) / 20 < k ∧ k < (1 : ℝ) / 2 := by
  have hlow :
      (k - 9 / 20) * (3 * k ^ 2 + (47 / 20) * k + 823 / 400) =
        (593 : ℝ) / 8000 := by
    nlinarith [hc]
  have hupp :
      (k - 1 / 2) * (3 * k ^ 2 + (5 / 2) * k + 9 / 4) = -(1 : ℝ) / 8 := by
    nlinarith [hc]
  have plow : 0 < 3 * k ^ 2 + (47 / 20) * k + (823 : ℝ) / 400 := by positivity
  have pupp : 0 < 3 * k ^ 2 + (5 / 2) * k + (9 : ℝ) / 4 := by positivity
  constructor
  · by_contra h
    have hle : k - 9 / 20 ≤ 0 := by linarith
    have hp := mul_nonpos_of_nonpos_of_nonneg hle plow.le
    linarith
  · by_contra h
    have hge : 0 ≤ k - 1 / 2 := by linarith
    have hp := mul_nonneg hge pupp.le
    linarith

/-- This interval, not irrationality or equality of exceptional values, is sufficient. -/
theorem pStar_bounds {k : ℝ} (hk : 0 < k)
    (hc : 3 * k ^ 3 + k ^ 2 + k - 1 = 0) :
    (17 : ℝ) / 3 < pStar k ∧ pStar k < (29 : ℝ) / 5 := by
  obtain ⟨hl, hu⟩ := kappa_rational_bounds hk hc
  have hslo : (1 : ℝ) / 5 < k ^ 2 := by
    have hp := mul_pos (show 0 < k - 9 / 20 by linarith)
      (show 0 < k + 9 / 20 by linarith)
    nlinarith
  have hshi : k ^ 2 < (1 : ℝ) / 4 := by
    have hp := mul_pos (show 0 < 1 / 2 - k by linarith)
      (show 0 < 1 / 2 + k by linarith)
    nlinarith
  have hd : 0 < 1 + k ^ 2 := by positivity
  have hdivhi : 4 / (1 + k ^ 2) < (10 : ℝ) / 3 :=
    (div_lt_iff₀ hd).2 (by nlinarith)
  have hdivlo : (16 : ℝ) / 5 < 4 / (1 + k ^ 2) :=
    (lt_div_iff₀ hd).2 (by nlinarith)
  unfold pStar
  constructor <;> linarith

end NoFourMUBs.PRM.CoverageTen
