import PreRhoNormAtoms

/-! Hard norm residual assembled from small exact factors, with no cancellation hypothesis. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007.PreRhoNorm
universe u
variable {K : Type u} [CommRing K]

theorem residual0_zero (s S t T r Q : K) :
    residual0 (gramData s S t T r Q) = 0 := by
  rw [residual0, m0_factor, mu_factor, mubar_factor]
  let d := gramData s S t T r Q
  let m := m0Reduced s S t T r Q
  let u := muReduced S T r
  let v := mubarReduced s t Q
  let L := (d.a.g ^ 2 + d.a.c0 * d.a.chi + d.a.eta * d.a.c0 * d.a.c1) * u -
    (d.a.chi + d.a.eta * d.a.c1) * d.a.b1 * d.a.p0bar -
    d.a.eta * d.a.c0 * d.a.b0bar * d.a.p1
  let R := (d.a.g ^ 2 + d.a.c1 * d.a.chi + d.a.eta * d.a.c0 * d.a.c1) * v -
    (d.a.chi + d.a.eta * d.a.c0) * d.a.b0 * d.p1bar -
    d.a.eta * d.a.c1 * d.a.b1bar * d.p0
  have hL : L = d.a.p0bar * d.a.p1 * leftQuotient s S t Q :=
    left_bracket_factor s S t T r Q
  have hR : R = d.p0 * d.p1bar * rightQuotient s S T r :=
    right_bracket_factor s S t T r Q
  have hsum : m + leftQuotient s S t Q + rightQuotient s S T r = 0 :=
    reduced_sum_zero s S t T r Q
  change d.a.c2 * m * d.a.p0bar * d.p0 * d.p1bar * d.a.p1 +
    (d.a.g ^ 2 + d.a.c0 * d.a.chi + d.a.eta * d.a.c0 * d.a.c1) *
      (d.a.c2 * u) * d.p0 * d.p1bar +
    (d.a.g ^ 2 + d.a.c1 * d.a.chi + d.a.eta * d.a.c0 * d.a.c1) *
      (d.a.c2 * v) * d.a.p0bar * d.a.p1 -
    d.a.c2 * (d.a.chi + d.a.eta * d.a.c0) * d.a.b0 *
      d.a.p0bar * d.p1bar * d.a.p1 -
    d.a.c2 * (d.a.chi + d.a.eta * d.a.c1) * d.a.b1 *
      d.a.p0bar * d.p0 * d.p1bar -
    d.a.eta * d.a.c0 * d.a.c2 * d.a.b0bar * d.p0 * d.p1bar * d.a.p1 -
    d.a.eta * d.a.c1 * d.a.c2 * d.a.b1bar * d.a.p0bar * d.p0 * d.a.p1 = 0
  calc
    _ = d.a.c2 * (d.p0 * d.p1bar * (d.a.p0bar * d.a.p1 * m + L) +
        d.a.p0bar * d.a.p1 * R) := by dsimp only [L, R]; ring
    _ = d.a.c2 * (d.a.p0bar * d.p0 * d.p1bar * d.a.p1) *
        (m + leftQuotient s S t Q + rightQuotient s S T r) := by rw [hL, hR]; ring
    _ = 0 := by rw [hsum]; ring

end StrictReconstruction20261007.PreRhoNorm

#print axioms StrictReconstruction20261007.PreRhoNorm.residual0_zero
