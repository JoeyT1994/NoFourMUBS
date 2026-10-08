import CriticalZeroLightData

set_option autoImplicit false
namespace CriticalNonzeroLight20261003
open CriticalZeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]

def h (k : F) : F := 1+k^2
def q (k : F) : F := 4/h k
def J (k : F) : F := 8*k/(h k)^2
def p (k : F) : F := 9-q k
def W (k : F) : F := q k*((q k)^2-8*q k+18)/2
def sheet (k sign : F) : F := -2*(1+sign*k)/h k
def gram (k sign : F) : F := 3*q k+sign*J k
def pole (k sign modulus : F) : F := gram k sign+(9-modulus)*sheet k sign

/-- The literal two external side constructors in one common reciprocal
gauge. All six linear inputs are signed, including the reciprocal correlation.
The sign also selects the corresponding determinant and real-sheet values.
No physical existence, conjugacy, or nonzero denominator is implicit. -/
def nonzeroSide (X Y k r sign : F) : Data F :=
  let Z := p k-X-Y
  let s := sign
  let S := sign*X
  let t := sign
  let T := sign*Y
  let rr := sign*r
  let Q := sign*((J k-r*Y)/X)
  let z := sheet k sign
  let L0 := pole k sign Z
  let L1 := pole k sign Y
  let L2 := pole k sign X
  reconstructionData s S t T rr Q z
    ((rr*s^2+Q*t^2+s*t*(3-Z))/L0)
    ((t*S^2+rr^2*T+rr*S*(3-Y))/L1)
    ((s*T^2+Q^2*S+Q*T*(3-X))/L2)
    ((Q*S^2+rr*T^2+S*T*(3-Z))/L0)
    ((T*s^2+Q^2*t+Q*s*(3-Y))/L1)
    ((S*t^2+rr^2*s+rr*t*(3-X))/L2)

end
end CriticalNonzeroLight20261003
