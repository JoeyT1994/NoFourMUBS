import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_00_20 (X Y : R) : (denRaw_00_20 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_20 X Y))+(((X+Y+9)*(denQy_00_18 X Y))+((6*(denQy_00_17 X Y))+denQy_00_16 X Y)))+((((X^3-9*X^2)*(denQx_00_20 X Y))+(((X^2+9*X)*(denQx_00_18 X Y))+(((6*X)*(denQx_00_17 X Y))+(X*(denQx_00_16 X Y)))))+(35774407954260 : R))))))=0 := by
  dsimp only [denQx_00_16,denQx_00_17,denQx_00_18,denQx_00_20,denQy_00_16,denQy_00_17,denQy_00_18,denQy_00_20,denRaw_00_20]
  ring
#print axioms denZero_00_20

theorem denZero_00_21 (X Y : R) : (denRaw_00_21 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_21 X Y))+(((X+Y+9)*(denQy_00_19 X Y))+((6*(denQy_00_18 X Y))+denQy_00_17 X Y)))+((((X^3-9*X^2)*(denQx_00_21 X Y))+(((X^2+9*X)*(denQx_00_19 X Y))+(((6*X)*(denQx_00_18 X Y))+(X*(denQx_00_17 X Y)))))+(50680411268535 : R))))))=0 := by
  dsimp only [denQx_00_17,denQx_00_18,denQx_00_19,denQx_00_21,denQy_00_17,denQy_00_18,denQy_00_19,denQy_00_21,denRaw_00_21]
  ring
#print axioms denZero_00_21

theorem denZero_00_22 (X Y : R) : (denRaw_00_22 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_22 X Y))+(((X+Y+9)*(denQy_00_20 X Y))+((6*(denQy_00_19 X Y))+denQy_00_18 X Y)))+((((X^3-9*X^2)*(denQx_00_22 X Y))+(((X^2+9*X)*(denQx_00_20 X Y))+(((6*X)*(denQx_00_19 X Y))+(X*(denQx_00_18 X Y)))))+(54059105353104 : R))))))=0 := by
  dsimp only [denQx_00_18,denQx_00_19,denQx_00_20,denQx_00_22,denQy_00_18,denQy_00_19,denQy_00_20,denQy_00_22,denRaw_00_22]
  ring
#print axioms denZero_00_22

theorem denZero_00_23 (X Y : R) : (denRaw_00_23 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_23 X Y))+(((X+Y+9)*(denQy_00_21 X Y))+((6*(denQy_00_20 X Y))+denQy_00_19 X Y)))+((((X^3-9*X^2)*(denQx_00_23 X Y))+(((X^2+9*X)*(denQx_00_21 X Y))+(((6*X)*(denQx_00_20 X Y))+(X*(denQx_00_19 X Y)))))+(45049254460920 : R))))))=0 := by
  dsimp only [denQx_00_19,denQx_00_20,denQx_00_21,denQx_00_23,denQy_00_19,denQy_00_20,denQy_00_21,denQy_00_23,denRaw_00_23]
  ring
#print axioms denZero_00_23

theorem denZero_00_24 (X Y : R) : (denRaw_00_24 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_24 X Y))+(((X+Y+9)*(denQy_00_22 X Y))+((6*(denQy_00_21 X Y))+denQy_00_20 X Y)))+((((X^3-9*X^2)*(denQx_00_24 X Y))+(((X^2+9*X)*(denQx_00_22 X Y))+(((6*X)*(denQx_00_21 X Y))+(X*(denQx_00_20 X Y)))))+(30032836307280 : R))))))=0 := by
  dsimp only [denQx_00_20,denQx_00_21,denQx_00_22,denQx_00_24,denQy_00_20,denQy_00_21,denQy_00_22,denQy_00_24,denRaw_00_24]
  ring
#print axioms denZero_00_24
end
end CriticalZeroSplitReduction20261003
