import SideIntrinsicPolynomialDefs
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
universe u
variable {K : Type u} [CommRing K]
/-- Exact signed permanent/determinant invariant, with only the unit-row
monomial denominator cleared. It remains valid when determinant or permanent vanish. -/
theorem gramChi_numerator (a : Rows K) :
    gramChiN a + rowU a * rowV a * rowPerm a * rowDet a ^ 2 +
      permBarN a * detBarN a ^ 2 = 0 := by
  simp only [gramChiN, gramWN, gramPN, gramJN, rowU, rowV, rowS, rowT,
    rowRN, rowQbarN, sumXbarN, sumYbarN, rowPerm, rowDet, permBarN, detBarN, pairRows]
  ring
#print axioms gramChi_numerator
end StrictReconstruction20261007.SideIntrinsic
