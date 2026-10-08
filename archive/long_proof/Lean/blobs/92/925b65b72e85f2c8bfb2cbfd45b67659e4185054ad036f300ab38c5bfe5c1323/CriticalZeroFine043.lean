import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_01_19 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_19 X Y))+(((X+Y+9)*(numQy_01_17 X Y))+((6*(numQy_01_16 X Y))+(numQy_01_15 X Y+numQy_00_19 X Y))))+((((X^3-9*X^2)*(numQx_01_19 X Y))+(((X^2+9*X)*(numQx_01_17 X Y))+(((6*X)*(numQx_01_16 X Y))+((X*(numQx_01_15 X Y))+((X-1)*(numQx_00_19 X Y))))))+(3460452205203648 : R)))))=0 := by
  dsimp only [numQx_00_19,numQx_01_15,numQx_01_16,numQx_01_17,numQx_01_19,numQy_00_19,numQy_01_15,numQy_01_16,numQy_01_17,numQy_01_19]
  ring
#print axioms numZero_01_19

theorem numZero_01_20 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_20 X Y))+(((X+Y+9)*(numQy_01_18 X Y))+((6*(numQy_01_17 X Y))+(numQy_01_16 X Y+numQy_00_20 X Y))))+((((X^3-9*X^2)*(numQx_01_20 X Y))+(((X^2+9*X)*(numQx_01_18 X Y))+(((6*X)*(numQx_01_17 X Y))+((X*(numQx_01_16 X Y))+((X-1)*(numQx_00_20 X Y))))))+(6482406404137536 : R)))))=0 := by
  dsimp only [numQx_00_20,numQx_01_16,numQx_01_17,numQx_01_18,numQx_01_20,numQy_00_20,numQy_01_16,numQy_01_17,numQy_01_18,numQy_01_20]
  ring
#print axioms numZero_01_20
end
end CriticalZeroSplitReduction20261003
