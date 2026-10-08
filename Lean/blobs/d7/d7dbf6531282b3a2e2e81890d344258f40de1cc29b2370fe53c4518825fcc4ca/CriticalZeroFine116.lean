import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_03_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_05

theorem denZero_03_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_06

theorem denZero_03_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_07

theorem denZero_03_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_08

theorem denZero_03_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_09

theorem denZero_03_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_10

theorem denZero_03_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_11

theorem denZero_03_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_12 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+denQy_02_12 X Y))))+((((X^3-9*X^2)*(denQx_03_12 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_02_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_02_12,denQx_03_12,denQy_02_12,denQy_03_12]
  ring
#print axioms denZero_03_12

theorem denZero_03_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_13 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+denQy_02_13 X Y))))+((((X^3-9*X^2)*(denQx_03_13 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_02_13 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_02_13,denQx_03_13,denQy_02_13,denQy_03_13]
  ring
#print axioms denZero_03_13

theorem denZero_03_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_14 X Y))+(((X+Y+9)*(denQy_03_12 X Y))+((6*(0))+(0+denQy_02_14 X Y))))+((((X^3-9*X^2)*(denQx_03_14 X Y))+(((X^2+9*X)*(denQx_03_12 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_02_14 X Y))))))+(302330880 : R)))))=0 := by
  dsimp only [denQx_02_14,denQx_03_12,denQx_03_14,denQy_02_14,denQy_03_12,denQy_03_14]
  ring
#print axioms denZero_03_14

theorem denZero_03_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_15 X Y))+(((X+Y+9)*(denQy_03_13 X Y))+((6*(denQy_03_12 X Y))+(0+denQy_02_15 X Y))))+((((X^3-9*X^2)*(denQx_03_15 X Y))+(((X^2+9*X)*(denQx_03_13 X Y))+(((6*X)*(denQx_03_12 X Y))+((X*(0))+((X-1)*(denQx_02_15 X Y))))))+(1146337920 : R)))))=0 := by
  dsimp only [denQx_02_15,denQx_03_12,denQx_03_13,denQx_03_15,denQy_02_15,denQy_03_12,denQy_03_13,denQy_03_15]
  ring
#print axioms denZero_03_15

theorem denZero_03_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_16 X Y))+(((X+Y+9)*(denQy_03_14 X Y))+((6*(denQy_03_13 X Y))+(denQy_03_12 X Y+denQy_02_16 X Y))))+((((X^3-9*X^2)*(denQx_03_16 X Y))+(((X^2+9*X)*(denQx_03_14 X Y))+(((6*X)*(denQx_03_13 X Y))+((X*(denQx_03_12 X Y))+((X-1)*(denQx_02_16 X Y))))))+(1975123440 : R)))))=0 := by
  dsimp only [denQx_02_16,denQx_03_12,denQx_03_13,denQx_03_14,denQx_03_16,denQy_02_16,denQy_03_12,denQy_03_13,denQy_03_14,denQy_03_16]
  ring
#print axioms denZero_03_16
end
end CriticalZeroSplitReduction20261003
