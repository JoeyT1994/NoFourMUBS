import CriticalZeroSumTrip00Data
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem trip00_certificate_28 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 28)
      (Coefficients.neg2 (trip00Cs.getD 28 [])))=true := by rfl

#print axioms trip00_certificate_28

theorem trip00_certificate_29 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 29)
      (Coefficients.neg2 (trip00Cs.getD 29 [])))=true := by rfl

#print axioms trip00_certificate_29

theorem trip00_certificate_30 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 30)
      (Coefficients.neg2 (trip00Cs.getD 30 [])))=true := by rfl

#print axioms trip00_certificate_30

theorem trip00_certificate_31 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 31)
      (Coefficients.neg2 (trip00Cs.getD 31 [])))=true := by rfl

#print axioms trip00_certificate_31
end CriticalZeroSumAssembly20261003
