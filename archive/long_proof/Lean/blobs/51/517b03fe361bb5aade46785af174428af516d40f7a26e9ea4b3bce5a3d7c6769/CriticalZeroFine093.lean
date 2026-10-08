import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_05_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_06 X Y))+(((X+Y+9)*(numQy_05_04 X Y))+((6*(numQy_05_03 X Y))+(numQy_05_02 X Y+numQy_04_06 X Y))))+((((X^3-9*X^2)*(numQx_05_06 X Y))+(((X^2+9*X)*(numQx_05_04 X Y))+(((6*X)*(numQx_05_03 X Y))+((X*(numQx_05_02 X Y))+((X-1)*(numQx_04_06 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_06,numQx_05_02,numQx_05_03,numQx_05_04,numQx_05_06,numQy_04_06,numQy_05_02,numQy_05_03,numQy_05_04,numQy_05_06]
  ring
#print axioms numZero_05_06

theorem numZero_05_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_07 X Y))+(((X+Y+9)*(numQy_05_05 X Y))+((6*(numQy_05_04 X Y))+(numQy_05_03 X Y+numQy_04_07 X Y))))+((((X^3-9*X^2)*(numQx_05_07 X Y))+(((X^2+9*X)*(numQx_05_05 X Y))+(((6*X)*(numQx_05_04 X Y))+((X*(numQx_05_03 X Y))+((X-1)*(numQx_04_07 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_07,numQx_05_03,numQx_05_04,numQx_05_05,numQx_05_07,numQy_04_07,numQy_05_03,numQy_05_04,numQy_05_05,numQy_05_07]
  ring
#print axioms numZero_05_07
end
end CriticalZeroSplitReduction20261003
