import CriticalReconstructionData

set_option autoImplicit false
namespace CriticalNewtonGauge20261003
open CriticalNewton20261003
noncomputable section

/-- The three literal numerators from the external side constructor, with
capital letters interpreted as reciprocal data. -/
def rationalNumerator (s S t T r Q : ℂ) : Fin 3 → ℂ :=
  ![r*s^2+Q*t^2+s*t*(3-r*Q),
    t*S^2+r^2*T+r*S*(3-t*T),
    s*T^2+Q^2*S+Q*T*(3-s*S)]

def rationalConumerator (s S t T r Q : ℂ) : Fin 3 → ℂ :=
  ![Q*S^2+r*T^2+S*T*(3-r*Q),
    T*s^2+Q^2*t+Q*s*(3-t*T),
    S*t^2+r^2*s+r*t*(3-s*S)]

def rationalDenominator (s S t T r Q z g : ℂ) : Fin 3 → ℂ :=
  ![g+(9-r*Q)*z,g+(9-t*T)*z,g+(9-s*S)*z]

/-- Literal rational P/L and B/L constructor. The definition has no hidden
nonzero assumptions; every theorem recovering an actual side states its guards. -/
def rationalSide (s S t T r Q z g : ℂ) : Data :=
  let P := rationalNumerator s S t T r Q
  let B := rationalConumerator s S t T r Q
  let L := rationalDenominator s S t T r Q z g
  reconstructionData s S t T r Q z
    (P 0/L 0) (P 1/L 1) (P 2/L 2)
    (B 0/L 0) (B 1/L 1) (B 2/L 2)

end
end CriticalNewtonGauge20261003
