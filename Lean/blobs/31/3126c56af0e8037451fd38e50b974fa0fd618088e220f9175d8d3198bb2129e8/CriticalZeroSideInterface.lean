import CriticalRationalSideData
import CriticalZeroRationalData

set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace CriticalNewtonGauge20261003
open CriticalZeroRational20261003
noncomputable section

/-- The zero-J scalar constructor uses exactly the general rational side once
the physical product rQ=Z is supplied. Both literal signs are retained. -/
theorem rationalSide_signed_eq_zeroSide (X Y z r sign : ℂ)
    (hsign : sign^2=1) (hprod : r*(-r*Y/X)=9-z^2-X-Y) :
    rationalSide sign (sign*X) sign (sign*Y) (sign*r) (sign*(-r*Y/X)) z (3*z^2) =
      zeroSide X Y z r sign := by
  have hX : sign*(sign*X)=X := by calc
    sign*(sign*X)=sign^2*X := by ring
    _=X := by rw [hsign,one_mul]
  have hY : sign*(sign*Y)=Y := by calc
    sign*(sign*Y)=sign^2*Y := by ring
    _=Y := by rw [hsign,one_mul]
  have hZ : (sign*r)*(sign*(-r*Y/X))=9-z^2-X-Y := by calc
    (sign*r)*(sign*(-r*Y/X))=sign^2*(r*(-r*Y/X)) := by ring
    _=9-z^2-X-Y := by rw [hsign,one_mul,hprod]
  have h0 : 3*z^2+(9-(9-z^2-X-Y))*z=z*(X+Y+z^2+3*z) := by ring
  have h1 : 3*z^2+(9-Y)*z= -z*(Y-3*z-9) := by ring
  have h2 : 3*z^2+(9-X)*z= -z*(X-3*z-9) := by ring
  dsimp only [rationalSide,zeroSide,rationalNumerator,rationalConumerator,rationalDenominator]
  rw [hX,hY,hZ,h0,h1,h2]

end
#print axioms rationalSide_signed_eq_zeroSide
end CriticalNewtonGauge20261003
