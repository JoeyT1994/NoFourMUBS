import CriticalZeroRaw_m2_p1
import Mathlib.Tactic.LinearCombination
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003
noncomputable section

def reducedNumerator_m2_p1 (X Y z r : ℂ) : ℂ := (-6)*(((1 : ℂ)*r))*((((1 : ℂ)*z)+(2 : ℂ)))*(((1 : ℂ)*X))
def reducedDenominator_m2_p1 (X Y z r : ℂ) : ℂ := (1)*(Y - 3*z - 9)

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_m2_p1 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_m2_p1 X Y z r / denominator_m2_p1 X Y z r =
      reducedNumerator_m2_p1 X Y z r / reducedDenominator_m2_p1 X Y z r := by
  have hd : denominator_m2_p1 X Y z r≠0 := by
    simp [denominator_m2_p1,hX,hY,hz,hDx,hDy,hDz]
  have ht : reducedDenominator_m2_p1 X Y z r≠0 := by
    simp [reducedDenominator_m2_p1,hX,hY,hz,hDx,hDy,hDz]
  apply (div_eq_div_iff hd ht).mpr
  dsimp only [numerator_m2_p1,denominator_m2_p1,reducedNumerator_m2_p1,reducedDenominator_m2_p1]
  linear_combination (0)*hq

/-- The same reduced moment, now connected to both complete reconstructed
sides and their actual Newton formulas. -/
theorem reduced_m2_p1 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    newton_m2_p1 (zeroSide X Y z r 1)+newton_m2_p1 (zeroSide X Y z r (-1)) =
      reducedNumerator_m2_p1 X Y z r / reducedDenominator_m2_p1 X Y z r := by
  rw [raw_m2_p1 X Y z r hX hz hDx hDy hDz]
  exact quadratic_m2_p1 X Y z r hX hY hz hDx hDy hDz hq
end
#print axioms quadratic_m2_p1
#print axioms reduced_m2_p1
end CriticalZeroRational20261003
