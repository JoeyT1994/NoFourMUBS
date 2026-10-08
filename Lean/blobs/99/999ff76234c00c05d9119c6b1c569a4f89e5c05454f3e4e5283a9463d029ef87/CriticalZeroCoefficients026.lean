import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_01_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_01_12 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+denQy_00_12 X Y))))+((((X^3-9*X^2)*(denQx_01_12 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_00_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_00_12,denQx_01_12,denQy_00_12,denQy_01_12]
  ring

theorem denZero_01_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_01_13 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+denQy_00_13 X Y))))+((((X^3-9*X^2)*(denQx_01_13 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_00_13 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_00_13,denQx_01_13,denQy_00_13,denQy_01_13]
  ring

theorem denZero_01_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_01_14 X Y))+(((X+Y+9)*(denQy_01_12 X Y))+((6*(0))+(0+denQy_00_14 X Y))))+((((X^3-9*X^2)*(denQx_01_14 X Y))+(((X^2+9*X)*(denQx_01_12 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_00_14 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_00_14,denQx_01_12,denQx_01_14,denQy_00_14,denQy_01_12,denQy_01_14]
  ring

theorem denZero_01_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_01_15 X Y))+(((X+Y+9)*(denQy_01_13 X Y))+((6*(denQy_01_12 X Y))+(0+denQy_00_15 X Y))))+((((X^3-9*X^2)*(denQx_01_15 X Y))+(((X^2+9*X)*(denQx_01_13 X Y))+(((6*X)*(denQx_01_12 X Y))+((X*(0))+((X-1)*(denQx_00_15 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_00_15,denQx_01_12,denQx_01_13,denQx_01_15,denQy_00_15,denQy_01_12,denQy_01_13,denQy_01_15]
  ring
#print axioms denZero_01_04
#print axioms denZero_01_05
#print axioms denZero_01_06
#print axioms denZero_01_07
#print axioms denZero_01_08
#print axioms denZero_01_09
#print axioms denZero_01_10
#print axioms denZero_01_11
#print axioms denZero_01_12
#print axioms denZero_01_13
#print axioms denZero_01_14
#print axioms denZero_01_15
end
end CriticalZeroSplitReduction20261003
