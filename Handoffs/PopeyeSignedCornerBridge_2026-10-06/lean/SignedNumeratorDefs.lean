import SignedDeterminantFoundation

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate
noncomputable section

def pComplex (s t r : ℂ) := s*conj s+t*conj t+r*conj r
def jComplex (s t r : ℂ) := s*r*conj t+conj s*conj r*t
def wComplex (s t r : ℂ) :=
  (s*conj s)*(t*conj t)+(s*conj s)*(r*conj r)+(t*conj t)*(r*conj r)-
    (s*conj s)*(t*conj t)*(r*conj r)
def denominator (a b c d : ℂ) := a*b*c*d

def xNum (a b c d : ℂ) : ℂ := 0
  + b*c*d
  + b^2*c*d
  + a*c*d
  + 3*a*b*c*d
  + a*b^2*c*d
  + a^2*c*d
  + a^2*b*c*d

def yNum (a b c d : ℂ) : ℂ := 0
  + a*b*d
  + a*b*d^2
  + a*b*c
  + 3*a*b*c*d
  + a*b*c*d^2
  + a*b*c^2
  + a*b*c^2*d

def zNum (a b c d : ℂ) : ℂ := 0
  + b*c^2*d
  + b^2*c^2
  + a*c*d^2
  + 3*a*b*c*d
  + a*b^2*c
  + a^2*d^2
  + a^2*b*d

def pNum (a b c d : ℂ) : ℂ := 0
  + b*c*d
  + b*c^2*d
  + b^2*c*d
  + b^2*c^2
  + a*c*d
  + a*c*d^2
  + a*b*d
  + a*b*d^2
  + a*b*c
  + 9*a*b*c*d
  + a*b*c*d^2
  + a*b*c^2
  + a*b*c^2*d
  + a*b^2*c
  + a*b^2*c*d
  + a^2*d^2
  + a^2*c*d
  + a^2*b*d
  + a^2*b*c*d

def jNum (a b c d : ℂ) : ℂ := 0
  - 2*b*c*d
  - b*c*d^2
  - b*c^2
  - 2*b*c^2*d
  - b^2*c
  - 2*b^2*c*d
  - 2*b^2*c^2
  - b^2*c^2*d
  - a*d^2
  - 2*a*c*d
  - 2*a*c*d^2
  - a*c^2*d
  - 2*a*b*d
  - 2*a*b*d^2
  - 2*a*b*c
  - 6*a*b*c*d
  - 2*a*b*c*d^2
  - 2*a*b*c^2
  - 2*a*b*c^2*d
  - a*b^2*d
  - 2*a*b^2*c
  - 2*a*b^2*c*d
  - a*b^2*c^2
  - a^2*d
  - 2*a^2*d^2
  - 2*a^2*c*d
  - a^2*c*d^2
  - 2*a^2*b*d
  - a^2*b*d^2
  - a^2*b*c
  - 2*a^2*b*c*d

def gNum0 (a b c : ℂ) : ℂ := 0
  + b*c^2
  + b^2*c
  - b^2*c^2
  - a*b*c
  - a*b*c^2
  - a*b^2*c
  + a*b^2*c^2
  + a^2*b*c

def gNum1 (a b c : ℂ) : ℂ := 0
  - b*c
  - b*c^2
  - b^2*c
  + b^2*c^2
  - a*c
  + a*c^2
  - a*b
  + 6*a*b*c
  - a*b*c^2
  + a*b^2
  - a*b^2*c
  + a^2
  - a^2*c
  - a^2*b
  - a^2*b*c

def gNum2 (a b c : ℂ) : ℂ := 0
  + b*c
  + a
  - a*c
  - a*b
  - a*b*c
  - a^2
  + a^2*c
  + a^2*b

def gNum (a b c d : ℂ) : ℂ := gNum0 a b c + gNum1 a b c*d + gNum2 a b c*d^2

def eNum0 (a b c : ℂ) : ℂ := 0
  + b*c^2
  + b^2*c
  + b^2*c^2
  + a*b*c
  + a*b*c^2
  + a*b^2*c
  + a*b^2*c^2
  + a^2*b*c

def eNum1 (a b c : ℂ) : ℂ := 0
  + b*c
  + b*c^2
  + b^2*c
  + b^2*c^2
  + a*c
  + a*c^2
  + a*b
  + 6*a*b*c
  + a*b*c^2
  + a*b^2
  + a*b^2*c
  + a^2
  + a^2*c
  + a^2*b
  + a^2*b*c

def eNum2 (a b c : ℂ) : ℂ := 0
  + b*c
  + a
  + a*c
  + a*b
  + a*b*c
  + a^2
  + a^2*c
  + a^2*b

def eNum (a b c d : ℂ) : ℂ := eNum0 a b c + eNum1 a b c*d + eNum2 a b c*d^2

