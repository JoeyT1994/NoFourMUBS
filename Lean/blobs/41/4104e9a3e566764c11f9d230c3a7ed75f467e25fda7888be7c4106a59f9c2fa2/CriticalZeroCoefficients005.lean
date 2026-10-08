import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_01_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_16 X Y))+(((X+Y+9)*(numQy_01_14 X Y))+((6*(numQy_01_13 X Y))+(numQy_01_12 X Y+numQy_00_16 X Y))))+((((X^3-9*X^2)*(numQx_01_16 X Y))+(((X^2+9*X)*(numQx_01_14 X Y))+(((6*X)*(numQx_01_13 X Y))+((X*(numQx_01_12 X Y))+((X-1)*(numQx_00_16 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_00_16,numQx_01_12,numQx_01_13,numQx_01_14,numQx_01_16,numQy_00_16,numQy_01_12,numQy_01_13,numQy_01_14,numQy_01_16]
  ring

theorem numZero_01_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_17 X Y))+(((X+Y+9)*(numQy_01_15 X Y))+((6*(numQy_01_14 X Y))+(numQy_01_13 X Y+numQy_00_17 X Y))))+((((X^3-9*X^2)*(numQx_01_17 X Y))+(((X^2+9*X)*(numQx_01_15 X Y))+(((6*X)*(numQx_01_14 X Y))+((X*(numQx_01_13 X Y))+((X-1)*(numQx_00_17 X Y))))))+(144603922678272 : R)))))=0 := by
  dsimp only [numQx_00_17,numQx_01_13,numQx_01_14,numQx_01_15,numQx_01_17,numQy_00_17,numQy_01_13,numQy_01_14,numQy_01_15,numQy_01_17]
  ring

theorem numZero_01_18 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_18 X Y))+(((X+Y+9)*(numQy_01_16 X Y))+((6*(numQy_01_15 X Y))+(numQy_01_14 X Y+numQy_00_18 X Y))))+((((X^3-9*X^2)*(numQx_01_18 X Y))+(((X^2+9*X)*(numQx_01_16 X Y))+(((6*X)*(numQx_01_15 X Y))+((X*(numQx_01_14 X Y))+((X-1)*(numQx_00_18 X Y))))))+(1060428766307328 : R)))))=0 := by
  dsimp only [numQx_00_18,numQx_01_14,numQx_01_15,numQx_01_16,numQx_01_18,numQy_00_18,numQy_01_14,numQy_01_15,numQy_01_16,numQy_01_18]
  ring

theorem numZero_01_19 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_19 X Y))+(((X+Y+9)*(numQy_01_17 X Y))+((6*(numQy_01_16 X Y))+(numQy_01_15 X Y+numQy_00_19 X Y))))+((((X^3-9*X^2)*(numQx_01_19 X Y))+(((X^2+9*X)*(numQx_01_17 X Y))+(((6*X)*(numQx_01_16 X Y))+((X*(numQx_01_15 X Y))+((X-1)*(numQx_00_19 X Y))))))+(3460452205203648 : R)))))=0 := by
  dsimp only [numQx_00_19,numQx_01_15,numQx_01_16,numQx_01_17,numQx_01_19,numQy_00_19,numQy_01_15,numQy_01_16,numQy_01_17,numQy_01_19]
  ring

theorem numZero_01_20 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_20 X Y))+(((X+Y+9)*(numQy_01_18 X Y))+((6*(numQy_01_17 X Y))+(numQy_01_16 X Y+numQy_00_20 X Y))))+((((X^3-9*X^2)*(numQx_01_20 X Y))+(((X^2+9*X)*(numQx_01_18 X Y))+(((6*X)*(numQx_01_17 X Y))+((X*(numQx_01_16 X Y))+((X-1)*(numQx_00_20 X Y))))))+(6482406404137536 : R)))))=0 := by
  dsimp only [numQx_00_20,numQx_01_16,numQx_01_17,numQx_01_18,numQx_01_20,numQy_00_20,numQy_01_16,numQy_01_17,numQy_01_18,numQy_01_20]
  ring

theorem numZero_01_21 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_21 X Y))+(((X+Y+9)*(numQy_01_19 X Y))+((6*(numQy_01_18 X Y))+(numQy_01_17 X Y+numQy_00_21 X Y))))+((((X^3-9*X^2)*(numQx_01_21 X Y))+(((X^2+9*X)*(numQx_01_19 X Y))+(((6*X)*(numQx_01_18 X Y))+((X*(numQx_01_17 X Y))+((X-1)*(numQx_00_21 X Y))))))+(7167991900199760 : R)))))=0 := by
  dsimp only [numQx_00_21,numQx_01_17,numQx_01_18,numQx_01_19,numQx_01_21,numQy_00_21,numQy_01_17,numQy_01_18,numQy_01_19,numQy_01_21]
  ring

