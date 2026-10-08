import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_02_21 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_21 X Y))+(((X+Y+9)*(numQy_02_19 X Y))+((6*(numQy_02_18 X Y))+(numQy_02_17 X Y+numQy_01_21 X Y))))+((((X^3-9*X^2)*(numQx_02_21 X Y))+(((X^2+9*X)*(numQx_02_19 X Y))+(((6*X)*(numQx_02_18 X Y))+((X*(numQx_02_17 X Y))+((X-1)*(numQx_01_21 X Y))))))+(-419259144819168 : R)))))=0 := by
  dsimp only [numQx_01_21,numQx_02_17,numQx_02_18,numQx_02_19,numQx_02_21,numQy_01_21,numQy_02_17,numQy_02_18,numQy_02_19,numQy_02_21]
  ring
#print axioms numZero_02_21

theorem numZero_02_22 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_22 X Y))+(((X+Y+9)*(numQy_02_20 X Y))+((6*(numQy_02_19 X Y))+(numQy_02_18 X Y+numQy_01_22 X Y))))+((((X^3-9*X^2)*(numQx_02_22 X Y))+(((X^2+9*X)*(numQx_02_20 X Y))+(((6*X)*(numQx_02_19 X Y))+((X*(numQx_02_18 X Y))+((X-1)*(numQx_01_22 X Y))))))+(-658208470253760 : R)))))=0 := by
  dsimp only [numQx_01_22,numQx_02_18,numQx_02_19,numQx_02_20,numQx_02_22,numQy_01_22,numQy_02_18,numQy_02_19,numQy_02_20,numQy_02_22]
  ring
#print axioms numZero_02_22

theorem numZero_02_23 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_23 X Y))+(((X+Y+9)*(numQy_02_21 X Y))+((6*(numQy_02_20 X Y))+(numQy_02_19 X Y+numQy_01_23 X Y))))+((((X^3-9*X^2)*(numQx_02_23 X Y))+(((X^2+9*X)*(numQx_02_21 X Y))+(((6*X)*(numQx_02_20 X Y))+((X*(numQx_02_19 X Y))+((X-1)*(numQx_01_23 X Y))))))+(-652684255850016 : R)))))=0 := by
  dsimp only [numQx_01_23,numQx_02_19,numQx_02_20,numQx_02_21,numQx_02_23,numQy_01_23,numQy_02_19,numQy_02_20,numQy_02_21,numQy_02_23]
  ring
#print axioms numZero_02_23
end
end CriticalZeroSplitReduction20261003