def cNum0 (a b c : ℂ) : ℂ := 0
  - b^3*c^3
  + a*b^3*c^3
  + a^2*b^3*c^3
  - a^3*b^3*c^3

def cNum1 (a b c : ℂ) : ℂ := 0
  + b^3*c^3
  - a*b*c^4
  + a*b^2*c^2
  - 6*a*b^2*c^3
  + a*b^2*c^4
  - 6*a*b^3*c^2
  + 4*a*b^3*c^3
  + a*b^3*c^4
  - a*b^4*c
  + a*b^4*c^2
  + a*b^4*c^3
  - a*b^4*c^4
  + a^2*b*c^3
  + 4*a^2*b^2*c^2
  + 4*a^2*b^2*c^3
  + a^2*b^3*c
  + 4*a^2*b^3*c^2
  - 6*a^2*b^3*c^3
  + a^3*b*c^2
  + a^3*b^2*c
  - 6*a^3*b^2*c^2
  + a^3*b^2*c^3
  + a^3*b^3*c^2
  - a^4*b*c

def cNum2 (a b c : ℂ) : ℂ := 0
  + b^3*c^3
  + a*b*c^3
  + 4*a*b^2*c^2
  + 4*a*b^2*c^3
  + a*b^3*c
  + 4*a*b^3*c^2
  - 6*a*b^3*c^3
  + a^2*b*c
  + 4*a^2*b*c^2
  - 6*a^2*b*c^3
  + 4*a^2*b^2*c
  - 24*a^2*b^2*c^2
  + 4*a^2*b^2*c^3
  - 6*a^2*b^3*c
  + 4*a^2*b^3*c^2
  + a^2*b^3*c^3
  - 6*a^3*b*c
  + 4*a^3*b*c^2
  + a^3*b*c^3
  + 4*a^3*b^2*c
  + 4*a^3*b^2*c^2
  + a^3*b^3*c
  + a^4*b*c

def cNum3 (a b c : ℂ) : ℂ := 0
  - b^3*c^3
  + a*b*c^2
  + a*b^2*c
  - 6*a*b^2*c^2
  + a*b^2*c^3
  + a*b^3*c^2
  - 6*a^2*b*c
  + 4*a^2*b*c^2
  + a^2*b*c^3
  + 4*a^2*b^2*c
  + 4*a^2*b^2*c^2
  + a^2*b^3*c
  - a^3
  + a^3*c
  + a^3*c^2
  - a^3*c^3
  + a^3*b
  + 4*a^3*b*c
  - 6*a^3*b*c^2
  + a^3*b^2
  - 6*a^3*b^2*c
  + a^3*b^2*c^2
  - a^3*b^3
  + a^4*b*c

def cNum4 (a b c : ℂ) : ℂ := 0
  - a*b*c
  + a^2*b*c
  + a^3*b*c
  - a^4*b*c

def cNum (a b c d : ℂ) : ℂ := cNum0 a b c + cNum1 a b c*d + cNum2 a b c*d^2 + cNum3 a b c*d^3 + cNum4 a b c*d^4

def dNum0 (a b c : ℂ) : ℂ := 0
  - b^3*c^3
  + a*b^3*c^3
  + a^2*b^3*c^3
  - a^3*b^3*c^3

def dNum1 (a b c : ℂ) : ℂ := 0
  + b^3*c^3
  + a*b*c^4
  + a*b^2*c^2
  - a*b^2*c^4
  - a*b^3*c^4
  + a*b^4*c
  - a*b^4*c^2
  - a*b^4*c^3
  + a*b^4*c^4
  - a^2*b*c^3
  - a^2*b^3*c
  - a^3*b*c^2
  - a^3*b^2*c
  + a^3*b^2*c^3
  + a^3*b^3*c^2
  + a^4*b*c

def dNum2 (a b c : ℂ) : ℂ := 0
  + b^3*c^3
  - a*b*c^3
  - a*b^3*c
  + a^2*b*c
  - a^2*b^3*c^3
  + a^3*b*c^3
  + a^3*b^3*c
  - a^4*b*c

def dNum3 (a b c : ℂ) : ℂ := 0
  - b^3*c^3
  - a*b*c^2
  - a*b^2*c
  + a*b^2*c^3
  + a*b^3*c^2
  + a^2*b*c^3
  + a^2*b^3*c
  - a^3
  + a^3*c
  + a^3*c^2
  - a^3*c^3
  + a^3*b
  + a^3*b^2
  - a^3*b^2*c^2
  - a^3*b^3
  - a^4*b*c

def dNum4 (a b c : ℂ) : ℂ := 0
  + a*b*c
  - a^2*b*c
  - a^3*b*c
  + a^4*b*c

def dNum (a b c d : ℂ) : ℂ := dNum0 a b c + dNum1 a b c*d + dNum2 a b c*d^2 + dNum3 a b c*d^3 + dNum4 a b c*d^4

end
end Centiradian20261006.SignedDeterminant
