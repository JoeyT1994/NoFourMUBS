import CriticalZeroRaw_p2_p2
import CriticalZeroLightQuadratic_p2_p2
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003
noncomputable section

def reducedNumerator_p2_p2 (X Y z r : ℂ) : ℂ := CriticalZeroQuadratic20261003.reducedNumerator_p2_p2 X Y z r
def reducedDenominator_p2_p2 (X Y z r : ℂ) : ℂ := CriticalZeroQuadratic20261003.reducedDenominator_p2_p2 X Y z r

def evenNumerator_p2_p2 (X Y z R : ℂ) : ℂ := CriticalZeroQuadratic20261003.evenNumerator_p2_p2 X Y z R

/-- Split the high-degree polynomial proof from the later division step. -/
theorem even_numerator_p2_p2 (X Y z r : ℂ) :
    numerator_p2_p2 X Y z r=evenNumerator_p2_p2 X Y z (r^2) := by
  exact CriticalZeroQuadratic20261003.even_numerator_p2_p2 (K := ℂ) X Y z r

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_p2_p2 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_p2_p2 X Y z r / denominator_p2_p2 X Y z r =
      reducedNumerator_p2_p2 X Y z r / reducedDenominator_p2_p2 X Y z r := by
  exact CriticalZeroQuadratic20261003.quadratic_p2_p2 (K := ℂ) X Y z r hX hY hz hDx hDy hDz hq

/-- The same reduced moment, now connected to both complete reconstructed
sides and their actual Newton formulas. -/
theorem reduced_p2_p2 (X Y z r : ℂ)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    newton_p2_p2 (zeroSide X Y z r 1)+newton_p2_p2 (zeroSide X Y z r (-1)) =
      reducedNumerator_p2_p2 X Y z r / reducedDenominator_p2_p2 X Y z r := by
  rw [raw_p2_p2 X Y z r hX hz hDx hDy hDz]
  exact quadratic_p2_p2 X Y z r hX hY hz hDx hDy hDz hq
end
#print axioms even_numerator_p2_p2
#print axioms quadratic_p2_p2
#print axioms reduced_p2_p2
end CriticalZeroRational20261003
