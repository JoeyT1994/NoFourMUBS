import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_04_25 (X Y : R) : (-(((((X+Y+9)*(numQy_04_23 X Y))+((6*(numQy_04_22 X Y))+(numQy_04_21 X Y+numQy_03_25 X Y)))+((((X^2+9*X)*(numQx_04_23 X Y))+(((6*X)*(numQx_04_22 X Y))+((X*(numQx_04_21 X Y))+((X-1)*(numQx_03_25 X Y)))))+(-81473040 : R)))))=0 := by
  dsimp only [numQx_03_25,numQx_04_21,numQx_04_22,numQx_04_23,numQy_03_25,numQy_04_21,numQy_04_22,numQy_04_23]
  ring

theorem numZero_04_26 (X Y : R) : (-(((((X+Y+9)*(numQy_04_24 X Y))+((6*(numQy_04_23 X Y))+(numQy_04_22 X Y+numQy_03_26 X Y)))+((((X^2+9*X)*(numQx_04_24 X Y))+(((6*X)*(numQx_04_23 X Y))+((X*(numQx_04_22 X Y))+((X-1)*(numQx_03_26 X Y)))))+(-5575392 : R)))))=0 := by
  dsimp only [numQx_03_26,numQx_04_22,numQx_04_23,numQx_04_24,numQy_03_26,numQy_04_22,numQy_04_23,numQy_04_24]
  ring

theorem numZero_04_27 (X Y : R) : (-((((6*(numQy_04_24 X Y))+(numQy_04_23 X Y+numQy_03_27 X Y))+((((6*X)*(numQx_04_24 X Y))+((X*(numQx_04_23 X Y))+((X-1)*(numQx_03_27 X Y))))+(-174960 : R)))))=0 := by
  dsimp only [numQx_03_27,numQx_04_23,numQx_04_24,numQy_03_27,numQy_04_23,numQy_04_24]
  ring

theorem numZero_04_28 (X Y : R) : (-(((numQy_04_24 X Y+numQy_03_28 X Y)+((X*(numQx_04_24 X Y))+((X-1)*(numQx_03_28 X Y))))))=0 := by
  dsimp only [numQx_03_28,numQx_04_24,numQy_03_28,numQy_04_24]
  ring

theorem numZero_05_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_04_00 X Y))))+((((X^3-9*X^2)*(numQx_05_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_04_00 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_00,numQx_05_00,numQy_04_00,numQy_05_00]
  ring

theorem numZero_05_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_04_01 X Y))))+((((X^3-9*X^2)*(numQx_05_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_04_01 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_01,numQx_05_01,numQy_04_01,numQy_05_01]
  ring

theorem numZero_05_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_02 X Y))+(((X+Y+9)*(numQy_05_00 X Y))+((6*(0))+(0+numQy_04_02 X Y))))+((((X^3-9*X^2)*(numQx_05_02 X Y))+(((X^2+9*X)*(numQx_05_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_04_02 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_02,numQx_05_00,numQx_05_02,numQy_04_02,numQy_05_00,numQy_05_02]
  ring

theorem numZero_05_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_03 X Y))+(((X+Y+9)*(numQy_05_01 X Y))+((6*(numQy_05_00 X Y))+(0+numQy_04_03 X Y))))+((((X^3-9*X^2)*(numQx_05_03 X Y))+(((X^2+9*X)*(numQx_05_01 X Y))+(((6*X)*(numQx_05_00 X Y))+((X*(0))+((X-1)*(numQx_04_03 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_03,numQx_05_00,numQx_05_01,numQx_05_03,numQy_04_03,numQy_05_00,numQy_05_01,numQy_05_03]
  ring

theorem numZero_05_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_04 X Y))+(((X+Y+9)*(numQy_05_02 X Y))+((6*(numQy_05_01 X Y))+(numQy_05_00 X Y+numQy_04_04 X Y))))+((((X^3-9*X^2)*(numQx_05_04 X Y))+(((X^2+9*X)*(numQx_05_02 X Y))+(((6*X)*(numQx_05_01 X Y))+((X*(numQx_05_00 X Y))+((X-1)*(numQx_04_04 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_04,numQx_05_00,numQx_05_01,numQx_05_02,numQx_05_04,numQy_04_04,numQy_05_00,numQy_05_01,numQy_05_02,numQy_05_04]
  ring

theorem numZero_05_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_05 X Y))+(((X+Y+9)*(numQy_05_03 X Y))+((6*(numQy_05_02 X Y))+(numQy_05_01 X Y+numQy_04_05 X Y))))+((((X^3-9*X^2)*(numQx_05_05 X Y))+(((X^2+9*X)*(numQx_05_03 X Y))+(((6*X)*(numQx_05_02 X Y))+((X*(numQx_05_01 X Y))+((X-1)*(numQx_04_05 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_05,numQx_05_01,numQx_05_02,numQx_05_03,numQx_05_05,numQy_04_05,numQy_05_01,numQy_05_02,numQy_05_03,numQy_05_05]
  ring

theorem numZero_05_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_06 X Y))+(((X+Y+9)*(numQy_05_04 X Y))+((6*(numQy_05_03 X Y))+(numQy_05_02 X Y+numQy_04_06 X Y))))+((((X^3-9*X^2)*(numQx_05_06 X Y))+(((X^2+9*X)*(numQx_05_04 X Y))+(((6*X)*(numQx_05_03 X Y))+((X*(numQx_05_02 X Y))+((X-1)*(numQx_04_06 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_06,numQx_05_02,numQx_05_03,numQx_05_04,numQx_05_06,numQy_04_06,numQy_05_02,numQy_05_03,numQy_05_04,numQy_05_06]
  ring

theorem numZero_05_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_07 X Y))+(((X+Y+9)*(numQy_05_05 X Y))+((6*(numQy_05_04 X Y))+(numQy_05_03 X Y+numQy_04_07 X Y))))+((((X^3-9*X^2)*(numQx_05_07 X Y))+(((X^2+9*X)*(numQx_05_05 X Y))+(((6*X)*(numQx_05_04 X Y))+((X*(numQx_05_03 X Y))+((X-1)*(numQx_04_07 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_04_07,numQx_05_03,numQx_05_04,numQx_05_05,numQx_05_07,numQy_04_07,numQy_05_03,numQy_05_04,numQy_05_05,numQy_05_07]
  ring
#print axioms numZero_04_25
#print axioms numZero_04_26
#print axioms numZero_04_27
#print axioms numZero_04_28
#print axioms numZero_05_00
#print axioms numZero_05_01
#print axioms numZero_05_02
#print axioms numZero_05_03
#print axioms numZero_05_04
#print axioms numZero_05_05
#print axioms numZero_05_06
#print axioms numZero_05_07
end
end CriticalZeroSplitReduction20261003
