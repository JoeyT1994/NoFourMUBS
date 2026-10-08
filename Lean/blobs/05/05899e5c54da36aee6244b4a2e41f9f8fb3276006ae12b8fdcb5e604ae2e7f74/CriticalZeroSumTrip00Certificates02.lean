import CriticalZeroSumTrip00Data
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem trip00_certificate_08 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 8)
      (Coefficients.neg2 (trip00Cs.getD 8 [])))=true := by rfl

#print axioms trip00_certificate_08

theorem trip00_certificate_09 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 9)
      (Coefficients.neg2 (trip00Cs.getD 9 [])))=true := by rfl

#print axioms trip00_certificate_09

theorem trip00_certificate_10 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 10)
      (Coefficients.neg2 (trip00Cs.getD 10 [])))=true := by rfl

#print axioms trip00_certificate_10

theorem trip00_certificate_11 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 11)
      (Coefficients.neg2 (trip00Cs.getD 11 [])))=true := by rfl

#print axioms trip00_certificate_11
end CriticalZeroSumAssembly20261003
