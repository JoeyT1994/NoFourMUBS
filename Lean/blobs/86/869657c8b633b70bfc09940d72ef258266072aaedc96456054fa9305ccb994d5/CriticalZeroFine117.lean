import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_03_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_17 X Y))+(((X+Y+9)*(denQy_03_15 X Y))+((6*(denQy_03_14 X Y))+(denQy_03_13 X Y+denQy_02_17 X Y))))+((((X^3-9*X^2)*(denQx_03_17 X Y))+(((X^2+9*X)*(denQx_03_15 X Y))+(((6*X)*(denQx_03_14 X Y))+((X*(denQx_03_13 X Y))+((X-1)*(denQx_02_17 X Y))))))+(2041280190 : R)))))=0 := by
  dsimp only [denQx_02_17,denQx_03_13,denQx_03_14,denQx_03_15,denQx_03_17,denQy_02_17,denQy_03_13,denQy_03_14,denQy_03_15,denQy_03_17]
  ring
#print axioms denZero_03_17

theorem denZero_03_18 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_18 X Y))+(((X+Y+9)*(denQy_03_16 X Y))+((6*(denQy_03_15 X Y))+(denQy_03_14 X Y+denQy_02_18 X Y))))+((((X^3-9*X^2)*(denQx_03_18 X Y))+(((X^2+9*X)*(denQx_03_16 X Y))+(((6*X)*(denQx_03_15 X Y))+((X*(denQx_03_14 X Y))+((X-1)*(denQx_02_18 X Y))))))+(1406036880 : R)))))=0 := by
  dsimp only [denQx_02_18,denQx_03_14,denQx_03_15,denQx_03_16,denQx_03_18,denQy_02_18,denQy_03_14,denQy_03_15,denQy_03_16,denQy_03_18]
  ring
#print axioms denZero_03_18

theorem denZero_03_19 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_19 X Y))+(((X+Y+9)*(denQy_03_17 X Y))+((6*(denQy_03_16 X Y))+(denQy_03_15 X Y+denQy_02_19 X Y))))+((((X^3-9*X^2)*(denQx_03_19 X Y))+(((X^2+9*X)*(denQx_03_17 X Y))+(((6*X)*(denQx_03_16 X Y))+((X*(denQx_03_15 X Y))+((X-1)*(denQx_02_19 X Y))))))+(677746440 : R)))))=0 := by
  dsimp only [denQx_02_19,denQx_03_15,denQx_03_16,denQx_03_17,denQx_03_19,denQy_02_19,denQy_03_15,denQy_03_16,denQy_03_17,denQy_03_19]
  ring
#print axioms denZero_03_19

theorem denZero_03_20 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_20 X Y))+(((X+Y+9)*(denQy_03_18 X Y))+((6*(denQy_03_17 X Y))+(denQy_03_16 X Y+denQy_02_20 X Y))))+((((X^3-9*X^2)*(denQx_03_20 X Y))+(((X^2+9*X)*(denQx_03_18 X Y))+(((6*X)*(denQx_03_17 X Y))+((X*(denQx_03_16 X Y))+((X-1)*(denQx_02_20 X Y))))))+(233286480 : R)))))=0 := by
  dsimp only [denQx_02_20,denQx_03_16,denQx_03_17,denQx_03_18,denQx_03_20,denQy_02_20,denQy_03_16,denQy_03_17,denQy_03_18,denQy_03_20]
  ring
#print axioms denZero_03_20

theorem denZero_03_21 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_03_21 X Y))+(((X+Y+9)*(denQy_03_19 X Y))+((6*(denQy_03_18 X Y))+(denQy_03_17 X Y+denQy_02_21 X Y))))+((((X^2+9*X)*(denQx_03_19 X Y))+(((6*X)*(denQx_03_18 X Y))+((X*(denQx_03_17 X Y))+((X-1)*(denQx_02_21 X Y)))))+(57340980 : R)))))=0 := by
  dsimp only [denQx_02_21,denQx_03_17,denQx_03_18,denQx_03_19,denQy_02_21,denQy_03_17,denQy_03_18,denQy_03_19,denQy_03_21]
  ring
#print axioms denZero_03_21

theorem denZero_03_22 (X Y : R) : (-(((((X+Y+9)*(denQy_03_20 X Y))+((6*(denQy_03_19 X Y))+(denQy_03_18 X Y+denQy_02_22 X Y)))+((((X^2+9*X)*(denQx_03_20 X Y))+(((6*X)*(denQx_03_19 X Y))+((X*(denQx_03_18 X Y))+((X-1)*(denQx_02_22 X Y)))))+(9863280 : R)))))=0 := by
  dsimp only [denQx_02_22,denQx_03_18,denQx_03_19,denQx_03_20,denQy_02_22,denQy_03_18,denQy_03_19,denQy_03_20]
  ring
#print axioms denZero_03_22

theorem denZero_03_23 (X Y : R) : (-(((((X+Y+9)*(denQy_03_21 X Y))+((6*(denQy_03_20 X Y))+(denQy_03_19 X Y+denQy_02_23 X Y)))+((((6*X)*(denQx_03_20 X Y))+((X*(denQx_03_19 X Y))+((X-1)*(denQx_02_23 X Y))))+(1130760 : R)))))=0 := by
  dsimp only [denQx_02_23,denQx_03_19,denQx_03_20,denQy_02_23,denQy_03_19,denQy_03_20,denQy_03_21]
  ring
#print axioms denZero_03_23

theorem denZero_03_24 (X Y : R) : (-((((6*(denQy_03_21 X Y))+(denQy_03_20 X Y+denQy_02_24 X Y))+(((X*(denQx_03_20 X Y))+((X-1)*(denQx_02_24 X Y)))+(77760 : R)))))=0 := by
  dsimp only [denQx_02_24,denQx_03_20,denQy_02_24,denQy_03_20,denQy_03_21]
  ring
#print axioms denZero_03_24

theorem denZero_03_25 (X Y : R) : (-(((denQy_03_21 X Y+denQy_02_25 X Y)+(2430 : R))))=0 := by
  dsimp only [denQy_02_25,denQy_03_21]
  ring
#print axioms denZero_03_25

theorem denZero_04_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_04_00

theorem denZero_04_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_04_01

theorem denZero_04_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_04_02
end
end CriticalZeroSplitReduction20261003
