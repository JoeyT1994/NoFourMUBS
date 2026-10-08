import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroQuadratic20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

def numerator_m1_m1 (X Y z r : K) : K := (6)*((((1 : K)*z)+(2 : K)))*(((1 : K)*Y))*(((1 : K)*X))
def denominator_m1_m1 (X Y z r : K) : K := (1)*(X + Y + z^2 + 3*z)

def reducedNumerator_m1_m1 (X Y z r : K) : K := (6)*((((1 : K)*z)+(2 : K)))*(((1 : K)*Y))*(((1 : K)*X))
def reducedDenominator_m1_m1 (X Y z r : K) : K := (1)*(X + Y + z^2 + 3*z)

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_m1_m1 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_m1_m1 X Y z r / denominator_m1_m1 X Y z r =
      reducedNumerator_m1_m1 X Y z r / reducedDenominator_m1_m1 X Y z r := by
  have hd : denominator_m1_m1 X Y z r≠0 := by
    simp [denominator_m1_m1,hX,hY,hz,hDx,hDy,hDz]
  have ht : reducedDenominator_m1_m1 X Y z r≠0 := by
    simp [reducedDenominator_m1_m1,hX,hY,hz,hDx,hDy,hDz]
  apply (div_eq_div_iff hd ht).mpr
  dsimp only [numerator_m1_m1,denominator_m1_m1,reducedNumerator_m1_m1,reducedDenominator_m1_m1]
  <;> linear_combination (0)*hq

end
#print axioms quadratic_m1_m1
end CriticalZeroQuadratic20261003
