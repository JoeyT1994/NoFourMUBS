import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_00_06 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring
#print axioms denZero_00_06

theorem denZero_00_07 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring
#print axioms denZero_00_07

theorem denZero_00_08 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring
#print axioms denZero_00_08

theorem denZero_00_09 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring
#print axioms denZero_00_09

theorem denZero_00_10 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring
#print axioms denZero_00_10

theorem denZero_00_11 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  ring
#print axioms denZero_00_11

theorem denZero_00_12 (X Y : R) : (denRaw_00_12 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_12 X Y))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(denQx_00_12 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  dsimp only [denQx_00_12,denQy_00_12,denRaw_00_12]
  ring
#print axioms denZero_00_12

theorem denZero_00_13 (X Y : R) : (denRaw_00_13 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_13 X Y))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(denQx_00_13 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  dsimp only [denQx_00_13,denQy_00_13,denRaw_00_13]
  ring
#print axioms denZero_00_13

theorem denZero_00_14 (X Y : R) : (denRaw_00_14 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_14 X Y))+(((X+Y+9)*(denQy_00_12 X Y))+((6*(0))+0)))+((((X^3-9*X^2)*(denQx_00_14 X Y))+(((X^2+9*X)*(denQx_00_12 X Y))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  dsimp only [denQx_00_12,denQx_00_14,denQy_00_12,denQy_00_14,denRaw_00_14]
  ring
#print axioms denZero_00_14

theorem denZero_00_15 (X Y : R) : (denRaw_00_15 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_15 X Y))+(((X+Y+9)*(denQy_00_13 X Y))+((6*(denQy_00_12 X Y))+0)))+((((X^3-9*X^2)*(denQx_00_15 X Y))+(((X^2+9*X)*(denQx_00_13 X Y))+(((6*X)*(denQx_00_12 X Y))+(X*(0)))))+(0 : R))))))=0 := by
  dsimp only [denQx_00_12,denQx_00_13,denQx_00_15,denQy_00_12,denQy_00_13,denQy_00_15,denRaw_00_15]
  ring
#print axioms denZero_00_15

theorem denZero_00_16 (X Y : R) : (denRaw_00_16 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_16 X Y))+(((X+Y+9)*(denQy_00_14 X Y))+((6*(denQy_00_13 X Y))+denQy_00_12 X Y)))+((((X^3-9*X^2)*(denQx_00_16 X Y))+(((X^2+9*X)*(denQx_00_14 X Y))+(((6*X)*(denQx_00_13 X Y))+(X*(denQx_00_12 X Y)))))+(0 : R))))))=0 := by
  dsimp only [denQx_00_12,denQx_00_13,denQx_00_14,denQx_00_16,denQy_00_12,denQy_00_13,denQy_00_14,denQy_00_16,denRaw_00_16]
  ring
#print axioms denZero_00_16
end
end CriticalZeroSplitReduction20261003
