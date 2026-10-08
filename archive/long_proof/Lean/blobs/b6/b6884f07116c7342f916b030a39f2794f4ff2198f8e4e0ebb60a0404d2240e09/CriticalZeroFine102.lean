import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_07_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_10 X Y))+(((X+Y+9)*(numQy_07_08 X Y))+((6*(numQy_07_07 X Y))+(numQy_07_06 X Y+numQy_06_10 X Y))))+(((X^3-9*X^2)*(numQx_07_10 X Y))+(((X^2+9*X)*(numQx_07_08 X Y))+(((6*X)*(numQx_07_07 X Y))+((X*(numQx_07_06 X Y))+((X-1)*(numQx_06_10 X Y)))))))))=0 := by
  dsimp only [numQx_06_10,numQx_07_06,numQx_07_07,numQx_07_08,numQx_07_10,numQy_06_10,numQy_07_06,numQy_07_07,numQy_07_08,numQy_07_10]
  ring
#print axioms numZero_07_10

theorem numZero_07_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_11 X Y))+(((X+Y+9)*(numQy_07_09 X Y))+((6*(numQy_07_08 X Y))+(numQy_07_07 X Y+numQy_06_11 X Y))))+(((X^3-9*X^2)*(numQx_07_11 X Y))+(((X^2+9*X)*(numQx_07_09 X Y))+(((6*X)*(numQx_07_08 X Y))+((X*(numQx_07_07 X Y))+((X-1)*(numQx_06_11 X Y)))))))))=0 := by
  dsimp only [numQx_06_11,numQx_07_07,numQx_07_08,numQx_07_09,numQx_07_11,numQy_06_11,numQy_07_07,numQy_07_08,numQy_07_09,numQy_07_11]
  ring
#print axioms numZero_07_11

theorem numZero_07_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_12 X Y))+(((X+Y+9)*(numQy_07_10 X Y))+((6*(numQy_07_09 X Y))+(numQy_07_08 X Y+numQy_06_12 X Y))))+(((X^3-9*X^2)*(numQx_07_12 X Y))+(((X^2+9*X)*(numQx_07_10 X Y))+(((6*X)*(numQx_07_09 X Y))+((X*(numQx_07_08 X Y))+((X-1)*(numQx_06_12 X Y)))))))))=0 := by
  dsimp only [numQx_06_12,numQx_07_08,numQx_07_09,numQx_07_10,numQx_07_12,numQy_06_12,numQy_07_08,numQy_07_09,numQy_07_10,numQy_07_12]
  ring
#print axioms numZero_07_12

theorem numZero_07_13 (X Y : R) : (-(((((X+Y+9)*(numQy_07_11 X Y))+((6*(numQy_07_10 X Y))+(numQy_07_09 X Y+numQy_06_13 X Y)))+(((X^2+9*X)*(numQx_07_11 X Y))+(((6*X)*(numQx_07_10 X Y))+((X*(numQx_07_09 X Y))+((X-1)*(numQx_06_13 X Y))))))))=0 := by
  dsimp only [numQx_06_13,numQx_07_09,numQx_07_10,numQx_07_11,numQy_06_13,numQy_07_09,numQy_07_10,numQy_07_11]
  ring
#print axioms numZero_07_13

theorem numZero_07_14 (X Y : R) : (-(((((X+Y+9)*(numQy_07_12 X Y))+((6*(numQy_07_11 X Y))+(numQy_07_10 X Y+numQy_06_14 X Y)))+(((X^2+9*X)*(numQx_07_12 X Y))+(((6*X)*(numQx_07_11 X Y))+((X*(numQx_07_10 X Y))+((X-1)*(numQx_06_14 X Y))))))))=0 := by
  dsimp only [numQx_06_14,numQx_07_10,numQx_07_11,numQx_07_12,numQy_06_14,numQy_07_10,numQy_07_11,numQy_07_12]
  ring
#print axioms numZero_07_14

theorem numZero_07_15 (X Y : R) : (-((((6*(numQy_07_12 X Y))+(numQy_07_11 X Y+numQy_06_15 X Y))+(((6*X)*(numQx_07_12 X Y))+((X*(numQx_07_11 X Y))+((X-1)*(numQx_06_15 X Y)))))))=0 := by
  dsimp only [numQx_06_15,numQx_07_11,numQx_07_12,numQy_06_15,numQy_07_11,numQy_07_12]
  ring
#print axioms numZero_07_15

theorem numZero_07_16 (X Y : R) : (-(((numQy_07_12 X Y+numQy_06_16 X Y)+((X*(numQx_07_12 X Y))+((X-1)*(numQx_06_16 X Y))))))=0 := by
  dsimp only [numQx_06_16,numQx_07_12,numQy_06_16,numQy_07_12]
  ring
#print axioms numZero_07_16

theorem numZero_08_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_08_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_07_00 X Y))))+(((X^3-9*X^2)*(numQx_08_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_07_00 X Y)))))))))=0 := by
  dsimp only [numQx_07_00,numQx_08_00,numQy_07_00,numQy_08_00]
  ring
#print axioms numZero_08_00

theorem numZero_08_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_08_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_07_01 X Y))))+(((X^3-9*X^2)*(numQx_08_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_07_01 X Y)))))))))=0 := by
  dsimp only [numQx_07_01,numQx_08_01,numQy_07_01,numQy_08_01]
  ring
#print axioms numZero_08_01

theorem numZero_08_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_08_02 X Y))+(((X+Y+9)*(numQy_08_00 X Y))+((6*(0))+(0+numQy_07_02 X Y))))+(((X^3-9*X^2)*(numQx_08_02 X Y))+(((X^2+9*X)*(numQx_08_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_07_02 X Y)))))))))=0 := by
  dsimp only [numQx_07_02,numQx_08_00,numQx_08_02,numQy_07_02,numQy_08_00,numQy_08_02]
  ring
#print axioms numZero_08_02

theorem numZero_08_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_08_03 X Y))+(((X+Y+9)*(numQy_08_01 X Y))+((6*(numQy_08_00 X Y))+(0+numQy_07_03 X Y))))+(((X^3-9*X^2)*(numQx_08_03 X Y))+(((X^2+9*X)*(numQx_08_01 X Y))+(((6*X)*(numQx_08_00 X Y))+((X*(0))+((X-1)*(numQx_07_03 X Y)))))))))=0 := by
  dsimp only [numQx_07_03,numQx_08_00,numQx_08_01,numQx_08_03,numQy_07_03,numQy_08_00,numQy_08_01,numQy_08_03]
  ring
#print axioms numZero_08_03

theorem numZero_08_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_08_04 X Y))+(((X+Y+9)*(numQy_08_02 X Y))+((6*(numQy_08_01 X Y))+(numQy_08_00 X Y+numQy_07_04 X Y))))+(((X^3-9*X^2)*(numQx_08_04 X Y))+(((X^2+9*X)*(numQx_08_02 X Y))+(((6*X)*(numQx_08_01 X Y))+((X*(numQx_08_00 X Y))+((X-1)*(numQx_07_04 X Y)))))))))=0 := by
  dsimp only [numQx_07_04,numQx_08_00,numQx_08_01,numQx_08_02,numQx_08_04,numQy_07_04,numQy_08_00,numQy_08_01,numQy_08_02,numQy_08_04]
  ring
#print axioms numZero_08_04
end
end CriticalZeroSplitReduction20261003
