import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_03_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_10 X Y))+(((X+Y+9)*(numQy_03_08 X Y))+((6*(numQy_03_07 X Y))+(numQy_03_06 X Y+numQy_02_10 X Y))))+((((X^3-9*X^2)*(numQx_03_10 X Y))+(((X^2+9*X)*(numQx_03_08 X Y))+(((6*X)*(numQx_03_07 X Y))+((X*(numQx_03_06 X Y))+((X-1)*(numQx_02_10 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_10,numQx_03_06,numQx_03_07,numQx_03_08,numQx_03_10,numQy_02_10,numQy_03_06,numQy_03_07,numQy_03_08,numQy_03_10]
  ring

theorem numZero_03_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_11 X Y))+(((X+Y+9)*(numQy_03_09 X Y))+((6*(numQy_03_08 X Y))+(numQy_03_07 X Y+numQy_02_11 X Y))))+((((X^3-9*X^2)*(numQx_03_11 X Y))+(((X^2+9*X)*(numQx_03_09 X Y))+(((6*X)*(numQx_03_08 X Y))+((X*(numQx_03_07 X Y))+((X-1)*(numQx_02_11 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_11,numQx_03_07,numQx_03_08,numQx_03_09,numQx_03_11,numQy_02_11,numQy_03_07,numQy_03_08,numQy_03_09,numQy_03_11]
  ring

theorem numZero_03_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_12 X Y))+(((X+Y+9)*(numQy_03_10 X Y))+((6*(numQy_03_09 X Y))+(numQy_03_08 X Y+numQy_02_12 X Y))))+((((X^3-9*X^2)*(numQx_03_12 X Y))+(((X^2+9*X)*(numQx_03_10 X Y))+(((6*X)*(numQx_03_09 X Y))+((X*(numQx_03_08 X Y))+((X-1)*(numQx_02_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_12,numQx_03_08,numQx_03_09,numQx_03_10,numQx_03_12,numQy_02_12,numQy_03_08,numQy_03_09,numQy_03_10,numQy_03_12]
  ring

theorem numZero_03_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_13 X Y))+(((X+Y+9)*(numQy_03_11 X Y))+((6*(numQy_03_10 X Y))+(numQy_03_09 X Y+numQy_02_13 X Y))))+((((X^3-9*X^2)*(numQx_03_13 X Y))+(((X^2+9*X)*(numQx_03_11 X Y))+(((6*X)*(numQx_03_10 X Y))+((X*(numQx_03_09 X Y))+((X-1)*(numQx_02_13 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_13,numQx_03_09,numQx_03_10,numQx_03_11,numQx_03_13,numQy_02_13,numQy_03_09,numQy_03_10,numQy_03_11,numQy_03_13]
  ring

theorem numZero_03_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_14 X Y))+(((X+Y+9)*(numQy_03_12 X Y))+((6*(numQy_03_11 X Y))+(numQy_03_10 X Y+numQy_02_14 X Y))))+((((X^3-9*X^2)*(numQx_03_14 X Y))+(((X^2+9*X)*(numQx_03_12 X Y))+(((6*X)*(numQx_03_11 X Y))+((X*(numQx_03_10 X Y))+((X-1)*(numQx_02_14 X Y))))))+(235092492288 : R)))))=0 := by
  dsimp only [numQx_02_14,numQx_03_10,numQx_03_11,numQx_03_12,numQx_03_14,numQy_02_14,numQy_03_10,numQy_03_11,numQy_03_12,numQy_03_14]
  ring

theorem numZero_03_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_15 X Y))+(((X+Y+9)*(numQy_03_13 X Y))+((6*(numQy_03_12 X Y))+(numQy_03_11 X Y+numQy_02_15 X Y))))+((((X^3-9*X^2)*(numQx_03_15 X Y))+(((X^2+9*X)*(numQx_03_13 X Y))+(((6*X)*(numQx_03_12 X Y))+((X*(numQx_03_11 X Y))+((X-1)*(numQx_02_15 X Y))))))+(1288110947328 : R)))))=0 := by
  dsimp only [numQx_02_15,numQx_03_11,numQx_03_12,numQx_03_13,numQx_03_15,numQy_02_15,numQy_03_11,numQy_03_12,numQy_03_13,numQy_03_15]
  ring

theorem numZero_03_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_16 X Y))+(((X+Y+9)*(numQy_03_14 X Y))+((6*(numQy_03_13 X Y))+(numQy_03_12 X Y+numQy_02_16 X Y))))+((((X^3-9*X^2)*(numQx_03_16 X Y))+(((X^2+9*X)*(numQx_03_14 X Y))+(((6*X)*(numQx_03_13 X Y))+((X*(numQx_03_12 X Y))+((X-1)*(numQx_02_16 X Y))))))+(2522346531840 : R)))))=0 := by
  dsimp only [numQx_02_16,numQx_03_12,numQx_03_13,numQx_03_14,numQx_03_16,numQy_02_16,numQy_03_12,numQy_03_13,numQy_03_14,numQy_03_16]
  ring

