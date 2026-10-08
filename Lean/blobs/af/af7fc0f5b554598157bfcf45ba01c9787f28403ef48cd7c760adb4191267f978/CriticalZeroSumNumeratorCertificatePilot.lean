import CriticalZeroSumExprCommonData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector

/-- Closed integer equality for a large middle coefficient. -/
theorem numerator_certificate_10 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (numeratorExprResidual.getD 10 (.lit 0)))=true := by
  rfl

#print axioms numerator_certificate_10
end CriticalZeroSumAssembly20261003
