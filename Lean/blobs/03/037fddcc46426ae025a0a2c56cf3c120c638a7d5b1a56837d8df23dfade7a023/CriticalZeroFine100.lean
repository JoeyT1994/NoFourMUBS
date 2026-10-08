import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_06_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_13 X Y))+(((X+Y+9)*(numQy_06_11 X Y))+((6*(numQy_06_10 X Y))+(numQy_06_09 X Y+numQy_05_13 X Y))))+(((X^3-9*X^2)*(numQx_06_13 X Y))+(((X^2+9*X)*(numQx_06_11 X Y))+(((6*X)*(numQx_06_10 X Y))+((X*(numQx_06_09 X Y))+((X-1)*(numQx_05_13 X Y)))))))))=0 := by
  dsimp only [numQx_05_13,numQx_06_09,numQx_06_10,numQx_06_11,numQx_06_13,numQy_05_13,numQy_06_09,numQy_06_10,numQy_06_11,numQy_06_13]
  ring
#print axioms numZero_06_13

theorem numZero_06_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_14 X Y))+(((X+Y+9)*(numQy_06_12 X Y))+((6*(numQy_06_11 X Y))+(numQy_06_10 X Y+numQy_05_14 X Y))))+(((X^3-9*X^2)*(numQx_06_14 X Y))+(((X^2+9*X)*(numQx_06_12 X Y))+(((6*X)*(numQx_06_11 X Y))+((X*(numQx_06_10 X Y))+((X-1)*(numQx_05_14 X Y)))))))))=0 := by
  dsimp only [numQx_05_14,numQx_06_10,numQx_06_11,numQx_06_12,numQx_06_14,numQy_05_14,numQy_06_10,numQy_06_11,numQy_06_12,numQy_06_14]
  ring
#print axioms numZero_06_14

theorem numZero_06_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_15 X Y))+(((X+Y+9)*(numQy_06_13 X Y))+((6*(numQy_06_12 X Y))+(numQy_06_11 X Y+numQy_05_15 X Y))))+(((X^3-9*X^2)*(numQx_06_15 X Y))+(((X^2+9*X)*(numQx_06_13 X Y))+(((6*X)*(numQx_06_12 X Y))+((X*(numQx_06_11 X Y))+((X-1)*(numQx_05_15 X Y)))))))))=0 := by
  dsimp only [numQx_05_15,numQx_06_11,numQx_06_12,numQx_06_13,numQx_06_15,numQy_05_15,numQy_06_11,numQy_06_12,numQy_06_13,numQy_06_15]
  ring
#print axioms numZero_06_15

theorem numZero_06_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_16 X Y))+(((X+Y+9)*(numQy_06_14 X Y))+((6*(numQy_06_13 X Y))+(numQy_06_12 X Y+numQy_05_16 X Y))))+(((X^3-9*X^2)*(numQx_06_16 X Y))+(((X^2+9*X)*(numQx_06_14 X Y))+(((6*X)*(numQx_06_13 X Y))+((X*(numQx_06_12 X Y))+((X-1)*(numQx_05_16 X Y)))))))))=0 := by
  dsimp only [numQx_05_16,numQx_06_12,numQx_06_13,numQx_06_14,numQx_06_16,numQy_05_16,numQy_06_12,numQy_06_13,numQy_06_14,numQy_06_16]
  ring
#print axioms numZero_06_16

theorem numZero_06_17 (X Y : R) : (-(((((X+Y+9)*(numQy_06_15 X Y))+((6*(numQy_06_14 X Y))+(numQy_06_13 X Y+numQy_05_17 X Y)))+(((X^2+9*X)*(numQx_06_15 X Y))+(((6*X)*(numQx_06_14 X Y))+((X*(numQx_06_13 X Y))+((X-1)*(numQx_05_17 X Y))))))))=0 := by
  dsimp only [numQx_05_17,numQx_06_13,numQx_06_14,numQx_06_15,numQy_05_17,numQy_06_13,numQy_06_14,numQy_06_15]
  ring
#print axioms numZero_06_17

theorem numZero_06_18 (X Y : R) : (-(((((X+Y+9)*(numQy_06_16 X Y))+((6*(numQy_06_15 X Y))+(numQy_06_14 X Y+numQy_05_18 X Y)))+(((X^2+9*X)*(numQx_06_16 X Y))+(((6*X)*(numQx_06_15 X Y))+((X*(numQx_06_14 X Y))+((X-1)*(numQx_05_18 X Y))))))))=0 := by
  dsimp only [numQx_05_18,numQx_06_14,numQx_06_15,numQx_06_16,numQy_05_18,numQy_06_14,numQy_06_15,numQy_06_16]
  ring
#print axioms numZero_06_18

theorem numZero_06_19 (X Y : R) : (-((((6*(numQy_06_16 X Y))+(numQy_06_15 X Y+numQy_05_19 X Y))+(((6*X)*(numQx_06_16 X Y))+((X*(numQx_06_15 X Y))+((X-1)*(numQx_05_19 X Y)))))))=0 := by
  dsimp only [numQx_05_19,numQx_06_15,numQx_06_16,numQy_05_19,numQy_06_15,numQy_06_16]
  ring
#print axioms numZero_06_19

theorem numZero_06_20 (X Y : R) : (-(((numQy_06_16 X Y+numQy_05_20 X Y)+((X*(numQx_06_16 X Y))+((X-1)*(numQx_05_20 X Y))))))=0 := by
  dsimp only [numQx_05_20,numQx_06_16,numQy_05_20,numQy_06_16]
  ring
#print axioms numZero_06_20

theorem numZero_07_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_06_00 X Y))))+(((X^3-9*X^2)*(numQx_07_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_06_00 X Y)))))))))=0 := by
  dsimp only [numQx_06_00,numQx_07_00,numQy_06_00,numQy_07_00]
  ring
#print axioms numZero_07_00

theorem numZero_07_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_06_01 X Y))))+(((X^3-9*X^2)*(numQx_07_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_06_01 X Y)))))))))=0 := by
  dsimp only [numQx_06_01,numQx_07_01,numQy_06_01,numQy_07_01]
  ring
#print axioms numZero_07_01

theorem numZero_07_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_02 X Y))+(((X+Y+9)*(numQy_07_00 X Y))+((6*(0))+(0+numQy_06_02 X Y))))+(((X^3-9*X^2)*(numQx_07_02 X Y))+(((X^2+9*X)*(numQx_07_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_06_02 X Y)))))))))=0 := by
  dsimp only [numQx_06_02,numQx_07_00,numQx_07_02,numQy_06_02,numQy_07_00,numQy_07_02]
  ring
#print axioms numZero_07_02

theorem numZero_07_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_07_03 X Y))+(((X+Y+9)*(numQy_07_01 X Y))+((6*(numQy_07_00 X Y))+(0+numQy_06_03 X Y))))+(((X^3-9*X^2)*(numQx_07_03 X Y))+(((X^2+9*X)*(numQx_07_01 X Y))+(((6*X)*(numQx_07_00 X Y))+((X*(0))+((X-1)*(numQx_06_03 X Y)))))))))=0 := by
  dsimp only [numQx_06_03,numQx_07_00,numQx_07_01,numQx_07_03,numQy_06_03,numQy_07_00,numQy_07_01,numQy_07_03]
  ring
#print axioms numZero_07_03
end
end CriticalZeroSplitReduction20261003
