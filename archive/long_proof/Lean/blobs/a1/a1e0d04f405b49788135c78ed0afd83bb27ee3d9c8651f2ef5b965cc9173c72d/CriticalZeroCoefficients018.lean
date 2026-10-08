import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_06_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_07 X Y))+(((X+Y+9)*(numQy_06_05 X Y))+((6*(numQy_06_04 X Y))+(numQy_06_03 X Y+numQy_05_07 X Y))))+(((X^3-9*X^2)*(numQx_06_07 X Y))+(((X^2+9*X)*(numQx_06_05 X Y))+(((6*X)*(numQx_06_04 X Y))+((X*(numQx_06_03 X Y))+((X-1)*(numQx_05_07 X Y)))))))))=0 := by
  dsimp only [numQx_05_07,numQx_06_03,numQx_06_04,numQx_06_05,numQx_06_07,numQy_05_07,numQy_06_03,numQy_06_04,numQy_06_05,numQy_06_07]
  ring

theorem numZero_06_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_08 X Y))+(((X+Y+9)*(numQy_06_06 X Y))+((6*(numQy_06_05 X Y))+(numQy_06_04 X Y+numQy_05_08 X Y))))+(((X^3-9*X^2)*(numQx_06_08 X Y))+(((X^2+9*X)*(numQx_06_06 X Y))+(((6*X)*(numQx_06_05 X Y))+((X*(numQx_06_04 X Y))+((X-1)*(numQx_05_08 X Y)))))))))=0 := by
  dsimp only [numQx_05_08,numQx_06_04,numQx_06_05,numQx_06_06,numQx_06_08,numQy_05_08,numQy_06_04,numQy_06_05,numQy_06_06,numQy_06_08]
  ring

theorem numZero_06_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_09 X Y))+(((X+Y+9)*(numQy_06_07 X Y))+((6*(numQy_06_06 X Y))+(numQy_06_05 X Y+numQy_05_09 X Y))))+(((X^3-9*X^2)*(numQx_06_09 X Y))+(((X^2+9*X)*(numQx_06_07 X Y))+(((6*X)*(numQx_06_06 X Y))+((X*(numQx_06_05 X Y))+((X-1)*(numQx_05_09 X Y)))))))))=0 := by
  dsimp only [numQx_05_09,numQx_06_05,numQx_06_06,numQx_06_07,numQx_06_09,numQy_05_09,numQy_06_05,numQy_06_06,numQy_06_07,numQy_06_09]
  ring

theorem numZero_06_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_10 X Y))+(((X+Y+9)*(numQy_06_08 X Y))+((6*(numQy_06_07 X Y))+(numQy_06_06 X Y+numQy_05_10 X Y))))+(((X^3-9*X^2)*(numQx_06_10 X Y))+(((X^2+9*X)*(numQx_06_08 X Y))+(((6*X)*(numQx_06_07 X Y))+((X*(numQx_06_06 X Y))+((X-1)*(numQx_05_10 X Y)))))))))=0 := by
  dsimp only [numQx_05_10,numQx_06_06,numQx_06_07,numQx_06_08,numQx_06_10,numQy_05_10,numQy_06_06,numQy_06_07,numQy_06_08,numQy_06_10]
  ring

theorem numZero_06_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_11 X Y))+(((X+Y+9)*(numQy_06_09 X Y))+((6*(numQy_06_08 X Y))+(numQy_06_07 X Y+numQy_05_11 X Y))))+(((X^3-9*X^2)*(numQx_06_11 X Y))+(((X^2+9*X)*(numQx_06_09 X Y))+(((6*X)*(numQx_06_08 X Y))+((X*(numQx_06_07 X Y))+((X-1)*(numQx_05_11 X Y)))))))))=0 := by
  dsimp only [numQx_05_11,numQx_06_07,numQx_06_08,numQx_06_09,numQx_06_11,numQy_05_11,numQy_06_07,numQy_06_08,numQy_06_09,numQy_06_11]
  ring

theorem numZero_06_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_12 X Y))+(((X+Y+9)*(numQy_06_10 X Y))+((6*(numQy_06_09 X Y))+(numQy_06_08 X Y+numQy_05_12 X Y))))+(((X^3-9*X^2)*(numQx_06_12 X Y))+(((X^2+9*X)*(numQx_06_10 X Y))+(((6*X)*(numQx_06_09 X Y))+((X*(numQx_06_08 X Y))+((X-1)*(numQx_05_12 X Y)))))))))=0 := by
  dsimp only [numQx_05_12,numQx_06_08,numQx_06_09,numQx_06_10,numQx_06_12,numQy_05_12,numQy_06_08,numQy_06_09,numQy_06_10,numQy_06_12]
  ring

