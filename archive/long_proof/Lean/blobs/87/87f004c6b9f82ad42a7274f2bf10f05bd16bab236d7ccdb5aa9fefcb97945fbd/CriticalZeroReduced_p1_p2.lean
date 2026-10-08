import CriticalZeroRaw_p1_p2
import Mathlib.Tactic.LinearCombination
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003
noncomputable section

def reducedNumerator_p1_p2 (X Y z r : ℂ) : ℂ := (-2)*(((1 : ℂ)*r))*((((((((((1 : ℂ)*Y)+(-1 : ℂ))*X)+(((((1 : ℂ)*Y)+(((1 : ℂ)*z^2)+(-13 : ℂ)))*Y)+(((-1 : ℂ)*z^2)+(12 : ℂ))))*X)+(((((-4 : ℂ)*Y)+(((-7 : ℂ)*z^2)+(39 : ℂ)))*Y)+(((((((-1 : ℂ)*z)+(-3 : ℂ))*z)+(3 : ℂ))*z^2)+(-27 : ℂ))))*X)+((((3 : ℂ)*Y)+(((((3 : ℂ)*z)+(12 : ℂ))*z^2)+(-27 : ℂ)))*Y)))
def reducedDenominator_p1_p2 (X Y z r : ℂ) : ℂ := (1)*(X)*(X - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_p1_p2 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_p1_p2 X Y z r / denominator_p1_p2 X Y z r =
      reducedNumerator_p1_p2 X Y z r / reducedDenominator_p1_p2 X Y z r := by
  have hd : denominator_p1_p2 X Y z r≠0 := by
    simp [denominator_p1_p2,hX,hY,hz,hDx,hDy,hDz]
  have ht : reducedDenominator_p1_p2 X Y z r≠0 := by
    simp [reducedDenominator_p1_p2,hX,hY,hz,hDx,hDy,hDz]
  apply (div_eq_div_iff hd ht).mpr
  dsimp only [numerator_p1_p2,denominator_p1_p2,reducedNumerator_p1_p2,reducedDenominator_p1_p2]
  linear_combination ((2)*(((1 : ℂ)*r))*(((1 : ℂ)*X))*((((1 : ℂ)*X)+(((-3 : ℂ)*z)+(-9 : ℂ))))*((((1 : ℂ)*X)+(((1 : ℂ)*Y)+((((1 : ℂ)*z)+(3 : ℂ))*z))))*((((((1 : ℂ)*X)+(((1 : ℂ)*Y)+(((1 : ℂ)*z^2)+(-3 : ℂ))))*X)+((-3 : ℂ)*Y)))*(((1 : ℂ)*z))^2)*hq

/-- The same reduced moment, now connected to both complete reconstructed
sides and their actual Newton formulas. -/
theorem reduced_p1_p2 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    newton_p1_p2 (zeroSide X Y z r 1)+newton_p1_p2 (zeroSide X Y z r (-1)) =
      reducedNumerator_p1_p2 X Y z r / reducedDenominator_p1_p2 X Y z r := by
  rw [raw_p1_p2 X Y z r hX hz hDx hDy hDz]
  exact quadratic_p1_p2 X Y z r hX hY hz hDx hDy hDz hq
end
#print axioms quadratic_p1_p2
#print axioms reduced_p1_p2
end CriticalZeroRational20261003
