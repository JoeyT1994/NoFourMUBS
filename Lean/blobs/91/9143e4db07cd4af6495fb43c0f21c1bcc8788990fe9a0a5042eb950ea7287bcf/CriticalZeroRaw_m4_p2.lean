import CriticalZeroRationalData
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace CriticalZeroRational20261003
open CriticalNewton20261003 CriticalNewtonGauge20261003
noncomputable section

def numerator_m4_p2 (X Y z r : ℂ) : ℂ := (2)*(2*X^9*Y^2 + 4*X^8*Y^3*r^2 + 2*X^8*Y^3 + 2*X^8*Y^2*z^2 - 6*X^8*Y^2*z*r^2 - 20*X^8*Y^2*r^2 - 12*X^8*Y^2 + X^8*Y*z^4 - 3*X^8*z^5 - 9*X^8*z^4 + 6*X^7*Y^4*r^2 + 4*X^7*Y^3*z^2*r^2 - 18*X^7*Y^3*z*r^2 - 86*X^7*Y^3*r^2 + X^7*Y^2*z^4 - 6*X^7*Y^2*z^3*r^2 - 22*X^7*Y^2*z^2*r^2 + 84*X^7*Y^2*z*r^2 + 264*X^7*Y^2*r^2 + X^7*Y*z^6 - 3*X^7*Y*z^5 - 18*X^7*Y*z^4 - 3*X^7*z^7 - 9*X^7*z^6 + 27*X^7*z^5 + 81*X^7*z^4 + 2*X^6*Y^5*r^2 + 2*X^6*Y^4*z^2*r^2 - 6*X^6*Y^4*z*r^4 - 12*X^6*Y^4*z*r^2 - 58*X^6*Y^4*r^2 - 12*X^6*Y^3*z^3*r^2 - 42*X^6*Y^3*z^2*r^2 + 132*X^6*Y^3*z*r^2 - 32*X^6*Y^3*r^4 + 444*X^6*Y^3*r^2 - 3*X^6*Y^2*z^5 + 2*X^6*Y^2*z^4*r^2 - 9*X^6*Y^2*z^4 + 54*X^6*Y^2*z^3*r^2 + 162*X^6*Y^2*z^2*r^2 + 12*X^6*Y^2*z*r^4 - 324*X^6*Y^2*z*r^2 + 48*X^6*Y^2*r^4 - 972*X^6*Y^2*r^2 - 3*X^6*Y*z^7 + 9*X^6*Y*z^6*r^2 - 9*X^6*Y*z^6 + 30*X^6*Y*z^5*r^2 + 27*X^6*Y*z^5 + 18*X^6*Y*z^4*r^2 + 81*X^6*Y*z^4 + 9*X^6*z^8 - 27*X^6*z^7*r^2 + 81*X^6*z^7 - 189*X^6*z^6*r^2 + 243*X^6*z^6 - 432*X^6*z^5*r^2 + 243*X^6*z^5 - 324*X^6*z^4*r^2 - 6*X^5*Y^5*z*r^4 - 2*X^5*Y^5*r^4 - 6*X^5*Y^4*z^3*r^4 - 2*X^5*Y^4*z^2*r^4 + 60*X^5*Y^4*z*r^4 + 4*X^5*Y^4*r^4 + 2*X^5*Y^3*z^4*r^2 + 12*X^5*Y^3*z^3*r^4 - 6*X^5*Y^3*z^2*r^4 - 96*X^5*Y^3*z*r^4 + 84*X^5*Y^3*r^4 + 11*X^5*Y^2*z^6*r^2 + 30*X^5*Y^2*z^5*r^2 - 18*X^5*Y^2*z^3*r^4 - 18*X^5*Y^2*z^2*r^4 + 108*X^5*Y^2*z*r^4 + 54*X^5*Y^2*r^4 + 9*X^5*Y*z^8*r^2 + 3*X^5*Y*z^7*r^2 - 252*X^5*Y*z^6*r^2 - 702*X^5*Y*z^5*r^2 - 486*X^5*Y*z^4*r^2 - 27*X^5*z^9*r^2 - 189*X^5*z^8*r^2 - 189*X^5*z^7*r^2 + 1377*X^5*z^6*r^2 + 3888*X^5*z^5*r^2 + 2916*X^5*z^4*r^2 + 2*X^4*Y^6*r^4 + 2*X^4*Y^5*z^2*r^4 + 12*X^4*Y^5*z*r^4 + 8*X^4*Y^5*r^6 - 20*X^4*Y^5*r^4 + 6*X^4*Y^4*z^3*r^4 - 18*X^4*Y^4*z^2*r^4 - 36*X^4*Y^4*z*r^6 - 132*X^4*Y^4*z*r^4 - 88*X^4*Y^4*r^6 + 12*X^4*Y^4*r^4 - 6*X^4*Y^3*z^5*r^2 + X^4*Y^3*z^4*r^4 - 18*X^4*Y^3*z^4*r^2 - 36*X^4*Y^3*z^3*r^4 + 18*X^4*Y^3*z^2*r^4 + 96*X^4*Y^3*z*r^6 + 540*X^4*Y^3*z*r^4 + 204*X^4*Y^3*r^6 + 594*X^4*Y^3*r^4 - 33*X^4*Y^2*z^7*r^2 - 207*X^4*Y^2*z^6*r^2 - 3*X^4*Y^2*z^5*r^4 - 378*X^4*Y^2*z^5*r^2 - 9*X^4*Y^2*z^4*r^4 - 162*X^4*Y^2*z^4*r^2 + 162*X^4*Y^2*z^3*r^4 + 324*X^4*Y^2*z^2*r^4 - 54*X^4*Y^2*z*r^6 - 972*X^4*Y^2*z*r^4 - 108*X^4*Y^2*r^6 - 1944*X^4*Y^2*r^4 - 27*X^4*Y*z^9*r^2 - 171*X^4*Y*z^8*r^2 - 27*X^4*Y*z^7*r^2 + 1863*X^4*Y*z^6*r^2 + 4374*X^4*Y*z^5*r^2 + 2916*X^4*Y*z^4*r^2 + 81*X^4*z^10*r^2 + 1053*X^4*z^9*r^2 + 5427*X^4*z^8*r^2 + 13851*X^4*z^7*r^2 + 17496*X^4*z^6*r^2 + 8748*X^4*z^5*r^2 + 4*X^3*Y^6*r^6 + 6*X^3*Y^5*z^2*r^6 - 68*X^3*Y^5*r^6 + X^3*Y^4*z^4*r^4 - 18*X^3*Y^4*z^3*r^6 - 54*X^3*Y^4*z^2*r^6 + 132*X^3*Y^4*z*r^6 + 438*X^3*Y^4*r^6 + X^3*Y^3*z^6*r^4 - 3*X^3*Y^3*z^5*r^4 - 18*X^3*Y^3*z^4*r^4 + 36*X^3*Y^3*z^3*r^6 + 90*X^3*Y^3*z^2*r^6 - 270*X^3*Y^3*z*r^6 - 702*X^3*Y^3*r^6 - 3*X^3*Y^2*z^7*r^4 - 9*X^3*Y^2*z^6*r^4 + 27*X^3*Y^2*z^5*r^4 + 81*X^3*Y^2*z^4*r^4 - 8*X^2*Y^6*r^6 - 10*X^2*Y^5*z^2*r^6 - 12*X^2*Y^5*z*r^6 + 8*X^2*Y^5*r^8 + 66*X^2*Y^5*r^6 - 3*X^2*Y^4*z^5*r^4 - 9*X^2*Y^4*z^4*r^4 + 18*X^2*Y^4*z^3*r^6 + 72*X^2*Y^4*z^2*r^6 - 6*X^2*Y^4*z*r^8 - 24*X^2*Y^4*r^8 - 162*X^2*Y^4*r^6 - 3*X^2*Y^3*z^7*r^4 - 9*X^2*Y^3*z^6*r^4 + 27*X^2*Y^3*z^5*r^4 + 81*X^2*Y^3*z^4*r^4 + 9*X^2*Y^2*z^8*r^4 + 81*X^2*Y^2*z^7*r^4 + 243*X^2*Y^2*z^6*r^4 + 243*X^2*Y^2*z^5*r^4 - 4*X*Y^6*r^8 + 2*X*Y^5*z^2*r^8 + 6*X*Y^5*z*r^8 + 6*X*Y^5*r^8 + 6*Y^6*r^8)
def denominator_m4_p2 (X Y z r : ℂ) : ℂ := (1)*(X - 3*z - 9)*(X + Y + z^2 + 3*z)*(X)^2*(Y - 3*z - 9)^3*(z)^4

/-- Exact rational normalization before any quadratic or splitting relation.
All denominators are guarded explicitly. -/
theorem raw_m4_p2 (X Y z r : ℂ)
    (hX : X≠0) (hz : z≠0) (hDx : X-3*z-9≠0)
    (hDy : Y-3*z-9≠0) (hDz : X+Y+z^2+3*z≠0) :
    newton_m4_p2 (zeroSide X Y z r 1)+newton_m4_p2 (zeroSide X Y z r (-1)) =
      numerator_m4_p2 X Y z r / denominator_m4_p2 X Y z r := by
  dsimp only [zeroSide,reconstructionData,newton_m4_p2,numerator_m4_p2,denominator_m4_p2]
  field_simp [hX,hz,hDx,hDy,hDz]
  <;> ring
end
#print axioms raw_m4_p2
end CriticalZeroRational20261003