theorem numZero_01_22 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_22 X Y))+(((X+Y+9)*(numQy_01_20 X Y))+((6*(numQy_01_19 X Y))+(numQy_01_18 X Y+numQy_00_22 X Y))))+((((X^3-9*X^2)*(numQx_01_22 X Y))+(((X^2+9*X)*(numQx_01_20 X Y))+(((6*X)*(numQx_01_19 X Y))+((X*(numQx_01_18 X Y))+((X-1)*(numQx_00_22 X Y))))))+(3266791550526240 : R)))))=0 := by
  dsimp only [numQx_00_22,numQx_01_18,numQx_01_19,numQx_01_20,numQx_01_22,numQy_00_22,numQy_01_18,numQy_01_19,numQy_01_20,numQy_01_22]
  ring

theorem numZero_01_23 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_23 X Y))+(((X+Y+9)*(numQy_01_21 X Y))+((6*(numQy_01_20 X Y))+(numQy_01_19 X Y+numQy_00_23 X Y))))+((((X^3-9*X^2)*(numQx_01_23 X Y))+(((X^2+9*X)*(numQx_01_21 X Y))+(((6*X)*(numQx_01_20 X Y))+((X*(numQx_01_19 X Y))+((X-1)*(numQx_00_23 X Y))))))+(-3683079515002608 : R)))))=0 := by
  dsimp only [numQx_00_23,numQx_01_19,numQx_01_20,numQx_01_21,numQx_01_23,numQy_00_23,numQy_01_19,numQy_01_20,numQy_01_21,numQy_01_23]
  ring

theorem numZero_01_24 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_24 X Y))+(((X+Y+9)*(numQy_01_22 X Y))+((6*(numQy_01_21 X Y))+(numQy_01_20 X Y+numQy_00_24 X Y))))+((((X^3-9*X^2)*(numQx_01_24 X Y))+(((X^2+9*X)*(numQx_01_22 X Y))+(((6*X)*(numQx_01_21 X Y))+((X*(numQx_01_20 X Y))+((X-1)*(numQx_00_24 X Y))))))+(-9443026257495552 : R)))))=0 := by
  dsimp only [numQx_00_24,numQx_01_20,numQx_01_21,numQx_01_22,numQx_01_24,numQy_00_24,numQy_01_20,numQy_01_21,numQy_01_22,numQy_01_24]
  ring

theorem numZero_01_25 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_25 X Y))+(((X+Y+9)*(numQy_01_23 X Y))+((6*(numQy_01_22 X Y))+(numQy_01_21 X Y+numQy_00_25 X Y))))+((((X^3-9*X^2)*(numQx_01_25 X Y))+(((X^2+9*X)*(numQx_01_23 X Y))+(((6*X)*(numQx_01_22 X Y))+((X*(numQx_01_21 X Y))+((X-1)*(numQx_00_25 X Y))))))+(-11082198558343104 : R)))))=0 := by
  dsimp only [numQx_00_25,numQx_01_21,numQx_01_22,numQx_01_23,numQx_01_25,numQy_00_25,numQy_01_21,numQy_01_22,numQy_01_23,numQy_01_25]
  ring

theorem numZero_01_26 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_26 X Y))+(((X+Y+9)*(numQy_01_24 X Y))+((6*(numQy_01_23 X Y))+(numQy_01_22 X Y+numQy_00_26 X Y))))+((((X^3-9*X^2)*(numQx_01_26 X Y))+(((X^2+9*X)*(numQx_01_24 X Y))+(((6*X)*(numQx_01_23 X Y))+((X*(numQx_01_22 X Y))+((X-1)*(numQx_00_26 X Y))))))+(-9026477257703040 : R)))))=0 := by
  dsimp only [numQx_00_26,numQx_01_22,numQx_01_23,numQx_01_24,numQx_01_26,numQy_00_26,numQy_01_22,numQy_01_23,numQy_01_24,numQy_01_26]
  ring

theorem numZero_01_27 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_27 X Y))+(((X+Y+9)*(numQy_01_25 X Y))+((6*(numQy_01_24 X Y))+(numQy_01_23 X Y+numQy_00_27 X Y))))+((((X^3-9*X^2)*(numQx_01_27 X Y))+(((X^2+9*X)*(numQx_01_25 X Y))+(((6*X)*(numQx_01_24 X Y))+((X*(numQx_01_23 X Y))+((X-1)*(numQx_00_27 X Y))))))+(-5617208483834688 : R)))))=0 := by
  dsimp only [numQx_00_27,numQx_01_23,numQx_01_24,numQx_01_25,numQx_01_27,numQy_00_27,numQy_01_23,numQy_01_24,numQy_01_25,numQy_01_27]
  ring
#print axioms numZero_01_16
#print axioms numZero_01_17
#print axioms numZero_01_18
#print axioms numZero_01_19
#print axioms numZero_01_20
#print axioms numZero_01_21
#print axioms numZero_01_22
#print axioms numZero_01_23
#print axioms numZero_01_24
#print axioms numZero_01_25
#print axioms numZero_01_26
#print axioms numZero_01_27
end
end CriticalZeroSplitReduction20261003
