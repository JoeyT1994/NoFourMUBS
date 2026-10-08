import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_24 (X Y : R) : (numRaw_00_24 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_24 X Y))+(((X+Y+9)*(numQy_00_22 X Y))+((6*(numQy_00_21 X Y))+numQy_00_20 X Y)))+((((X^3-9*X^2)*(numQx_00_24 X Y))+(((X^2+9*X)*(numQx_00_22 X Y))+(((6*X)*(numQx_00_21 X Y))+(X*(numQx_00_20 X Y)))))+(59974476930813312 : R))))))=0 := by
  dsimp only [numQx_00_20,numQx_00_21,numQx_00_22,numQx_00_24,numQy_00_20,numQy_00_21,numQy_00_22,numQy_00_24,numRaw_00_24]
  ring
#print axioms numZero_00_24

theorem numZero_00_25 (X Y : R) : (numRaw_00_25 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_25 X Y))+(((X+Y+9)*(numQy_00_23 X Y))+((6*(numQy_00_22 X Y))+numQy_00_21 X Y)))+((((X^3-9*X^2)*(numQx_00_25 X Y))+(((X^2+9*X)*(numQx_00_23 X Y))+(((6*X)*(numQx_00_22 X Y))+(X*(numQx_00_21 X Y)))))+(9816497542648944 : R))))))=0 := by
  dsimp only [numQx_00_21,numQx_00_22,numQx_00_23,numQx_00_25,numQy_00_21,numQy_00_22,numQy_00_23,numQy_00_25,numRaw_00_25]
  ring
#print axioms numZero_00_25
end
end CriticalZeroSplitReduction20261003
