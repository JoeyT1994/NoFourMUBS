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

theorem numZero_00_01 (X Y : R) : (numRaw_00_01 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_01 X Y))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(numQx_00_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_01,numQy_00_01,numRaw_00_01]
  ring

theorem numZero_00_02 (X Y : R) : (numRaw_00_02 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_02 X Y))+(((X+Y+9)*(numQy_00_00 X Y))+((6*(0))+0)))+((((X^3-9*X^2)*(numQx_00_02 X Y))+(((X^2+9*X)*(numQx_00_00 X Y))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_00,numQx_00_02,numQy_00_00,numQy_00_02,numRaw_00_02]
  ring

theorem numZero_00_03 (X Y : R) : (numRaw_00_03 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_03 X Y))+(((X+Y+9)*(numQy_00_01 X Y))+((6*(numQy_00_00 X Y))+0)))+((((X^3-9*X^2)*(numQx_00_03 X Y))+(((X^2+9*X)*(numQx_00_01 X Y))+(((6*X)*(numQx_00_00 X Y))+(X*(0)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_00,numQx_00_01,numQx_00_03,numQy_00_00,numQy_00_01,numQy_00_03,numRaw_00_03]
  ring

theorem numZero_00_04 (X Y : R) : (numRaw_00_04 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_04 X Y))+(((X+Y+9)*(numQy_00_02 X Y))+((6*(numQy_00_01 X Y))+numQy_00_00 X Y)))+((((X^3-9*X^2)*(numQx_00_04 X Y))+(((X^2+9*X)*(numQx_00_02 X Y))+(((6*X)*(numQx_00_01 X Y))+(X*(numQx_00_00 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_00,numQx_00_01,numQx_00_02,numQx_00_04,numQy_00_00,numQy_00_01,numQy_00_02,numQy_00_04,numRaw_00_04]
  ring

theorem numZero_00_06 (X Y : R) : (numRaw_00_06 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_06 X Y))+(((X+Y+9)*(numQy_00_04 X Y))+((6*(numQy_00_03 X Y))+numQy_00_02 X Y)))+((((X^3-9*X^2)*(numQx_00_06 X Y))+(((X^2+9*X)*(numQx_00_04 X Y))+(((6*X)*(numQx_00_03 X Y))+(X*(numQx_00_02 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_02,numQx_00_03,numQx_00_04,numQx_00_06,numQy_00_02,numQy_00_03,numQy_00_04,numQy_00_06,numRaw_00_06]
  ring

theorem numZero_00_07 (X Y : R) : (numRaw_00_07 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_07 X Y))+(((X+Y+9)*(numQy_00_05 X Y))+((6*(numQy_00_04 X Y))+numQy_00_03 X Y)))+((((X^3-9*X^2)*(numQx_00_07 X Y))+(((X^2+9*X)*(numQx_00_05 X Y))+(((6*X)*(numQx_00_04 X Y))+(X*(numQx_00_03 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_03,numQx_00_04,numQx_00_05,numQx_00_07,numQy_00_03,numQy_00_04,numQy_00_05,numQy_00_07,numRaw_00_07]
  ring

theorem numZero_00_08 (X Y : R) : (numRaw_00_08 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_08 X Y))+(((X+Y+9)*(numQy_00_06 X Y))+((6*(numQy_00_05 X Y))+numQy_00_04 X Y)))+((((X^3-9*X^2)*(numQx_00_08 X Y))+(((X^2+9*X)*(numQx_00_06 X Y))+(((6*X)*(numQx_00_05 X Y))+(X*(numQx_00_04 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_04,numQx_00_05,numQx_00_06,numQx_00_08,numQy_00_04,numQy_00_05,numQy_00_06,numQy_00_08,numRaw_00_08]
  ring

theorem numZero_00_09 (X Y : R) : (numRaw_00_09 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_09 X Y))+(((X+Y+9)*(numQy_00_07 X Y))+((6*(numQy_00_06 X Y))+numQy_00_05 X Y)))+((((X^3-9*X^2)*(numQx_00_09 X Y))+(((X^2+9*X)*(numQx_00_07 X Y))+(((6*X)*(numQx_00_06 X Y))+(X*(numQx_00_05 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_05,numQx_00_06,numQx_00_07,numQx_00_09,numQy_00_05,numQy_00_06,numQy_00_07,numQy_00_09,numRaw_00_09]
  ring

theorem numZero_00_10 (X Y : R) : (numRaw_00_10 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_10 X Y))+(((X+Y+9)*(numQy_00_08 X Y))+((6*(numQy_00_07 X Y))+numQy_00_06 X Y)))+((((X^3-9*X^2)*(numQx_00_10 X Y))+(((X^2+9*X)*(numQx_00_08 X Y))+(((6*X)*(numQx_00_07 X Y))+(X*(numQx_00_06 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_06,numQx_00_07,numQx_00_08,numQx_00_10,numQy_00_06,numQy_00_07,numQy_00_08,numQy_00_10,numRaw_00_10]
  ring

theorem numZero_00_11 (X Y : R) : (numRaw_00_11 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_11 X Y))+(((X+Y+9)*(numQy_00_09 X Y))+((6*(numQy_00_08 X Y))+numQy_00_07 X Y)))+((((X^3-9*X^2)*(numQx_00_11 X Y))+(((X^2+9*X)*(numQx_00_09 X Y))+(((6*X)*(numQx_00_08 X Y))+(X*(numQx_00_07 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_07,numQx_00_08,numQx_00_09,numQx_00_11,numQy_00_07,numQy_00_08,numQy_00_09,numQy_00_11,numRaw_00_11]
  ring

theorem numZero_00_12 (X Y : R) : (numRaw_00_12 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_12 X Y))+(((X+Y+9)*(numQy_00_10 X Y))+((6*(numQy_00_09 X Y))+numQy_00_08 X Y)))+((((X^3-9*X^2)*(numQx_00_12 X Y))+(((X^2+9*X)*(numQx_00_10 X Y))+(((6*X)*(numQx_00_09 X Y))+(X*(numQx_00_08 X Y)))))+(0 : R))))))=0 := by
  dsimp only [numQx_00_08,numQx_00_09,numQx_00_10,numQx_00_12,numQy_00_08,numQy_00_09,numQy_00_10,numQy_00_12,numRaw_00_12]
  ring
#print axioms numZero_00_00
#print axioms numZero_00_01
#print axioms numZero_00_02
#print axioms numZero_00_03
#print axioms numZero_00_04
#print axioms numZero_00_06
#print axioms numZero_00_07
#print axioms numZero_00_08
#print axioms numZero_00_09
#print axioms numZero_00_10
#print axioms numZero_00_11
#print axioms numZero_00_12
end
end CriticalZeroSplitReduction20261003
