import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_02_24 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_24 X Y))+(((X+Y+9)*(numQy_02_22 X Y))+((6*(numQy_02_21 X Y))+(numQy_02_20 X Y+numQy_01_24 X Y))))+((((X^3-9*X^2)*(numQx_02_24 X Y))+(((X^2+9*X)*(numQx_02_22 X Y))+(((6*X)*(numQx_02_21 X Y))+((X*(numQx_02_20 X Y))+((X-1)*(numQx_01_24 X Y))))))+(-472087174890240 : R)))))=0 := by
  dsimp only [numQx_01_24,numQx_02_20,numQx_02_21,numQx_02_22,numQx_02_24,numQy_01_24,numQy_02_20,numQy_02_21,numQy_02_22,numQy_02_24]
  ring
#print axioms numZero_02_24

theorem numZero_02_25 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_25 X Y))+(((X+Y+9)*(numQy_02_23 X Y))+((6*(numQy_02_22 X Y))+(numQy_02_21 X Y+numQy_01_25 X Y))))+((((X^3-9*X^2)*(numQx_02_25 X Y))+(((X^2+9*X)*(numQx_02_23 X Y))+(((6*X)*(numQx_02_22 X Y))+((X*(numQx_02_21 X Y))+((X-1)*(numQx_01_25 X Y))))))+(-262489185664992 : R)))))=0 := by
  dsimp only [numQx_01_25,numQx_02_21,numQx_02_22,numQx_02_23,numQx_02_25,numQy_01_25,numQy_02_21,numQy_02_22,numQy_02_23,numQy_02_25]
  ring
#print axioms numZero_02_25

theorem numZero_02_26 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_26 X Y))+(((X+Y+9)*(numQy_02_24 X Y))+((6*(numQy_02_23 X Y))+(numQy_02_22 X Y+numQy_01_26 X Y))))+((((X^3-9*X^2)*(numQx_02_26 X Y))+(((X^2+9*X)*(numQx_02_24 X Y))+(((6*X)*(numQx_02_23 X Y))+((X*(numQx_02_22 X Y))+((X-1)*(numQx_01_26 X Y))))))+(-114942304286784 : R)))))=0 := by
  dsimp only [numQx_01_26,numQx_02_22,numQx_02_23,numQx_02_24,numQx_02_26,numQy_01_26,numQy_02_22,numQy_02_23,numQy_02_24,numQy_02_26]
  ring
#print axioms numZero_02_26

theorem numZero_02_27 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_27 X Y))+(((X+Y+9)*(numQy_02_25 X Y))+((6*(numQy_02_24 X Y))+(numQy_02_23 X Y+numQy_01_27 X Y))))+((((X^3-9*X^2)*(numQx_02_27 X Y))+(((X^2+9*X)*(numQx_02_25 X Y))+(((6*X)*(numQx_02_24 X Y))+((X*(numQx_02_23 X Y))+((X-1)*(numQx_01_27 X Y))))))+(-40074153189408 : R)))))=0 := by
  dsimp only [numQx_01_27,numQx_02_23,numQx_02_24,numQx_02_25,numQx_02_27,numQy_01_27,numQy_02_23,numQy_02_24,numQy_02_25,numQy_02_27]
  ring
#print axioms numZero_02_27

theorem numZero_02_28 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_28 X Y))+(((X+Y+9)*(numQy_02_26 X Y))+((6*(numQy_02_25 X Y))+(numQy_02_24 X Y+numQy_01_28 X Y))))+((((X^3-9*X^2)*(numQx_02_28 X Y))+(((X^2+9*X)*(numQx_02_26 X Y))+(((6*X)*(numQx_02_25 X Y))+((X*(numQx_02_24 X Y))+((X-1)*(numQx_01_28 X Y))))))+(-11151744087168 : R)))))=0 := by
  dsimp only [numQx_01_28,numQx_02_24,numQx_02_25,numQx_02_26,numQx_02_28,numQy_01_28,numQy_02_24,numQy_02_25,numQy_02_26,numQy_02_28]
  ring
#print axioms numZero_02_28
end
end CriticalZeroSplitReduction20261003
