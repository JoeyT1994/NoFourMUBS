import CriticalZeroRaw_p0_p3
import CriticalZeroLightQuadratic_p0_p3
import Mathlib.Tactic.LinearCombination
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003
noncomputable section

def reducedNumerator_p0_p3 (X Y z r : ℂ) : ℂ := (-6)*(((1 : ℂ)*r))*((((1 : ℂ)*Y)+(-1 : ℂ)))*((((((((1 : ℂ)*Y)+(-1 : ℂ))*X)+(((((1 : ℂ)*Y)+(((1 : ℂ)*z^2)+(-10 : ℂ)))*Y)+(((-1 : ℂ)*z^2)+(9 : ℂ))))*X)+((((-1 : ℂ)*Y)+(((-2 : ℂ)*z^2)+(9 : ℂ)))*Y)))
def reducedDenominator_p0_p3 (X Y z r : ℂ) : ℂ := (1)*(Y)*(X - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_p0_p3 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_p0_p3 X Y z r / denominator_p0_p3 X Y z r =
      reducedNumerator_p0_p3 X Y z r / reducedDenominator_p0_p3 X Y z r := by
  exact CriticalZeroQuadratic20261003.quadratic_p0_p3 (K := ℂ) X Y z r hX hY hz hDx hDy hDz hq

/-- The same reduced moment, now connected to both complete reconstructed
sides and their actual Newton formulas. -/
theorem reduced_p0_p3 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    newton_p0_p3 (zeroSide X Y z r 1)+newton_p0_p3 (zeroSide X Y z r (-1)) =
      reducedNumerator_p0_p3 X Y z r / reducedDenominator_p0_p3 X Y z r := by
  rw [raw_p0_p3 X Y z r hX hz hDx hDy hDz]
  exact quadratic_p0_p3 X Y z r hX hY hz hDx hDy hDz hq
end
#print axioms quadratic_p0_p3
#print axioms reduced_p0_p3
end CriticalZeroRational20261003
