import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_06_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_05_01 X Y))))+(((X^3-9*X^2)*(numQx_06_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_05_01 X Y)))))))))=0 := by
  dsimp only [numQx_05_01,numQx_06_01,numQy_05_01,numQy_06_01]
  ring
#print axioms numZero_06_01

theorem numZero_06_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_02 X Y))+(((X+Y+9)*(numQy_06_00 X Y))+((6*(0))+(0+numQy_05_02 X Y))))+(((X^3-9*X^2)*(numQx_06_02 X Y))+(((X^2+9*X)*(numQx_06_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_05_02 X Y)))))))))=0 := by
  dsimp only [numQx_05_02,numQx_06_00,numQx_06_02,numQy_05_02,numQy_06_00,numQy_06_02]
  ring
#print axioms numZero_06_02

theorem numZero_06_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_03 X Y))+(((X+Y+9)*(numQy_06_01 X Y))+((6*(numQy_06_00 X Y))+(0+numQy_05_03 X Y))))+(((X^3-9*X^2)*(numQx_06_03 X Y))+(((X^2+9*X)*(numQx_06_01 X Y))+(((6*X)*(numQx_06_00 X Y))+((X*(0))+((X-1)*(numQx_05_03 X Y)))))))))=0 := by
  dsimp only [numQx_05_03,numQx_06_00,numQx_06_01,numQx_06_03,numQy_05_03,numQy_06_00,numQy_06_01,numQy_06_03]
  ring
#print axioms numZero_06_03

theorem numZero_06_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_04 X Y))+(((X+Y+9)*(numQy_06_02 X Y))+((6*(numQy_06_01 X Y))+(numQy_06_00 X Y+numQy_05_04 X Y))))+(((X^3-9*X^2)*(numQx_06_04 X Y))+(((X^2+9*X)*(numQx_06_02 X Y))+(((6*X)*(numQx_06_01 X Y))+((X*(numQx_06_00 X Y))+((X-1)*(numQx_05_04 X Y)))))))))=0 := by
  dsimp only [numQx_05_04,numQx_06_00,numQx_06_01,numQx_06_02,numQx_06_04,numQy_05_04,numQy_06_00,numQy_06_01,numQy_06_02,numQy_06_04]
  ring
#print axioms numZero_06_04
end
end CriticalZeroSplitReduction20261003
