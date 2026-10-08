import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_01_40 (X Y : R) : (-(((numQy_01_36 X Y+numQy_00_40 X Y)+((X*(numQx_01_36 X Y))+((X-1)*(numQx_00_40 X Y))))))=0 := by
  dsimp only [numQx_00_40,numQx_01_36,numQy_00_40,numQy_01_36]
  ring

theorem numZero_02_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_01_00 X Y))))+((((X^3-9*X^2)*(numQx_02_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_01_00 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_00,numQx_02_00,numQy_01_00,numQy_02_00]
  ring

theorem numZero_02_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_01_01 X Y))))+((((X^3-9*X^2)*(numQx_02_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_01_01 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_01,numQx_02_01,numQy_01_01,numQy_02_01]
  ring

theorem numZero_02_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_02 X Y))+(((X+Y+9)*(numQy_02_00 X Y))+((6*(0))+(0+numQy_01_02 X Y))))+((((X^3-9*X^2)*(numQx_02_02 X Y))+(((X^2+9*X)*(numQx_02_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_01_02 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_02,numQx_02_00,numQx_02_02,numQy_01_02,numQy_02_00,numQy_02_02]
  ring

theorem numZero_02_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_03 X Y))+(((X+Y+9)*(numQy_02_01 X Y))+((6*(numQy_02_00 X Y))+(0+numQy_01_03 X Y))))+((((X^3-9*X^2)*(numQx_02_03 X Y))+(((X^2+9*X)*(numQx_02_01 X Y))+(((6*X)*(numQx_02_00 X Y))+((X*(0))+((X-1)*(numQx_01_03 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_03,numQx_02_00,numQx_02_01,numQx_02_03,numQy_01_03,numQy_02_00,numQy_02_01,numQy_02_03]
  ring

theorem numZero_02_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_04 X Y))+(((X+Y+9)*(numQy_02_02 X Y))+((6*(numQy_02_01 X Y))+(numQy_02_00 X Y+numQy_01_04 X Y))))+((((X^3-9*X^2)*(numQx_02_04 X Y))+(((X^2+9*X)*(numQx_02_02 X Y))+(((6*X)*(numQx_02_01 X Y))+((X*(numQx_02_00 X Y))+((X-1)*(numQx_01_04 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_04,numQx_02_00,numQx_02_01,numQx_02_02,numQx_02_04,numQy_01_04,numQy_02_00,numQy_02_01,numQy_02_02,numQy_02_04]
  ring

theorem numZero_02_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_05 X Y))+(((X+Y+9)*(numQy_02_03 X Y))+((6*(numQy_02_02 X Y))+(numQy_02_01 X Y+numQy_01_05 X Y))))+((((X^3-9*X^2)*(numQx_02_05 X Y))+(((X^2+9*X)*(numQx_02_03 X Y))+(((6*X)*(numQx_02_02 X Y))+((X*(numQx_02_01 X Y))+((X-1)*(numQx_01_05 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_05,numQx_02_01,numQx_02_02,numQx_02_03,numQx_02_05,numQy_01_05,numQy_02_01,numQy_02_02,numQy_02_03,numQy_02_05]
  ring

theorem numZero_02_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_06 X Y))+(((X+Y+9)*(numQy_02_04 X Y))+((6*(numQy_02_03 X Y))+(numQy_02_02 X Y+numQy_01_06 X Y))))+((((X^3-9*X^2)*(numQx_02_06 X Y))+(((X^2+9*X)*(numQx_02_04 X Y))+(((6*X)*(numQx_02_03 X Y))+((X*(numQx_02_02 X Y))+((X-1)*(numQx_01_06 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_06,numQx_02_02,numQx_02_03,numQx_02_04,numQx_02_06,numQy_01_06,numQy_02_02,numQy_02_03,numQy_02_04,numQy_02_06]
  ring

theorem numZero_02_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_07 X Y))+(((X+Y+9)*(numQy_02_05 X Y))+((6*(numQy_02_04 X Y))+(numQy_02_03 X Y+numQy_01_07 X Y))))+((((X^3-9*X^2)*(numQx_02_07 X Y))+(((X^2+9*X)*(numQx_02_05 X Y))+(((6*X)*(numQx_02_04 X Y))+((X*(numQx_02_03 X Y))+((X-1)*(numQx_01_07 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_07,numQx_02_03,numQx_02_04,numQx_02_05,numQx_02_07,numQy_01_07,numQy_02_03,numQy_02_04,numQy_02_05,numQy_02_07]
  ring

theorem numZero_02_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_08 X Y))+(((X+Y+9)*(numQy_02_06 X Y))+((6*(numQy_02_05 X Y))+(numQy_02_04 X Y+numQy_01_08 X Y))))+((((X^3-9*X^2)*(numQx_02_08 X Y))+(((X^2+9*X)*(numQx_02_06 X Y))+(((6*X)*(numQx_02_05 X Y))+((X*(numQx_02_04 X Y))+((X-1)*(numQx_01_08 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_08,numQx_02_04,numQx_02_05,numQx_02_06,numQx_02_08,numQy_01_08,numQy_02_04,numQy_02_05,numQy_02_06,numQy_02_08]
  ring

theorem numZero_02_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_09 X Y))+(((X+Y+9)*(numQy_02_07 X Y))+((6*(numQy_02_06 X Y))+(numQy_02_05 X Y+numQy_01_09 X Y))))+((((X^3-9*X^2)*(numQx_02_09 X Y))+(((X^2+9*X)*(numQx_02_07 X Y))+(((6*X)*(numQx_02_06 X Y))+((X*(numQx_02_05 X Y))+((X-1)*(numQx_01_09 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_09,numQx_02_05,numQx_02_06,numQx_02_07,numQx_02_09,numQy_01_09,numQy_02_05,numQy_02_06,numQy_02_07,numQy_02_09]
  ring

theorem numZero_02_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_02_10 X Y))+(((X+Y+9)*(numQy_02_08 X Y))+((6*(numQy_02_07 X Y))+(numQy_02_06 X Y+numQy_01_10 X Y))))+((((X^3-9*X^2)*(numQx_02_10 X Y))+(((X^2+9*X)*(numQx_02_08 X Y))+(((6*X)*(numQx_02_07 X Y))+((X*(numQx_02_06 X Y))+((X-1)*(numQx_01_10 X Y))))))+(0 : R)))))=0 := by
  dsimp only [numQx_01_10,numQx_02_06,numQx_02_07,numQx_02_08,numQx_02_10,numQy_01_10,numQy_02_06,numQy_02_07,numQy_02_08,numQy_02_10]
  ring
#print axioms numZero_01_40
#print axioms numZero_02_00
#print axioms numZero_02_01
#print axioms numZero_02_02
#print axioms numZero_02_03
#print axioms numZero_02_04
#print axioms numZero_02_05
#print axioms numZero_02_06
#print axioms numZero_02_07
#print axioms numZero_02_08
#print axioms numZero_02_09
#print axioms numZero_02_10
end
end CriticalZeroSplitReduction20261003
