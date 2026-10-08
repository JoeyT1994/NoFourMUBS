import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroQuadratic20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

def numerator_p2_m3 (X Y z r : K) : K := (2)*(((1 : K)*r))*((((((((((1 : K)*X)+(-6 : K))*X)+((((((-1 : K)*r^2)*Y)+(((-1 : K)*z^2)+((4 : K)*r^2)))*Y)+(((((3 : K)*z)+(9 : K))*z^2)+((-3 : K)*r^2))))*X)+((((((2 : K)*r^2)*Y)+((((-1 : K)*r^2)*z^2)+((-12 : K)*r^2)))*Y)+(((((3 : K)*r^2)*z)+((9 : K)*r^2))*z^2)))*X)+(((-1 : K)*r^4)*Y^2)))*(((1 : K)*Y))^3
def denominator_p2_m3 (X Y z r : K) : K := (1)*(Y - 3*z - 9)*(X - 3*z - 9)*(z)^2*(X)^3

def reducedNumerator_p2_m3 (X Y z r : K) : K := (-2)*(((1 : K)*r))*((((((((((1 : K)*Y)+(-4 : K))*Y)+(3 : K))*X)+(((((((1 : K)*Y)+(((1 : K)*z^2)+(-13 : K)))*Y)+(((-1 : K)*z^2)+(39 : K)))*Y)+(((((-3 : K)*z)+(-6 : K))*z^2)+(-27 : K))))*X)+(((((((-1 : K)*Y)+(((2 : K)*z^2)+(12 : K)))*Y)+(((((((2 : K)*z)+(-6 : K))*z)+(-33 : K))*z^2)+(-27 : K)))*Y)+((((((((-3 : K)*z)+(-9 : K))*z)+(27 : K))*z)+(81 : K))*z^2))))*(((1 : K)*Y))^2
def reducedDenominator_p2_m3 (X Y z r : K) : K := (1)*(Y - 3*z - 9)*(X)*(X - 3*z - 9)*(z)^2

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_p2_m3 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_p2_m3 X Y z r / denominator_p2_m3 X Y z r =
      reducedNumerator_p2_m3 X Y z r / reducedDenominator_p2_m3 X Y z r := by
  have hd : denominator_p2_m3 X Y z r≠0 := by
    simp [denominator_p2_m3,hX,hY,hz,hDx,hDy,hDz]
  have ht : reducedDenominator_p2_m3 X Y z r≠0 := by
    simp [reducedDenominator_p2_m3,hX,hY,hz,hDx,hDy,hDz]
  apply (div_eq_div_iff hd ht).mpr
  dsimp only [numerator_p2_m3,denominator_p2_m3,reducedNumerator_p2_m3,reducedDenominator_p2_m3]
  <;> linear_combination ((-2)*(((1 : K)*r))*((((1 : K)*Y)+(((-3 : K)*z)+(-9 : K))))*(((1 : K)*X))*((((1 : K)*X)+(((-3 : K)*z)+(-9 : K))))*((((((((((1 : K)*Y)+(-3 : K))*Y)+(3 : K))*X)+(((((-1 : K)*Y)+(((2 : K)*z^2)+(3 : K)))*Y)+((((-3 : K)*z)+(-9 : K))*z^2)))*X)+(((1 : K)*r^2)*Y^2)))*(((1 : K)*z))^2*(((1 : K)*Y))^2)*hq

end
#print axioms quadratic_p2_m3
end CriticalZeroQuadratic20261003
