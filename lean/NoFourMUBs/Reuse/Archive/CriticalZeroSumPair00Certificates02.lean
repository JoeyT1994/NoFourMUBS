import NoFourMUBs.Reuse.Archive.CriticalZeroSumPair00Data
import NoFourMUBs.Reuse.Archive.CriticalZeroSumBinaryAtPilot
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem pair00_certificate_08 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 8)
      (Coefficients.neg2 (pair00Cs.getD 8 [])))=true := by rfl

#print axioms pair00_certificate_08

theorem pair00_certificate_09 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 9)
      (Coefficients.neg2 (pair00Cs.getD 9 [])))=true := by rfl

#print axioms pair00_certificate_09

theorem pair00_certificate_10 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 10)
      (Coefficients.neg2 (pair00Cs.getD 10 [])))=true := by exact binary_at_certificate_10

#print axioms pair00_certificate_10

theorem pair00_certificate_11 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt pair00As pair00Bs 11)
      (Coefficients.neg2 (pair00Cs.getD 11 [])))=true := by rfl

#print axioms pair00_certificate_11
end CriticalZeroSumAssembly20261003
