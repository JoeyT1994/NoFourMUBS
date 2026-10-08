import ThirdRowGateDefs
import Mathlib.Tactic.LinearCombination

/-! Universal quadratic reduction; no actual reconstruction assumptions occur here. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.ThirdRowGate
universe u
variable {K : Type u} [CommRing K]

def constantCleared (d : PreRhoAlignment.Data K) (e : Coefficients K) (z Z : K) : K :=
  e.f0 * d.p0bar * d.p1 +
    e.fu * (d.g + d.c0 * Z) * (d.g + d.c1 * z) +
    e.fl * (d.g + d.c0 * Z) * z * d.p1 +
    e.fb * (d.g + d.c1 * z) * Z * d.p0bar

def linearCleared (d : PreRhoAlignment.Data K) (e : Coefficients K) (z Z : K) : K :=
  e.e0 * d.p0bar * d.p1 * d.p2 +
    e.eu * (d.g + d.c0 * Z) * (d.g + d.c1 * z) * d.p2 +
    e.el * (d.g + d.c0 * Z) * z * d.p1 * d.p2 +
    e.ec * (d.g + d.c2 * z) * d.p0bar * d.p1 +
    e.euc * (d.g + d.c0 * Z) * (d.g + d.c1 * z) * (d.g + d.c2 * z)

def constantCorrection (d : PreRhoAlignment.Data K) (e : Coefficients K) (z : K) : K :=
  e.fu * d.c0 * (d.g + d.c1 * z) + e.fl * d.c0 * z * d.p1 +
    e.fb * (d.g + d.c1 * z) * d.p0bar

def linearCorrection (d : PreRhoAlignment.Data K) (e : Coefficients K) (z : K) : K :=
  e.eu * d.c0 * (d.g + d.c1 * z) * d.p2 + e.el * d.c0 * z * d.p1 * d.p2 +
    e.euc * d.c0 * (d.g + d.c1 * z) * (d.g + d.c2 * z)

def constantQuotient (d : PreRhoAlignment.Data K) (e : Coefficients K) : K :=
  -e.fu * d.c0 * d.g * d.c1 - e.fl * d.c0 * d.g * d.p1 -
    e.fb * d.c1 * d.g * d.p0bar

def linearQuotient (d : PreRhoAlignment.Data K) (e : Coefficients K) (z : K) : K :=
  d.g * (-e.euc * d.c0 * d.g * d.c1 * d.c2) * z +
    d.g * (-e.eu * d.c0 * d.g * d.c1 * d.p2 -
      e.el * d.c0 * d.g * d.p1 * d.p2 +
      e.euc * ((d.g ^ 2 + d.c0 * d.chi) * d.c1 * d.c2 -
        d.c0 * d.g ^ 2 * (d.c1 + d.c2))) +
    d.chi * (-e.euc * d.c0 * d.g * d.c1 * d.c2)

theorem constant_reduction (d : PreRhoAlignment.Data K) (e : Coefficients K) (z Z : K) :
    d.g ^ 2 * constantCleared d e z Z =
      (d.g * z ^ 2 - d.chi * z + d.g * d.eta) * constantQuotient d e +
        d.g ^ 2 * constResidual0 d e + d.g ^ 3 * constResidual1 d e * z +
        d.g * (d.g * (z + Z) - d.chi) * constantCorrection d e z := by
  simp only [constantCleared, constantQuotient, constResidual0, constResidual1,
    constantCorrection]
  ring

#print axioms constant_reduction

theorem linear_reduction (d : PreRhoAlignment.Data K) (e : Coefficients K) (z Z : K) :
    d.g ^ 3 * linearCleared d e z Z =
      (d.g * z ^ 2 - d.chi * z + d.g * d.eta) * linearQuotient d e z +
        d.g ^ 3 * linearResidual0 d e + d.g ^ 3 * linearResidual1 d e * z +
        d.g ^ 2 * (d.g * (z + Z) - d.chi) * linearCorrection d e z := by
  simp only [linearCleared, linearQuotient, linearResidual0, linearResidual1,
    linearCorrection]
  ring

#print axioms linear_reduction

theorem constant_cleared_zero [IsDomain K] (d : PreRhoAlignment.Data K)
    (e : Coefficients K) (z Z : K) (hg : d.g ≠ 0)
    (hsum : d.g * (z + Z) = d.chi) (hprod : z * Z = d.eta)
    (h0 : constResidual0 d e = 0) (h1 : constResidual1 d e = 0) :
    constantCleared d e z Z = 0 := by
  have hquad : d.g * z ^ 2 - d.chi * z + d.g * d.eta = 0 := by
    linear_combination z * hsum - d.g * hprod
  have hz : d.g ^ 2 * constantCleared d e z Z = 0 := by
    rw [constant_reduction, hquad, hsum, h0, h1]
    ring
  exact (mul_eq_zero.mp hz).resolve_left (pow_ne_zero 2 hg)

#print axioms constant_cleared_zero

theorem linear_cleared_zero [IsDomain K] (d : PreRhoAlignment.Data K)
    (e : Coefficients K) (z Z : K) (hg : d.g ≠ 0)
    (hsum : d.g * (z + Z) = d.chi) (hprod : z * Z = d.eta)
    (h0 : linearResidual0 d e = 0) (h1 : linearResidual1 d e = 0) :
    linearCleared d e z Z = 0 := by
  have hquad : d.g * z ^ 2 - d.chi * z + d.g * d.eta = 0 := by
    linear_combination z * hsum - d.g * hprod
  have hz : d.g ^ 3 * linearCleared d e z Z = 0 := by
    rw [linear_reduction, hquad, hsum, h0, h1]
    ring
  exact (mul_eq_zero.mp hz).resolve_left (pow_ne_zero 3 hg)

#print axioms linear_cleared_zero

theorem constant_lambda_binding (d : PreRhoAlignment.Data K) (e : Coefficients K)
    (z Z l0 b : K) (h0 : l0 * d.p0bar = d.g + d.c0 * Z)
    (h1 : b * d.p1 = d.g + d.c1 * z) :
    constantCleared d e z Z =
      (e.f0 + e.fu * (l0 * b) + e.fl * (l0 * z) + e.fb * (b * Z)) *
        (d.p0bar * d.p1) := by
  unfold constantCleared
  rw [← h0, ← h1]
  ring

#print axioms constant_lambda_binding

theorem linear_lambda_binding (d : PreRhoAlignment.Data K) (e : Coefficients K)
    (z Z l0 b c : K) (h0 : l0 * d.p0bar = d.g + d.c0 * Z)
    (h1 : b * d.p1 = d.g + d.c1 * z) (h2 : c * d.p2 = d.g + d.c2 * z) :
    linearCleared d e z Z =
      (e.e0 + e.eu * (l0 * b) + e.el * (l0 * z) + e.ec * c +
        e.euc * (l0 * b * c)) * (d.p0bar * d.p1 * d.p2) := by
  unfold linearCleared
  rw [← h0, ← h1, ← h2]
  ring

#print axioms linear_lambda_binding
end StrictReconstruction20261007.ThirdRowGate

