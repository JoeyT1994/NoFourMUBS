import CriticalZeroSumLiteralTripData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003
theorem literal_trip_coefficient_08_row_00 :
    IntegerReflector.zeroI (Coefficients.add
      (CoefficientRow.mulAtRow literalTripAs literalTripBs 8 0)
      (Coefficients.neg (literalTripCoefficient08.getD 0 [])))=true := by rfl
#print axioms literal_trip_coefficient_08_row_00
end CriticalZeroSumAssembly20261003
