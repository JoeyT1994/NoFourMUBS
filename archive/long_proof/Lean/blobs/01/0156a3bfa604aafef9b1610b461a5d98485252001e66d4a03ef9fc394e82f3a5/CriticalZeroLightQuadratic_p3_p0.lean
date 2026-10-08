import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroQuadratic20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

def numerator_p3_p0 (X Y z r : K) : K := (6)*(((1 : K)*r))*(((1 : K)*Y))*((((1 : K)*X)+(-1 : K)))*((((((((((1 : K)*Y)+(-2 : K))*X)+(((((1 : K)*Y)+(((1 : K)*z^2)+(-10 : K)))*Y)+(((-3 : K)*z^2)+(18 : K))))*X)+(((1 : K)*r^2)*Y))*X)+(((-1 : K)*r^2)*Y^2)))
def denominator_p3_p0 (X Y z r : K) : K := (1)*(Y - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2*(X)^3

def reducedNumerator_p3_p0 (X Y z r : K) : K := (6)*(((1 : K)*r))*(((1 : K)*Y))*((((1 : K)*X)+(-1 : K)))*((((((((1 : K)*Y)+(-1 : K))*X)+(((((1 : K)*Y)+(((1 : K)*z^2)+(-10 : K)))*Y)+(((-2 : K)*z^2)+(9 : K))))*X)+((((-1 : K)*Y)+(((-1 : K)*z^2)+(9 : K)))*Y)))
def reducedDenominator_p3_p0 (X Y z r : K) : K := (1)*(Y - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2*(X)^2

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_p3_p0 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_p3_p0 X Y z r / denominator_p3_p0 X Y z r =
      reducedNumerator_p3_p0 X Y z r / reducedDenominator_p3_p0 X Y z r := by
  have hd : denominator_p3_p0 X Y z r≠0 := by
    simp [denominator_p3_p0,hX,hY,hz,hDx,hDy,hDz]
  have ht : reducedDenominator_p3_p0 X Y z r≠0 := by
    simp [reducedDenominator_p3_p0,hX,hY,hz,hDx,hDy,hDz]
  apply (div_eq_div_iff hd ht).mpr
  dsimp only [numerator_p3_p0,denominator_p3_p0,reducedNumerator_p3_p0,reducedDenominator_p3_p0]
  <;> linear_combination ((6)*(((1 : K)*r))*(((1 : K)*Y))*((((1 : K)*Y)+(((-3 : K)*z)+(-9 : K))))*((((1 : K)*X)+(-1 : K)))*((((1 : K)*X)+((-1 : K)*Y)))*((((1 : K)*X)+(((1 : K)*Y)+((((1 : K)*z)+(3 : K))*z))))*(((1 : K)*z))^2*(((1 : K)*X))^2)*hq

end
#print axioms quadratic_p3_p0
end CriticalZeroQuadratic20261003
