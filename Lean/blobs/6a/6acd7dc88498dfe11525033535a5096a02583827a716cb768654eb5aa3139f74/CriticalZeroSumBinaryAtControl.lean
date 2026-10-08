import CriticalZeroSumBinaryAtPilot
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003 HornerReflector

/-- Changing the tested coefficient by one is rejected by the same kernel
integer check. This is a negative control, not a polynomial identity. -/
theorem binary_at_changed_coefficient_rejected :
    IntegerReflector.zeroII (Coefficients.add2
      (CoefficientAt.mulAt (DenseCoefficients.fromExpr primitiveExprCoefficients_p2_m4)
        (DenseCoefficients.fromExpr primitiveExprCoefficients_p2_p2) 10)
      (Coefficients.neg2 (HornerReflector.normalize (.add binaryPilotCoefficient10 (.lit 1)))))=false := by rfl
#print axioms binary_at_changed_coefficient_rejected
end CriticalZeroSumAssembly20261003
