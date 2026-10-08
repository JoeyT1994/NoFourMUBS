import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_02_23 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_23 X Y))+(((X+Y+9)*(denQy_02_21 X Y))+((6*(denQy_02_20 X Y))+(denQy_02_19 X Y+denQy_01_23 X Y))))+((((X^3-9*X^2)*(denQx_02_23 X Y))+(((X^2+9*X)*(denQx_02_21 X Y))+(((6*X)*(denQx_02_20 X Y))+((X*(denQx_02_19 X Y))+((X-1)*(denQx_01_23 X Y))))))+(4823909640 : R)))))=0 := by
  dsimp only [denQx_01_23,denQx_02_19,denQx_02_20,denQx_02_21,denQx_02_23,denQy_01_23,denQy_02_19,denQy_02_20,denQy_02_21,denQy_02_23]
  ring
#print axioms denZero_02_23

theorem denZero_02_24 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_24 X Y))+(((X+Y+9)*(denQy_02_22 X Y))+((6*(denQy_02_21 X Y))+(denQy_02_20 X Y+denQy_01_24 X Y))))+((((X^3-9*X^2)*(denQx_02_24 X Y))+(((X^2+9*X)*(denQx_02_22 X Y))+(((6*X)*(denQx_02_21 X Y))+((X*(denQx_02_20 X Y))+((X-1)*(denQx_01_24 X Y))))))+(1089942480 : R)))))=0 := by
  dsimp only [denQx_01_24,denQx_02_20,denQx_02_21,denQx_02_22,denQx_02_24,denQy_01_24,denQy_02_20,denQy_02_21,denQy_02_22,denQy_02_24]
  ring
#print axioms denZero_02_24

theorem denZero_02_25 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_25 X Y))+(((X+Y+9)*(denQy_02_23 X Y))+((6*(denQy_02_22 X Y))+(denQy_02_21 X Y+denQy_01_25 X Y))))+((((X^2+9*X)*(denQx_02_23 X Y))+(((6*X)*(denQx_02_22 X Y))+((X*(denQx_02_21 X Y))+((X-1)*(denQx_01_25 X Y)))))+(184677570 : R)))))=0 := by
  dsimp only [denQx_01_25,denQx_02_21,denQx_02_22,denQx_02_23,denQy_01_25,denQy_02_21,denQy_02_22,denQy_02_23,denQy_02_25]
  ring
#print axioms denZero_02_25

theorem denZero_02_26 (X Y : R) : (-(((((X+Y+9)*(denQy_02_24 X Y))+((6*(denQy_02_23 X Y))+(denQy_02_22 X Y+denQy_01_26 X Y)))+((((X^2+9*X)*(denQx_02_24 X Y))+(((6*X)*(denQx_02_23 X Y))+((X*(denQx_02_22 X Y))+((X-1)*(denQx_01_26 X Y)))))+(22754520 : R)))))=0 := by
  dsimp only [denQx_01_26,denQx_02_22,denQx_02_23,denQx_02_24,denQy_01_26,denQy_02_22,denQy_02_23,denQy_02_24]
  ring
#print axioms denZero_02_26

theorem denZero_02_27 (X Y : R) : (-(((((X+Y+9)*(denQy_02_25 X Y))+((6*(denQy_02_24 X Y))+(denQy_02_23 X Y+denQy_01_27 X Y)))+((((6*X)*(denQx_02_24 X Y))+((X*(denQx_02_23 X Y))+((X-1)*(denQx_01_27 X Y))))+(1927260 : R)))))=0 := by
  dsimp only [denQx_01_27,denQx_02_23,denQx_02_24,denQy_01_27,denQy_02_23,denQy_02_24,denQy_02_25]
  ring
#print axioms denZero_02_27

theorem denZero_02_28 (X Y : R) : (-((((6*(denQy_02_25 X Y))+(denQy_02_24 X Y+denQy_01_28 X Y))+(((X*(denQx_02_24 X Y))+((X-1)*(denQx_01_28 X Y)))+(100440 : R)))))=0 := by
  dsimp only [denQx_01_28,denQx_02_24,denQy_01_28,denQy_02_24,denQy_02_25]
  ring
#print axioms denZero_02_28

theorem denZero_02_29 (X Y : R) : (-(((denQy_02_25 X Y+denQy_01_29 X Y)+(2430 : R))))=0 := by
  dsimp only [denQy_01_29,denQy_02_25]
  ring
#print axioms denZero_02_29

theorem denZero_03_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_00

theorem denZero_03_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_01

theorem denZero_03_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_02

theorem denZero_03_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_03

theorem denZero_03_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_03_04
end
end CriticalZeroSplitReduction20261003
