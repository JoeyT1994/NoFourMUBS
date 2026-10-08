import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_02_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_17 X Y))+(((X+Y+9)*(numQy_02_15 X Y))+((6*(numQy_02_14 X Y))+(numQy_02_13 X Y+numQy_01_17 X Y))))+((((X^3-9*X^2)*(numQx_02_17 X Y))+(((X^2+9*X)*(numQx_02_15 X Y))+(((6*X)*(numQx_02_14 X Y))+((X*(numQx_02_13 X Y))+((X-1)*(numQx_01_17 X Y))))))+(115147568058624 : R)))))=0 := by
  dsimp only [numQx_01_17,numQx_02_13,numQx_02_14,numQx_02_15,numQx_02_17,numQy_01_17,numQy_02_13,numQy_02_14,numQy_02_15,numQy_02_17]
  ring
#print axioms numZero_02_17

theorem numZero_02_18 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_18 X Y))+(((X+Y+9)*(numQy_02_16 X Y))+((6*(numQy_02_15 X Y))+(numQy_02_14 X Y+numQy_01_18 X Y))))+((((X^3-9*X^2)*(numQx_02_18 X Y))+(((X^2+9*X)*(numQx_02_16 X Y))+(((6*X)*(numQx_02_15 X Y))+((X*(numQx_02_14 X Y))+((X-1)*(numQx_01_18 X Y))))))+(213699075489792 : R)))))=0 := by
  dsimp only [numQx_01_18,numQx_02_14,numQx_02_15,numQx_02_16,numQx_02_18,numQy_01_18,numQy_02_14,numQy_02_15,numQy_02_16,numQy_02_18]
  ring
#print axioms numZero_02_18
end
end CriticalZeroSplitReduction20261003
