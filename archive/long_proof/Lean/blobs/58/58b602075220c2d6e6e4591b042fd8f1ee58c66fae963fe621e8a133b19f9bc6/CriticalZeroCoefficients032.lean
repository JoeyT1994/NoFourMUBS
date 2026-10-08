import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_03_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_12 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+denQy_02_12 X Y))))+((((X^3-9*X^2)*(denQx_03_12 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_02_12 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_02_12,denQx_03_12,denQy_02_12,denQy_03_12]
  ring

theorem denZero_03_13 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_13 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+denQy_02_13 X Y))))+((((X^3-9*X^2)*(denQx_03_13 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_02_13 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_02_13,denQx_03_13,denQy_02_13,denQy_03_13]
  ring

theorem denZero_03_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_14 X Y))+(((X+Y+9)*(denQy_03_12 X Y))+((6*(0))+(0+denQy_02_14 X Y))))+((((X^3-9*X^2)*(denQx_03_14 X Y))+(((X^2+9*X)*(denQx_03_12 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_02_14 X Y))))))+(302330880 : R)))))=0 := by
  dsimp only [denQx_02_14,denQx_03_12,denQx_03_14,denQy_02_14,denQy_03_12,denQy_03_14]
  ring

theorem denZero_03_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_15 X Y))+(((X+Y+9)*(denQy_03_13 X Y))+((6*(denQy_03_12 X Y))+(0+denQy_02_15 X Y))))+((((X^3-9*X^2)*(denQx_03_15 X Y))+(((X^2+9*X)*(denQx_03_13 X Y))+(((6*X)*(denQx_03_12 X Y))+((X*(0))+((X-1)*(denQx_02_15 X Y))))))+(1146337920 : R)))))=0 := by
  dsimp only [denQx_02_15,denQx_03_12,denQx_03_13,denQx_03_15,denQy_02_15,denQy_03_12,denQy_03_13,denQy_03_15]
  ring

theorem denZero_03_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_16 X Y))+(((X+Y+9)*(denQy_03_14 X Y))+((6*(denQy_03_13 X Y))+(denQy_03_12 X Y+denQy_02_16 X Y))))+((((X^3-9*X^2)*(denQx_03_16 X Y))+(((X^2+9*X)*(denQx_03_14 X Y))+(((6*X)*(denQx_03_13 X Y))+((X*(denQx_03_12 X Y))+((X-1)*(denQx_02_16 X Y))))))+(1975123440 : R)))))=0 := by
  dsimp only [denQx_02_16,denQx_03_12,denQx_03_13,denQx_03_14,denQx_03_16,denQy_02_16,denQy_03_12,denQy_03_13,denQy_03_14,denQy_03_16]
  ring

theorem denZero_03_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_17 X Y))+(((X+Y+9)*(denQy_03_15 X Y))+((6*(denQy_03_14 X Y))+(denQy_03_13 X Y+denQy_02_17 X Y))))+((((X^3-9*X^2)*(denQx_03_17 X Y))+(((X^2+9*X)*(denQx_03_15 X Y))+(((6*X)*(denQx_03_14 X Y))+((X*(denQx_03_13 X Y))+((X-1)*(denQx_02_17 X Y))))))+(2041280190 : R)))))=0 := by
  dsimp only [denQx_02_17,denQx_03_13,denQx_03_14,denQx_03_15,denQx_03_17,denQy_02_17,denQy_03_13,denQy_03_14,denQy_03_15,denQy_03_17]
  ring

theorem denZero_03_18 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_18 X Y))+(((X+Y+9)*(denQy_03_16 X Y))+((6*(denQy_03_15 X Y))+(denQy_03_14 X Y+denQy_02_18 X Y))))+((((X^3-9*X^2)*(denQx_03_18 X Y))+(((X^2+9*X)*(denQx_03_16 X Y))+(((6*X)*(denQx_03_15 X Y))+((X*(denQx_03_14 X Y))+((X-1)*(denQx_02_18 X Y))))))+(1406036880 : R)))))=0 := by
  dsimp only [denQx_02_18,denQx_03_14,denQx_03_15,denQx_03_16,denQx_03_18,denQy_02_18,denQy_03_14,denQy_03_15,denQy_03_16,denQy_03_18]
  ring

