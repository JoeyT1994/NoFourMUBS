import CriticalZeroHornerInputs05
import CriticalZeroHornerInputs06
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
def denZero_05_15_expr : HExpr := (.neg (.add denQy_04_15_expr (.add (.mul (.add .x (.neg (.lit 1))) denQx_04_15_expr) (.lit 17280))))
theorem denZero_05_15 (X Y : R) : (-((denQy_04_15 X Y+(((X-1)*(denQx_04_15 X Y))+(17280 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_15_expr (by rfl)
  change (-((value X Y denQy_04_15_expr)+(((X+(-((1 : ℤ) : R)))*(value X Y denQx_04_15_expr))+((17280 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_04_15_interpret,denQy_04_15_interpret,sub_eq_add_neg] using h
#print axioms denZero_05_15
def denZero_05_16_expr : HExpr := (.neg (.add denQy_04_16_expr (.add (.mul (.add .x (.neg (.lit 1))) denQx_04_16_expr) (.lit 3240))))
theorem denZero_05_16 (X Y : R) : (-((denQy_04_16 X Y+(((X-1)*(denQx_04_16 X Y))+(3240 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_16_expr (by rfl)
  change (-((value X Y denQy_04_16_expr)+(((X+(-((1 : ℤ) : R)))*(value X Y denQx_04_16_expr))+((3240 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_04_16_interpret,denQy_04_16_interpret,sub_eq_add_neg] using h
#print axioms denZero_05_16
def denZero_05_17_expr : HExpr := (.neg (.add denQy_04_17_expr (.lit 243)))
theorem denZero_05_17 (X Y : R) : (-((denQy_04_17 X Y+(243 : R))))=0 := by
  have h := certificate_sound X Y denZero_05_17_expr (by rfl)
  change (-((value X Y denQy_04_17_expr)+((243 : ℤ) : R)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_04_17_interpret,sub_eq_add_neg] using h
#print axioms denZero_05_17
end
end CriticalZeroSplitReduction20261003
