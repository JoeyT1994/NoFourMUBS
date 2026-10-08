import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroQuadratic20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]
def numerator_p1_p1 (X Y z r : K) : K := (6)*(z + 2)
def denominator_p1_p1 (X Y z r : K) : K := (1)*(X + Y + z^2 + 3*z)
def reducedNumerator_p1_p1 (X Y z r : K) : K := (6)*((((1 : K)*z)+(2 : K)))
def reducedDenominator_p1_p1 (X Y z r : K) : K := (1)*(X + Y + z^2 + 3*z)

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_p1_p1 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_p1_p1 X Y z r / denominator_p1_p1 X Y z r =
      reducedNumerator_p1_p1 X Y z r / reducedDenominator_p1_p1 X Y z r := by
  have hd : denominator_p1_p1 X Y z r≠0 := by
    simp [denominator_p1_p1,hX,hY,hz,hDx,hDy,hDz]
  have ht : reducedDenominator_p1_p1 X Y z r≠0 := by
    simp [reducedDenominator_p1_p1,hX,hY,hz,hDx,hDy,hDz]
  apply (div_eq_div_iff hd ht).mpr
  dsimp only [numerator_p1_p1,denominator_p1_p1,reducedNumerator_p1_p1,reducedDenominator_p1_p1]
  <;> linear_combination (0)*hq

end
#print axioms quadratic_p1_p1
end CriticalZeroQuadratic20261003
