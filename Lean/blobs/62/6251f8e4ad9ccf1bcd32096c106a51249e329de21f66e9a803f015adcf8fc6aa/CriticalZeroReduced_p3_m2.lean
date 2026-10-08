import CriticalZeroRaw_p3_m2
import CriticalZeroLightQuadratic_p3_m2
import Mathlib.Tactic.LinearCombination
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003
noncomputable section

def reducedNumerator_p3_m2 (X Y z r : ℂ) : ℂ := (-2)*(((1 : ℂ)*r))*((((((((((1 : ℂ)*Y)+(-1 : ℂ))*X)+(((((1 : ℂ)*Y)+(((1 : ℂ)*z^2)+(-13 : ℂ)))*Y)+(((2 : ℂ)*z^2)+(12 : ℂ))))*X)+(((((-4 : ℂ)*Y)+(((-1 : ℂ)*z^2)+(39 : ℂ)))*Y)+(((((((2 : ℂ)*z)+(-6 : ℂ))*z)+(-33 : ℂ))*z^2)+(-27 : ℂ))))*X)+(((((3 : ℂ)*Y)+(((((-3 : ℂ)*z)+(-6 : ℂ))*z^2)+(-27 : ℂ)))*Y)+((((((((-3 : ℂ)*z)+(-9 : ℂ))*z)+(27 : ℂ))*z)+(81 : ℂ))*z^2))))*(((1 : ℂ)*Y))^2
def reducedDenominator_p3_m2 (X Y z r : ℂ) : ℂ := (1)*(Y - 3*z - 9)*(X - 3*z - 9)*(z)^2*(X)^2

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_p3_m2 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_p3_m2 X Y z r / denominator_p3_m2 X Y z r =
      reducedNumerator_p3_m2 X Y z r / reducedDenominator_p3_m2 X Y z r := by
  exact CriticalZeroQuadratic20261003.quadratic_p3_m2 (K := ℂ) X Y z r hX hY hz hDx hDy hDz hq

/-- The same reduced moment, now connected to both complete reconstructed
sides and their actual Newton formulas. -/
theorem reduced_p3_m2 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    newton_p3_m2 (zeroSide X Y z r 1)+newton_p3_m2 (zeroSide X Y z r (-1)) =
      reducedNumerator_p3_m2 X Y z r / reducedDenominator_p3_m2 X Y z r := by
  rw [raw_p3_m2 X Y z r hX hz hDx hDy hDz]
  exact quadratic_p3_m2 X Y z r hX hY hz hDx hDy hDz hq
end
#print axioms quadratic_p3_m2
#print axioms reduced_p3_m2
end CriticalZeroRational20261003
