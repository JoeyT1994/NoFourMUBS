import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_00 (X Y : R) : (numRaw_00_00 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_00 X Y))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(numQx_00_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_00,numQy_00_00,numRaw_00_00]
  ring
#print axioms numZero_00_00

theorem numZero_00_01 (X Y : R) : (numRaw_00_01 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_01 X Y))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(numQx_00_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_01,numQy_00_01,numRaw_00_01]
  ring
#print axioms numZero_00_01
end
end CriticalZeroSplitReduction20261003
