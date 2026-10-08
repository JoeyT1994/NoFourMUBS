import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_02_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_11 X Y))+(((X+Y+9)*(numQy_02_09 X Y))+((6*(numQy_02_08 X Y))+(numQy_02_07 X Y+numQy_01_11 X Y))))+((((X^3-9*X^2)*(numQx_02_11 X Y))+(((X^2+9*X)*(numQx_02_09 X Y))+(((6*X)*(numQx_02_08 X Y))+((X*(numQx_02_07 X Y))+((X-1)*(numQx_01_11 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_11,numQx_02_07,numQx_02_08,numQx_02_09,numQx_02_11,numQy_01_11,numQy_02_07,numQy_02_08,numQy_02_09,numQy_02_11]
  ring

theorem numZero_02_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_12 X Y))+(((X+Y+9)*(numQy_02_10 X Y))+((6*(numQy_02_09 X Y))+(numQy_02_08 X Y+numQy_01_12 X Y))))+((((X^3-9*X^2)*(numQx_02_12 X Y))+(((X^2+9*X)*(numQx_02_10 X Y))+(((6*X)*(numQx_02_09 X Y))+((X*(numQx_02_08 X Y))+((X-1)*(numQx_01_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_12,numQx_02_08,numQx_02_09,numQx_02_10,numQx_02_12,numQy_01_12,numQy_02_08,numQy_02_09,numQy_02_10,numQy_02_12]
  ring

theorem numZero_02_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_13 X Y))+(((X+Y+9)*(numQy_02_11 X Y))+((6*(numQy_02_10 X Y))+(numQy_02_09 X Y+numQy_01_13 X Y))))+((((X^3-9*X^2)*(numQx_02_13 X Y))+(((X^2+9*X)*(numQx_02_11 X Y))+(((6*X)*(numQx_02_10 X Y))+((X*(numQx_02_09 X Y))+((X-1)*(numQx_01_13 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_13,numQx_02_09,numQx_02_10,numQx_02_11,numQx_02_13,numQy_01_13,numQy_02_09,numQy_02_10,numQy_02_11,numQy_02_13]
  ring

theorem numZero_02_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_14 X Y))+(((X+Y+9)*(numQy_02_12 X Y))+((6*(numQy_02_11 X Y))+(numQy_02_10 X Y+numQy_01_14 X Y))))+((((X^3-9*X^2)*(numQx_02_14 X Y))+(((X^2+9*X)*(numQx_02_12 X Y))+(((6*X)*(numQx_02_11 X Y))+((X*(numQx_02_10 X Y))+((X-1)*(numQx_01_14 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_14,numQx_02_10,numQx_02_11,numQx_02_12,numQx_02_14,numQy_01_14,numQy_02_10,numQy_02_11,numQy_02_12,numQy_02_14]
  ring

theorem numZero_02_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_15 X Y))+(((X+Y+9)*(numQy_02_13 X Y))+((6*(numQy_02_12 X Y))+(numQy_02_11 X Y+numQy_01_15 X Y))))+((((X^3-9*X^2)*(numQx_02_15 X Y))+(((X^2+9*X)*(numQx_02_13 X Y))+(((6*X)*(numQx_02_12 X Y))+((X*(numQx_02_11 X Y))+((X-1)*(numQx_01_15 X Y))))))+(3570467226624 : R)))))=0 := by
  dsimp only [numQx_01_15,numQx_02_11,numQx_02_12,numQx_02_13,numQx_02_15,numQy_01_15,numQy_02_11,numQy_02_12,numQy_02_13,numQy_02_15]
  ring

theorem numZero_02_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_16 X Y))+(((X+Y+9)*(numQy_02_14 X Y))+((6*(numQy_02_13 X Y))+(numQy_02_12 X Y+numQy_01_16 X Y))))+((((X^3-9*X^2)*(numQx_02_16 X Y))+(((X^2+9*X)*(numQx_02_14 X Y))+(((6*X)*(numQx_02_13 X Y))+((X*(numQx_02_12 X Y))+((X-1)*(numQx_01_16 X Y))))))+(32134205039616 : R)))))=0 := by
  dsimp only [numQx_01_16,numQx_02_12,numQx_02_13,numQx_02_14,numQx_02_16,numQy_01_16,numQy_02_12,numQy_02_13,numQy_02_14,numQy_02_16]
  ring

theorem numZero_02_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_17 X Y))+(((X+Y+9)*(numQy_02_15 X Y))+((6*(numQy_02_14 X Y))+(numQy_02_13 X Y+numQy_01_17 X Y))))+((((X^3-9*X^2)*(numQx_02_17 X Y))+(((X^2+9*X)*(numQx_02_15 X Y))+(((6*X)*(numQx_02_14 X Y))+((X*(numQx_02_13 X Y))+((X-1)*(numQx_01_17 X Y))))))+(115147568058624 : R)))))=0 := by
  dsimp only [numQx_01_17,numQx_02_13,numQx_02_14,numQx_02_15,numQx_02_17,numQy_01_17,numQy_02_13,numQy_02_14,numQy_02_15,numQy_02_17]
  ring

