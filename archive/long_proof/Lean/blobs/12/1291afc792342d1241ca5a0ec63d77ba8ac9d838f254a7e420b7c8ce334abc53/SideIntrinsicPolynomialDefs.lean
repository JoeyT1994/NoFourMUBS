import Mathlib.Tactic.Ring

/-! Denominator-cleared six-phase formulas for the normalized side (1;x;y).
These are literal polynomial lifts of verify_invariants.py and
verify_side_fiber.py; conjugate numerators use complementary row products.
No unit, nonzero, orientation, or chart premise occurs in this module. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
universe u
structure Rows (K : Type u) where
  x0 : K
  x1 : K
  x2 : K
  y0 : K
  y1 : K
  y2 : K
variable {K : Type u} [CommRing K]
def rowU (a : Rows K) : K := a.x0 * a.x1 * a.x2
def rowV (a : Rows K) : K := a.y0 * a.y1 * a.y2
def rowS (a : Rows K) : K := a.x0 + a.x1 + a.x2
def rowT (a : Rows K) : K := a.y0 + a.y1 + a.y2
def sumXbarN (a : Rows K) : K := a.x1*a.x2 + a.x0*a.x2 + a.x0*a.x1
def sumYbarN (a : Rows K) : K := a.y1*a.y2 + a.y0*a.y2 + a.y0*a.y1
def rowRN (a : Rows K) : K :=
  a.y0*a.x1*a.x2 + a.y1*a.x0*a.x2 + a.y2*a.x0*a.x1
def rowQbarN (a : Rows K) : K :=
  a.x0*a.y1*a.y2 + a.x1*a.y0*a.y2 + a.x2*a.y0*a.y1

def rowDet (a : Rows K) : K :=
  a.x1*a.y2 + a.x2*a.y0 + a.x0*a.y1 - a.x2*a.y1 - a.x0*a.y2 - a.x1*a.y0
def rowPerm (a : Rows K) : K :=
  a.x1*a.y2 + a.x2*a.y0 + a.x0*a.y1 + a.x2*a.y1 + a.x0*a.y2 + a.x1*a.y0

def pairRows (a : Rows K) : Rows K :=
  ⟨a.x1*a.x2, a.x0*a.x2, a.x0*a.x1, a.y1*a.y2, a.y0*a.y2, a.y0*a.y1⟩
def detBarN (a : Rows K) : K := rowDet (pairRows a)
def permBarN (a : Rows K) : K := rowPerm (pairRows a)

def gramPN (a : Rows K) : K :=
  rowS a * sumXbarN a * rowV a + rowT a * sumYbarN a * rowU a + rowRN a * rowQbarN a
def gramJN (a : Rows K) : K :=
  rowS a * rowRN a * sumYbarN a + sumXbarN a * rowQbarN a * rowT a
def gramGN (a : Rows K) : K := 27 * rowU a * rowV a - 3 * gramPN a + gramJN a
def gramEtaN (a : Rows K) : K := 9 * rowU a * rowV a - gramPN a + gramJN a

def gramWN (a : Rows K) : K :=
  rowS a * sumXbarN a * rowT a * sumYbarN a * rowU a * rowV a +
  rowS a * sumXbarN a * rowRN a * rowQbarN a * rowV a +
  rowT a * sumYbarN a * rowRN a * rowQbarN a * rowU a -
  rowS a * sumXbarN a * rowT a * sumYbarN a * rowRN a * rowQbarN a
def gramChiN (a : Rows K) : K :=
  gramWN a - (gramPN a - 9*rowU a*rowV a)*(gramPN a - 18*rowU a*rowV a) +
    (gramPN a - 15*rowU a*rowV a)*gramJN a

def c0N (a : Rows K) : K := 9*rowU a*rowV a - rowRN a*rowQbarN a
def c1N (a : Rows K) : K := 9*rowV a - rowT a*sumYbarN a
def c2N (a : Rows K) : K := 9*rowU a - rowS a*sumXbarN a

def p0barN (a : Rows K) : K :=
  rowQbarN a * sumXbarN a ^ 2 * rowV a + rowRN a * sumYbarN a ^ 2 * rowU a +
  (3*rowU a*rowV a - rowRN a*rowQbarN a)*sumXbarN a*sumYbarN a
def p1barN (a : Rows K) : K :=
  sumYbarN a * rowS a ^ 2 * rowV a + rowQbarN a ^ 2 * rowT a +
  (3*rowV a - rowT a*sumYbarN a)*rowQbarN a*rowS a
def p2barN (a : Rows K) : K :=
  sumXbarN a * rowT a ^ 2 * rowU a + rowRN a ^ 2 * rowS a +
  (3*rowU a - rowS a*sumXbarN a)*rowRN a*rowT a
end StrictReconstruction20261007.SideIntrinsic
