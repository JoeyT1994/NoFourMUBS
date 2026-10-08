import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_02_14 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_14 X Y))+(((X+Y+9)*(denQy_02_12 X Y))+((6*(0))+(0+denQy_01_14 X Y))))+((((X^3-9*X^2)*(denQx_02_14 X Y))+(((X^2+9*X)*(denQx_02_12 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_01_14 X Y))))))+(0 : R)))))=0 := by
  dsimp only [denQx_01_14,denQx_02_12,denQx_02_14,denQy_01_14,denQy_02_12,denQy_02_14]
  ring
#print axioms denZero_02_14

theorem denZero_02_15 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_15 X Y))+(((X+Y+9)*(denQy_02_13 X Y))+((6*(denQy_02_12 X Y))+(0+denQy_01_15 X Y))))+((((X^3-9*X^2)*(denQx_02_15 X Y))+(((X^2+9*X)*(denQx_02_13 X Y))+(((6*X)*(denQx_02_12 X Y))+((X*(0))+((X-1)*(denQx_01_15 X Y))))))+(9183300480 : R)))))=0 := by
  dsimp only [denQx_01_15,denQx_02_12,denQx_02_13,denQx_02_15,denQy_01_15,denQy_02_12,denQy_02_13,denQy_02_15]
  ring
#print axioms denZero_02_15

theorem denZero_02_16 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_16 X Y))+(((X+Y+9)*(denQy_02_14 X Y))+((6*(denQy_02_13 X Y))+(denQy_02_12 X Y+denQy_01_16 X Y))))+((((X^3-9*X^2)*(denQx_02_16 X Y))+(((X^2+9*X)*(denQx_02_14 X Y))+(((6*X)*(denQx_02_13 X Y))+((X*(denQx_02_12 X Y))+((X-1)*(denQx_01_16 X Y))))))+(43620677280 : R)))))=0 := by
  dsimp only [denQx_01_16,denQx_02_12,denQx_02_13,denQx_02_14,denQx_02_16,denQy_01_16,denQy_02_12,denQy_02_13,denQy_02_14,denQy_02_16]
  ring
#print axioms denZero_02_16

theorem denZero_02_17 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_17 X Y))+(((X+Y+9)*(denQy_02_15 X Y))+((6*(denQy_02_14 X Y))+(denQy_02_13 X Y+denQy_01_17 X Y))))+((((X^3-9*X^2)*(denQx_02_17 X Y))+(((X^2+9*X)*(denQx_02_15 X Y))+(((6*X)*(denQx_02_14 X Y))+((X*(denQx_02_13 X Y))+((X-1)*(denQx_01_17 X Y))))))+(96185506590 : R)))))=0 := by
  dsimp only [denQx_01_17,denQx_02_13,denQx_02_14,denQx_02_15,denQx_02_17,denQy_01_17,denQy_02_13,denQy_02_14,denQy_02_15,denQy_02_17]
  ring
#print axioms denZero_02_17

theorem denZero_02_18 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_18 X Y))+(((X+Y+9)*(denQy_02_16 X Y))+((6*(denQy_02_15 X Y))+(denQy_02_14 X Y+denQy_01_18 X Y))))+((((X^3-9*X^2)*(denQx_02_18 X Y))+(((X^2+9*X)*(denQx_02_16 X Y))+(((6*X)*(denQx_02_15 X Y))+((X*(denQx_02_14 X Y))+((X-1)*(denQx_01_18 X Y))))))+(130500651960 : R)))))=0 := by
  dsimp only [denQx_01_18,denQx_02_14,denQx_02_15,denQx_02_16,denQx_02_18,denQy_01_18,denQy_02_14,denQy_02_15,denQy_02_16,denQy_02_18]
  ring
#print axioms denZero_02_18

theorem denZero_02_19 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_19 X Y))+(((X+Y+9)*(denQy_02_17 X Y))+((6*(denQy_02_16 X Y))+(denQy_02_15 X Y+denQy_01_19 X Y))))+((((X^3-9*X^2)*(denQx_02_19 X Y))+(((X^2+9*X)*(denQx_02_17 X Y))+(((6*X)*(denQx_02_16 X Y))+((X*(denQx_02_15 X Y))+((X-1)*(denQx_01_19 X Y))))))+(121710617820 : R)))))=0 := by
  dsimp only [denQx_01_19,denQx_02_15,denQx_02_16,denQx_02_17,denQx_02_19,denQy_01_19,denQy_02_15,denQy_02_16,denQy_02_17,denQy_02_19]
  ring
#print axioms denZero_02_19

theorem denZero_02_20 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_20 X Y))+(((X+Y+9)*(denQy_02_18 X Y))+((6*(denQy_02_17 X Y))+(denQy_02_16 X Y+denQy_01_20 X Y))))+((((X^3-9*X^2)*(denQx_02_20 X Y))+(((X^2+9*X)*(denQx_02_18 X Y))+(((6*X)*(denQx_02_17 X Y))+((X*(denQx_02_16 X Y))+((X-1)*(denQx_01_20 X Y))))))+(82543416120 : R)))))=0 := by
  dsimp only [denQx_01_20,denQx_02_16,denQx_02_17,denQx_02_18,denQx_02_20,denQy_01_20,denQy_02_16,denQy_02_17,denQy_02_18,denQy_02_20]
  ring
#print axioms denZero_02_20

theorem denZero_02_21 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_21 X Y))+(((X+Y+9)*(denQy_02_19 X Y))+((6*(denQy_02_18 X Y))+(denQy_02_17 X Y+denQy_01_21 X Y))))+((((X^3-9*X^2)*(denQx_02_21 X Y))+(((X^2+9*X)*(denQx_02_19 X Y))+(((6*X)*(denQx_02_18 X Y))+((X*(denQx_02_17 X Y))+((X-1)*(denQx_01_21 X Y))))))+(41979705570 : R)))))=0 := by
  dsimp only [denQx_01_21,denQx_02_17,denQx_02_18,denQx_02_19,denQx_02_21,denQy_01_21,denQy_02_17,denQy_02_18,denQy_02_19,denQy_02_21]
  ring
#print axioms denZero_02_21

theorem denZero_02_22 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_22 X Y))+(((X+Y+9)*(denQy_02_20 X Y))+((6*(denQy_02_19 X Y))+(denQy_02_18 X Y+denQy_01_22 X Y))))+((((X^3-9*X^2)*(denQx_02_22 X Y))+(((X^2+9*X)*(denQx_02_20 X Y))+(((6*X)*(denQx_02_19 X Y))+((X*(denQx_02_18 X Y))+((X-1)*(denQx_01_22 X Y))))))+(16264456560 : R)))))=0 := by
  dsimp only [denQx_01_22,denQx_02_18,denQx_02_19,denQx_02_20,denQx_02_22,denQy_01_22,denQy_02_18,denQy_02_19,denQy_02_20,denQy_02_22]
  ring
#print axioms denZero_02_22
end
end CriticalZeroSplitReduction20261003
