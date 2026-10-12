import NoFourMUBs.Reuse.Archive.CriticalReconstructionData

set_option autoImplicit false
namespace CriticalZeroRational20261003
open CriticalNewton20261003 CriticalNewtonGauge20261003
noncomputable section

/-- Literal zero-J side quotients in the normalized reciprocal gauge. Both
sides use the same z and moduli; sign is applied to all six linear inputs. -/
def zeroSide (X Y z r sign : ℂ) : Data :=
  let Z := 9-z^2-X-Y
  let s := sign
  let S := sign*X
  let t := sign
  let T := sign*Y
  let rr := sign*r
  let Q := sign*(-r*Y/X)
  let L0 := z*(X+Y+z^2+3*z)
  let L1 := -z*(Y-3*z-9)
  let L2 := -z*(X-3*z-9)
  reconstructionData s S t T rr Q z
    ((rr*s^2+Q*t^2+s*t*(3-Z))/L0)
    ((t*S^2+rr^2*T+rr*S*(3-Y))/L1)
    ((s*T^2+Q^2*S+Q*T*(3-X))/L2)
    ((Q*S^2+rr*T^2+S*T*(3-Z))/L0)
    ((T*s^2+Q^2*t+Q*s*(3-Y))/L1)
    ((S*t^2+rr^2*s+rr*t*(3-X))/L2)

end
end CriticalZeroRational20261003
