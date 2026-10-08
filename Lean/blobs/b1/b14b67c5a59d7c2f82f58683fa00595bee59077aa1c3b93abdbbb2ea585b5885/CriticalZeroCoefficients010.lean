import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_02_35 (X Y : R) : (-((((6*(numQy_02_32 X Y))+(numQy_02_31 X Y+numQy_01_35 X Y))+((((6*X)*(numQx_02_32 X Y))+((X*(numQx_02_31 X Y))+((X-1)*(numQx_01_35 X Y))))+(-349920 : R)))))=0 := by
  dsimp only [numQx_01_35,numQx_02_31,numQx_02_32,numQy_01_35,numQy_02_31,numQy_02_32]
  ring

theorem numZero_02_36 (X Y : R) : (-(((numQy_02_32 X Y+numQy_01_36 X Y)+((X*(numQx_02_32 X Y))+((X-1)*(numQx_01_36 X Y))))))=0 := by
  dsimp only [numQx_01_36,numQx_02_32,numQy_01_36,numQy_02_32]
  ring

theorem numZero_03_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_02_00 X Y))))+((((X^3-9*X^2)*(numQx_03_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_02_00 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_00,numQx_03_00,numQy_02_00,numQy_03_00]
  ring

theorem numZero_03_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_02_01 X Y))))+((((X^3-9*X^2)*(numQx_03_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_02_01 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_01,numQx_03_01,numQy_02_01,numQy_03_01]
  ring

theorem numZero_03_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_02 X Y))+(((X+Y+9)*(numQy_03_00 X Y))+((6*(0))+(0+numQy_02_02 X Y))))+((((X^3-9*X^2)*(numQx_03_02 X Y))+(((X^2+9*X)*(numQx_03_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_02_02 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_02,numQx_03_00,numQx_03_02,numQy_02_02,numQy_03_00,numQy_03_02]
  ring

theorem numZero_03_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_03 X Y))+(((X+Y+9)*(numQy_03_01 X Y))+((6*(numQy_03_00 X Y))+(0+numQy_02_03 X Y))))+((((X^3-9*X^2)*(numQx_03_03 X Y))+(((X^2+9*X)*(numQx_03_01 X Y))+(((6*X)*(numQx_03_00 X Y))+((X*(0))+((X-1)*(numQx_02_03 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_03,numQx_03_00,numQx_03_01,numQx_03_03,numQy_02_03,numQy_03_00,numQy_03_01,numQy_03_03]
  ring

theorem numZero_03_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_04 X Y))+(((X+Y+9)*(numQy_03_02 X Y))+((6*(numQy_03_01 X Y))+(numQy_03_00 X Y+numQy_02_04 X Y))))+((((X^3-9*X^2)*(numQx_03_04 X Y))+(((X^2+9*X)*(numQx_03_02 X Y))+(((6*X)*(numQx_03_01 X Y))+((X*(numQx_03_00 X Y))+((X-1)*(numQx_02_04 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_04,numQx_03_00,numQx_03_01,numQx_03_02,numQx_03_04,numQy_02_04,numQy_03_00,numQy_03_01,numQy_03_02,numQy_03_04]
  ring

theorem numZero_03_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_05 X Y))+(((X+Y+9)*(numQy_03_03 X Y))+((6*(numQy_03_02 X Y))+(numQy_03_01 X Y+numQy_02_05 X Y))))+((((X^3-9*X^2)*(numQx_03_05 X Y))+(((X^2+9*X)*(numQx_03_03 X Y))+(((6*X)*(numQx_03_02 X Y))+((X*(numQx_03_01 X Y))+((X-1)*(numQx_02_05 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_05,numQx_03_01,numQx_03_02,numQx_03_03,numQx_03_05,numQy_02_05,numQy_03_01,numQy_03_02,numQy_03_03,numQy_03_05]
  ring

theorem numZero_03_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_06 X Y))+(((X+Y+9)*(numQy_03_04 X Y))+((6*(numQy_03_03 X Y))+(numQy_03_02 X Y+numQy_02_06 X Y))))+((((X^3-9*X^2)*(numQx_03_06 X Y))+(((X^2+9*X)*(numQx_03_04 X Y))+(((6*X)*(numQx_03_03 X Y))+((X*(numQx_03_02 X Y))+((X-1)*(numQx_02_06 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_06,numQx_03_02,numQx_03_03,numQx_03_04,numQx_03_06,numQy_02_06,numQy_03_02,numQy_03_03,numQy_03_04,numQy_03_06]
  ring

theorem numZero_03_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_07 X Y))+(((X+Y+9)*(numQy_03_05 X Y))+((6*(numQy_03_04 X Y))+(numQy_03_03 X Y+numQy_02_07 X Y))))+((((X^3-9*X^2)*(numQx_03_07 X Y))+(((X^2+9*X)*(numQx_03_05 X Y))+(((6*X)*(numQx_03_04 X Y))+((X*(numQx_03_03 X Y))+((X-1)*(numQx_02_07 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_07,numQx_03_03,numQx_03_04,numQx_03_05,numQx_03_07,numQy_02_07,numQy_03_03,numQy_03_04,numQy_03_05,numQy_03_07]
  ring

theorem numZero_03_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_08 X Y))+(((X+Y+9)*(numQy_03_06 X Y))+((6*(numQy_03_05 X Y))+(numQy_03_04 X Y+numQy_02_08 X Y))))+((((X^3-9*X^2)*(numQx_03_08 X Y))+(((X^2+9*X)*(numQx_03_06 X Y))+(((6*X)*(numQx_03_05 X Y))+((X*(numQx_03_04 X Y))+((X-1)*(numQx_02_08 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_08,numQx_03_04,numQx_03_05,numQx_03_06,numQx_03_08,numQy_02_08,numQy_03_04,numQy_03_05,numQy_03_06,numQy_03_08]
  ring

theorem numZero_03_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_03_09 X Y))+(((X+Y+9)*(numQy_03_07 X Y))+((6*(numQy_03_06 X Y))+(numQy_03_05 X Y+numQy_02_09 X Y))))+((((X^3-9*X^2)*(numQx_03_09 X Y))+(((X^2+9*X)*(numQx_03_07 X Y))+(((6*X)*(numQx_03_06 X Y))+((X*(numQx_03_05 X Y))+((X-1)*(numQx_02_09 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_02_09,numQx_03_05,numQx_03_06,numQx_03_07,numQx_03_09,numQy_02_09,numQy_03_05,numQy_03_06,numQy_03_07,numQy_03_09]
  ring
#print axioms numZero_02_35
#print axioms numZero_02_36
#print axioms numZero_03_00
#print axioms numZero_03_01
#print axioms numZero_03_02
#print axioms numZero_03_03
#print axioms numZero_03_04
#print axioms numZero_03_05
#print axioms numZero_03_06
#print axioms numZero_03_07
#print axioms numZero_03_08
#print axioms numZero_03_09
end
end CriticalZeroSplitReduction20261003
