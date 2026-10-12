import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
theorem coefficient_a_22 :
    CriticalZeroSplitReduction20261003.IntegerReflector.zeroII (residual_a.getD 22 []) = true := by
  decide +kernel
#print axioms coefficient_a_22
end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
