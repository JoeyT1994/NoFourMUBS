import NoFourMUBs.Step2.CriticalZero.SumClearing.Expressions01
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.SwapNumerator

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
open Expressions

theorem v0056_literal (X Y k : ℂ) :
    v0056 X Y k = X^4 * integerNumerator_p4_m2_b X Y k := by
  simp [v0056,v0055,v0054,v0031,v0032,v0003,v0036,PolynomialChecks.P2M4.v001]

theorem v0041_literal (X Y k : ℂ) :
    v0041 X Y k = -X^4 *
      (Y * integerNumerator_p4_m2_a X Y k + 16*k*integerNumerator_p4_m2_b X Y k) := by
  dsimp [v0041,v0040,v0039,v0038,v0037,v0034,v0033,v0036,v0035,v0032,
    v0031,v0001,v0003,v0006,PolynomialChecks.P2M4.v051,
    PolynomialChecks.P2M4.v008,PolynomialChecks.P2M4.v010,
    PolynomialChecks.P2M4.v000,PolynomialChecks.P2M4.v001,PolynomialChecks.P2M4.v003]
  ring

/-- Reuse the two previously proved numerator swaps, without any nonzero guard. -/
theorem node0069_swap (X Y k : ℂ) :
    Y^3 * v0069 X Y k + X^2 * v0068 Y X k + 16*k*Y^2*v0058 X Y k = 0 := by
  have ha : integerNumerator_p4_m2_a Y X k = integerNumerator_p2_m4_a X Y k := by
    simp only [integerNumerator_p4_m2_a,integerNumerator_p2_m4_a,numerator_p4_m2_a_swap]
  have hb : X*integerNumerator_p4_m2_b X Y k = Y*integerNumerator_p2_m4_b Y X k := by
    dsimp [integerNumerator_p4_m2_b,integerNumerator_p2_m4_b]
    linear_combination 2 * numerator_p4_m2_b_swap X Y k
  have hc : Y*integerNumerator_p4_m2_b Y X k = X*integerNumerator_p2_m4_b X Y k := by
    dsimp [integerNumerator_p4_m2_b,integerNumerator_p2_m4_b]
    linear_combination 2 * numerator_p4_m2_b_swap Y X k
  simp only [v0069,v0068,v0058,v0056_literal,v0041_literal,v0042,v0057,ha]
  linear_combination
    (X^3*Y^3*integerNumerator_p2_m4_a X Y k +
      16*k*X^3*Y^2*integerNumerator_p2_m4_b X Y k) * hb -
    16*k*X^2*Y^3*integerNumerator_p2_m4_b Y X k * hc

theorem node0069_at_zero (X k : ℂ) : v0069 X 0 k = 0 := by
  have hb := numerator_p4_m2_b_swap X (0 : ℂ) k
  simp only [zero_mul] at hb
  simp only [v0069,v0056_literal,v0042,integerNumerator_p4_m2_b]
  linear_combination 2*X^3*integerNumerator_p2_m4_a X 0 k * hb

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing
