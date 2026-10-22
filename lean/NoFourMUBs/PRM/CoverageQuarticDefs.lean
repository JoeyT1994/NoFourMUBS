import Mathlib

/-!
# The scalar data of the nonzero-`J` critical strips (I4)

Definitions for the nonzero-`J` stratum of `TopStripClassification` (`CRITICAL_STRIP_CLASSIFICATION.md` §3,
return K): the rational parametrisation, the modulus-cubic data, the four boundary values of `K`, the
moment-denominator data of the two halves, and the three candidates (the pole substitutions of §4
are in `CoverageQuarticPole`).

Notation: `h = 1 + k²`, `q = 4/h`, `p = 9 − q`, `J = 8k/h²`, `W = q(q² − 8q + 18)/2`,
`f(T) = T³ − pT² + (W + K)T − K` (the modulus cubic, roots `X, Y, Z`, `K = XYZ`).
-/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.Quartic

def hk (k : ℝ) : ℝ := 1 + k ^ 2
def qk (k : ℝ) : ℝ := 4 / hk k
def pk (k : ℝ) : ℝ := 9 - qk k
def Jk (k : ℝ) : ℝ := 8 * k / hk k ^ 2
def Wk (k : ℝ) : ℝ := qk k * (qk k ^ 2 - 8 * qk k + 18) / 2

/-- The modulus cubic. -/
def fM (k K T : ℝ) : ℝ := T ^ 3 - pk k * T ^ 2 + (Wk k + K) * T - K

/-- The Cauchy bound `K ≥ J²/4` and the three discriminant roots. -/
def Kmin (k : ℝ) : ℝ := 16 * k ^ 2 / hk k ^ 4
def K0 (k : ℝ) : ℝ := 4 * (9 * k ^ 2 + 1) / hk k ^ 3
def Kp (k : ℝ) : ℝ := (27 * k ^ 6 + 9 * k ^ 4 + 17 * k ^ 2 + 3 + 8 * k * hk k) / hk k ^ 3
def Kn (k : ℝ) : ℝ := (27 * k ^ 6 + 9 * k ^ 4 + 17 * k ^ 2 + 3 - 8 * k * hk k) / hk k ^ 3

/-- Moment-denominator data for the two halves, `σ = ±1`. -/
def zS (σ k : ℝ) : ℝ := -2 * (1 + σ * k) / hk k
def gS (σ k : ℝ) : ℝ := 3 * qk k + σ * Jk k

/-- The three candidates of the theorem (`κ` = positive root of `3k³ + k² + k − 1`). -/
def Candidates (k K : ℝ) : Prop :=
  (3 * k ^ 3 + k ^ 2 + k - 1 = 0 ∧ K = Kmin k) ∨ (k = 1 / 3 ∧ K = 729 / 125) ∨ (k = 1 ∧ K = 5)

end NoFourMUBs.PRM.Coverage.Quartic