theorem numZero_06_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_13 X Y))+(((X+Y+9)*(numQy_06_11 X Y))+((6*(numQy_06_10 X Y))+(numQy_06_09 X Y+numQy_05_13 X Y))))+(((X^3-9*X^2)*(numQx_06_13 X Y))+(((X^2+9*X)*(numQx_06_11 X Y))+(((6*X)*(numQx_06_10 X Y))+((X*(numQx_06_09 X Y))+((X-1)*(numQx_05_13 X Y)))))))))=0 := by
  dsimp only [numQx_05_13,numQx_06_09,numQx_06_10,numQx_06_11,numQx_06_13,numQy_05_13,numQy_06_09,numQy_06_10,numQy_06_11,numQy_06_13]
  ring

theorem numZero_06_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_14 X Y))+(((X+Y+9)*(numQy_06_12 X Y))+((6*(numQy_06_11 X Y))+(numQy_06_10 X Y+numQy_05_14 X Y))))+(((X^3-9*X^2)*(numQx_06_14 X Y))+(((X^2+9*X)*(numQx_06_12 X Y))+(((6*X)*(numQx_06_11 X Y))+((X*(numQx_06_10 X Y))+((X-1)*(numQx_05_14 X Y)))))))))=0 := by
  dsimp only [numQx_05_14,numQx_06_10,numQx_06_11,numQx_06_12,numQx_06_14,numQy_05_14,numQy_06_10,numQy_06_11,numQy_06_12,numQy_06_14]
  ring

theorem numZero_06_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_15 X Y))+(((X+Y+9)*(numQy_06_13 X Y))+((6*(numQy_06_12 X Y))+(numQy_06_11 X Y+numQy_05_15 X Y))))+(((X^3-9*X^2)*(numQx_06_15 X Y))+(((X^2+9*X)*(numQx_06_13 X Y))+(((6*X)*(numQx_06_12 X Y))+((X*(numQx_06_11 X Y))+((X-1)*(numQx_05_15 X Y)))))))))=0 := by
  dsimp only [numQx_05_15,numQx_06_11,numQx_06_12,numQx_06_13,numQx_06_15,numQy_05_15,numQy_06_11,numQy_06_12,numQy_06_13,numQy_06_15]
  ring

theorem numZero_06_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_16 X Y))+(((X+Y+9)*(numQy_06_14 X Y))+((6*(numQy_06_13 X Y))+(numQy_06_12 X Y+numQy_05_16 X Y))))+(((X^3-9*X^2)*(numQx_06_16 X Y))+(((X^2+9*X)*(numQx_06_14 X Y))+(((6*X)*(numQx_06_13 X Y))+((X*(numQx_06_12 X Y))+((X-1)*(numQx_05_16 X Y)))))))))=0 := by
  dsimp only [numQx_05_16,numQx_06_12,numQx_06_13,numQx_06_14,numQx_06_16,numQy_05_16,numQy_06_12,numQy_06_13,numQy_06_14,numQy_06_16]
  ring

theorem numZero_06_17 (X Y : R) : (-(((((X+Y+9)*(numQy_06_15 X Y))+((6*(numQy_06_14 X Y))+(numQy_06_13 X Y+numQy_05_17 X Y)))+(((X^2+9*X)*(numQx_06_15 X Y))+(((6*X)*(numQx_06_14 X Y))+((X*(numQx_06_13 X Y))+((X-1)*(numQx_05_17 X Y))))))))=0 := by
  dsimp only [numQx_05_17,numQx_06_13,numQx_06_14,numQx_06_15,numQy_05_17,numQy_06_13,numQy_06_14,numQy_06_15]
  ring

theorem numZero_06_18 (X Y : R) : (-(((((X+Y+9)*(numQy_06_16 X Y))+((6*(numQy_06_15 X Y))+(numQy_06_14 X Y+numQy_05_18 X Y)))+(((X^2+9*X)*(numQx_06_16 X Y))+(((6*X)*(numQx_06_15 X Y))+((X*(numQx_06_14 X Y))+((X-1)*(numQx_05_18 X Y))))))))=0 := by
  dsimp only [numQx_05_18,numQx_06_14,numQx_06_15,numQx_06_16,numQy_05_18,numQy_06_14,numQy_06_15,numQy_06_16]
  ring
#print axioms numZero_06_07
#print axioms numZero_06_08
#print axioms numZero_06_09
#print axioms numZero_06_10
#print axioms numZero_06_11
#print axioms numZero_06_12
#print axioms numZero_06_13
#print axioms numZero_06_14
#print axioms numZero_06_15
#print axioms numZero_06_16
#print axioms numZero_06_17
#print axioms numZero_06_18
end
end CriticalZeroSplitReduction20261003
