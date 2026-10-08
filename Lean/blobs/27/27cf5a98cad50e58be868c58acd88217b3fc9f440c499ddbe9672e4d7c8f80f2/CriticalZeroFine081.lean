import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_03_20 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_20 X Y))+(((X+Y+9)*(numQy_03_18 X Y))+((6*(numQy_03_17 X Y))+(numQy_03_16 X Y+numQy_02_20 X Y))))+((((X^3-9*X^2)*(numQx_03_20 X Y))+(((X^2+9*X)*(numQx_03_18 X Y))+(((6*X)*(numQx_03_17 X Y))+((X*(numQx_03_16 X Y))+((X-1)*(numQx_02_20 X Y))))))+(-19972121539968 : R)))))=0 := by
  dsimp only [numQx_02_20,numQx_03_16,numQx_03_17,numQx_03_18,numQx_03_20,numQy_02_20,numQy_03_16,numQy_03_17,numQy_03_18,numQy_03_20]
  ring
#print axioms numZero_03_20

theorem numZero_03_21 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_21 X Y))+(((X+Y+9)*(numQy_03_19 X Y))+((6*(numQy_03_18 X Y))+(numQy_03_17 X Y+numQy_02_21 X Y))))+((((X^3-9*X^2)*(numQx_03_21 X Y))+(((X^2+9*X)*(numQx_03_19 X Y))+(((6*X)*(numQx_03_18 X Y))+((X*(numQx_03_17 X Y))+((X-1)*(numQx_02_21 X Y))))))+(-17744308900704 : R)))))=0 := by
  dsimp only [numQx_02_21,numQx_03_17,numQx_03_18,numQx_03_19,numQx_03_21,numQy_02_21,numQy_03_17,numQy_03_18,numQy_03_19,numQy_03_21]
  ring
#print axioms numZero_03_21

theorem numZero_03_22 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_22 X Y))+(((X+Y+9)*(numQy_03_20 X Y))+((6*(numQy_03_19 X Y))+(numQy_03_18 X Y+numQy_02_22 X Y))))+((((X^3-9*X^2)*(numQx_03_22 X Y))+(((X^2+9*X)*(numQx_03_20 X Y))+(((6*X)*(numQx_03_19 X Y))+((X*(numQx_03_18 X Y))+((X-1)*(numQx_02_22 X Y))))))+(-11569947056064 : R)))))=0 := by
  dsimp only [numQx_02_22,numQx_03_18,numQx_03_19,numQx_03_20,numQx_03_22,numQy_02_22,numQy_03_18,numQy_03_19,numQy_03_20,numQy_03_22]
  ring
#print axioms numZero_03_22

theorem numZero_03_23 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_23 X Y))+(((X+Y+9)*(numQy_03_21 X Y))+((6*(numQy_03_20 X Y))+(numQy_03_19 X Y+numQy_02_23 X Y))))+((((X^3-9*X^2)*(numQx_03_23 X Y))+(((X^2+9*X)*(numQx_03_21 X Y))+(((6*X)*(numQx_03_20 X Y))+((X*(numQx_03_19 X Y))+((X-1)*(numQx_02_23 X Y))))))+(-5724701161056 : R)))))=0 := by
  dsimp only [numQx_02_23,numQx_03_19,numQx_03_20,numQx_03_21,numQx_03_23,numQy_02_23,numQy_03_19,numQy_03_20,numQy_03_21,numQy_03_23]
  ring
#print axioms numZero_03_23

theorem numZero_03_24 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_24 X Y))+(((X+Y+9)*(numQy_03_22 X Y))+((6*(numQy_03_21 X Y))+(numQy_03_20 X Y+numQy_02_24 X Y))))+((((X^3-9*X^2)*(numQx_03_24 X Y))+(((X^2+9*X)*(numQx_03_22 X Y))+(((6*X)*(numQx_03_21 X Y))+((X*(numQx_03_20 X Y))+((X-1)*(numQx_02_24 X Y))))))+(-2181506038272 : R)))))=0 := by
  dsimp only [numQx_02_24,numQx_03_20,numQx_03_21,numQx_03_22,numQx_03_24,numQy_02_24,numQy_03_20,numQy_03_21,numQy_03_22,numQy_03_24]
  ring
#print axioms numZero_03_24
end
end CriticalZeroSplitReduction20261003
