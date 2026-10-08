import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_02_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_10 X Y))+(((X+Y+9)*(numQy_02_08 X Y))+((6*(numQy_02_07 X Y))+(numQy_02_06 X Y+numQy_01_10 X Y))))+((((X^3-9*X^2)*(numQx_02_10 X Y))+(((X^2+9*X)*(numQx_02_08 X Y))+(((6*X)*(numQx_02_07 X Y))+((X*(numQx_02_06 X Y))+((X-1)*(numQx_01_10 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_10,numQx_02_06,numQx_02_07,numQx_02_08,numQx_02_10,numQy_01_10,numQy_02_06,numQy_02_07,numQy_02_08,numQy_02_10]
  ring
#print axioms numZero_02_10
end
end CriticalZeroSplitReduction20261003
