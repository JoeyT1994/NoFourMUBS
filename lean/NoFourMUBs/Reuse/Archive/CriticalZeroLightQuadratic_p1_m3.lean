import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroQuadratic20261003
noncomputable section
variable {K : Type*} [Field K] [CharZero K]

def numerator_p1_m3 (X Y z r : K) : K := (-2)*((((((((((1 : K)*X)+(((((1 : K)*r^2)+(1 : K))*Y)+(-6 : K)))*X)+((((((1 : K)*r^2)*Y)+(((((1 : K)*r^2)+(-1 : K))*z^2)+((-8 : K)*r^2)))*Y)+(((((-1 : K)*z)+(-3 : K))*z^3)+((-3 : K)*r^2))))*X)+((((((-2 : K)*r^2)*Y)+((((-4 : K)*r^2)*z^2)+((((-1 : K)*r^2)+(15 : K))*r^2)))*Y)+(((((-1 : K)*r^2)*z)+((-3 : K)*r^2))*z^3)))*X)+(((1 : K)*r^4)*Y^2)))*(((1 : K)*Y))^3
def denominator_p1_m3 (X Y z r : K) : K := (1)*(X - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2*(X)^2

def reducedNumerator_p1_m3 (X Y z r : K) : K := (-2)*((((((((((1 : K)*Y)+(-1 : K))*X)+(((((2 : K)*Y)+(((2 : K)*z^2)+(-17 : K)))*Y)+(((-2 : K)*z^2)+(15 : K))))*X)+(((((((1 : K)*Y)+(((2 : K)*z^2)+(-17 : K)))*Y)+(((((1 : K)*z^2)+(-21 : K))*z^2)+(78 : K)))*Y)+(((((((-2 : K)*z)+(-3 : K))*z)+(15 : K))*z^2)+(-54 : K))))*X)+(((((((-1 : K)*Y)+(((-5 : K)*z^2)+(15 : K)))*Y)+(((((((-5 : K)*z)+(-6 : K))*z)+(33 : K))*z^2)+(-54 : K)))*Y)+((((((((-1 : K)*z)+(-3 : K))*z)+(9 : K))*z)+(27 : K))*z^3))))*(((1 : K)*Y))^2
def reducedDenominator_p1_m3 (X Y z r : K) : K := (1)*(X - 3*z - 9)*(X + Y + z^2 + 3*z)*(z)^2

/-- Polynomial certificate for the quadratic reduction; no generic division
or numerical root assumption replaces the explicit complex relation. -/
theorem quadratic_p1_m3 (X Y z r : K)
    (hX : X≠0) (hY : Y≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0)
    (hq : Y*r^2= -X*(9-z^2-X-Y)) :
    numerator_p1_m3 X Y z r / denominator_p1_m3 X Y z r =
      reducedNumerator_p1_m3 X Y z r / reducedDenominator_p1_m3 X Y z r := by
  have hd : denominator_p1_m3 X Y z r≠0 := by
    simp [denominator_p1_m3,hX,hY,hz,hDx,hDy,hDz]
  have ht : reducedDenominator_p1_m3 X Y z r≠0 := by
    simp [reducedDenominator_p1_m3,hX,hY,hz,hDx,hDy,hDz]
  apply (div_eq_div_iff hd ht).mpr
  dsimp only [numerator_p1_m3,denominator_p1_m3,reducedNumerator_p1_m3,reducedDenominator_p1_m3]
  <;> linear_combination ((-2)*((((1 : K)*X)+(((-3 : K)*z)+(-9 : K))))*((((1 : K)*X)+(((1 : K)*Y)+((((1 : K)*z)+(3 : K))*z))))*((((((((((1 : K)*Y)+(-1 : K))*X)+(((((1 : K)*Y)+(((1 : K)*z^2)+(-8 : K)))*Y)+(((-1 : K)*z^2)+(6 : K))))*X)+(((((-1 : K)*Y)+(((-3 : K)*z^2)+(((-1 : K)*r^2)+(6 : K))))*Y)+((((-1 : K)*z)+(-3 : K))*z^3)))*X)+(((1 : K)*r^2)*Y^2)))*(((1 : K)*z))^2*(((1 : K)*Y))^2)*hq

end
#print axioms quadratic_p1_m3
end CriticalZeroQuadratic20261003
