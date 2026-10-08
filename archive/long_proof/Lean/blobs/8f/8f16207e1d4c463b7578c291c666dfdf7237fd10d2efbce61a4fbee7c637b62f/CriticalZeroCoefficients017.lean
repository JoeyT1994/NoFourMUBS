import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_05_20 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_05_20 X Y))+(((X+Y+9)*(numQy_05_18 X Y))+((6*(numQy_05_17 X Y))+(numQy_05_16 X Y+numQy_04_20 X Y))))+((((X^3-9*X^2)*(numQx_05_20 X Y))+(((X^2+9*X)*(numQx_05_18 X Y))+(((6*X)*(numQx_05_17 X Y))+((X*(numQx_05_16 X Y))+((X-1)*(numQx_04_20 X Y))))))+(-52767936 : R)))))=0 := by
  dsimp only [numQx_04_20,numQx_05_16,numQx_05_17,numQx_05_18,numQx_05_20,numQy_04_20,numQy_05_16,numQy_05_17,numQy_05_18,numQy_05_20]
  ring

theorem numZero_05_21 (X Y : R) : (-(((((X+Y+9)*(numQy_05_19 X Y))+((6*(numQy_05_18 X Y))+(numQy_05_17 X Y+numQy_04_21 X Y)))+((((X^2+9*X)*(numQx_05_19 X Y))+(((6*X)*(numQx_05_18 X Y))+((X*(numQx_05_17 X Y))+((X-1)*(numQx_04_21 X Y)))))+(-8541936 : R)))))=0 := by
  dsimp only [numQx_04_21,numQx_05_17,numQx_05_18,numQx_05_19,numQy_04_21,numQy_05_17,numQy_05_18,numQy_05_19]
  ring

theorem numZero_05_22 (X Y : R) : (-(((((X+Y+9)*(numQy_05_20 X Y))+((6*(numQy_05_19 X Y))+(numQy_05_18 X Y+numQy_04_22 X Y)))+((((X^2+9*X)*(numQx_05_20 X Y))+(((6*X)*(numQx_05_19 X Y))+((X*(numQx_05_18 X Y))+((X-1)*(numQx_04_22 X Y)))))+(-816480 : R)))))=0 := by
  dsimp only [numQx_04_22,numQx_05_18,numQx_05_19,numQx_05_20,numQy_04_22,numQy_05_18,numQy_05_19,numQy_05_20]
  ring

theorem numZero_05_23 (X Y : R) : (-((((6*(numQy_05_20 X Y))+(numQy_05_19 X Y+numQy_04_23 X Y))+((((6*X)*(numQx_05_20 X Y))+((X*(numQx_05_19 X Y))+((X-1)*(numQx_04_23 X Y))))+(-34992 : R)))))=0 := by
  dsimp only [numQx_04_23,numQx_05_19,numQx_05_20,numQy_04_23,numQy_05_19,numQy_05_20]
  ring

theorem numZero_05_24 (X Y : R) : (-(((numQy_05_20 X Y+numQy_04_24 X Y)+((X*(numQx_05_20 X Y))+((X-1)*(numQx_04_24 X Y))))))=0 := by
  dsimp only [numQx_04_24,numQx_05_20,numQy_04_24,numQy_05_20]
  ring

theorem numZero_06_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_05_00 X Y))))+(((X^3-9*X^2)*(numQx_06_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_05_00 X Y)))))))))=0 := by
  dsimp only [numQx_05_00,numQx_06_00,numQy_05_00,numQy_06_00]
  ring

theorem numZero_06_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_05_01 X Y))))+(((X^3-9*X^2)*(numQx_06_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_05_01 X Y)))))))))=0 := by
  dsimp only [numQx_05_01,numQx_06_01,numQy_05_01,numQy_06_01]
  ring

theorem numZero_06_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_02 X Y))+(((X+Y+9)*(numQy_06_00 X Y))+((6*(0))+(0+numQy_05_02 X Y))))+(((X^3-9*X^2)*(numQx_06_02 X Y))+(((X^2+9*X)*(numQx_06_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_05_02 X Y)))))))))=0 := by
  dsimp only [numQx_05_02,numQx_06_00,numQx_06_02,numQy_05_02,numQy_06_00,numQy_06_02]
  ring

theorem numZero_06_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_03 X Y))+(((X+Y+9)*(numQy_06_01 X Y))+((6*(numQy_06_00 X Y))+(0+numQy_05_03 X Y))))+(((X^3-9*X^2)*(numQx_06_03 X Y))+(((X^2+9*X)*(numQx_06_01 X Y))+(((6*X)*(numQx_06_00 X Y))+((X*(0))+((X-1)*(numQx_05_03 X Y)))))))))=0 := by
  dsimp only [numQx_05_03,numQx_06_00,numQx_06_01,numQx_06_03,numQy_05_03,numQy_06_00,numQy_06_01,numQy_06_03]
  ring

theorem numZero_06_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_04 X Y))+(((X+Y+9)*(numQy_06_02 X Y))+((6*(numQy_06_01 X Y))+(numQy_06_00 X Y+numQy_05_04 X Y))))+(((X^3-9*X^2)*(numQx_06_04 X Y))+(((X^2+9*X)*(numQx_06_02 X Y))+(((6*X)*(numQx_06_01 X Y))+((X*(numQx_06_00 X Y))+((X-1)*(numQx_05_04 X Y)))))))))=0 := by
  dsimp only [numQx_05_04,numQx_06_00,numQx_06_01,numQx_06_02,numQx_06_04,numQy_05_04,numQy_06_00,numQy_06_01,numQy_06_02,numQy_06_04]
  ring

theorem numZero_06_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_05 X Y))+(((X+Y+9)*(numQy_06_03 X Y))+((6*(numQy_06_02 X Y))+(numQy_06_01 X Y+numQy_05_05 X Y))))+(((X^3-9*X^2)*(numQx_06_05 X Y))+(((X^2+9*X)*(numQx_06_03 X Y))+(((6*X)*(numQx_06_02 X Y))+((X*(numQx_06_01 X Y))+((X-1)*(numQx_05_05 X Y)))))))))=0 := by
  dsimp only [numQx_05_05,numQx_06_01,numQx_06_02,numQx_06_03,numQx_06_05,numQy_05_05,numQy_06_01,numQy_06_02,numQy_06_03,numQy_06_05]
  ring

theorem numZero_06_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_06_06 X Y))+(((X+Y+9)*(numQy_06_04 X Y))+((6*(numQy_06_03 X Y))+(numQy_06_02 X Y+numQy_05_06 X Y))))+(((X^3-9*X^2)*(numQx_06_06 X Y))+(((X^2+9*X)*(numQx_06_04 X Y))+(((6*X)*(numQx_06_03 X Y))+((X*(numQx_06_02 X Y))+((X-1)*(numQx_05_06 X Y)))))))))=0 := by
  dsimp only [numQx_05_06,numQx_06_02,numQx_06_03,numQx_06_04,numQx_06_06,numQy_05_06,numQy_06_02,numQy_06_03,numQy_06_04,numQy_06_06]
  ring
#print axioms numZero_05_20
#print axioms numZero_05_21
#print axioms numZero_05_22
#print axioms numZero_05_23
#print axioms numZero_05_24
#print axioms numZero_06_00
#print axioms numZero_06_01
#print axioms numZero_06_02
#print axioms numZero_06_03
#print axioms numZero_06_04
#print axioms numZero_06_05
#print axioms numZero_06_06
end
end CriticalZeroSplitReduction20261003
