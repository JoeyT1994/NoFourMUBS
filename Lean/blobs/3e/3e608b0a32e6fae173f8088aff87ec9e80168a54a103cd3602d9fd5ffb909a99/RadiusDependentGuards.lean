import CentiradianUnitPair

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartExtension20261006
noncomputable section

/-- A rational envelope containing the exact radii .03 and .05. Matching
any particular native outward endpoint requires its own exact comparison. -/
def radiusEnvelope : ℝ := 501/10000

theorem radius003_inside_envelope : (3/100 : ℝ) < radiusEnvelope := by
  norm_num [radiusEnvelope]

theorem radius005_inside_envelope : (1/20 : ℝ) < radiusEnvelope := by
  norm_num [radiusEnvelope]

theorem side_sum_guard (r : ℝ) (hr : r ≤ radiusEnvelope) :
    (89/100 : ℝ) < 1-2*r := by
  dsimp [radiusEnvelope] at hr
  linarith

theorem side_height_derivative_envelope (r : ℝ) (hr : r ≤ radiusEnvelope) :
    4/(3*(1-2*r)^3) < (11/6 : ℝ) := by
  have hb : (4499/5000 : ℝ) ≤ 1-2*r := by dsimp [radiusEnvelope] at hr; linarith
  have hc := pow_le_pow_left₀ (by norm_num : (0:ℝ) ≤ 4499/5000) hb 3
  have hd : 0 < 3*(1-2*r)^3 := by nlinarith [hc]
  apply (div_lt_iff₀ hd).2
  nlinarith [hc]

theorem side_entry_factor_envelope (r : ℝ) (hr : r ≤ radiusEnvelope) :
    2/(1-2*r)+11/3 < (6:ℝ) := by
  have hb := side_sum_guard r hr
  have hp : 0 < 1-2*r := by linarith
  have hq : 2/(1-2*r) < (7/3:ℝ) := by
    apply (div_lt_iff₀ hp).2
    linarith
  linarith

theorem side_entry_error_envelope (r : ℝ) (hpos : 0 < r)
    (hr : r ≤ radiusEnvelope) :
    (2/(1-2*r)+11/3)*r < 6*r := by
  exact mul_lt_mul_of_pos_right (side_entry_factor_envelope r hr) hpos

theorem opposite_orientation_margin (r : ℝ) (hr : r ≤ radiusEnvelope) :
    4*r < 3-32*r := by
  dsimp [radiusEnvelope] at hr
  linarith

theorem positive_anchor_margin (r : ℝ) (hr : r ≤ radiusEnvelope) :
    0 < 1/2-8*r := by
  dsimp [radiusEnvelope] at hr
  linarith

theorem inverse_singular_value_margin (r : ℝ) (hr : r ≤ radiusEnvelope) :
    (9/10 : ℝ) < Real.sqrt 3-16*r := by
  have hs : (171/100 : ℝ) < Real.sqrt 3 := by
    nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3),Real.sqrt_nonneg (3:ℝ)]
  dsimp [radiusEnvelope] at hr
  linarith

end
end Centiradian20261006.ChartExtension20261006

#print axioms Centiradian20261006.ChartExtension20261006.radius003_inside_envelope
#print axioms Centiradian20261006.ChartExtension20261006.radius005_inside_envelope
#print axioms Centiradian20261006.ChartExtension20261006.side_sum_guard
#print axioms Centiradian20261006.ChartExtension20261006.side_height_derivative_envelope
#print axioms Centiradian20261006.ChartExtension20261006.side_entry_factor_envelope
#print axioms Centiradian20261006.ChartExtension20261006.side_entry_error_envelope
#print axioms Centiradian20261006.ChartExtension20261006.opposite_orientation_margin
#print axioms Centiradian20261006.ChartExtension20261006.positive_anchor_margin
#print axioms Centiradian20261006.ChartExtension20261006.inverse_singular_value_margin
