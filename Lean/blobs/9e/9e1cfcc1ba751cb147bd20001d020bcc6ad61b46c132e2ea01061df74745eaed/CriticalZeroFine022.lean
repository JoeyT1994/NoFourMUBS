import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_26 (X Y : R) : (numRaw_00_26 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_26 X Y))+(((X+Y+9)*(numQy_00_24 X Y))+((6*(numQy_00_23 X Y))+numQy_00_22 X Y)))+((((X^3-9*X^2)*(numQx_00_26 X Y))+(((X^2+9*X)*(numQx_00_24 X Y))+(((6*X)*(numQx_00_23 X Y))+(X*(numQx_00_22 X Y)))))+(-41154878910580704 : R))))))=0 := by
  dsimp only [numQx_00_22,numQx_00_23,numQx_00_24,numQx_00_26,numQy_00_22,numQy_00_23,numQy_00_24,numQy_00_26,numRaw_00_26]
  ring
#print axioms numZero_00_26

theorem numZero_00_27 (X Y : R) : (numRaw_00_27 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_27 X Y))+(((X+Y+9)*(numQy_00_25 X Y))+((6*(numQy_00_24 X Y))+numQy_00_23 X Y)))+((((X^3-9*X^2)*(numQx_00_27 X Y))+(((X^2+9*X)*(numQx_00_25 X Y))+(((6*X)*(numQx_00_24 X Y))+(X*(numQx_00_23 X Y)))))+(-66979231532495856 : R))))))=0 := by
  dsimp only [numQx_00_23,numQx_00_24,numQx_00_25,numQx_00_27,numQy_00_23,numQy_00_24,numQy_00_25,numQy_00_27,numRaw_00_27]
  ring
#print axioms numZero_00_27
end
end CriticalZeroSplitReduction20261003
