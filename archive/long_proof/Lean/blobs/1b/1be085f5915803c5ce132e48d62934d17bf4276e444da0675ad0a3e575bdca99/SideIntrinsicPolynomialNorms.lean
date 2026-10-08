import SideIntrinsicPolynomialDefs
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
universe u
variable {K : Type u} [CommRing K]
theorem gramG_numerator (a : Rows K) : gramGN a = rowDet a * detBarN a := by
  simp only [gramGN, gramPN, gramJN, rowU, rowV, rowS, rowT, sumXbarN, sumYbarN,
    rowRN, rowQbarN, rowDet, detBarN, pairRows]
  ring

theorem gramEta_numerator (a : Rows K) : gramEtaN a = rowPerm a * permBarN a := by
  simp only [gramEtaN, gramPN, gramJN, rowU, rowV, rowS, rowT, sumXbarN, sumYbarN,
    rowRN, rowQbarN, rowPerm, permBarN, pairRows]
  ring
#print axioms gramG_numerator
#print axioms gramEta_numerator
end StrictReconstruction20261007.SideIntrinsic
