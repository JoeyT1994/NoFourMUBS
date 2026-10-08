import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_05_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_04_01 X Y))))+((((X^3-9*X^2)*(numQx_05_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_04_01 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_01,numQx_05_01,numQy_04_01,numQy_05_01]
  ring
#print axioms numZero_05_01

theorem numZero_05_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_02 X Y))+(((X+Y+9)*(numQy_05_00 X Y))+((6*(0))+(0+numQy_04_02 X Y))))+((((X^3-9*X^2)*(numQx_05_02 X Y))+(((X^2+9*X)*(numQx_05_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_04_02 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_02,numQx_05_00,numQx_05_02,numQy_04_02,numQy_05_00,numQy_05_02]
  ring
#print axioms numZero_05_02

theorem numZero_05_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_03 X Y))+(((X+Y+9)*(numQy_05_01 X Y))+((6*(numQy_05_00 X Y))+(0+numQy_04_03 X Y))))+((((X^3-9*X^2)*(numQx_05_03 X Y))+(((X^2+9*X)*(numQx_05_01 X Y))+(((6*X)*(numQx_05_00 X Y))+((X*(0))+((X-1)*(numQx_04_03 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_03,numQx_05_00,numQx_05_01,numQx_05_03,numQy_04_03,numQy_05_00,numQy_05_01,numQy_05_03]
  ring
#print axioms numZero_05_03
end
end CriticalZeroSplitReduction20261003
