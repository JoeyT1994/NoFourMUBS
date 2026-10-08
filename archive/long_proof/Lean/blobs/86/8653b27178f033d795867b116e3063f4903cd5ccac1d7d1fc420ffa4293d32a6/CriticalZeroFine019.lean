import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_21 (X Y : R) : (numRaw_00_21 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_21 X Y))+(((X+Y+9)*(numQy_00_19 X Y))+((6*(numQy_00_18 X Y))+numQy_00_17 X Y)))+((((X^3-9*X^2)*(numQx_00_21 X Y))+(((X^2+9*X)*(numQx_00_19 X Y))+(((6*X)*(numQx_00_18 X Y))+(X*(numQx_00_17 X Y)))))+(33064590694903632 : R))))))=0 := by
  dsimp only [numQx_00_17,numQx_00_18,numQx_00_19,numQx_00_21,numQy_00_17,numQy_00_18,numQy_00_19,numQy_00_21,numRaw_00_21]
  ring
#print axioms numZero_00_21
end
end CriticalZeroSplitReduction20261003
