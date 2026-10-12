import NoFourMUBs.Reuse.Archive.SideIntrinsicPolynomialDefs
import NoFourMUBs.Reuse.Archive.PreRhoAlignmentDefs
import Mathlib.Tactic.FieldSimp

/-! Exact denominator accounting with six phase monomials left as atoms. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
universe u
variable {K : Type u} [Field K]

def fractionData (a : Rows K) : PreRhoAlignment.Data K :=
  PreRhoAlignment.gramData (rowS a) (sumXbarN a / rowU a)
    (rowT a) (sumYbarN a / rowV a) (rowRN a / rowU a) (rowQbarN a / rowV a)
def conjugateFractionData (a : Rows K) : PreRhoAlignment.Data K :=
  PreRhoAlignment.gramData (sumXbarN a / rowU a) (rowS a)
    (sumYbarN a / rowV a) (rowT a) (rowQbarN a / rowV a) (rowRN a / rowU a)

theorem fraction_scalar_numerators (a : Rows K) (hu : rowU a ≠ 0) (hv : rowV a ≠ 0) :
    (fractionData a).g * (rowU a * rowV a) = gramGN a ∧
    (fractionData a).eta * (rowU a * rowV a) = gramEtaN a ∧
    (fractionData a).chi * (rowU a * rowV a)^2 = gramChiN a := by
  refine ⟨?_,?_,?_⟩ <;>
    simp only [fractionData, PreRhoAlignment.gramData, gramGN, gramEtaN,
      gramChiN, gramWN, gramPN, gramJN] <;>
    field_simp [hu,hv] <;> ring

#print axioms fraction_scalar_numerators

theorem fraction_lambda_numerators (a : Rows K) (hu : rowU a ≠ 0) (hv : rowV a ≠ 0) :
    (fractionData a).c0 * (rowU a * rowV a) = c0N a ∧
    (fractionData a).c1 * rowV a = c1N a ∧
    (fractionData a).c2 * rowU a = c2N a ∧
    (fractionData a).p0bar * (rowU a * rowV a)^2 = p0barN a ∧
    (conjugateFractionData a).p1 * rowV a^2 = p1barN a ∧
    (conjugateFractionData a).p2 * rowU a^2 = p2barN a := by
  refine ⟨?_,?_,?_,?_,?_,?_⟩ <;>
    simp only [fractionData, conjugateFractionData, PreRhoAlignment.gramData,
      c0N, c1N, c2N, p0barN, p1barN, p2barN] <;>
    field_simp [hu,hv] <;> ring

#print axioms fraction_lambda_numerators
end StrictReconstruction20261007.SideIntrinsic
