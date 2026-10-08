import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_03_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_02_01 X Y))))+((((X^3-9*X^2)*(numQx_03_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_02_01 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_01,numQx_03_01,numQy_02_01,numQy_03_01]
  ring
#print axioms numZero_03_01

theorem numZero_03_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_02 X Y))+(((X+Y+9)*(numQy_03_00 X Y))+((6*(0))+(0+numQy_02_02 X Y))))+((((X^3-9*X^2)*(numQx_03_02 X Y))+(((X^2+9*X)*(numQx_03_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_02_02 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_02,numQx_03_00,numQx_03_02,numQy_02_02,numQy_03_00,numQy_03_02]
  ring
#print axioms numZero_03_02
end
end CriticalZeroSplitReduction20261003
