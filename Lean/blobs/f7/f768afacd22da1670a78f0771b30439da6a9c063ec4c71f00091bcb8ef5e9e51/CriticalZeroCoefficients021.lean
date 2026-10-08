import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_08_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_08_05 X Y))+(((X+Y+9)*(numQy_08_03 X Y))+((6*(numQy_08_02 X Y))+(numQy_08_01 X Y+numQy_07_05 X Y))))+(((X^3-9*X^2)*(numQx_08_05 X Y))+(((X^2+9*X)*(numQx_08_03 X Y))+(((6*X)*(numQx_08_02 X Y))+((X*(numQx_08_01 X Y))+((X-1)*(numQx_07_05 X Y)))))))))=0 := by
  dsimp only [numQx_07_05,numQx_08_01,numQx_08_02,numQx_08_03,numQx_08_05,numQy_07_05,numQy_08_01,numQy_08_02,numQy_08_03,numQy_08_05]
  ring

theorem numZero_08_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_08_06 X Y))+(((X+Y+9)*(numQy_08_04 X Y))+((6*(numQy_08_03 X Y))+(numQy_08_02 X Y+numQy_07_06 X Y))))+(((X^3-9*X^2)*(numQx_08_06 X Y))+(((X^2+9*X)*(numQx_08_04 X Y))+(((6*X)*(numQx_08_03 X Y))+((X*(numQx_08_02 X Y))+((X-1)*(numQx_07_06 X Y)))))))))=0 := by
  dsimp only [numQx_07_06,numQx_08_02,numQx_08_03,numQx_08_04,numQx_08_06,numQy_07_06,numQy_08_02,numQy_08_03,numQy_08_04,numQy_08_06]
  ring

theorem numZero_08_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_08_07 X Y))+(((X+Y+9)*(numQy_08_05 X Y))+((6*(numQy_08_04 X Y))+(numQy_08_03 X Y+numQy_07_07 X Y))))+(((X^3-9*X^2)*(numQx_08_07 X Y))+(((X^2+9*X)*(numQx_08_05 X Y))+(((6*X)*(numQx_08_04 X Y))+((X*(numQx_08_03 X Y))+((X-1)*(numQx_07_07 X Y)))))))))=0 := by
  dsimp only [numQx_07_07,numQx_08_03,numQx_08_04,numQx_08_05,numQx_08_07,numQy_07_07,numQy_08_03,numQy_08_04,numQy_08_05,numQy_08_07]
  ring

theorem numZero_08_08 (X Y : R) : (-(((((X+Y+9)*(numQy_08_06 X Y))+((6*(numQy_08_05 X Y))+(numQy_08_04 X Y+numQy_07_08 X Y)))+(((X^2+9*X)*(numQx_08_06 X Y))+(((6*X)*(numQx_08_05 X Y))+((X*(numQx_08_04 X Y))+((X-1)*(numQx_07_08 X Y))))))))=0 := by
  dsimp only [numQx_07_08,numQx_08_04,numQx_08_05,numQx_08_06,numQy_07_08,numQy_08_04,numQy_08_05,numQy_08_06]
  ring

theorem numZero_08_09 (X Y : R) : (-(((((X+Y+9)*(numQy_08_07 X Y))+((6*(numQy_08_06 X Y))+(numQy_08_05 X Y+numQy_07_09 X Y)))+(((X^2+9*X)*(numQx_08_07 X Y))+(((6*X)*(numQx_08_06 X Y))+((X*(numQx_08_05 X Y))+((X-1)*(numQx_07_09 X Y))))))))=0 := by
  dsimp only [numQx_07_09,numQx_08_05,numQx_08_06,numQx_08_07,numQy_07_09,numQy_08_05,numQy_08_06,numQy_08_07]
  ring

theorem numZero_08_10 (X Y : R) : (-((((6*(numQy_08_07 X Y))+(numQy_08_06 X Y+numQy_07_10 X Y))+(((6*X)*(numQx_08_07 X Y))+((X*(numQx_08_06 X Y))+((X-1)*(numQx_07_10 X Y)))))))=0 := by
  dsimp only [numQx_07_10,numQx_08_06,numQx_08_07,numQy_07_10,numQy_08_06,numQy_08_07]
  ring

theorem numZero_08_11 (X Y : R) : (-(((numQy_08_07 X Y+numQy_07_11 X Y)+((X*(numQx_08_07 X Y))+((X-1)*(numQx_07_11 X Y))))))=0 := by
  dsimp only [numQx_07_11,numQx_08_07,numQy_07_11,numQy_08_07]
  ring

theorem numZero_08_12 (X Y : R) : (-((numQy_07_12 X Y+((X-1)*(numQx_07_12 X Y)))))=0 := by
  dsimp only [numQx_07_12,numQy_07_12]
  ring

theorem numZero_09_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_09_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_08_00 X Y))))+(((X^3-9*X^2)*(numQx_09_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_08_00 X Y)))))))))=0 := by
  dsimp only [numQx_08_00,numQx_09_00,numQy_08_00,numQy_09_00]
  ring

theorem numZero_09_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_09_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_08_01 X Y))))+(((X^3-9*X^2)*(numQx_09_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_08_01 X Y)))))))))=0 := by
  dsimp only [numQx_08_01,numQx_09_01,numQy_08_01,numQy_09_01]
  ring

theorem numZero_09_02 (X Y : R) : (-(((((X+Y+9)*(numQy_09_00 X Y))+((6*(0))+(0+numQy_08_02 X Y)))+(((X^2+9*X)*(numQx_09_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_08_02 X Y))))))))=0 := by
  dsimp only [numQx_08_02,numQx_09_00,numQy_08_02,numQy_09_00]
  ring

theorem numZero_09_03 (X Y : R) : (-(((((X+Y+9)*(numQy_09_01 X Y))+((6*(numQy_09_00 X Y))+(0+numQy_08_03 X Y)))+(((X^2+9*X)*(numQx_09_01 X Y))+(((6*X)*(numQx_09_00 X Y))+((X*(0))+((X-1)*(numQx_08_03 X Y))))))))=0 := by
  dsimp only [numQx_08_03,numQx_09_00,numQx_09_01,numQy_08_03,numQy_09_00,numQy_09_01]
  ring
#print axioms numZero_08_05
#print axioms numZero_08_06
#print axioms numZero_08_07
#print axioms numZero_08_08
#print axioms numZero_08_09
#print axioms numZero_08_10
#print axioms numZero_08_11
#print axioms numZero_08_12
#print axioms numZero_09_00
#print axioms numZero_09_01
#print axioms numZero_09_02
#print axioms numZero_09_03
end
end CriticalZeroSplitReduction20261003
