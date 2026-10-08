import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_01_28 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_01_28 X Y))+(((X+Y+9)*(denQy_01_26 X Y))+((6*(denQy_01_25 X Y))+(denQy_01_24 X Y+denQy_00_28 X Y))))+((((X^3-9*X^2)*(denQx_01_28 X Y))+(((X^2+9*X)*(denQx_01_26 X Y))+(((6*X)*(denQx_01_25 X Y))+((X*(denQx_01_24 X Y))+((X-1)*(denQx_00_28 X Y))))))+(1767270960 : R)))))=0 := by
  dsimp only [denQx_00_28,denQx_01_24,denQx_01_25,denQx_01_26,denQx_01_28,denQy_00_28,denQy_01_24,denQy_01_25,denQy_01_26,denQy_01_28]
  ring

theorem denZero_01_29 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_01_29 X Y))+(((X+Y+9)*(denQy_01_27 X Y))+((6*(denQy_01_26 X Y))+(denQy_01_25 X Y+denQy_00_29 X Y))))+((((X^2+9*X)*(denQx_01_27 X Y))+(((6*X)*(denQx_01_26 X Y))+((X*(denQx_01_25 X Y))+((X-1)*(denQx_00_29 X Y)))))+(228104100 : R)))))=0 := by
  dsimp only [denQx_00_29,denQx_01_25,denQx_01_26,denQx_01_27,denQy_00_29,denQy_01_25,denQy_01_26,denQy_01_27,denQy_01_29]
  ring

theorem denZero_01_30 (X Y : R) : (-(((((X+Y+9)*(denQy_01_28 X Y))+((6*(denQy_01_27 X Y))+(denQy_01_26 X Y+denQy_00_30 X Y)))+((((X^2+9*X)*(denQx_01_28 X Y))+(((6*X)*(denQx_01_27 X Y))+((X*(denQx_01_26 X Y))+((X-1)*(denQx_00_30 X Y)))))+(21870000 : R)))))=0 := by
  dsimp only [denQx_00_30,denQx_01_26,denQx_01_27,denQx_01_28,denQy_00_30,denQy_01_26,denQy_01_27,denQy_01_28]
  ring

theorem denZero_01_31 (X Y : R) : (-(((((X+Y+9)*(denQy_01_29 X Y))+((6*(denQy_01_28 X Y))+(denQy_01_27 X Y+denQy_00_31 X Y)))+((((6*X)*(denQx_01_28 X Y))+((X*(denQx_01_27 X Y))+((X-1)*(denQx_00_31 X Y))))+(1467720 : R)))))=0 := by
  dsimp only [denQx_00_31,denQx_01_27,denQx_01_28,denQy_00_31,denQy_01_27,denQy_01_28,denQy_01_29]
  ring

theorem denZero_01_32 (X Y : R) : (-((((6*(denQy_01_29 X Y))+(denQy_01_28 X Y+denQy_00_32 X Y))+(((X*(denQx_01_28 X Y))+((X-1)*(denQx_00_32 X Y)))+(61560 : R)))))=0 := by
  dsimp only [denQx_00_32,denQx_01_28,denQy_00_32,denQy_01_28,denQy_01_29]
  ring

theorem denZero_01_33 (X Y : R) : (-(((denQy_01_29 X Y+denQy_00_33 X Y)+(1215 : R))))=0 := by
  dsimp only [denQy_00_33,denQy_01_29]
  ring

theorem denZero_02_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_02_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_01_28
#print axioms denZero_01_29
#print axioms denZero_01_30
#print axioms denZero_01_31
#print axioms denZero_01_32
#print axioms denZero_01_33
#print axioms denZero_02_00
#print axioms denZero_02_01
#print axioms denZero_02_02
#print axioms denZero_02_03
#print axioms denZero_02_04
#print axioms denZero_02_05
end
end CriticalZeroSplitReduction20261003
