import CriticalZeroSumExprCommonData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector
theorem denominator_certificate_00 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 0 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_00
theorem denominator_certificate_01 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 1 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_01
theorem denominator_certificate_02 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 2 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_02
theorem denominator_certificate_03 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 3 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_03
theorem denominator_certificate_04 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 4 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_04
theorem denominator_certificate_05 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 5 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_05
theorem denominator_certificate_06 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 6 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_06
theorem denominator_certificate_07 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 7 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_07
theorem denominator_certificate_08 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 8 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_08
theorem denominator_certificate_09 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 9 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_09
theorem denominator_certificate_10 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 10 (.lit 0)))=true := by rfl
#print axioms denominator_certificate_10
end CriticalZeroSumAssembly20261003
