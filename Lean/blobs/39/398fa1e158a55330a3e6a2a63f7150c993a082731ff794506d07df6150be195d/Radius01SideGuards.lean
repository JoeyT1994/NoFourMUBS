import PhysicalSideFourier

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

def radiusEnvelope01 : ℝ := 1001/10000

/-- Actual target definition only. Neither this packet nor a native search
asserts the radius-one-tenth exclusion before its remaining cover is proved. -/
def RadiusOneTenthExclusion : Prop :=
  ∀ H : Mat6, Physical H → Dephased H → Maximal H → 0<leadingR H →
    ∀ conjugateSeed : Bool, InPuncturedSeedBall H conjugateSeed (1/10) → False

theorem radius01_inside_envelope : (1/10:ℝ) < radiusEnvelope01 := by
  norm_num [radiusEnvelope01]

theorem radius01_sum_guard (r : ℝ) (hr : r ≤ radiusEnvelope01) :
    (79/100:ℝ) < 1-2*r := by
  dsimp [radiusEnvelope01] at hr
  linarith

theorem anchoredSum_guards01 (S v : ℂ) (hv : Complex.normSq v=1)
    (r : ℝ) (hS : ‖S‖ ≤ 2*r) (hr : r ≤ radiusEnvelope01) :
    (79/100:ℝ) < ‖anchoredSum S v‖ ∧ anchoredSum S v ≠ 0 ∧
      Complex.normSq (anchoredSum S v) < 29/20 := by
  have hb := anchoredSum_norm_bounds S v hv r hS
  have hlo : (79/100:ℝ) < ‖anchoredSum S v‖ :=
    lt_of_lt_of_le (radius01_sum_guard r hr) hb.1
  have hn : anchoredSum S v ≠ 0 := by
    apply norm_pos_iff.mp
    linarith
  have hu : ‖anchoredSum S v‖ ≤ (6001/5000:ℝ) := by
    dsimp [radiusEnvelope01] at hr
    linarith [hb.2]
  refine ⟨hlo,hn,?_⟩
  rw [Complex.normSq_eq_norm_sq]
  nlinarith [norm_nonneg (anchoredSum S v)]

theorem anchoredSum_height_lower01 (S v : ℂ) (hv : Complex.normSq v=1)
    (r : ℝ) (hS : ‖S‖ ≤ 2*r) (hr : r ≤ radiusEnvelope01) :
    (33/50:ℝ) < pairHeight (anchoredSum S v) := by
  obtain ⟨_,hn,hb⟩ := anchoredSum_guards01 S v hv r hS hr
  have hp := Complex.normSq_pos.mpr hn
  have hi : (20/29:ℝ) < 1/Complex.normSq (anchoredSum S v) := by
    apply (lt_div_iff₀ hp).2
    nlinarith
  have hs := pairHeight_square (anchoredSum S v) hn (by linarith)
  have hz : 0 ≤ pairHeight (anchoredSum S v) := Real.sqrt_nonneg _
  nlinarith

theorem reference_height_lower01 : (43/50:ℝ) < pairHeight (-1) := by
  have hn : 0 ≤ pairHeight (-1) := Real.sqrt_nonneg _
  nlinarith [reference_height_square]

theorem radius01_orientation_margin (r : ℝ) (hr : r ≤ radiusEnvelope01) :
    4*r+4*((17/3:ℝ)*r) < 3 := by
  dsimp [radiusEnvelope01] at hr
  linarith

theorem radius01_determinant_margin (r : ℝ) (hr : r ≤ radiusEnvelope01) :
    (3/5:ℝ) < 3*Real.sqrt 3-(136/3)*r := by
  have hs : (173/100:ℝ) < Real.sqrt 3 := by
    nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3),Real.sqrt_nonneg (3:ℝ)]
  dsimp [radiusEnvelope01] at hr
  linarith

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.radius01_inside_envelope
#print axioms Centiradian20261006.ChartRadius0120261006.radius01_sum_guard
#print axioms Centiradian20261006.ChartRadius0120261006.anchoredSum_guards01
#print axioms Centiradian20261006.ChartRadius0120261006.anchoredSum_height_lower01
#print axioms Centiradian20261006.ChartRadius0120261006.reference_height_lower01
#print axioms Centiradian20261006.ChartRadius0120261006.radius01_orientation_margin
#print axioms Centiradian20261006.ChartRadius0120261006.radius01_determinant_margin
#print Centiradian20261006.ChartRadius0120261006.RadiusOneTenthExclusion
