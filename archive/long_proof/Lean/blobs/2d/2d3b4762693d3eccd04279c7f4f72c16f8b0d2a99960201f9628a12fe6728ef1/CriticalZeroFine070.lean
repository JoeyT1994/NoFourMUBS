import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_03_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_04 X Y))+(((X+Y+9)*(numQy_03_02 X Y))+((6*(numQy_03_01 X Y))+(numQy_03_00 X Y+numQy_02_04 X Y))))+((((X^3-9*X^2)*(numQx_03_04 X Y))+(((X^2+9*X)*(numQx_03_02 X Y))+(((6*X)*(numQx_03_01 X Y))+((X*(numQx_03_00 X Y))+((X-1)*(numQx_02_04 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_04,numQx_03_00,numQx_03_01,numQx_03_02,numQx_03_04,numQy_02_04,numQy_03_00,numQy_03_01,numQy_03_02,numQy_03_04]
  ring
#print axioms numZero_03_04
end
end CriticalZeroSplitReduction20261003
