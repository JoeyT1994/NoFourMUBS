import CriticalZeroSumTrip00Data
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem trip00_certificate_20 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 20)
      (Coefficients.neg2 (trip00Cs.getD 20 [])))=true := by rfl

#print axioms trip00_certificate_20

theorem trip00_certificate_21 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 21)
      (Coefficients.neg2 (trip00Cs.getD 21 [])))=true := by rfl

#print axioms trip00_certificate_21

theorem trip00_certificate_22 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 22)
      (Coefficients.neg2 (trip00Cs.getD 22 [])))=true := by rfl

#print axioms trip00_certificate_22

theorem trip00_certificate_23 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 23)
      (Coefficients.neg2 (trip00Cs.getD 23 [])))=true := by rfl

#print axioms trip00_certificate_23
end CriticalZeroSumAssembly20261003
