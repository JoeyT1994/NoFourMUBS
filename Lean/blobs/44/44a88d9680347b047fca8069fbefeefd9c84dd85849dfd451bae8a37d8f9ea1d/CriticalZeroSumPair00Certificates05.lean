import CriticalZeroSumPair00Data
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem pair00_certificate_20 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 20)
      (Coefficients.neg2 (pair00Cs.getD 20 [])))=true := by rfl

#print axioms pair00_certificate_20

theorem pair00_certificate_21 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 21)
      (Coefficients.neg2 (pair00Cs.getD 21 [])))=true := by rfl

#print axioms pair00_certificate_21

theorem pair00_certificate_22 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 22)
      (Coefficients.neg2 (pair00Cs.getD 22 [])))=true := by rfl

#print axioms pair00_certificate_22
end CriticalZeroSumAssembly20261003
