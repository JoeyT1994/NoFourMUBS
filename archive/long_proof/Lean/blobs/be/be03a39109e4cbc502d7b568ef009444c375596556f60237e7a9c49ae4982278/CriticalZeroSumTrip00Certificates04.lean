import CriticalZeroSumTrip00Data
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem trip00_certificate_16 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 16)
      (Coefficients.neg2 (trip00Cs.getD 16 [])))=true := by rfl

#print axioms trip00_certificate_16

theorem trip00_certificate_17 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 17)
      (Coefficients.neg2 (trip00Cs.getD 17 [])))=true := by rfl

#print axioms trip00_certificate_17

theorem trip00_certificate_18 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 18)
      (Coefficients.neg2 (trip00Cs.getD 18 [])))=true := by rfl

#print axioms trip00_certificate_18

theorem trip00_certificate_19 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 19)
      (Coefficients.neg2 (trip00Cs.getD 19 [])))=true := by rfl

#print axioms trip00_certificate_19
end CriticalZeroSumAssembly20261003
