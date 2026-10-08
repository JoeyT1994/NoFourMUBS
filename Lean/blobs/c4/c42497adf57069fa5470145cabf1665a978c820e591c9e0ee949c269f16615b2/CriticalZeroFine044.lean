import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_01_21 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_21 X Y))+(((X+Y+9)*(numQy_01_19 X Y))+((6*(numQy_01_18 X Y))+(numQy_01_17 X Y+numQy_00_21 X Y))))+((((X^3-9*X^2)*(numQx_01_21 X Y))+(((X^2+9*X)*(numQx_01_19 X Y))+(((6*X)*(numQx_01_18 X Y))+((X*(numQx_01_17 X Y))+((X-1)*(numQx_00_21 X Y))))))+(7167991900199760 : R)))))=0 := by
  dsimp only [numQx_00_21,numQx_01_17,numQx_01_18,numQx_01_19,numQx_01_21,numQy_00_21,numQy_01_17,numQy_01_18,numQy_01_19,numQy_01_21]
  ring
#print axioms numZero_01_21

theorem numZero_01_22 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_22 X Y))+(((X+Y+9)*(numQy_01_20 X Y))+((6*(numQy_01_19 X Y))+(numQy_01_18 X Y+numQy_00_22 X Y))))+((((X^3-9*X^2)*(numQx_01_22 X Y))+(((X^2+9*X)*(numQx_01_20 X Y))+(((6*X)*(numQx_01_19 X Y))+((X*(numQx_01_18 X Y))+((X-1)*(numQx_00_22 X Y))))))+(3266791550526240 : R)))))=0 := by
  dsimp only [numQx_00_22,numQx_01_18,numQx_01_19,numQx_01_20,numQx_01_22,numQy_00_22,numQy_01_18,numQy_01_19,numQy_01_20,numQy_01_22]
  ring
#print axioms numZero_01_22
end
end CriticalZeroSplitReduction20261003
