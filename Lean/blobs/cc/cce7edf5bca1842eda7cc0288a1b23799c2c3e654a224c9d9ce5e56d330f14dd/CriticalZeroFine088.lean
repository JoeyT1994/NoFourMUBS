import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_04_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_12 X Y))+(((X+Y+9)*(numQy_04_10 X Y))+((6*(numQy_04_09 X Y))+(numQy_04_08 X Y+numQy_03_12 X Y))))+((((X^3-9*X^2)*(numQx_04_12 X Y))+(((X^2+9*X)*(numQx_04_10 X Y))+(((6*X)*(numQx_04_09 X Y))+((X*(numQx_04_08 X Y))+((X-1)*(numQx_03_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_03_12,numQx_04_08,numQx_04_09,numQx_04_10,numQx_04_12,numQy_03_12,numQy_04_08,numQy_04_09,numQy_04_10,numQy_04_12]
  ring
#print axioms numZero_04_12

theorem numZero_04_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_13 X Y))+(((X+Y+9)*(numQy_04_11 X Y))+((6*(numQy_04_10 X Y))+(numQy_04_09 X Y+numQy_03_13 X Y))))+((((X^3-9*X^2)*(numQx_04_13 X Y))+(((X^2+9*X)*(numQx_04_11 X Y))+(((6*X)*(numQx_04_10 X Y))+((X*(numQx_04_09 X Y))+((X-1)*(numQx_03_13 X Y))))))+(3869835264 : R)))))=0 := by
  dsimp only [numQx_03_13,numQx_04_09,numQx_04_10,numQx_04_11,numQx_04_13,numQy_03_13,numQy_04_09,numQy_04_10,numQy_04_11,numQy_04_13]
  ring
#print axioms numZero_04_13

theorem numZero_04_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_04_14 X Y))+(((X+Y+9)*(numQy_04_12 X Y))+((6*(numQy_04_11 X Y))+(numQy_04_10 X Y+numQy_03_14 X Y))))+((((X^3-9*X^2)*(numQx_04_14 X Y))+(((X^2+9*X)*(numQx_04_12 X Y))+(((6*X)*(numQx_04_11 X Y))+((X*(numQx_04_10 X Y))+((X-1)*(numQx_03_14 X Y))))))+(8384643072 : R)))))=0 := by
  dsimp only [numQx_03_14,numQx_04_10,numQx_04_11,numQx_04_12,numQx_04_14,numQy_03_14,numQy_04_10,numQy_04_11,numQy_04_12,numQy_04_14]
  ring
#print axioms numZero_04_14
end
end CriticalZeroSplitReduction20261003
