import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_00_17 (X Y : R) : (denRaw_00_17 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_17 X Y))+(((X+Y+9)*(denQy_00_15 X Y))+((6*(denQy_00_14 X Y))+denQy_00_13 X Y)))+((((X^3-9*X^2)*(denQx_00_17 X Y))+(((X^2+9*X)*(denQx_00_15 X Y))+(((6*X)*(denQx_00_14 X Y))+(X*(denQx_00_13 X Y)))))+(847288609443 : R))))))=0 := by
  dsimp only [denQx_00_13,denQx_00_14,denQx_00_15,denQx_00_17,denQy_00_13,denQy_00_14,denQy_00_15,denQy_00_17,denRaw_00_17]
  ring
#print axioms denZero_00_17

theorem denZero_00_18 (X Y : R) : (denRaw_00_18 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_18 X Y))+(((X+Y+9)*(denQy_00_16 X Y))+((6*(denQy_00_15 X Y))+denQy_00_14 X Y)))+((((X^3-9*X^2)*(denQx_00_18 X Y))+(((X^2+9*X)*(denQx_00_16 X Y))+(((6*X)*(denQx_00_15 X Y))+(X*(denQx_00_14 X Y)))))+(5648590729620 : R))))))=0 := by
  dsimp only [denQx_00_14,denQx_00_15,denQx_00_16,denQx_00_18,denQy_00_14,denQy_00_15,denQy_00_16,denQy_00_18,denRaw_00_18]
  ring
#print axioms denZero_00_18

theorem denZero_00_19 (X Y : R) : (denRaw_00_19 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_00_19 X Y))+(((X+Y+9)*(denQy_00_17 X Y))+((6*(denQy_00_16 X Y))+denQy_00_15 X Y)))+((((X^3-9*X^2)*(denQx_00_19 X Y))+(((X^2+9*X)*(denQx_00_17 X Y))+(((6*X)*(denQx_00_16 X Y))+(X*(denQx_00_15 X Y)))))+(17887203977130 : R))))))=0 := by
  dsimp only [denQx_00_15,denQx_00_16,denQx_00_17,denQx_00_19,denQy_00_15,denQy_00_16,denQy_00_17,denQy_00_19,denRaw_00_19]
  ring
#print axioms denZero_00_19
end
end CriticalZeroSplitReduction20261003
