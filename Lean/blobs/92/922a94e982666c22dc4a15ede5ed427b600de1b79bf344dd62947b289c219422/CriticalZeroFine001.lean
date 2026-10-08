import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_02 (X Y : R) : (numRaw_00_02 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_02 X Y))+(((X+Y+9)*(numQy_00_00 X Y))+((6*(0))+0)))+((((X^3-9*X^2)*(numQx_00_02 X Y))+(((X^2+9*X)*(numQx_00_00 X Y))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_00,numQx_00_02,numQy_00_00,numQy_00_02,numRaw_00_02]
  ring
#print axioms numZero_00_02
end
end CriticalZeroSplitReduction20261003
