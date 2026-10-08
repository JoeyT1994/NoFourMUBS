import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_01_25 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_25 X Y))+(((X+Y+9)*(numQy_01_23 X Y))+((6*(numQy_01_22 X Y))+(numQy_01_21 X Y+numQy_00_25 X Y))))+((((X^3-9*X^2)*(numQx_01_25 X Y))+(((X^2+9*X)*(numQx_01_23 X Y))+(((6*X)*(numQx_01_22 X Y))+((X*(numQx_01_21 X Y))+((X-1)*(numQx_00_25 X Y))))))+(-11082198558343104 : R)))))=0 := by
  dsimp only [numQx_00_25,numQx_01_21,numQx_01_22,numQx_01_23,numQx_01_25,numQy_00_25,numQy_01_21,numQy_01_22,numQy_01_23,numQy_01_25]
  ring
#print axioms numZero_01_25

theorem numZero_01_26 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_26 X Y))+(((X+Y+9)*(numQy_01_24 X Y))+((6*(numQy_01_23 X Y))+(numQy_01_22 X Y+numQy_00_26 X Y))))+((((X^3-9*X^2)*(numQx_01_26 X Y))+(((X^2+9*X)*(numQx_01_24 X Y))+(((6*X)*(numQx_01_23 X Y))+((X*(numQx_01_22 X Y))+((X-1)*(numQx_00_26 X Y))))))+(-9026477257703040 : R)))))=0 := by
  dsimp only [numQx_00_26,numQx_01_22,numQx_01_23,numQx_01_24,numQx_01_26,numQy_00_26,numQy_01_22,numQy_01_23,numQy_01_24,numQy_01_26]
  ring
#print axioms numZero_01_26

theorem numZero_01_27 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_27 X Y))+(((X+Y+9)*(numQy_01_25 X Y))+((6*(numQy_01_24 X Y))+(numQy_01_23 X Y+numQy_00_27 X Y))))+((((X^3-9*X^2)*(numQx_01_27 X Y))+(((X^2+9*X)*(numQx_01_25 X Y))+(((6*X)*(numQx_01_24 X Y))+((X*(numQx_01_23 X Y))+((X-1)*(numQx_00_27 X Y))))))+(-5617208483834688 : R)))))=0 := by
  dsimp only [numQx_00_27,numQx_01_23,numQx_01_24,numQx_01_25,numQx_01_27,numQy_00_27,numQy_01_23,numQy_01_24,numQy_01_25,numQy_01_27]
  ring
#print axioms numZero_01_27
end
end CriticalZeroSplitReduction20261003
