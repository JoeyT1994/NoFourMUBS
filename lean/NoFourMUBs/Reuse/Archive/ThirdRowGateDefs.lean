import NoFourMUBs.Reuse.Archive.PreRhoAlignmentDefs

/-! Factored finite polynomials for the supplied third-row phase gate. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.ThirdRowGate
universe u
variable {K : Type u} [CommRing K]

structure Coefficients (K : Type u) where
  f0 : K
  fu : K
  fl : K
  fb : K
  e0 : K
  eu : K
  el : K
  ec : K
  euc : K

def coefficients (s S t T r Q : K) : Coefficients K :=
  let d := PreRhoAlignment.gramData s S t T r Q
  let X := s * S
  let n := 9 - X
  let k := 3 * r - t * S
  let Kb := 3 * Q - T * s
  let B := s * r - 3 * t
  let C := 3 * T - S * Q
  let H := s * d.g - Kb * B
  { f0 := s * (9 + X) + (3 - X) * t * Q
    fu := 2 * S * T * r - 6 * S ^ 2
    fl := S * Q - 3 * T
    fb := S * t - 3 * r
    e0 := 2 * s * Kb * B ^ 2
    eu := 2 * S * k * H + d.g * (n * k - 6 * S * B)
    el := -n * H
    ec := -2 * d.g * Kb * s ^ 2
    euc := d.g * (n * C + 6 * Kb * S) }

def constResidual0 (d : PreRhoAlignment.Data K) (e : Coefficients K) : K :=
  e.f0 * d.p0bar * d.p1 +
    e.fu * (d.g ^ 2 + d.c0 * d.chi + d.eta * d.c0 * d.c1) +
    e.fl * d.eta * d.c0 * d.p1 +
    e.fb * (d.chi + d.eta * d.c1) * d.p0bar

def constResidual1 (d : PreRhoAlignment.Data K) (e : Coefficients K) : K :=
  e.fu * (d.c1 - d.c0) + e.fl * d.p1 - e.fb * d.p0bar

def linearResidual0 (d : PreRhoAlignment.Data K) (e : Coefficients K) : K :=
  e.e0 * d.p0bar * d.p1 * d.p2 +
    e.eu * (d.g ^ 2 + d.c0 * d.chi + d.eta * d.c0 * d.c1) * d.p2 +
    e.el * d.eta * d.c0 * d.p1 * d.p2 +
    e.ec * d.g * d.p0bar * d.p1 +
    e.euc * d.g * (d.g ^ 2 + d.c0 * d.chi - d.eta * d.c1 * d.c2 +
      d.eta * d.c0 * (d.c1 + d.c2))

def linearResidual1 (d : PreRhoAlignment.Data K) (e : Coefficients K) : K :=
  e.eu * d.g * (d.c1 - d.c0) * d.p2 + e.el * d.g * d.p1 * d.p2 +
    e.ec * d.c2 * d.p0bar * d.p1 +
    e.euc * (d.g ^ 2 * (d.c1 + d.c2 - d.c0) + d.chi * d.c1 * d.c2 +
      d.eta * d.c0 * d.c1 * d.c2)

end StrictReconstruction20261007.ThirdRowGate