theorem numZero_03_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_17 X Y))+(((X+Y+9)*(numQy_03_15 X Y))+((6*(numQy_03_14 X Y))+(numQy_03_13 X Y+numQy_02_17 X Y))))+((((X^3-9*X^2)*(numQx_03_17 X Y))+(((X^2+9*X)*(numQx_03_15 X Y))+(((6*X)*(numQx_03_14 X Y))+((X*(numQx_03_13 X Y))+((X-1)*(numQx_02_17 X Y))))))+(754663226112 : R)))))=0 := by
  dsimp only [numQx_02_17,numQx_03_13,numQx_03_14,numQx_03_15,numQx_03_17,numQy_02_17,numQy_03_13,numQy_03_14,numQy_03_15,numQy_03_17]
  ring

theorem numZero_03_18 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_18 X Y))+(((X+Y+9)*(numQy_03_16 X Y))+((6*(numQy_03_15 X Y))+(numQy_03_14 X Y+numQy_02_18 X Y))))+((((X^3-9*X^2)*(numQx_03_18 X Y))+(((X^2+9*X)*(numQx_03_16 X Y))+(((6*X)*(numQx_03_15 X Y))+((X*(numQx_03_14 X Y))+((X-1)*(numQx_02_18 X Y))))))+(-6274575083520 : R)))))=0 := by
  dsimp only [numQx_02_18,numQx_03_14,numQx_03_15,numQx_03_16,numQx_03_18,numQy_02_18,numQy_03_14,numQy_03_15,numQy_03_16,numQy_03_18]
  ring

theorem numZero_03_19 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_19 X Y))+(((X+Y+9)*(numQy_03_17 X Y))+((6*(numQy_03_16 X Y))+(numQy_03_15 X Y+numQy_02_19 X Y))))+((((X^3-9*X^2)*(numQx_03_19 X Y))+(((X^2+9*X)*(numQx_03_17 X Y))+(((6*X)*(numQx_03_16 X Y))+((X*(numQx_03_15 X Y))+((X-1)*(numQx_02_19 X Y))))))+(-15295229108352 : R)))))=0 := by
  dsimp only [numQx_02_19,numQx_03_15,numQx_03_16,numQx_03_17,numQx_03_19,numQy_02_19,numQy_03_15,numQy_03_16,numQy_03_17,numQy_03_19]
  ring

theorem numZero_03_20 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_20 X Y))+(((X+Y+9)*(numQy_03_18 X Y))+((6*(numQy_03_17 X Y))+(numQy_03_16 X Y+numQy_02_20 X Y))))+((((X^3-9*X^2)*(numQx_03_20 X Y))+(((X^2+9*X)*(numQx_03_18 X Y))+(((6*X)*(numQx_03_17 X Y))+((X*(numQx_03_16 X Y))+((X-1)*(numQx_02_20 X Y))))))+(-19972121539968 : R)))))=0 := by
  dsimp only [numQx_02_20,numQx_03_16,numQx_03_17,numQx_03_18,numQx_03_20,numQy_02_20,numQy_03_16,numQy_03_17,numQy_03_18,numQy_03_20]
  ring

theorem numZero_03_21 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_21 X Y))+(((X+Y+9)*(numQy_03_19 X Y))+((6*(numQy_03_18 X Y))+(numQy_03_17 X Y+numQy_02_21 X Y))))+((((X^3-9*X^2)*(numQx_03_21 X Y))+(((X^2+9*X)*(numQx_03_19 X Y))+(((6*X)*(numQx_03_18 X Y))+((X*(numQx_03_17 X Y))+((X-1)*(numQx_02_21 X Y))))))+(-17744308900704 : R)))))=0 := by
  dsimp only [numQx_02_21,numQx_03_17,numQx_03_18,numQx_03_19,numQx_03_21,numQy_02_21,numQy_03_17,numQy_03_18,numQy_03_19,numQy_03_21]
  ring
#print axioms numZero_03_10
#print axioms numZero_03_11
#print axioms numZero_03_12
#print axioms numZero_03_13
#print axioms numZero_03_14
#print axioms numZero_03_15
#print axioms numZero_03_16
#print axioms numZero_03_17
#print axioms numZero_03_18
#print axioms numZero_03_19
#print axioms numZero_03_20
#print axioms numZero_03_21
end
end CriticalZeroSplitReduction20261003
