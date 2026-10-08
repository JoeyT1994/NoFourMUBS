import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_19 (X Y : R) : (numRaw_00_19 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_19 X Y))+(((X+Y+9)*(numQy_00_17 X Y))+((6*(numQy_00_16 X Y))+numQy_00_15 X Y)))+((((X^3-9*X^2)*(numQx_00_19 X Y))+(((X^2+9*X)*(numQx_00_17 X Y))+(((6*X)*(numQx_00_16 X Y))+(X*(numQx_00_15 X Y)))))+(1464114717117504 : R))))))=0 := by
  dsimp only [numQx_00_15,numQx_00_16,numQx_00_17,numQx_00_19,numQy_00_15,numQy_00_16,numQy_00_17,numQy_00_19,numRaw_00_19]
  ring
#print axioms numZero_00_19
end
end CriticalZeroSplitReduction20261003
