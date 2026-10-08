import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_01_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_07 X Y))+(((X+Y+9)*(numQy_01_05 X Y))+((6*(numQy_01_04 X Y))+(numQy_01_03 X Y+numQy_00_07 X Y))))+((((X^3-9*X^2)*(numQx_01_07 X Y))+(((X^2+9*X)*(numQx_01_05 X Y))+(((6*X)*(numQx_01_04 X Y))+((X*(numQx_01_03 X Y))+((X-1)*(numQx_00_07 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_07,numQx_01_03,numQx_01_04,numQx_01_05,numQx_01_07,numQy_00_07,numQy_01_03,numQy_01_04,numQy_01_05,numQy_01_07]
  ring
#print axioms numZero_01_07
end
end CriticalZeroSplitReduction20261003
