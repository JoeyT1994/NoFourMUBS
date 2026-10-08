import CriticalZeroQuotientData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem denZero_05_17 (X Y : R) : (-((denQy_04_17 X Y+(243 : R))))=0 := by
  dsimp only [denQy_04_17]
  ring
#print axioms denZero_05_17
end
end CriticalZeroSplitReduction20261003
