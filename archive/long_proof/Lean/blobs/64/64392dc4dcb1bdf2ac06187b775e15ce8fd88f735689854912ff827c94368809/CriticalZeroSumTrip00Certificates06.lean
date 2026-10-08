import CriticalZeroSumTrip00Data
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem trip00_certificate_24 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 24)
      (Coefficients.neg2 (trip00Cs.getD 24 [])))=true := by rfl

#print axioms trip00_certificate_24

theorem trip00_certificate_25 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 25)
      (Coefficients.neg2 (trip00Cs.getD 25 [])))=true := by rfl

#print axioms trip00_certificate_25

theorem trip00_certificate_26 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 26)
      (Coefficients.neg2 (trip00Cs.getD 26 [])))=true := by rfl

#print axioms trip00_certificate_26

theorem trip00_certificate_27 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 27)
      (Coefficients.neg2 (trip00Cs.getD 27 [])))=true := by rfl

#print axioms trip00_certificate_27
end CriticalZeroSumAssembly20261003
