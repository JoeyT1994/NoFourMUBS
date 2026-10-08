import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_05_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_08 X Y))+(((X+Y+9)*(numQy_05_06 X Y))+((6*(numQy_05_05 X Y))+(numQy_05_04 X Y+numQy_04_08 X Y))))+((((X^3-9*X^2)*(numQx_05_08 X Y))+(((X^2+9*X)*(numQx_05_06 X Y))+(((6*X)*(numQx_05_05 X Y))+((X*(numQx_05_04 X Y))+((X-1)*(numQx_04_08 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_08,numQx_05_04,numQx_05_05,numQx_05_06,numQx_05_08,numQy_04_08,numQy_05_04,numQy_05_05,numQy_05_06,numQy_05_08]
  ring

theorem numZero_05_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_09 X Y))+(((X+Y+9)*(numQy_05_07 X Y))+((6*(numQy_05_06 X Y))+(numQy_05_05 X Y+numQy_04_09 X Y))))+((((X^3-9*X^2)*(numQx_05_09 X Y))+(((X^2+9*X)*(numQx_05_07 X Y))+(((6*X)*(numQx_05_06 X Y))+((X*(numQx_05_05 X Y))+((X-1)*(numQx_04_09 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_09,numQx_05_05,numQx_05_06,numQx_05_07,numQx_05_09,numQy_04_09,numQy_05_05,numQy_05_06,numQy_05_07,numQy_05_09]
  ring

theorem numZero_05_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_10 X Y))+(((X+Y+9)*(numQy_05_08 X Y))+((6*(numQy_05_07 X Y))+(numQy_05_06 X Y+numQy_04_10 X Y))))+((((X^3-9*X^2)*(numQx_05_10 X Y))+(((X^2+9*X)*(numQx_05_08 X Y))+(((6*X)*(numQx_05_07 X Y))+((X*(numQx_05_06 X Y))+((X-1)*(numQx_04_10 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_10,numQx_05_06,numQx_05_07,numQx_05_08,numQx_05_10,numQy_04_10,numQy_05_06,numQy_05_07,numQy_05_08,numQy_05_10]
  ring

theorem numZero_05_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_11 X Y))+(((X+Y+9)*(numQy_05_09 X Y))+((6*(numQy_05_08 X Y))+(numQy_05_07 X Y+numQy_04_11 X Y))))+((((X^3-9*X^2)*(numQx_05_11 X Y))+(((X^2+9*X)*(numQx_05_09 X Y))+(((6*X)*(numQx_05_08 X Y))+((X*(numQx_05_07 X Y))+((X-1)*(numQx_04_11 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_11,numQx_05_07,numQx_05_08,numQx_05_09,numQx_05_11,numQy_04_11,numQy_05_07,numQy_05_08,numQy_05_09,numQy_05_11]
  ring

theorem numZero_05_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_12 X Y))+(((X+Y+9)*(numQy_05_10 X Y))+((6*(numQy_05_09 X Y))+(numQy_05_08 X Y+numQy_04_12 X Y))))+((((X^3-9*X^2)*(numQx_05_12 X Y))+(((X^2+9*X)*(numQx_05_10 X Y))+(((6*X)*(numQx_05_09 X Y))+((X*(numQx_05_08 X Y))+((X-1)*(numQx_04_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_12,numQx_05_08,numQx_05_09,numQx_05_10,numQx_05_12,numQy_04_12,numQy_05_08,numQy_05_09,numQy_05_10,numQy_05_12]
  ring

theorem numZero_05_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_13 X Y))+(((X+Y+9)*(numQy_05_11 X Y))+((6*(numQy_05_10 X Y))+(numQy_05_09 X Y+numQy_04_13 X Y))))+((((X^3-9*X^2)*(numQx_05_13 X Y))+(((X^2+9*X)*(numQx_05_11 X Y))+(((6*X)*(numQx_05_10 X Y))+((X*(numQx_05_09 X Y))+((X-1)*(numQx_04_13 X Y))))))+(-143327232 : R)))))=0 := by
  dsimp only [numQx_04_13,numQx_05_09,numQx_05_10,numQx_05_11,numQx_05_13,numQy_04_13,numQy_05_09,numQy_05_10,numQy_05_11,numQy_05_13]
  ring

theorem numZero_05_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_14 X Y))+(((X+Y+9)*(numQy_05_12 X Y))+((6*(numQy_05_11 X Y))+(numQy_05_10 X Y+numQy_04_14 X Y))))+((((X^3-9*X^2)*(numQx_05_14 X Y))+(((X^2+9*X)*(numQx_05_12 X Y))+(((6*X)*(numQx_05_11 X Y))+((X*(numQx_05_10 X Y))+((X-1)*(numQx_04_14 X Y))))))+(-633028608 : R)))))=0 := by
  dsimp only [numQx_04_14,numQx_05_10,numQx_05_11,numQx_05_12,numQx_05_14,numQy_04_14,numQy_05_10,numQy_05_11,numQy_05_12,numQy_05_14]
  ring

theorem numZero_05_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_15 X Y))+(((X+Y+9)*(numQy_05_13 X Y))+((6*(numQy_05_12 X Y))+(numQy_05_11 X Y+numQy_04_15 X Y))))+((((X^3-9*X^2)*(numQx_05_15 X Y))+(((X^2+9*X)*(numQx_05_13 X Y))+(((6*X)*(numQx_05_12 X Y))+((X*(numQx_05_11 X Y))+((X-1)*(numQx_04_15 X Y))))))+(-1254362112 : R)))))=0 := by
  dsimp only [numQx_04_15,numQx_05_11,numQx_05_12,numQx_05_13,numQx_05_15,numQy_04_15,numQy_05_11,numQy_05_12,numQy_05_13,numQy_05_15]
  ring

