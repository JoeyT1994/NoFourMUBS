import NoFourMUBs.Step2.CriticalZero.CommonGroup10

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003

theorem group10_coefficient_02 :
    IntegerReflector.zeroII (group10DenseResidual.getD 2 []) = true := by
  rfl

end CriticalZeroSumAssembly20261003
