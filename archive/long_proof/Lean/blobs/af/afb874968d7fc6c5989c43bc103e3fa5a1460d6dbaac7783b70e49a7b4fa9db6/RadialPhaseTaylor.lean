import SharpPhaseTaylor
import Mathlib.Algebra.Order.Field.Basic

/-! Radial scaling of the existing sharp phase Taylor kernel. This does not
claim the nonlinear model's multivariate polynomial truncation semantics. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.RadialPhase20261008
open SharpTaylor20261006
noncomputable section

/-- Retaining powers zero through m gives an actual h^(m+1) remainder.
No division by h is used, so the center h=0 is included. -/
theorem phaseTaylor_radial_remainder (m : ℕ) {x β h : ℝ}
    (hβ : 0 ≤ β) (hh : 0 ≤ h) (hx : |x| ≤ β*h) :
    ‖Complex.exp (Complex.I*(x:ℂ))-phasePartial (m+1) x‖ ≤
      (β^(m+1)/((m+1).factorial:ℝ))*h^(m+1) := by
  have hb := phaseRemainder_bound (m+1) x
  change ‖Complex.exp (Complex.I*(x:ℂ))-phasePartial (m+1) x‖ ≤ _ at hb
  calc
    _ ≤ |x|^(m+1)/((m+1).factorial:ℝ) := hb
    _ ≤ (β*h)^(m+1)/((m+1).factorial:ℝ) :=
      div_le_div_of_nonneg_right (pow_le_pow_left₀ (abs_nonneg x) hx _)
        (Nat.cast_nonneg _)
    _ = _ := by rw [mul_pow]; ring

end
end Centiradian20261006.RadialPhase20261008

#print axioms Centiradian20261006.RadialPhase20261008.phaseTaylor_radial_remainder
