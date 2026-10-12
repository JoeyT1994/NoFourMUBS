import NoFourMUBs.Step2.CriticalZero.CommonGroup02

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003

theorem group02_coefficient_23 :
    IntegerReflector.zeroII (group02DenseResidual.getD 23 []) = true := by
  rfl

end CriticalZeroSumAssembly20261003
