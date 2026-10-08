import CriticalNonzeroFinalRowData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroFinalRows20261003
open CriticalZeroSplitReduction20261003.IntegerReflector
theorem row1_00 : zeroII (requestedRow1 0)=true := by rfl
#print axioms row1_00
theorem row1_01 : zeroII (requestedRow1 1)=true := by rfl
#print axioms row1_01
theorem row1_02 : zeroII (requestedRow1 2)=true := by rfl
#print axioms row1_02
theorem row1_03 : zeroII (requestedRow1 3)=true := by rfl
#print axioms row1_03
end CriticalNonzeroFinalRows20261003