theorem numZero_05_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_16 X Y))+(((X+Y+9)*(numQy_05_14 X Y))+((6*(numQy_05_13 X Y))+(numQy_05_12 X Y+numQy_04_16 X Y))))+((((X^3-9*X^2)*(numQx_05_16 X Y))+(((X^2+9*X)*(numQx_05_14 X Y))+(((6*X)*(numQx_05_13 X Y))+((X*(numQx_05_12 X Y))+((X-1)*(numQx_04_16 X Y))))))+(-1468357632 : R)))))=0 := by
  dsimp only [numQx_04_16,numQx_05_12,numQx_05_13,numQx_05_14,numQx_05_16,numQy_04_16,numQy_05_12,numQy_05_13,numQy_05_14,numQy_05_16]
  ring

theorem numZero_05_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_17 X Y))+(((X+Y+9)*(numQy_05_15 X Y))+((6*(numQy_05_14 X Y))+(numQy_05_13 X Y+numQy_04_17 X Y))))+((((X^3-9*X^2)*(numQx_05_17 X Y))+(((X^2+9*X)*(numQx_05_15 X Y))+(((6*X)*(numQx_05_14 X Y))+((X*(numQx_05_13 X Y))+((X-1)*(numQx_04_17 X Y))))))+(-1124409600 : R)))))=0 := by
  dsimp only [numQx_04_17,numQx_05_13,numQx_05_14,numQx_05_15,numQx_05_17,numQy_04_17,numQy_05_13,numQy_05_14,numQy_05_15,numQy_05_17]
  ring

theorem numZero_05_18 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_18 X Y))+(((X+Y+9)*(numQy_05_16 X Y))+((6*(numQy_05_15 X Y))+(numQy_05_14 X Y+numQy_04_18 X Y))))+((((X^3-9*X^2)*(numQx_05_18 X Y))+(((X^2+9*X)*(numQx_05_16 X Y))+(((6*X)*(numQx_05_15 X Y))+((X*(numQx_05_14 X Y))+((X-1)*(numQx_04_18 X Y))))))+(-588487680 : R)))))=0 := by
  dsimp only [numQx_04_18,numQx_05_14,numQx_05_15,numQx_05_16,numQx_05_18,numQy_04_18,numQy_05_14,numQy_05_15,numQy_05_16,numQy_05_18]
  ring

theorem numZero_05_19 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_19 X Y))+(((X+Y+9)*(numQy_05_17 X Y))+((6*(numQy_05_16 X Y))+(numQy_05_15 X Y+numQy_04_19 X Y))))+((((X^3-9*X^2)*(numQx_05_19 X Y))+(((X^2+9*X)*(numQx_05_17 X Y))+(((6*X)*(numQx_05_16 X Y))+((X*(numQx_05_15 X Y))+((X-1)*(numQx_04_19 X Y))))))+(-213171264 : R)))))=0 := by
  dsimp only [numQx_04_19,numQx_05_15,numQx_05_16,numQx_05_17,numQx_05_19,numQy_04_19,numQy_05_15,numQy_05_16,numQy_05_17,numQy_05_19]
  ring
#print axioms numZero_05_08
#print axioms numZero_05_09
#print axioms numZero_05_10
#print axioms numZero_05_11
#print axioms numZero_05_12
#print axioms numZero_05_13
#print axioms numZero_05_14
#print axioms numZero_05_15
#print axioms numZero_05_16
#print axioms numZero_05_17
#print axioms numZero_05_18
#print axioms numZero_05_19
end
end CriticalZeroSplitReduction20261003
