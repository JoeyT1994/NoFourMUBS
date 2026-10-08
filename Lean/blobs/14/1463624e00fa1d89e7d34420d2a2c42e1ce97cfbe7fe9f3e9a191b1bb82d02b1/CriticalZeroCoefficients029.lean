import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_02_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_12 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+denQy_01_12 X Y))))+((((X^3-9*X^2)*(denQx_02_12 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_01_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_01_12,denQx_02_12,denQy_01_12,denQy_02_12]
  ring

theorem denZero_02_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_13 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+denQy_01_13 X Y))))+((((X^3-9*X^2)*(denQx_02_13 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_01_13 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_01_13,denQx_02_13,denQy_01_13,denQy_02_13]
  ring

theorem denZero_02_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_14 X Y))+(((X+Y+9)*(denQy_02_12 X Y))+((6*(0))+(0+denQy_01_14 X Y))))+((((X^3-9*X^2)*(denQx_02_14 X Y))+(((X^2+9*X)*(denQx_02_12 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_01_14 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_01_14,denQx_02_12,denQx_02_14,denQy_01_14,denQy_02_12,denQy_02_14]
  ring

theorem denZero_02_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_15 X Y))+(((X+Y+9)*(denQy_02_13 X Y))+((6*(denQy_02_12 X Y))+(0+denQy_01_15 X Y))))+((((X^3-9*X^2)*(denQx_02_15 X Y))+(((X^2+9*X)*(denQx_02_13 X Y))+(((6*X)*(denQx_02_12 X Y))+((X*(0))+((X-1)*(denQx_01_15 X Y))))))+(9183300480 : R)))))=0 := by
  dsimp only [denQx_01_15,denQx_02_12,denQx_02_13,denQx_02_15,denQy_01_15,denQy_02_12,denQy_02_13,denQy_02_15]
  ring

theorem denZero_02_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_16 X Y))+(((X+Y+9)*(denQy_02_14 X Y))+((6*(denQy_02_13 X Y))+(denQy_02_12 X Y+denQy_01_16 X Y))))+((((X^3-9*X^2)*(denQx_02_16 X Y))+(((X^2+9*X)*(denQx_02_14 X Y))+(((6*X)*(denQx_02_13 X Y))+((X*(denQx_02_12 X Y))+((X-1)*(denQx_01_16 X Y))))))+(43620677280 : R)))))=0 := by
  dsimp only [denQx_01_16,denQx_02_12,denQx_02_13,denQx_02_14,denQx_02_16,denQy_01_16,denQy_02_12,denQy_02_13,denQy_02_14,denQy_02_16]
  ring

theorem denZero_02_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_17 X Y))+(((X+Y+9)*(denQy_02_15 X Y))+((6*(denQy_02_14 X Y))+(denQy_02_13 X Y+denQy_01_17 X Y))))+((((X^3-9*X^2)*(denQx_02_17 X Y))+(((X^2+9*X)*(denQx_02_15 X Y))+(((6*X)*(denQx_02_14 X Y))+((X*(denQx_02_13 X Y))+((X-1)*(denQx_01_17 X Y))))))+(96185506590 : R)))))=0 := by
  dsimp only [denQx_01_17,denQx_02_13,denQx_02_14,denQx_02_15,denQx_02_17,denQy_01_17,denQy_02_13,denQy_02_14,denQy_02_15,denQy_02_17]
  ring
#print axioms denZero_02_06
#print axioms denZero_02_07
#print axioms denZero_02_08
#print axioms denZero_02_09
#print axioms denZero_02_10
#print axioms denZero_02_11
#print axioms denZero_02_12
#print axioms denZero_02_13
#print axioms denZero_02_14
#print axioms denZero_02_15
#print axioms denZero_02_16
#print axioms denZero_02_17
end
end CriticalZeroSplitReduction20261003
