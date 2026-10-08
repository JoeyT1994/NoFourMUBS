import CriticalZeroSumNumeratorGroupData00
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector

theorem numerator_group_00_certificate_10 :
    IntegerReflector.zeroII (HornerReflector.normalize
      (numeratorGroupResidual_00.getD 10 (.lit 0)))=true := by rfl
#print axioms numerator_group_00_certificate_10
end CriticalZeroSumAssembly20261003
