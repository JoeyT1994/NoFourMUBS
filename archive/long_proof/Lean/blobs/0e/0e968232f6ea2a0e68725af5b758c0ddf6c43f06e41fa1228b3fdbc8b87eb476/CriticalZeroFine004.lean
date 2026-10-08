import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_06 (X Y : R) : (numRaw_00_06 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_06 X Y))+(((X+Y+9)*(numQy_00_04 X Y))+((6*(numQy_00_03 X Y))+numQy_00_02 X Y)))+((((X^3-9*X^2)*(numQx_00_06 X Y))+(((X^2+9*X)*(numQx_00_04 X Y))+(((6*X)*(numQx_00_03 X Y))+(X*(numQx_00_02 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_02,numQx_00_03,numQx_00_04,numQx_00_06,numQy_00_02,numQy_00_03,numQy_00_04,numQy_00_06,numRaw_00_06]
  ring
#print axioms numZero_00_06
end
end CriticalZeroSplitReduction20261003
