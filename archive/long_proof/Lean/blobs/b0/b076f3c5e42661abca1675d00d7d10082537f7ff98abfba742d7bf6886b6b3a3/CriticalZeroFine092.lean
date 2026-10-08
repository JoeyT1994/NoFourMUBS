import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_05_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_04 X Y))+(((X+Y+9)*(numQy_05_02 X Y))+((6*(numQy_05_01 X Y))+(numQy_05_00 X Y+numQy_04_04 X Y))))+((((X^3-9*X^2)*(numQx_05_04 X Y))+(((X^2+9*X)*(numQx_05_02 X Y))+(((6*X)*(numQx_05_01 X Y))+((X*(numQx_05_00 X Y))+((X-1)*(numQx_04_04 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_04,numQx_05_00,numQx_05_01,numQx_05_02,numQx_05_04,numQy_04_04,numQy_05_00,numQy_05_01,numQy_05_02,numQy_05_04]
  ring
#print axioms numZero_05_04

theorem numZero_05_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_05 X Y))+(((X+Y+9)*(numQy_05_03 X Y))+((6*(numQy_05_02 X Y))+(numQy_05_01 X Y+numQy_04_05 X Y))))+((((X^3-9*X^2)*(numQx_05_05 X Y))+(((X^2+9*X)*(numQx_05_03 X Y))+(((6*X)*(numQx_05_02 X Y))+((X*(numQx_05_01 X Y))+((X-1)*(numQx_04_05 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_05,numQx_05_01,numQx_05_02,numQx_05_03,numQx_05_05,numQy_04_05,numQy_05_01,numQy_05_02,numQy_05_03,numQy_05_05]
  ring
#print axioms numZero_05_05
end
end CriticalZeroSplitReduction20261003
