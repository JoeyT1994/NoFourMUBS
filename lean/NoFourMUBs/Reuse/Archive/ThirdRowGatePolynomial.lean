import NoFourMUBs.Reuse.Archive.ThirdRowGateConstResidual0
import NoFourMUBs.Reuse.Archive.ThirdRowGateConstResidual1
import NoFourMUBs.Reuse.Archive.ThirdRowGateLinearResidual0
import NoFourMUBs.Reuse.Archive.ThirdRowGateLinearResidual1
import NoFourMUBs.Reuse.Archive.ThirdRowGateReduction

/-! Two exact lambda polynomial identities from four checked finite remainders. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.ThirdRowGate
universe u
variable {K : Type u} [CommRing K] [IsDomain K]

theorem gram_lambda_identities (s S t T r Q z Z l0 b c : K)
    (hg : (PreRhoAlignment.gramData s S t T r Q).g ≠ 0)
    (hP0 : (PreRhoAlignment.gramData s S t T r Q).p0bar ≠ 0)
    (hP1 : (PreRhoAlignment.gramData s S t T r Q).p1 ≠ 0)
    (hP2 : (PreRhoAlignment.gramData s S t T r Q).p2 ≠ 0)
    (hsum : (PreRhoAlignment.gramData s S t T r Q).g * (z + Z) =
      (PreRhoAlignment.gramData s S t T r Q).chi)
    (hprod : z * Z = (PreRhoAlignment.gramData s S t T r Q).eta)
    (h0 : l0 * (PreRhoAlignment.gramData s S t T r Q).p0bar =
      (PreRhoAlignment.gramData s S t T r Q).g +
        (PreRhoAlignment.gramData s S t T r Q).c0 * Z)
    (h1 : b * (PreRhoAlignment.gramData s S t T r Q).p1 =
      (PreRhoAlignment.gramData s S t T r Q).g +
        (PreRhoAlignment.gramData s S t T r Q).c1 * z)
    (h2 : c * (PreRhoAlignment.gramData s S t T r Q).p2 =
      (PreRhoAlignment.gramData s S t T r Q).g +
        (PreRhoAlignment.gramData s S t T r Q).c2 * z) :
    let e := coefficients s S t T r Q
    (e.f0 + e.fu * (l0 * b) + e.fl * (l0 * z) + e.fb * (b * Z) = 0) ∧
    (e.e0 + e.eu * (l0 * b) + e.el * (l0 * z) + e.ec * c +
      e.euc * (l0 * b * c) = 0) := by
  let d := PreRhoAlignment.gramData s S t T r Q
  let e := coefficients s S t T r Q
  have hc := constant_cleared_zero d e z Z hg hsum hprod
    (constResidual0_gram_zero s S t T r Q) (constResidual1_gram_zero s S t T r Q)
  have hl := linear_cleared_zero d e z Z hg hsum hprod
    (linearResidual0_gram_zero s S t T r Q) (linearResidual1_gram_zero s S t T r Q)
  rw [constant_lambda_binding d e z Z l0 b h0 h1] at hc
  rw [linear_lambda_binding d e z Z l0 b c h0 h1 h2] at hl
  exact ⟨(mul_eq_zero.mp hc).resolve_right (mul_ne_zero hP0 hP1),
    (mul_eq_zero.mp hl).resolve_right (mul_ne_zero (mul_ne_zero hP0 hP1) hP2)⟩

#print axioms gram_lambda_identities
end StrictReconstruction20261007.ThirdRowGate

