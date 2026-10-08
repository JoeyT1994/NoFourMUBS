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
def denZero_04_21_expr : HExpr := (.neg (.add (.add denQy_04_17_expr denQy_03_21_expr) (.lit 1215)))
theorem denZero_04_21 (X Y : R) : (-(((denQy_04_17 X Y+denQy_03_21 X Y)+(1215 : R))))=0 := by
  have h := certificate_sound X Y denZero_04_21_expr (by rfl)
  change (-(((value X Y denQy_04_17_expr)+(value X Y denQy_03_21_expr))+((1215 : ℤ) : R)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_03_21_interpret,denQy_04_17_interpret,sub_eq_add_neg] using h
#print axioms denZero_04_21
def denZero_05_00_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_00 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_00_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_00
def denZero_05_01_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_01 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_01_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_01
def denZero_05_02_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_02 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_02_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_02
def denZero_05_03_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_03 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_03_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_03
def denZero_05_04_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_04 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_04_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_04
def denZero_05_05_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_05 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_05_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_05
def denZero_05_06_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_06 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_06_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_06
def denZero_05_07_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_07 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_07_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_07
def denZero_05_08_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_08 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_08_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_08
def denZero_05_09_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_09 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_09_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_09
def denZero_05_10_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_10 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_10_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_10
def denZero_05_11_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem denZero_05_11 (X Y : R) : (-((0+(((X-1)*(0))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_11_expr (by rfl)
  change (-(((0 : ℤ) : R)+(((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_05_11
def denZero_05_12_expr : HExpr := (.neg (.add denQy_04_12_expr (.add (.mul (.add .x (.neg (.lit 1))) denQx_04_12_expr) (.lit 32768))))
theorem denZero_05_12 (X Y : R) : (-((denQy_04_12 X Y+(((X-1)*(denQx_04_12 X Y))+(32768 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_12_expr (by rfl)
  change (-((value X Y denQy_04_12_expr)+(((X+(-((1 : ℤ) : R)))*(value X Y denQx_04_12_expr))+((32768 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_04_12_interpret,denQy_04_12_interpret,sub_eq_add_neg] using h
#print axioms denZero_05_12
def denZero_05_13_expr : HExpr := (.neg (.add denQy_04_13_expr (.add (.mul (.add .x (.neg (.lit 1))) denQx_04_13_expr) (.lit 61440))))
theorem denZero_05_13 (X Y : R) : (-((denQy_04_13 X Y+(((X-1)*(denQx_04_13 X Y))+(61440 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_13_expr (by rfl)
  change (-((value X Y denQy_04_13_expr)+(((X+(-((1 : ℤ) : R)))*(value X Y denQx_04_13_expr))+((61440 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_04_13_interpret,denQy_04_13_interpret,sub_eq_add_neg] using h
#print axioms denZero_05_13
def denZero_05_14_expr : HExpr := (.neg (.add denQy_04_14_expr (.add (.mul (.add .x (.neg (.lit 1))) denQx_04_14_expr) (.lit 46080))))
theorem denZero_05_14 (X Y : R) : (-((denQy_04_14 X Y+(((X-1)*(denQx_04_14 X Y))+(46080 : R)))))=0 := by
  have h := certificate_sound X Y denZero_05_14_expr (by rfl)
  change (-((value X Y denQy_04_14_expr)+(((X+(-((1 : ℤ) : R)))*(value X Y denQx_04_14_expr))+((46080 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_04_14_interpret,denQy_04_14_interpret,sub_eq_add_neg] using h
#print axioms denZero_05_14
end
end CriticalZeroSplitReduction20261003
