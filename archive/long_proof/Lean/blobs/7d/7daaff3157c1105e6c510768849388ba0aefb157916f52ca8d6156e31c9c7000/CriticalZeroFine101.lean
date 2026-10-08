import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_07_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_04 X Y))+(((X+Y+9)*(numQy_07_02 X Y))+((6*(numQy_07_01 X Y))+(numQy_07_00 X Y+numQy_06_04 X Y))))+(((X^3-9*X^2)*(numQx_07_04 X Y))+(((X^2+9*X)*(numQx_07_02 X Y))+(((6*X)*(numQx_07_01 X Y))+((X*(numQx_07_00 X Y))+((X-1)*(numQx_06_04 X Y)))))))))=0 := by
  dsimp only [numQx_06_04,numQx_07_00,numQx_07_01,numQx_07_02,numQx_07_04,numQy_06_04,numQy_07_00,numQy_07_01,numQy_07_02,numQy_07_04]
  ring
#print axioms numZero_07_04

theorem numZero_07_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_05 X Y))+(((X+Y+9)*(numQy_07_03 X Y))+((6*(numQy_07_02 X Y))+(numQy_07_01 X Y+numQy_06_05 X Y))))+(((X^3-9*X^2)*(numQx_07_05 X Y))+(((X^2+9*X)*(numQx_07_03 X Y))+(((6*X)*(numQx_07_02 X Y))+((X*(numQx_07_01 X Y))+((X-1)*(numQx_06_05 X Y)))))))))=0 := by
  dsimp only [numQx_06_05,numQx_07_01,numQx_07_02,numQx_07_03,numQx_07_05,numQy_06_05,numQy_07_01,numQy_07_02,numQy_07_03,numQy_07_05]
  ring
#print axioms numZero_07_05

theorem numZero_07_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_06 X Y))+(((X+Y+9)*(numQy_07_04 X Y))+((6*(numQy_07_03 X Y))+(numQy_07_02 X Y+numQy_06_06 X Y))))+(((X^3-9*X^2)*(numQx_07_06 X Y))+(((X^2+9*X)*(numQx_07_04 X Y))+(((6*X)*(numQx_07_03 X Y))+((X*(numQx_07_02 X Y))+((X-1)*(numQx_06_06 X Y)))))))))=0 := by
  dsimp only [numQx_06_06,numQx_07_02,numQx_07_03,numQx_07_04,numQx_07_06,numQy_06_06,numQy_07_02,numQy_07_03,numQy_07_04,numQy_07_06]
  ring
#print axioms numZero_07_06

theorem numZero_07_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_07 X Y))+(((X+Y+9)*(numQy_07_05 X Y))+((6*(numQy_07_04 X Y))+(numQy_07_03 X Y+numQy_06_07 X Y))))+(((X^3-9*X^2)*(numQx_07_07 X Y))+(((X^2+9*X)*(numQx_07_05 X Y))+(((6*X)*(numQx_07_04 X Y))+((X*(numQx_07_03 X Y))+((X-1)*(numQx_06_07 X Y)))))))))=0 := by
  dsimp only [numQx_06_07,numQx_07_03,numQx_07_04,numQx_07_05,numQx_07_07,numQy_06_07,numQy_07_03,numQy_07_04,numQy_07_05,numQy_07_07]
  ring
#print axioms numZero_07_07

theorem numZero_07_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_08 X Y))+(((X+Y+9)*(numQy_07_06 X Y))+((6*(numQy_07_05 X Y))+(numQy_07_04 X Y+numQy_06_08 X Y))))+(((X^3-9*X^2)*(numQx_07_08 X Y))+(((X^2+9*X)*(numQx_07_06 X Y))+(((6*X)*(numQx_07_05 X Y))+((X*(numQx_07_04 X Y))+((X-1)*(numQx_06_08 X Y)))))))))=0 := by
  dsimp only [numQx_06_08,numQx_07_04,numQx_07_05,numQx_07_06,numQx_07_08,numQy_06_08,numQy_07_04,numQy_07_05,numQy_07_06,numQy_07_08]
  ring
#print axioms numZero_07_08

theorem numZero_07_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_09 X Y))+(((X+Y+9)*(numQy_07_07 X Y))+((6*(numQy_07_06 X Y))+(numQy_07_05 X Y+numQy_06_09 X Y))))+(((X^3-9*X^2)*(numQx_07_09 X Y))+(((X^2+9*X)*(numQx_07_07 X Y))+(((6*X)*(numQx_07_06 X Y))+((X*(numQx_07_05 X Y))+((X-1)*(numQx_06_09 X Y)))))))))=0 := by
  dsimp only [numQx_06_09,numQx_07_05,numQx_07_06,numQx_07_07,numQx_07_09,numQy_06_09,numQy_07_05,numQy_07_06,numQy_07_07,numQy_07_09]
  ring
#print axioms numZero_07_09
end
end CriticalZeroSplitReduction20261003
