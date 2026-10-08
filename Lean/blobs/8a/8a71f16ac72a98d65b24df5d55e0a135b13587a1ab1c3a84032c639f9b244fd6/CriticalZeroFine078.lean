import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_03_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_13 X Y))+(((X+Y+9)*(numQy_03_11 X Y))+((6*(numQy_03_10 X Y))+(numQy_03_09 X Y+numQy_02_13 X Y))))+((((X^3-9*X^2)*(numQx_03_13 X Y))+(((X^2+9*X)*(numQx_03_11 X Y))+(((6*X)*(numQx_03_10 X Y))+((X*(numQx_03_09 X Y))+((X-1)*(numQx_02_13 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_13,numQx_03_09,numQx_03_10,numQx_03_11,numQx_03_13,numQy_02_13,numQy_03_09,numQy_03_10,numQy_03_11,numQy_03_13]
  ring
#print axioms numZero_03_13

theorem numZero_03_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_14 X Y))+(((X+Y+9)*(numQy_03_12 X Y))+((6*(numQy_03_11 X Y))+(numQy_03_10 X Y+numQy_02_14 X Y))))+((((X^3-9*X^2)*(numQx_03_14 X Y))+(((X^2+9*X)*(numQx_03_12 X Y))+(((6*X)*(numQx_03_11 X Y))+((X*(numQx_03_10 X Y))+((X-1)*(numQx_02_14 X Y))))))+(235092492288 : R)))))=0 := by
  dsimp only [numQx_02_14,numQx_03_10,numQx_03_11,numQx_03_12,numQx_03_14,numQy_02_14,numQy_03_10,numQy_03_11,numQy_03_12,numQy_03_14]
  ring
#print axioms numZero_03_14
end
end CriticalZeroSplitReduction20261003
