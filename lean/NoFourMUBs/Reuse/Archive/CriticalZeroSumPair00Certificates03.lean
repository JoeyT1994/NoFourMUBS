import NoFourMUBs.Reuse.Archive.CriticalZeroSumPair00Data
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem pair00_certificate_12 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 12)
      (Coefficients.neg2 (pair00Cs.getD 12 [])))=true := by rfl

#print axioms pair00_certificate_12

theorem pair00_certificate_13 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 13)
      (Coefficients.neg2 (pair00Cs.getD 13 [])))=true := by rfl

#print axioms pair00_certificate_13

theorem pair00_certificate_14 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 14)
      (Coefficients.neg2 (pair00Cs.getD 14 [])))=true := by rfl

#print axioms pair00_certificate_14

theorem pair00_certificate_15 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 15)
      (Coefficients.neg2 (pair00Cs.getD 15 [])))=true := by rfl

#print axioms pair00_certificate_15
end CriticalZeroSumAssembly20261003