theorem numZero_02_18 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_18 X Y))+(((X+Y+9)*(numQy_02_16 X Y))+((6*(numQy_02_15 X Y))+(numQy_02_14 X Y+numQy_01_18 X Y))))+((((X^3-9*X^2)*(numQx_02_18 X Y))+(((X^2+9*X)*(numQx_02_16 X Y))+(((6*X)*(numQx_02_15 X Y))+((X*(numQx_02_14 X Y))+((X-1)*(numQx_01_18 X Y))))))+(213699075489792 : R)))))=0 := by
  dsimp only [numQx_01_18,numQx_02_14,numQx_02_15,numQx_02_16,numQx_02_18,numQy_01_18,numQy_02_14,numQy_02_15,numQy_02_16,numQy_02_18]
  ring

theorem numZero_02_19 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_19 X Y))+(((X+Y+9)*(numQy_02_17 X Y))+((6*(numQy_02_16 X Y))+(numQy_02_15 X Y+numQy_01_19 X Y))))+((((X^3-9*X^2)*(numQx_02_19 X Y))+(((X^2+9*X)*(numQx_02_17 X Y))+(((6*X)*(numQx_02_16 X Y))+((X*(numQx_02_15 X Y))+((X-1)*(numQx_01_19 X Y))))))+(187499119220352 : R)))))=0 := by
  dsimp only [numQx_01_19,numQx_02_15,numQx_02_16,numQx_02_17,numQx_02_19,numQy_01_19,numQy_02_15,numQy_02_16,numQy_02_17,numQy_02_19]
  ring

theorem numZero_02_20 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_20 X Y))+(((X+Y+9)*(numQy_02_18 X Y))+((6*(numQy_02_17 X Y))+(numQy_02_16 X Y+numQy_01_20 X Y))))+((((X^3-9*X^2)*(numQx_02_20 X Y))+(((X^2+9*X)*(numQx_02_18 X Y))+(((6*X)*(numQx_02_17 X Y))+((X*(numQx_02_16 X Y))+((X-1)*(numQx_01_20 X Y))))))+(-59821855986816 : R)))))=0 := by
  dsimp only [numQx_01_20,numQx_02_16,numQx_02_17,numQx_02_18,numQx_02_20,numQy_01_20,numQy_02_16,numQy_02_17,numQy_02_18,numQy_02_20]
  ring

theorem numZero_02_21 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_21 X Y))+(((X+Y+9)*(numQy_02_19 X Y))+((6*(numQy_02_18 X Y))+(numQy_02_17 X Y+numQy_01_21 X Y))))+((((X^3-9*X^2)*(numQx_02_21 X Y))+(((X^2+9*X)*(numQx_02_19 X Y))+(((6*X)*(numQx_02_18 X Y))+((X*(numQx_02_17 X Y))+((X-1)*(numQx_01_21 X Y))))))+(-419259144819168 : R)))))=0 := by
  dsimp only [numQx_01_21,numQx_02_17,numQx_02_18,numQx_02_19,numQx_02_21,numQy_01_21,numQy_02_17,numQy_02_18,numQy_02_19,numQy_02_21]
  ring

theorem numZero_02_22 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_22 X Y))+(((X+Y+9)*(numQy_02_20 X Y))+((6*(numQy_02_19 X Y))+(numQy_02_18 X Y+numQy_01_22 X Y))))+((((X^3-9*X^2)*(numQx_02_22 X Y))+(((X^2+9*X)*(numQx_02_20 X Y))+(((6*X)*(numQx_02_19 X Y))+((X*(numQx_02_18 X Y))+((X-1)*(numQx_01_22 X Y))))))+(-658208470253760 : R)))))=0 := by
  dsimp only [numQx_01_22,numQx_02_18,numQx_02_19,numQx_02_20,numQx_02_22,numQy_01_22,numQy_02_18,numQy_02_19,numQy_02_20,numQy_02_22]
  ring
#print axioms numZero_02_11
#print axioms numZero_02_12
#print axioms numZero_02_13
#print axioms numZero_02_14
#print axioms numZero_02_15
#print axioms numZero_02_16
#print axioms numZero_02_17
#print axioms numZero_02_18
#print axioms numZero_02_19
#print axioms numZero_02_20
#print axioms numZero_02_21
#print axioms numZero_02_22
end
end CriticalZeroSplitReduction20261003