theorem denZero_03_19 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_19 X Y))+(((X+Y+9)*(denQy_03_17 X Y))+((6*(denQy_03_16 X Y))+(denQy_03_15 X Y+denQy_02_19 X Y))))+((((X^3-9*X^2)*(denQx_03_19 X Y))+(((X^2+9*X)*(denQx_03_17 X Y))+(((6*X)*(denQx_03_16 X Y))+((X*(denQx_03_15 X Y))+((X-1)*(denQx_02_19 X Y))))))+(677746440 : R)))))=0 := by
  dsimp only [denQx_02_19,denQx_03_15,denQx_03_16,denQx_03_17,denQx_03_19,denQy_02_19,denQy_03_15,denQy_03_16,denQy_03_17,denQy_03_19]
  ring

theorem denZero_03_20 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_20 X Y))+(((X+Y+9)*(denQy_03_18 X Y))+((6*(denQy_03_17 X Y))+(denQy_03_16 X Y+denQy_02_20 X Y))))+((((X^3-9*X^2)*(denQx_03_20 X Y))+(((X^2+9*X)*(denQx_03_18 X Y))+(((6*X)*(denQx_03_17 X Y))+((X*(denQx_03_16 X Y))+((X-1)*(denQx_02_20 X Y))))))+(233286480 : R)))))=0 := by
  dsimp only [denQx_02_20,denQx_03_16,denQx_03_17,denQx_03_18,denQx_03_20,denQy_02_20,denQy_03_16,denQy_03_17,denQy_03_18,denQy_03_20]
  ring

theorem denZero_03_21 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_21 X Y))+(((X+Y+9)*(denQy_03_19 X Y))+((6*(denQy_03_18 X Y))+(denQy_03_17 X Y+denQy_02_21 X Y))))+((((X^2+9*X)*(denQx_03_19 X Y))+(((6*X)*(denQx_03_18 X Y))+((X*(denQx_03_17 X Y))+((X-1)*(denQx_02_21 X Y)))))+(57340980 : R)))))=0 := by
  dsimp only [denQx_02_21,denQx_03_17,denQx_03_18,denQx_03_19,denQy_02_21,denQy_03_17,denQy_03_18,denQy_03_19,denQy_03_21]
  ring

theorem denZero_03_22 (X Y : R) : (-(((((X+Y+9)*(denQy_03_20 X Y))+((6*(denQy_03_19 X Y))+(denQy_03_18 X Y+denQy_02_22 X Y)))+((((X^2+9*X)*(denQx_03_20 X Y))+(((6*X)*(denQx_03_19 X Y))+((X*(denQx_03_18 X Y))+((X-1)*(denQx_02_22 X Y)))))+(9863280 : R)))))=0 := by
  dsimp only [denQx_02_22,denQx_03_18,denQx_03_19,denQx_03_20,denQy_02_22,denQy_03_18,denQy_03_19,denQy_03_20]
  ring

theorem denZero_03_23 (X Y : R) : (-(((((X+Y+9)*(denQy_03_21 X Y))+((6*(denQy_03_20 X Y))+(denQy_03_19 X Y+denQy_02_23 X Y)))+((((6*X)*(denQx_03_20 X Y))+((X*(denQx_03_19 X Y))+((X-1)*(denQx_02_23 X Y))))+(1130760 : R)))))=0 := by
  dsimp only [denQx_02_23,denQx_03_19,denQx_03_20,denQy_02_23,denQy_03_19,denQy_03_20,denQy_03_21]
  ring
#print axioms denZero_03_12
#print axioms denZero_03_13
#print axioms denZero_03_14
#print axioms denZero_03_15
#print axioms denZero_03_16
#print axioms denZero_03_17
#print axioms denZero_03_18
#print axioms denZero_03_19
#print axioms denZero_03_20
#print axioms denZero_03_21
#print axioms denZero_03_22
#print axioms denZero_03_23
end
end CriticalZeroSplitReduction20261003
