import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_04_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_15 X Y))+(((X+Y+9)*(numQy_04_13 X Y))+((6*(numQy_04_12 X Y))+(numQy_04_11 X Y+numQy_03_15 X Y))))+((((X^3-9*X^2)*(numQx_04_15 X Y))+(((X^2+9*X)*(numQx_04_13 X Y))+(((6*X)*(numQx_04_12 X Y))+((X*(numQx_04_11 X Y))+((X-1)*(numQx_03_15 X Y))))))+(-21317686272 : R)))))=0 := by
  dsimp only [numQx_03_15,numQx_04_11,numQx_04_12,numQx_04_13,numQx_04_15,numQy_03_15,numQy_04_11,numQy_04_12,numQy_04_13,numQy_04_15]
  ring
#print axioms numZero_04_15

theorem numZero_04_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_16 X Y))+(((X+Y+9)*(numQy_04_14 X Y))+((6*(numQy_04_13 X Y))+(numQy_04_12 X Y+numQy_03_16 X Y))))+((((X^3-9*X^2)*(numQx_04_16 X Y))+(((X^2+9*X)*(numQx_04_14 X Y))+(((6*X)*(numQx_04_13 X Y))+((X*(numQx_04_12 X Y))+((X-1)*(numQx_03_16 X Y))))))+(-116200313856 : R)))))=0 := by
  dsimp only [numQx_03_16,numQx_04_12,numQx_04_13,numQx_04_14,numQx_04_16,numQy_03_16,numQy_04_12,numQy_04_13,numQy_04_14,numQy_04_16]
  ring
#print axioms numZero_04_16

theorem numZero_04_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_17 X Y))+(((X+Y+9)*(numQy_04_15 X Y))+((6*(numQy_04_14 X Y))+(numQy_04_13 X Y+numQy_03_17 X Y))))+((((X^3-9*X^2)*(numQx_04_17 X Y))+(((X^2+9*X)*(numQx_04_15 X Y))+(((6*X)*(numQx_04_14 X Y))+((X*(numQx_04_13 X Y))+((X-1)*(numQx_03_17 X Y))))))+(-231592359168 : R)))))=0 := by
  dsimp only [numQx_03_17,numQx_04_13,numQx_04_14,numQx_04_15,numQx_04_17,numQy_03_17,numQy_04_13,numQy_04_14,numQy_04_15,numQy_04_17]
  ring
#print axioms numZero_04_17

theorem numZero_04_18 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_18 X Y))+(((X+Y+9)*(numQy_04_16 X Y))+((6*(numQy_04_15 X Y))+(numQy_04_14 X Y+numQy_03_18 X Y))))+((((X^3-9*X^2)*(numQx_04_18 X Y))+(((X^2+9*X)*(numQx_04_16 X Y))+(((6*X)*(numQx_04_15 X Y))+((X*(numQx_04_14 X Y))+((X-1)*(numQx_03_18 X Y))))))+(-278116540416 : R)))))=0 := by
  dsimp only [numQx_03_18,numQx_04_14,numQx_04_15,numQx_04_16,numQx_04_18,numQy_03_18,numQy_04_14,numQy_04_15,numQy_04_16,numQy_04_18]
  ring
#print axioms numZero_04_18
end
end CriticalZeroSplitReduction20261003
