import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_05_12 (X Y : R) : (-((denQy_04_12 X Y+(((X-1)*(denQx_04_12 X Y))+(32768 : R)))))=0 := by
  dsimp only [denQx_04_12,denQy_04_12]
  ring

theorem denZero_05_13 (X Y : R) : (-((denQy_04_13 X Y+(((X-1)*(denQx_04_13 X Y))+(61440 : R)))))=0 := by
  dsimp only [denQx_04_13,denQy_04_13]
  ring

theorem denZero_05_14 (X Y : R) : (-((denQy_04_14 X Y+(((X-1)*(denQx_04_14 X Y))+(46080 : R)))))=0 := by
  dsimp only [denQx_04_14,denQy_04_14]
  ring

theorem denZero_05_15 (X Y : R) : (-((denQy_04_15 X Y+(((X-1)*(denQx_04_15 X Y))+(17280 : R)))))=0 := by
  dsimp only [denQx_04_15,denQy_04_15]
  ring

theorem denZero_05_16 (X Y : R) : (-((denQy_04_16 X Y+(((X-1)*(denQx_04_16 X Y))+(3240 : R)))))=0 := by
  dsimp only [denQx_04_16,denQy_04_16]
  ring

theorem denZero_05_17 (X Y : R) : (-((denQy_04_17 X Y+(243 : R))))=0 := by
  dsimp only [denQy_04_17]
  ring
#print axioms denZero_05_12
#print axioms denZero_05_13
#print axioms denZero_05_14
#print axioms denZero_05_15
#print axioms denZero_05_16
#print axioms denZero_05_17
end
end CriticalZeroSplitReduction20261003
