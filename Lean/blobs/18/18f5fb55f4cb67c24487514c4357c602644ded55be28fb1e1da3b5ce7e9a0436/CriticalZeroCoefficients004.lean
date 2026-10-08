import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_01_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_04 X Y))+(((X+Y+9)*(numQy_01_02 X Y))+((6*(numQy_01_01 X Y))+(numQy_01_00 X Y+numQy_00_04 X Y))))+((((X^3-9*X^2)*(numQx_01_04 X Y))+(((X^2+9*X)*(numQx_01_02 X Y))+(((6*X)*(numQx_01_01 X Y))+((X*(numQx_01_00 X Y))+((X-1)*(numQx_00_04 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_04,numQx_01_00,numQx_01_01,numQx_01_02,numQx_01_04,numQy_00_04,numQy_01_00,numQy_01_01,numQy_01_02,numQy_01_04]
  ring

theorem numZero_01_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_05 X Y))+(((X+Y+9)*(numQy_01_03 X Y))+((6*(numQy_01_02 X Y))+(numQy_01_01 X Y+numQy_00_05 X Y))))+((((X^3-9*X^2)*(numQx_01_05 X Y))+(((X^2+9*X)*(numQx_01_03 X Y))+(((6*X)*(numQx_01_02 X Y))+((X*(numQx_01_01 X Y))+((X-1)*(numQx_00_05 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_05,numQx_01_01,numQx_01_02,numQx_01_03,numQx_01_05,numQy_00_05,numQy_01_01,numQy_01_02,numQy_01_03,numQy_01_05]
  ring

theorem numZero_01_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_06 X Y))+(((X+Y+9)*(numQy_01_04 X Y))+((6*(numQy_01_03 X Y))+(numQy_01_02 X Y+numQy_00_06 X Y))))+((((X^3-9*X^2)*(numQx_01_06 X Y))+(((X^2+9*X)*(numQx_01_04 X Y))+(((6*X)*(numQx_01_03 X Y))+((X*(numQx_01_02 X Y))+((X-1)*(numQx_00_06 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_06,numQx_01_02,numQx_01_03,numQx_01_04,numQx_01_06,numQy_00_06,numQy_01_02,numQy_01_03,numQy_01_04,numQy_01_06]
  ring

theorem numZero_01_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_07 X Y))+(((X+Y+9)*(numQy_01_05 X Y))+((6*(numQy_01_04 X Y))+(numQy_01_03 X Y+numQy_00_07 X Y))))+((((X^3-9*X^2)*(numQx_01_07 X Y))+(((X^2+9*X)*(numQx_01_05 X Y))+(((6*X)*(numQx_01_04 X Y))+((X*(numQx_01_03 X Y))+((X-1)*(numQx_00_07 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_07,numQx_01_03,numQx_01_04,numQx_01_05,numQx_01_07,numQy_00_07,numQy_01_03,numQy_01_04,numQy_01_05,numQy_01_07]
  ring

theorem numZero_01_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_08 X Y))+(((X+Y+9)*(numQy_01_06 X Y))+((6*(numQy_01_05 X Y))+(numQy_01_04 X Y+numQy_00_08 X Y))))+((((X^3-9*X^2)*(numQx_01_08 X Y))+(((X^2+9*X)*(numQx_01_06 X Y))+(((6*X)*(numQx_01_05 X Y))+((X*(numQx_01_04 X Y))+((X-1)*(numQx_00_08 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_08,numQx_01_04,numQx_01_05,numQx_01_06,numQx_01_08,numQy_00_08,numQy_01_04,numQy_01_05,numQy_01_06,numQy_01_08]
  ring

theorem numZero_01_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_09 X Y))+(((X+Y+9)*(numQy_01_07 X Y))+((6*(numQy_01_06 X Y))+(numQy_01_05 X Y+numQy_00_09 X Y))))+((((X^3-9*X^2)*(numQx_01_09 X Y))+(((X^2+9*X)*(numQx_01_07 X Y))+(((6*X)*(numQx_01_06 X Y))+((X*(numQx_01_05 X Y))+((X-1)*(numQx_00_09 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_09,numQx_01_05,numQx_01_06,numQx_01_07,numQx_01_09,numQy_00_09,numQy_01_05,numQy_01_06,numQy_01_07,numQy_01_09]
  ring

theorem numZero_01_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_10 X Y))+(((X+Y+9)*(numQy_01_08 X Y))+((6*(numQy_01_07 X Y))+(numQy_01_06 X Y+numQy_00_10 X Y))))+((((X^3-9*X^2)*(numQx_01_10 X Y))+(((X^2+9*X)*(numQx_01_08 X Y))+(((6*X)*(numQx_01_07 X Y))+((X*(numQx_01_06 X Y))+((X-1)*(numQx_00_10 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_10,numQx_01_06,numQx_01_07,numQx_01_08,numQx_01_10,numQy_00_10,numQy_01_06,numQy_01_07,numQy_01_08,numQy_01_10]
  ring

theorem numZero_01_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_11 X Y))+(((X+Y+9)*(numQy_01_09 X Y))+((6*(numQy_01_08 X Y))+(numQy_01_07 X Y+numQy_00_11 X Y))))+((((X^3-9*X^2)*(numQx_01_11 X Y))+(((X^2+9*X)*(numQx_01_09 X Y))+(((6*X)*(numQx_01_08 X Y))+((X*(numQx_01_07 X Y))+((X-1)*(numQx_00_11 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_11,numQx_01_07,numQx_01_08,numQx_01_09,numQx_01_11,numQy_00_11,numQy_01_07,numQy_01_08,numQy_01_09,numQy_01_11]
  ring

theorem numZero_01_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_12 X Y))+(((X+Y+9)*(numQy_01_10 X Y))+((6*(numQy_01_09 X Y))+(numQy_01_08 X Y+numQy_00_12 X Y))))+((((X^3-9*X^2)*(numQx_01_12 X Y))+(((X^2+9*X)*(numQx_01_10 X Y))+(((6*X)*(numQx_01_09 X Y))+((X*(numQx_01_08 X Y))+((X-1)*(numQx_00_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_12,numQx_01_08,numQx_01_09,numQx_01_10,numQx_01_12,numQy_00_12,numQy_01_08,numQy_01_09,numQy_01_10,numQy_01_12]
  ring

theorem numZero_01_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_13 X Y))+(((X+Y+9)*(numQy_01_11 X Y))+((6*(numQy_01_10 X Y))+(numQy_01_09 X Y+numQy_00_13 X Y))))+((((X^3-9*X^2)*(numQx_01_13 X Y))+(((X^2+9*X)*(numQx_01_11 X Y))+(((6*X)*(numQx_01_10 X Y))+((X*(numQx_01_09 X Y))+((X-1)*(numQx_00_13 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_13,numQx_01_09,numQx_01_10,numQx_01_11,numQx_01_13,numQy_00_13,numQy_01_09,numQy_01_10,numQy_01_11,numQy_01_13]
  ring

theorem numZero_01_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_14 X Y))+(((X+Y+9)*(numQy_01_12 X Y))+((6*(numQy_01_11 X Y))+(numQy_01_10 X Y+numQy_00_14 X Y))))+((((X^3-9*X^2)*(numQx_01_14 X Y))+(((X^2+9*X)*(numQx_01_12 X Y))+(((6*X)*(numQx_01_11 X Y))+((X*(numQx_01_10 X Y))+((X-1)*(numQx_00_14 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_14,numQx_01_10,numQx_01_11,numQx_01_12,numQx_01_14,numQy_00_14,numQy_01_10,numQy_01_11,numQy_01_12,numQy_01_14]
  ring

theorem numZero_01_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_15 X Y))+(((X+Y+9)*(numQy_01_13 X Y))+((6*(numQy_01_12 X Y))+(numQy_01_11 X Y+numQy_00_15 X Y))))+((((X^3-9*X^2)*(numQx_01_15 X Y))+(((X^2+9*X)*(numQx_01_13 X Y))+(((6*X)*(numQx_01_12 X Y))+((X*(numQx_01_11 X Y))+((X-1)*(numQx_00_15 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_15,numQx_01_11,numQx_01_12,numQx_01_13,numQx_01_15,numQy_00_15,numQy_01_11,numQy_01_12,numQy_01_13,numQy_01_15]
  ring
#print axioms numZero_01_04
#print axioms numZero_01_05
#print axioms numZero_01_06
#print axioms numZero_01_07
#print axioms numZero_01_08
#print axioms numZero_01_09
#print axioms numZero_01_10
#print axioms numZero_01_11
#print axioms numZero_01_12
#print axioms numZero_01_13
#print axioms numZero_01_14
#print axioms numZero_01_15
end
end CriticalZeroSplitReduction20261003
