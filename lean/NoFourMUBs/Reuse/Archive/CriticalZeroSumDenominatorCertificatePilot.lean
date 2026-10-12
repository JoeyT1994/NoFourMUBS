import NoFourMUBs.Reuse.Archive.CriticalZeroSumExprCommonData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector

/-- Closed integer equality, checked by kernel reduction. -/
theorem denominator_certificate_22 :
    IntegerReflector.zeroII
      (HornerReflector.normalize (denominatorExprResidual.getD 22 (.lit 0)))=true := by
  rfl

#print axioms denominator_certificate_22
end CriticalZeroSumAssembly20261003
