import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_05_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_11 X Y))+(((X+Y+9)*(numQy_05_09 X Y))+((6*(numQy_05_08 X Y))+(numQy_05_07 X Y+numQy_04_11 X Y))))+((((X^3-9*X^2)*(numQx_05_11 X Y))+(((X^2+9*X)*(numQx_05_09 X Y))+(((6*X)*(numQx_05_08 X Y))+((X*(numQx_05_07 X Y))+((X-1)*(numQx_04_11 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_11,numQx_05_07,numQx_05_08,numQx_05_09,numQx_05_11,numQy_04_11,numQy_05_07,numQy_05_08,numQy_05_09,numQy_05_11]
  ring
#print axioms numZero_05_11

theorem numZero_05_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_12 X Y))+(((X+Y+9)*(numQy_05_10 X Y))+((6*(numQy_05_09 X Y))+(numQy_05_08 X Y+numQy_04_12 X Y))))+((((X^3-9*X^2)*(numQx_05_12 X Y))+(((X^2+9*X)*(numQx_05_10 X Y))+(((6*X)*(numQx_05_09 X Y))+((X*(numQx_05_08 X Y))+((X-1)*(numQx_04_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_12,numQx_05_08,numQx_05_09,numQx_05_10,numQx_05_12,numQy_04_12,numQy_05_08,numQy_05_09,numQy_05_10,numQy_05_12]
  ring
#print axioms numZero_05_12

theorem numZero_05_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_13 X Y))+(((X+Y+9)*(numQy_05_11 X Y))+((6*(numQy_05_10 X Y))+(numQy_05_09 X Y+numQy_04_13 X Y))))+((((X^3-9*X^2)*(numQx_05_13 X Y))+(((X^2+9*X)*(numQx_05_11 X Y))+(((6*X)*(numQx_05_10 X Y))+((X*(numQx_05_09 X Y))+((X-1)*(numQx_04_13 X Y))))))+(-143327232 : R)))))=0 := by
  dsimp only [numQx_04_13,numQx_05_09,numQx_05_10,numQx_05_11,numQx_05_13,numQy_04_13,numQy_05_09,numQy_05_10,numQy_05_11,numQy_05_13]
  ring
#print axioms numZero_05_13

theorem numZero_05_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_14 X Y))+(((X+Y+9)*(numQy_05_12 X Y))+((6*(numQy_05_11 X Y))+(numQy_05_10 X Y+numQy_04_14 X Y))))+((((X^3-9*X^2)*(numQx_05_14 X Y))+(((X^2+9*X)*(numQx_05_12 X Y))+(((6*X)*(numQx_05_11 X Y))+((X*(numQx_05_10 X Y))+((X-1)*(numQx_04_14 X Y))))))+(-633028608 : R)))))=0 := by
  dsimp only [numQx_04_14,numQx_05_10,numQx_05_11,numQx_05_12,numQx_05_14,numQy_04_14,numQy_05_10,numQy_05_11,numQy_05_12,numQy_05_14]
  ring
#print axioms numZero_05_14
end
end CriticalZeroSplitReduction20261003
