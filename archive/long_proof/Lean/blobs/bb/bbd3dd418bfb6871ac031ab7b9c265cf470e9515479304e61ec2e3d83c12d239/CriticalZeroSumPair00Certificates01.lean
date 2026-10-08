import CriticalZeroSumPair00Data
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem pair00_certificate_04 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 4)
      (Coefficients.neg2 (pair00Cs.getD 4 [])))=true := by rfl

#print axioms pair00_certificate_04

theorem pair00_certificate_05 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 5)
      (Coefficients.neg2 (pair00Cs.getD 5 [])))=true := by rfl

#print axioms pair00_certificate_05

theorem pair00_certificate_06 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 6)
      (Coefficients.neg2 (pair00Cs.getD 6 [])))=true := by rfl

#print axioms pair00_certificate_06

theorem pair00_certificate_07 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 7)
      (Coefficients.neg2 (pair00Cs.getD 7 [])))=true := by rfl

#print axioms pair00_certificate_07
end CriticalZeroSumAssembly20261003
