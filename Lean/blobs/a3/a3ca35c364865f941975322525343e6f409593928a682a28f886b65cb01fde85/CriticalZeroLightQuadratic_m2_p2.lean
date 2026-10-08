import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroQuadratic20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

def numerator_m2_p2 (X Y z r : K) : K := (-2)*(((((((((2 : K)*Y)*X)+(((((2 : K)*Y)+(((-1 : K)*z^2)+(-12 : K)))*Y)+((((3 : K)*z)+(9 : K))*z^2)))*X)+((((((4 : K)*r^2)*Y)+(((((3 : K)*z)+(9 : K))*z^2)+((-6 : K)*r^2)))*Y)+((((((-9 : K)*z)+(-54 : K))*z)+(-81 : K))*z^2)))*X)+(((-6 : K)*r^2)*Y^2)))*(((1 : K)*r))^2
def denominator_m2_p2 (X Y z r : K) : K := (1)*(Y - 3*z - 9)*(X)*(X - 3*z - 9)*(z)^2

def reducedNumerator_m2_p2 (X Y z r : K) : K := (-6)*(((1 : K)*X))*((((1 : K)*X)+(((1 : K)*Y)+(((1 : K)*z^2)+(-9 : K)))))*((((((((2 : K)*Y)+(-2 : K))*X)+(((((2 : K)*Y)+(((1 : K)*z^2)+(-20 : K)))*Y)+(((((1 : K)*z)+(1 : K))*z^2)+(18 : K))))*X)+(((((-2 : K)*Y)+(((((1 : K)*z)+(1 : K))*z^2)+(18 : K)))*Y)+((((((-3 : K)*z)+(-18 : K))*z)+(-27 : K))*z^2))))
def reducedDenominator_m2_p2 (X Y z r : K) : K := (1)*(Y)*(Y - 3*z - 9)*(X - 3*z - 9)*(z)^2

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_m2_p2 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_m2_p2 X Y z r / denominator_m2_p2 X Y z r =
      reducedNumerator_m2_p2 X Y z r / reducedDenominator_m2_p2 X Y z r := by
  have hd : denominator_m2_p2 X Y z r≠0 := by
    simp [denominator_m2_p2,hX,hY,hz,hDx,hDy,hDz]
  have ht : reducedDenominator_m2_p2 X Y z r≠0 := by
    simp [reducedDenominator_m2_p2,hX,hY,hz,hDx,hDy,hDz]
  apply (div_eq_div_iff hd ht).mpr
  dsimp only [numerator_m2_p2,denominator_m2_p2,reducedNumerator_m2_p2,reducedDenominator_m2_p2]
  <;> linear_combination ((-2)*((((1 : K)*Y)+(((-3 : K)*z)+(-9 : K))))*((((1 : K)*X)+(((-3 : K)*z)+(-9 : K))))*((((((((((6 : K)*Y)+(-6 : K))*X)+(((((6 : K)*Y)+(((3 : K)*z^2)+(-60 : K)))*Y)+(((((3 : K)*z)+(3 : K))*z^2)+(54 : K))))*X)+(((((((4 : K)*r^2)+(-6 : K))*Y)+(((((3 : K)*z)+(3 : K))*z^2)+(((-6 : K)*r^2)+(54 : K))))*Y)+((((((-9 : K)*z)+(-54 : K))*z)+(-81 : K))*z^2)))*X)+(((-6 : K)*r^2)*Y^2)))*(((1 : K)*z))^2)*hq

end
#print axioms quadratic_m2_p2
end CriticalZeroQuadratic20261003
