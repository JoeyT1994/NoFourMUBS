import NoFourMUBs.Reuse.Archive.CriticalZeroSumPair00Data
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem pair00_certificate_00 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 0)
      (Coefficients.neg2 (pair00Cs.getD 0 [])))=true := by rfl

#print axioms pair00_certificate_00

theorem pair00_certificate_01 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 1)
      (Coefficients.neg2 (pair00Cs.getD 1 [])))=true := by rfl

#print axioms pair00_certificate_01

theorem pair00_certificate_02 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 2)
      (Coefficients.neg2 (pair00Cs.getD 2 [])))=true := by rfl

#print axioms pair00_certificate_02

theorem pair00_certificate_03 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 3)
      (Coefficients.neg2 (pair00Cs.getD 3 [])))=true := by rfl

#print axioms pair00_certificate_03
end CriticalZeroSumAssembly20261003
