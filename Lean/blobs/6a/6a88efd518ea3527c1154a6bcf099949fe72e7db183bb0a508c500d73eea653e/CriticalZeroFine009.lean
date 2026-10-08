import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_11 (X Y : R) : (numRaw_00_11 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_11 X Y))+(((X+Y+9)*(numQy_00_09 X Y))+((6*(numQy_00_08 X Y))+numQy_00_07 X Y)))+((((X^3-9*X^2)*(numQx_00_11 X Y))+(((X^2+9*X)*(numQx_00_09 X Y))+(((6*X)*(numQx_00_08 X Y))+(X*(numQx_00_07 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_07,numQx_00_08,numQx_00_09,numQx_00_11,numQy_00_07,numQy_00_08,numQy_00_09,numQy_00_11,numRaw_00_11]
  ring
#print axioms numZero_00_11
end
end CriticalZeroSplitReduction20261003
