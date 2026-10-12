import NoFourMUBs.Step2.CriticalZero.CommonGroup00

#print axioms CriticalZeroSumAssembly20261003.group00TripReuse_eval
#print axioms CriticalZeroSumAssembly20261003.group00TripResidual_eval

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace NoFourMUBs.Audit.Group00Trip
open CriticalZeroSumAssembly20261003 CriticalZeroSplitReduction20261003

-- Resource pilot only. This proves neither the complete group nor numerator.
theorem coefficient10 :
    IntegerReflector.zeroII (group00TripResidual.getD 10 []) = true := by
  rfl

#print axioms coefficient10
end NoFourMUBs.Audit.Group00Trip
