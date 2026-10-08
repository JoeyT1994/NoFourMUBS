import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_03_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_17 X Y))+(((X+Y+9)*(numQy_03_15 X Y))+((6*(numQy_03_14 X Y))+(numQy_03_13 X Y+numQy_02_17 X Y))))+((((X^3-9*X^2)*(numQx_03_17 X Y))+(((X^2+9*X)*(numQx_03_15 X Y))+(((6*X)*(numQx_03_14 X Y))+((X*(numQx_03_13 X Y))+((X-1)*(numQx_02_17 X Y))))))+(754663226112 : R)))))=0 := by
  dsimp only [numQx_02_17,numQx_03_13,numQx_03_14,numQx_03_15,numQx_03_17,numQy_02_17,numQy_03_13,numQy_03_14,numQy_03_15,numQy_03_17]
  ring
#print axioms numZero_03_17

theorem numZero_03_18 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_18 X Y))+(((X+Y+9)*(numQy_03_16 X Y))+((6*(numQy_03_15 X Y))+(numQy_03_14 X Y+numQy_02_18 X Y))))+((((X^3-9*X^2)*(numQx_03_18 X Y))+(((X^2+9*X)*(numQx_03_16 X Y))+(((6*X)*(numQx_03_15 X Y))+((X*(numQx_03_14 X Y))+((X-1)*(numQx_02_18 X Y))))))+(-6274575083520 : R)))))=0 := by
  dsimp only [numQx_02_18,numQx_03_14,numQx_03_15,numQx_03_16,numQx_03_18,numQy_02_18,numQy_03_14,numQy_03_15,numQy_03_16,numQy_03_18]
  ring
#print axioms numZero_03_18

theorem numZero_03_19 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_19 X Y))+(((X+Y+9)*(numQy_03_17 X Y))+((6*(numQy_03_16 X Y))+(numQy_03_15 X Y+numQy_02_19 X Y))))+((((X^3-9*X^2)*(numQx_03_19 X Y))+(((X^2+9*X)*(numQx_03_17 X Y))+(((6*X)*(numQx_03_16 X Y))+((X*(numQx_03_15 X Y))+((X-1)*(numQx_02_19 X Y))))))+(-15295229108352 : R)))))=0 := by
  dsimp only [numQx_02_19,numQx_03_15,numQx_03_16,numQx_03_17,numQx_03_19,numQy_02_19,numQy_03_15,numQy_03_16,numQy_03_17,numQy_03_19]
  ring
#print axioms numZero_03_19
end
end CriticalZeroSplitReduction20261003
