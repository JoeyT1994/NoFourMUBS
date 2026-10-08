import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_09_04 (X Y : R) : (-((((6*(numQy_09_01 X Y))+(numQy_09_00 X Y+numQy_08_04 X Y))+(((6*X)*(numQx_09_01 X Y))+((X*(numQx_09_00 X Y))+((X-1)*(numQx_08_04 X Y)))))))=0 := by
  dsimp only [numQx_08_04,numQx_09_00,numQx_09_01,numQy_08_04,numQy_09_00,numQy_09_01]
  ring

theorem numZero_09_05 (X Y : R) : (-(((numQy_09_01 X Y+numQy_08_05 X Y)+((X*(numQx_09_01 X Y))+((X-1)*(numQx_08_05 X Y))))))=0 := by
  dsimp only [numQx_08_05,numQx_09_01,numQy_08_05,numQy_09_01]
  ring

theorem numZero_09_06 (X Y : R) : (-((numQy_08_06 X Y+((X-1)*(numQx_08_06 X Y)))))=0 := by
  dsimp only [numQx_08_06,numQy_08_06]
  ring

theorem numZero_09_07 (X Y : R) : (-((numQy_08_07 X Y+((X-1)*(numQx_08_07 X Y)))))=0 := by
  dsimp only [numQx_08_07,numQy_08_07]
  ring

theorem numZero_10_00 (X Y : R) : (-((numQy_09_00 X Y+((X-1)*(numQx_09_00 X Y)))))=0 := by
  dsimp only [numQx_09_00,numQy_09_00]
  ring

theorem numZero_10_01 (X Y : R) : (-((numQy_09_01 X Y+((X-1)*(numQx_09_01 X Y)))))=0 := by
  dsimp only [numQx_09_01,numQy_09_01]
  ring

theorem denZero_00_00 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring

theorem denZero_00_01 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring

theorem denZero_00_02 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring

theorem denZero_00_03 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring

theorem denZero_00_04 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring

theorem denZero_00_05 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring
#print axioms numZero_09_04
#print axioms numZero_09_05
#print axioms numZero_09_06
#print axioms numZero_09_07
#print axioms numZero_10_00
#print axioms numZero_10_01
#print axioms denZero_00_00
#print axioms denZero_00_01
#print axioms denZero_00_02
#print axioms denZero_00_03
#print axioms denZero_00_04
#print axioms denZero_00_05
end
end CriticalZeroSplitReduction20261003
