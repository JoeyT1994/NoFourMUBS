import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_13 (X Y : R) : (numRaw_00_13 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_13 X Y))+(((X+Y+9)*(numQy_00_11 X Y))+((6*(numQy_00_10 X Y))+numQy_00_09 X Y)))+((((X^3-9*X^2)*(numQx_00_13 X Y))+(((X^2+9*X)*(numQx_00_11 X Y))+(((6*X)*(numQx_00_10 X Y))+(X*(numQx_00_09 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_09,numQx_00_10,numQx_00_11,numQx_00_13,numQy_00_09,numQy_00_10,numQy_00_11,numQy_00_13,numRaw_00_13]
  ring
#print axioms numZero_00_13
end
end CriticalZeroSplitReduction20261003
