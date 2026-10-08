import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_00_30 (X Y : R) : (denRaw_00_30 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_30 X Y))+(((X+Y+9)*(denQy_00_28 X Y))+((6*(denQy_00_27 X Y))+denQy_00_26 X Y)))+((((X^3-9*X^2)*(denQx_00_30 X Y))+(((X^2+9*X)*(denQx_00_28 X Y))+(((6*X)*(denQx_00_27 X Y))+(X*(denQx_00_26 X Y)))))+(41197306320 : R))))))=0 := by
  dsimp only [denQx_00_26,denQx_00_27,denQx_00_28,denQx_00_30,denQy_00_26,denQy_00_27,denQy_00_28,denQy_00_30,denRaw_00_30]
  ring

theorem denZero_00_31 (X Y : R) : (denRaw_00_31 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_31 X Y))+(((X+Y+9)*(denQy_00_29 X Y))+((6*(denQy_00_28 X Y))+denQy_00_27 X Y)))+((((X^3-9*X^2)*(denQx_00_31 X Y))+(((X^2+9*X)*(denQx_00_29 X Y))+(((6*X)*(denQx_00_28 X Y))+(X*(denQx_00_27 X Y)))))+(6866217720 : R))))))=0 := by
  dsimp only [denQx_00_27,denQx_00_28,denQx_00_29,denQx_00_31,denQy_00_27,denQy_00_28,denQy_00_29,denQy_00_31,denRaw_00_31]
  ring

theorem denZero_00_32 (X Y : R) : (denRaw_00_32 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_32 X Y))+(((X+Y+9)*(denQy_00_30 X Y))+((6*(denQy_00_29 X Y))+denQy_00_28 X Y)))+((((X^3-9*X^2)*(denQx_00_32 X Y))+(((X^2+9*X)*(denQx_00_30 X Y))+(((6*X)*(denQx_00_29 X Y))+(X*(denQx_00_28 X Y)))))+(915495696 : R))))))=0 := by
  dsimp only [denQx_00_28,denQx_00_29,denQx_00_30,denQx_00_32,denQy_00_28,denQy_00_29,denQy_00_30,denQy_00_32,denRaw_00_32]
  ring

theorem denZero_00_33 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_33 X Y))+(((X+Y+9)*(denQy_00_31 X Y))+((6*(denQy_00_30 X Y))+denQy_00_29 X Y)))+((((X^2+9*X)*(denQx_00_31 X Y))+(((6*X)*(denQx_00_30 X Y))+(X*(denQx_00_29 X Y))))+(95364135 : R)))))=0 := by
  dsimp only [denQx_00_29,denQx_00_30,denQx_00_31,denQy_00_29,denQy_00_30,denQy_00_31,denQy_00_33]
  ring

theorem denZero_00_34 (X Y : R) : (-(((((X+Y+9)*(denQy_00_32 X Y))+((6*(denQy_00_31 X Y))+denQy_00_30 X Y))+((((X^2+9*X)*(denQx_00_32 X Y))+(((6*X)*(denQx_00_31 X Y))+(X*(denQx_00_30 X Y))))+(7479540 : R)))))=0 := by
  dsimp only [denQx_00_30,denQx_00_31,denQx_00_32,denQy_00_30,denQy_00_31,denQy_00_32]
  ring

theorem denZero_00_35 (X Y : R) : (-(((((X+Y+9)*(denQy_00_33 X Y))+((6*(denQy_00_32 X Y))+denQy_00_31 X Y))+((((6*X)*(denQx_00_32 X Y))+(X*(denQx_00_31 X Y)))+(415530 : R)))))=0 := by
  dsimp only [denQx_00_31,denQx_00_32,denQy_00_31,denQy_00_32,denQy_00_33]
  ring

theorem denZero_00_36 (X Y : R) : (-((((6*(denQy_00_33 X Y))+denQy_00_32 X Y)+((X*(denQx_00_32 X Y))+(14580 : R)))))=0 := by
  dsimp only [denQx_00_32,denQy_00_32,denQy_00_33]
  ring

theorem denZero_00_37 (X Y : R) : (-((denQy_00_33 X Y+(243 : R))))=0 := by
  dsimp only [denQy_00_33]
  ring

theorem denZero_01_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring

theorem denZero_01_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  ring
#print axioms denZero_00_30
#print axioms denZero_00_31
#print axioms denZero_00_32
#print axioms denZero_00_33
#print axioms denZero_00_34
#print axioms denZero_00_35
#print axioms denZero_00_36
#print axioms denZero_00_37
#print axioms denZero_01_00
#print axioms denZero_01_01
#print axioms denZero_01_02
#print axioms denZero_01_03
end
end CriticalZeroSplitReduction20261003
