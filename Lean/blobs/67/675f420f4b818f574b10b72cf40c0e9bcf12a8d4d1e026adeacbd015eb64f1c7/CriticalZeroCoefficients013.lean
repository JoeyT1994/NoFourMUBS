import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_04_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_03_01 X Y))))+((((X^3-9*X^2)*(numQx_04_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_03_01 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_01,numQx_04_01,numQy_03_01,numQy_04_01]
  ring

theorem numZero_04_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_02 X Y))+(((X+Y+9)*(numQy_04_00 X Y))+((6*(0))+(0+numQy_03_02 X Y))))+((((X^3-9*X^2)*(numQx_04_02 X Y))+(((X^2+9*X)*(numQx_04_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_03_02 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_02,numQx_04_00,numQx_04_02,numQy_03_02,numQy_04_00,numQy_04_02]
  ring

theorem numZero_04_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_03 X Y))+(((X+Y+9)*(numQy_04_01 X Y))+((6*(numQy_04_00 X Y))+(0+numQy_03_03 X Y))))+((((X^3-9*X^2)*(numQx_04_03 X Y))+(((X^2+9*X)*(numQx_04_01 X Y))+(((6*X)*(numQx_04_00 X Y))+((X*(0))+((X-1)*(numQx_03_03 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_03,numQx_04_00,numQx_04_01,numQx_04_03,numQy_03_03,numQy_04_00,numQy_04_01,numQy_04_03]
  ring

theorem numZero_04_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_04 X Y))+(((X+Y+9)*(numQy_04_02 X Y))+((6*(numQy_04_01 X Y))+(numQy_04_00 X Y+numQy_03_04 X Y))))+((((X^3-9*X^2)*(numQx_04_04 X Y))+(((X^2+9*X)*(numQx_04_02 X Y))+(((6*X)*(numQx_04_01 X Y))+((X*(numQx_04_00 X Y))+((X-1)*(numQx_03_04 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_04,numQx_04_00,numQx_04_01,numQx_04_02,numQx_04_04,numQy_03_04,numQy_04_00,numQy_04_01,numQy_04_02,numQy_04_04]
  ring

theorem numZero_04_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_05 X Y))+(((X+Y+9)*(numQy_04_03 X Y))+((6*(numQy_04_02 X Y))+(numQy_04_01 X Y+numQy_03_05 X Y))))+((((X^3-9*X^2)*(numQx_04_05 X Y))+(((X^2+9*X)*(numQx_04_03 X Y))+(((6*X)*(numQx_04_02 X Y))+((X*(numQx_04_01 X Y))+((X-1)*(numQx_03_05 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_05,numQx_04_01,numQx_04_02,numQx_04_03,numQx_04_05,numQy_03_05,numQy_04_01,numQy_04_02,numQy_04_03,numQy_04_05]
  ring

theorem numZero_04_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_06 X Y))+(((X+Y+9)*(numQy_04_04 X Y))+((6*(numQy_04_03 X Y))+(numQy_04_02 X Y+numQy_03_06 X Y))))+((((X^3-9*X^2)*(numQx_04_06 X Y))+(((X^2+9*X)*(numQx_04_04 X Y))+(((6*X)*(numQx_04_03 X Y))+((X*(numQx_04_02 X Y))+((X-1)*(numQx_03_06 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_06,numQx_04_02,numQx_04_03,numQx_04_04,numQx_04_06,numQy_03_06,numQy_04_02,numQy_04_03,numQy_04_04,numQy_04_06]
  ring

theorem numZero_04_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_07 X Y))+(((X+Y+9)*(numQy_04_05 X Y))+((6*(numQy_04_04 X Y))+(numQy_04_03 X Y+numQy_03_07 X Y))))+((((X^3-9*X^2)*(numQx_04_07 X Y))+(((X^2+9*X)*(numQx_04_05 X Y))+(((6*X)*(numQx_04_04 X Y))+((X*(numQx_04_03 X Y))+((X-1)*(numQx_03_07 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_07,numQx_04_03,numQx_04_04,numQx_04_05,numQx_04_07,numQy_03_07,numQy_04_03,numQy_04_04,numQy_04_05,numQy_04_07]
  ring

theorem numZero_04_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_08 X Y))+(((X+Y+9)*(numQy_04_06 X Y))+((6*(numQy_04_05 X Y))+(numQy_04_04 X Y+numQy_03_08 X Y))))+((((X^3-9*X^2)*(numQx_04_08 X Y))+(((X^2+9*X)*(numQx_04_06 X Y))+(((6*X)*(numQx_04_05 X Y))+((X*(numQx_04_04 X Y))+((X-1)*(numQx_03_08 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_08,numQx_04_04,numQx_04_05,numQx_04_06,numQx_04_08,numQy_03_08,numQy_04_04,numQy_04_05,numQy_04_06,numQy_04_08]
  ring

theorem numZero_04_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_09 X Y))+(((X+Y+9)*(numQy_04_07 X Y))+((6*(numQy_04_06 X Y))+(numQy_04_05 X Y+numQy_03_09 X Y))))+((((X^3-9*X^2)*(numQx_04_09 X Y))+(((X^2+9*X)*(numQx_04_07 X Y))+(((6*X)*(numQx_04_06 X Y))+((X*(numQx_04_05 X Y))+((X-1)*(numQx_03_09 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_09,numQx_04_05,numQx_04_06,numQx_04_07,numQx_04_09,numQy_03_09,numQy_04_05,numQy_04_06,numQy_04_07,numQy_04_09]
  ring

theorem numZero_04_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_10 X Y))+(((X+Y+9)*(numQy_04_08 X Y))+((6*(numQy_04_07 X Y))+(numQy_04_06 X Y+numQy_03_10 X Y))))+((((X^3-9*X^2)*(numQx_04_10 X Y))+(((X^2+9*X)*(numQx_04_08 X Y))+(((6*X)*(numQx_04_07 X Y))+((X*(numQx_04_06 X Y))+((X-1)*(numQx_03_10 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_10,numQx_04_06,numQx_04_07,numQx_04_08,numQx_04_10,numQy_03_10,numQy_04_06,numQy_04_07,numQy_04_08,numQy_04_10]
  ring

theorem numZero_04_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_11 X Y))+(((X+Y+9)*(numQy_04_09 X Y))+((6*(numQy_04_08 X Y))+(numQy_04_07 X Y+numQy_03_11 X Y))))+((((X^3-9*X^2)*(numQx_04_11 X Y))+(((X^2+9*X)*(numQx_04_09 X Y))+(((6*X)*(numQx_04_08 X Y))+((X*(numQx_04_07 X Y))+((X-1)*(numQx_03_11 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_11,numQx_04_07,numQx_04_08,numQx_04_09,numQx_04_11,numQy_03_11,numQy_04_07,numQy_04_08,numQy_04_09,numQy_04_11]
  ring

theorem numZero_04_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_12 X Y))+(((X+Y+9)*(numQy_04_10 X Y))+((6*(numQy_04_09 X Y))+(numQy_04_08 X Y+numQy_03_12 X Y))))+((((X^3-9*X^2)*(numQx_04_12 X Y))+(((X^2+9*X)*(numQx_04_10 X Y))+(((6*X)*(numQx_04_09 X Y))+((X*(numQx_04_08 X Y))+((X-1)*(numQx_03_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_12,numQx_04_08,numQx_04_09,numQx_04_10,numQx_04_12,numQy_03_12,numQy_04_08,numQy_04_09,numQy_04_10,numQy_04_12]
  ring
#print axioms numZero_04_01
#print axioms numZero_04_02
#print axioms numZero_04_03
#print axioms numZero_04_04
#print axioms numZero_04_05
#print axioms numZero_04_06
#print axioms numZero_04_07
#print axioms numZero_04_08
#print axioms numZero_04_09
#print axioms numZero_04_10
#print axioms numZero_04_11
#print axioms numZero_04_12
end
end CriticalZeroSplitReduction20261003
