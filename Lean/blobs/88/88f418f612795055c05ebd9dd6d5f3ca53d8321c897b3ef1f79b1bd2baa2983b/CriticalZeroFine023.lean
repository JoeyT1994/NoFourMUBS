import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_28 (X Y : R) : (numRaw_00_28 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_28 X Y))+(((X+Y+9)*(numQy_00_26 X Y))+((6*(numQy_00_25 X Y))+numQy_00_24 X Y)))+((((X^3-9*X^2)*(numQx_00_28 X Y))+(((X^2+9*X)*(numQx_00_26 X Y))+(((6*X)*(numQx_00_25 X Y))+(X*(numQx_00_24 X Y)))))+(-63765718047616896 : R))))))=0 := by
  dsimp only [numQx_00_24,numQx_00_25,numQx_00_26,numQx_00_28,numQy_00_24,numQy_00_25,numQy_00_26,numQy_00_28,numRaw_00_28]
  ring
#print axioms numZero_00_28

theorem numZero_00_29 (X Y : R) : (numRaw_00_29 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_29 X Y))+(((X+Y+9)*(numQy_00_27 X Y))+((6*(numQy_00_26 X Y))+numQy_00_25 X Y)))+((((X^3-9*X^2)*(numQx_00_29 X Y))+(((X^2+9*X)*(numQx_00_27 X Y))+(((6*X)*(numQx_00_26 X Y))+(X*(numQx_00_25 X Y)))))+(-44772952366893024 : R))))))=0 := by
  dsimp only [numQx_00_25,numQx_00_26,numQx_00_27,numQx_00_29,numQy_00_25,numQy_00_26,numQy_00_27,numQy_00_29,numRaw_00_29]
  ring
#print axioms numZero_00_29

theorem numZero_00_30 (X Y : R) : (numRaw_00_30 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_30 X Y))+(((X+Y+9)*(numQy_00_28 X Y))+((6*(numQy_00_27 X Y))+numQy_00_26 X Y)))+((((X^3-9*X^2)*(numQx_00_30 X Y))+(((X^2+9*X)*(numQx_00_28 X Y))+(((6*X)*(numQx_00_27 X Y))+(X*(numQx_00_26 X Y)))))+(-24835153437033408 : R))))))=0 := by
  dsimp only [numQx_00_26,numQx_00_27,numQx_00_28,numQx_00_30,numQy_00_26,numQy_00_27,numQy_00_28,numQy_00_30,numRaw_00_30]
  ring
#print axioms numZero_00_30
end
end CriticalZeroSplitReduction20261003
