import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs05
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs06
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
def denZero_01_31_expr : HExpr := (.neg (.add (.add (.mul (.add (.add .x .y) (.lit 9)) denQy_01_29_expr) (.add (.mul (.lit 6) denQy_01_28_expr) (.add denQy_01_27_expr denQy_00_31_expr))) (.add (.add (.mul (.mulX (.lit 6) 1) denQx_01_28_expr) (.add (.mul .x denQx_01_27_expr) (.mul (.add .x (.neg (.lit 1))) denQx_00_31_expr))) (.lit 1467720))))
theorem denZero_01_31 (X Y : R) : (-(((((X+Y+9)*(denQy_01_29 X Y))+((6*(denQy_01_28 X Y))+(denQy_01_27 X Y+denQy_00_31 X Y)))+((((6*X)*(denQx_01_28 X Y))+((X*(denQx_01_27 X Y))+((X-1)*(denQx_00_31 X Y))))+(1467720 : R)))))=0 := by
  have h := certificate_sound X Y denZero_01_31_expr (by rfl)
  change (-(((((X+Y)+((9 : ℤ) : R))*(value X Y denQy_01_29_expr))+((((6 : ℤ) : R)*(value X Y denQy_01_28_expr))+((value X Y denQy_01_27_expr)+(value X Y denQy_00_31_expr))))+((((((6 : ℤ) : R)*(X^1))*(value X Y denQx_01_28_expr))+((X*(value X Y denQx_01_27_expr))+((X+(-((1 : ℤ) : R)))*(value X Y denQx_00_31_expr))))+((1467720 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_31_interpret,denQx_01_27_interpret,denQx_01_28_interpret,denQy_00_31_interpret,denQy_01_27_interpret,denQy_01_28_interpret,denQy_01_29_interpret,sub_eq_add_neg] using h
#print axioms denZero_01_31
def denZero_01_32_expr : HExpr := (.neg (.add (.add (.mul (.lit 6) denQy_01_29_expr) (.add denQy_01_28_expr denQy_00_32_expr)) (.add (.add (.mul .x denQx_01_28_expr) (.mul (.add .x (.neg (.lit 1))) denQx_00_32_expr)) (.lit 61560))))
theorem denZero_01_32 (X Y : R) : (-((((6*(denQy_01_29 X Y))+(denQy_01_28 X Y+denQy_00_32 X Y))+(((X*(denQx_01_28 X Y))+((X-1)*(denQx_00_32 X Y)))+(61560 : R)))))=0 := by
  have h := certificate_sound X Y denZero_01_32_expr (by rfl)
  change (-(((((6 : ℤ) : R)*(value X Y denQy_01_29_expr))+((value X Y denQy_01_28_expr)+(value X Y denQy_00_32_expr)))+(((X*(value X Y denQx_01_28_expr))+((X+(-((1 : ℤ) : R)))*(value X Y denQx_00_32_expr)))+((61560 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_00_32_interpret,denQx_01_28_interpret,denQy_00_32_interpret,denQy_01_28_interpret,denQy_01_29_interpret,sub_eq_add_neg] using h
#print axioms denZero_01_32
def denZero_01_33_expr : HExpr := (.neg (.add (.add denQy_01_29_expr denQy_00_33_expr) (.lit 1215)))
theorem denZero_01_33 (X Y : R) : (-(((denQy_01_29 X Y+denQy_00_33 X Y)+(1215 : R))))=0 := by
  have h := certificate_sound X Y denZero_01_33_expr (by rfl)
  change (-(((value X Y denQy_01_29_expr)+(value X Y denQy_00_33_expr))+((1215 : ℤ) : R)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQy_00_33_interpret,denQy_01_29_interpret,sub_eq_add_neg] using h
#print axioms denZero_01_33
def denZero_02_00_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_00_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_00
def denZero_02_01_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_01_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_01
def denZero_02_02_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_02 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_02_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_02
def denZero_02_03_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_03 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_03_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_03
def denZero_02_04_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_04_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_04
def denZero_02_05_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_05_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_05
def denZero_02_06_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_06_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_06
def denZero_02_07_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_07 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_07_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_07
def denZero_02_08_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_08 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_08_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_08
def denZero_02_09_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_09 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_09_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_09
def denZero_02_10_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_10 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_10_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_10
def denZero_02_11_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) (.lit 0))))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) (.lit 0)))))) (.lit 0))))
theorem denZero_02_11 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+(0+0))))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(0))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_11_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+((0 : ℤ) : R)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*((0 : ℤ) : R))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_02_11
def denZero_02_12_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) denQy_02_12_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) denQy_01_12_expr)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) denQx_02_12_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) denQx_01_12_expr))))) (.lit 0))))
theorem denZero_02_12 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(denQy_02_12 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+denQy_01_12 X Y))))+((((X^3-9*X^2)*(denQx_02_12 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(denQx_01_12 X Y))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y denZero_02_12_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y denQy_02_12_expr))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+(value X Y denQy_01_12_expr)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y denQx_02_12_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*(value X Y denQx_01_12_expr))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,denQx_01_12_interpret,denQx_02_12_interpret,denQy_01_12_interpret,denQy_02_12_interpret,sub_eq_add_neg] using h
#print axioms denZero_02_12
end
end CriticalZeroSplitReduction20261003
