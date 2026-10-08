import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_02_19 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_19 X Y))+(((X+Y+9)*(numQy_02_17 X Y))+((6*(numQy_02_16 X Y))+(numQy_02_15 X Y+numQy_01_19 X Y))))+((((X^3-9*X^2)*(numQx_02_19 X Y))+(((X^2+9*X)*(numQx_02_17 X Y))+(((6*X)*(numQx_02_16 X Y))+((X*(numQx_02_15 X Y))+((X-1)*(numQx_01_19 X Y))))))+(187499119220352 : R)))))=0 := by
  dsimp only [numQx_01_19,numQx_02_15,numQx_02_16,numQx_02_17,numQx_02_19,numQy_01_19,numQy_02_15,numQy_02_16,numQy_02_17,numQy_02_19]
  ring
#print axioms numZero_02_19

theorem numZero_02_20 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_20 X Y))+(((X+Y+9)*(numQy_02_18 X Y))+((6*(numQy_02_17 X Y))+(numQy_02_16 X Y+numQy_01_20 X Y))))+((((X^3-9*X^2)*(numQx_02_20 X Y))+(((X^2+9*X)*(numQx_02_18 X Y))+(((6*X)*(numQx_02_17 X Y))+((X*(numQx_02_16 X Y))+((X-1)*(numQx_01_20 X Y))))))+(-59821855986816 : R)))))=0 := by
  dsimp only [numQx_01_20,numQx_02_16,numQx_02_17,numQx_02_18,numQx_02_20,numQy_01_20,numQy_02_16,numQy_02_17,numQy_02_18,numQy_02_20]
  ring
#print axioms numZero_02_20
end
end CriticalZeroSplitReduction20261003
