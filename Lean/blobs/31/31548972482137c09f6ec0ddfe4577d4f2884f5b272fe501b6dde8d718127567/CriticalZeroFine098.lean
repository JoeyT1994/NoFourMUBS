import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_06_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_05 X Y))+(((X+Y+9)*(numQy_06_03 X Y))+((6*(numQy_06_02 X Y))+(numQy_06_01 X Y+numQy_05_05 X Y))))+(((X^3-9*X^2)*(numQx_06_05 X Y))+(((X^2+9*X)*(numQx_06_03 X Y))+(((6*X)*(numQx_06_02 X Y))+((X*(numQx_06_01 X Y))+((X-1)*(numQx_05_05 X Y)))))))))=0 := by
  dsimp only [numQx_05_05,numQx_06_01,numQx_06_02,numQx_06_03,numQx_06_05,numQy_05_05,numQy_06_01,numQy_06_02,numQy_06_03,numQy_06_05]
  ring
#print axioms numZero_06_05

theorem numZero_06_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_06 X Y))+(((X+Y+9)*(numQy_06_04 X Y))+((6*(numQy_06_03 X Y))+(numQy_06_02 X Y+numQy_05_06 X Y))))+(((X^3-9*X^2)*(numQx_06_06 X Y))+(((X^2+9*X)*(numQx_06_04 X Y))+(((6*X)*(numQx_06_03 X Y))+((X*(numQx_06_02 X Y))+((X-1)*(numQx_05_06 X Y)))))))))=0 := by
  dsimp only [numQx_05_06,numQx_06_02,numQx_06_03,numQx_06_04,numQx_06_06,numQy_05_06,numQy_06_02,numQy_06_03,numQy_06_04,numQy_06_06]
  ring
#print axioms numZero_06_06

theorem numZero_06_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_07 X Y))+(((X+Y+9)*(numQy_06_05 X Y))+((6*(numQy_06_04 X Y))+(numQy_06_03 X Y+numQy_05_07 X Y))))+(((X^3-9*X^2)*(numQx_06_07 X Y))+(((X^2+9*X)*(numQx_06_05 X Y))+(((6*X)*(numQx_06_04 X Y))+((X*(numQx_06_03 X Y))+((X-1)*(numQx_05_07 X Y)))))))))=0 := by
  dsimp only [numQx_05_07,numQx_06_03,numQx_06_04,numQx_06_05,numQx_06_07,numQy_05_07,numQy_06_03,numQy_06_04,numQy_06_05,numQy_06_07]
  ring
#print axioms numZero_06_07
end
end CriticalZeroSplitReduction20261003
