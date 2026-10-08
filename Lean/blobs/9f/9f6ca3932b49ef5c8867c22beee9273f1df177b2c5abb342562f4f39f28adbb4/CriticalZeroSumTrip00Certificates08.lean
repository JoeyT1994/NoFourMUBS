import CriticalZeroSumTrip00Data
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem trip00_certificate_32 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 32)
      (Coefficients.neg2 (trip00Cs.getD 32 [])))=true := by rfl

#print axioms trip00_certificate_32

theorem trip00_certificate_33 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 33)
      (Coefficients.neg2 (trip00Cs.getD 33 [])))=true := by rfl

#print axioms trip00_certificate_33

theorem trip00_certificate_34 :
    IntegerReflector.zeroII (Coefficients.add2 (CoefficientAt.mulAt trip00As trip00Bs 34)
      (Coefficients.neg2 (trip00Cs.getD 34 [])))=true := by rfl

#print axioms trip00_certificate_34
end CriticalZeroSumAssembly20261003
