import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_02_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_15 X Y))+(((X+Y+9)*(numQy_02_13 X Y))+((6*(numQy_02_12 X Y))+(numQy_02_11 X Y+numQy_01_15 X Y))))+((((X^3-9*X^2)*(numQx_02_15 X Y))+(((X^2+9*X)*(numQx_02_13 X Y))+(((6*X)*(numQx_02_12 X Y))+((X*(numQx_02_11 X Y))+((X-1)*(numQx_01_15 X Y))))))+(3570467226624 : R)))))=0 := by
  dsimp only [numQx_01_15,numQx_02_11,numQx_02_12,numQx_02_13,numQx_02_15,numQy_01_15,numQy_02_11,numQy_02_12,numQy_02_13,numQy_02_15]
  ring
#print axioms numZero_02_15

theorem numZero_02_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_16 X Y))+(((X+Y+9)*(numQy_02_14 X Y))+((6*(numQy_02_13 X Y))+(numQy_02_12 X Y+numQy_01_16 X Y))))+((((X^3-9*X^2)*(numQx_02_16 X Y))+(((X^2+9*X)*(numQx_02_14 X Y))+(((6*X)*(numQx_02_13 X Y))+((X*(numQx_02_12 X Y))+((X-1)*(numQx_01_16 X Y))))))+(32134205039616 : R)))))=0 := by
  dsimp only [numQx_01_16,numQx_02_12,numQx_02_13,numQx_02_14,numQx_02_16,numQy_01_16,numQy_02_12,numQy_02_13,numQy_02_14,numQy_02_16]
  ring
#print axioms numZero_02_16
end
end CriticalZeroSplitReduction20261003
