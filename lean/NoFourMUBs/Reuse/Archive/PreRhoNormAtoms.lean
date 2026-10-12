import NoFourMUBs.Reuse.Archive.PreRhoNormDefs

/-! Small norm-certificate atoms. They avoid expanding four-P products. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007.PreRhoNorm
universe u
variable {K : Type u} [CommRing K]

def m0Reduced (s S t T r Q : K) : K :=
  2 * (2 * (s * S) ^ 2 + 18 * (s * S) + (3 - s * S) * (s * r * T + S * Q * t))
def muReduced (S T r : K) : K := 4 * S ^ 2 * (r * T - 3 * S)
def mubarReduced (s t Q : K) : K := 4 * s ^ 2 * (Q * t - 3 * s)
def leftQuotient (s S t Q : K) : K :=
  -2 * (s * S) ^ 2 - 18 * (s * S) + 2 * (s * S - 3) * S * Q * t
def rightQuotient (s S T r : K) : K :=
  -2 * (s * S) ^ 2 - 18 * (s * S) + 2 * (s * S - 3) * s * r * T

theorem m0_factor (s S t T r Q : K) :
    m0 (gramData s S t T r Q) =
      (gramData s S t T r Q).a.c2 * m0Reduced s S t T r Q := by
  simp only [m0, m0Reduced, gramData, PreRhoAlignment.gramData]
  ring

theorem mu_factor (s S t T r Q : K) :
    mu (gramData s S t T r Q) =
      (gramData s S t T r Q).a.c2 * muReduced S T r := by
  simp only [mu, muReduced, gramData, PreRhoAlignment.gramData]
  ring

theorem mubar_factor (s S t T r Q : K) :
    mubar (gramData s S t T r Q) =
      (gramData s S t T r Q).a.c2 * mubarReduced s t Q := by
  simp only [mubar, mubarReduced, gramData, PreRhoAlignment.gramData]
  ring

theorem left_bracket_factor (s S t T r Q : K) :
    let d := gramData s S t T r Q
    (d.a.g ^ 2 + d.a.c0 * d.a.chi + d.a.eta * d.a.c0 * d.a.c1) * muReduced S T r -
      (d.a.chi + d.a.eta * d.a.c1) * d.a.b1 * d.a.p0bar -
      d.a.eta * d.a.c0 * d.a.b0bar * d.a.p1 =
      d.a.p0bar * d.a.p1 * leftQuotient s S t Q := by
  simp only [muReduced, leftQuotient, gramData, PreRhoAlignment.gramData]
  ring

theorem right_bracket_factor (s S t T r Q : K) :
    let d := gramData s S t T r Q
    (d.a.g ^ 2 + d.a.c1 * d.a.chi + d.a.eta * d.a.c0 * d.a.c1) * mubarReduced s t Q -
      (d.a.chi + d.a.eta * d.a.c0) * d.a.b0 * d.p1bar -
      d.a.eta * d.a.c1 * d.a.b1bar * d.p0 =
      d.p0 * d.p1bar * rightQuotient s S T r := by
  simp only [mubarReduced, rightQuotient, gramData, PreRhoAlignment.gramData]
  ring

theorem reduced_sum_zero (s S t T r Q : K) :
    m0Reduced s S t T r Q + leftQuotient s S t Q + rightQuotient s S T r = 0 := by
  simp only [m0Reduced, leftQuotient, rightQuotient]
  ring

end StrictReconstruction20261007.PreRhoNorm

#print axioms StrictReconstruction20261007.PreRhoNorm.m0_factor
#print axioms StrictReconstruction20261007.PreRhoNorm.mu_factor
#print axioms StrictReconstruction20261007.PreRhoNorm.mubar_factor
#print axioms StrictReconstruction20261007.PreRhoNorm.left_bracket_factor
#print axioms StrictReconstruction20261007.PreRhoNorm.right_bracket_factor
#print axioms StrictReconstruction20261007.PreRhoNorm.reduced_sum_zero
