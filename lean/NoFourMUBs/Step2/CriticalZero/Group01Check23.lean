import NoFourMUBs.Step2.CriticalZero.CommonGroup01

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003

theorem group01_coefficient_23 :
    IntegerReflector.zeroII (group01DenseResidual.getD 23 []) = true := by
  rfl

end CriticalZeroSumAssembly20261003
