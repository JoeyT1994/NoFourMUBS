import SideIntrinsicPolynomialDefs
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
universe u
variable {K : Type u} [CommRing K]
theorem lambda0_numerator (a : Rows K) :
    rowU a * rowV a * rowDet a ^ 2 - c0N a * permBarN a + p0barN a = 0 := by
  simp only [rowU, rowV, rowDet, c0N, permBarN, rowPerm, pairRows, p0barN,
    rowRN, rowQbarN, sumXbarN, sumYbarN]
  ring

theorem lambda1_numerator (a : Rows K) :
    rowV a * rowDet a ^ 2 - c1N a * permBarN a + p1barN a = 0 := by
  simp only [rowU, rowV, rowDet, c1N, permBarN, rowPerm, pairRows, p1barN,
    rowS, rowT, rowRN, rowQbarN, sumXbarN, sumYbarN]
  ring

theorem lambda2_numerator (a : Rows K) :
    rowU a * rowDet a ^ 2 - c2N a * permBarN a + p2barN a = 0 := by
  simp only [rowU, rowV, rowDet, c2N, permBarN, rowPerm, pairRows, p2barN,
    rowS, rowT, rowRN, rowQbarN, sumXbarN, sumYbarN]
  ring
#print axioms lambda0_numerator
#print axioms lambda1_numerator
#print axioms lambda2_numerator
end StrictReconstruction20261007.SideIntrinsic
