import CriticalZeroRawPolynomials
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
/-- Exact raw denominator factorization, before imposing any splitting relation. -/
theorem raw_denominator_factored (X Y z : R) :
    rawDenominator X Y z = z^12*(X-3*z-9)^5*(Y-3*z-9)^5*(X+Y+z^2+3*z)^5 := by
  dsimp only [rawDenominator,denominatorCoefficients,Coefficients.eval,denRaw_00_12,denRaw_00_13,denRaw_00_14,denRaw_00_15,denRaw_00_16,denRaw_00_17,denRaw_00_18,denRaw_00_19,denRaw_00_20,denRaw_00_21,denRaw_00_22,denRaw_00_23,denRaw_00_24,denRaw_00_25,denRaw_00_26,denRaw_00_27,denRaw_00_28,denRaw_00_29,denRaw_00_30,denRaw_00_31,denRaw_00_32]
  ring
#print axioms raw_denominator_factored
end
end CriticalZeroSplitReduction20261003
