import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs09
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs22
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
def numZero_08_12_expr : HExpr := (.neg (.add numQy_07_12_expr (.mul (.add .x (.neg (.lit 1))) numQx_07_12_expr)))
theorem numZero_08_12 (X Y : R) : (-((numQy_07_12 X Y+((X-1)*(numQx_07_12 X Y)))))=0 := by
  have h := certificate_sound X Y numZero_08_12_expr (by rfl)
  change (-((value X Y numQy_07_12_expr)+((X+(-((1 : ℤ) : R)))*(value X Y numQx_07_12_expr))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_07_12_interpret,numQy_07_12_interpret,sub_eq_add_neg] using h
#print axioms numZero_08_12
def numZero_09_00_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_09_00_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) numQy_08_00_expr)))) (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_09_00_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) numQx_08_00_expr)))))))
theorem numZero_09_00 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_09_00 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_08_00 X Y))))+(((X^3-9*X^2)*(numQx_09_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_08_00 X Y)))))))))=0 := by
  have h := certificate_sound X Y numZero_09_00_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_09_00_expr))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+(value X Y numQy_08_00_expr)))))+((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_09_00_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*(value X Y numQx_08_00_expr))))))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_08_00_interpret,numQx_09_00_interpret,numQy_08_00_interpret,numQy_09_00_interpret,sub_eq_add_neg] using h
#print axioms numZero_09_00
def numZero_09_01_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_09_01_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) numQy_08_01_expr)))) (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_09_01_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) numQx_08_01_expr)))))))
theorem numZero_09_01 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_09_01 X Y))+(((X+Y+9)*(0))+((6*(0))+(0+numQy_08_01 X Y))))+(((X^3-9*X^2)*(numQx_09_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_08_01 X Y)))))))))=0 := by
  have h := certificate_sound X Y numZero_09_01_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_09_01_expr))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+(value X Y numQy_08_01_expr)))))+((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_09_01_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*(value X Y numQx_08_01_expr))))))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_08_01_interpret,numQx_09_01_interpret,numQy_08_01_interpret,numQy_09_01_interpret,sub_eq_add_neg] using h
#print axioms numZero_09_01
def numZero_09_02_expr : HExpr := (.neg (.add (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_09_00_expr) (.add (.mul (.lit 6) (.lit 0)) (.add (.lit 0) numQy_08_02_expr))) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_09_00_expr) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) numQx_08_02_expr))))))
theorem numZero_09_02 (X Y : R) : (-(((((X+Y+9)*(numQy_09_00 X Y))+((6*(0))+(0+numQy_08_02 X Y)))+(((X^2+9*X)*(numQx_09_00 X Y))+(((6*X)*(0))+((X*(0))+((X-1)*(numQx_08_02 X Y))))))))=0 := by
  have h := certificate_sound X Y numZero_09_02_expr (by rfl)
  change (-(((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_09_00_expr))+((((6 : ℤ) : R)*((0 : ℤ) : R))+(((0 : ℤ) : R)+(value X Y numQy_08_02_expr))))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_09_00_expr))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*(value X Y numQx_08_02_expr)))))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_08_02_interpret,numQx_09_00_interpret,numQy_08_02_interpret,numQy_09_00_interpret,sub_eq_add_neg] using h
#print axioms numZero_09_02
def numZero_09_03_expr : HExpr := (.neg (.add (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_09_01_expr) (.add (.mul (.lit 6) numQy_09_00_expr) (.add (.lit 0) numQy_08_03_expr))) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_09_01_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_09_00_expr) (.add (.mul .x (.lit 0)) (.mul (.add .x (.neg (.lit 1))) numQx_08_03_expr))))))
theorem numZero_09_03 (X Y : R) : (-(((((X+Y+9)*(numQy_09_01 X Y))+((6*(numQy_09_00 X Y))+(0+numQy_08_03 X Y)))+(((X^2+9*X)*(numQx_09_01 X Y))+(((6*X)*(numQx_09_00 X Y))+((X*(0))+((X-1)*(numQx_08_03 X Y))))))))=0 := by
  have h := certificate_sound X Y numZero_09_03_expr (by rfl)
  change (-(((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_09_01_expr))+((((6 : ℤ) : R)*(value X Y numQy_09_00_expr))+(((0 : ℤ) : R)+(value X Y numQy_08_03_expr))))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_09_01_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_09_00_expr))+((X*((0 : ℤ) : R))+((X+(-((1 : ℤ) : R)))*(value X Y numQx_08_03_expr)))))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_08_03_interpret,numQx_09_00_interpret,numQx_09_01_interpret,numQy_08_03_interpret,numQy_09_00_interpret,numQy_09_01_interpret,sub_eq_add_neg] using h
#print axioms numZero_09_03
def numZero_09_04_expr : HExpr := (.neg (.add (.add (.mul (.lit 6) numQy_09_01_expr) (.add numQy_09_00_expr numQy_08_04_expr)) (.add (.mul (.mulX (.lit 6) 1) numQx_09_01_expr) (.add (.mul .x numQx_09_00_expr) (.mul (.add .x (.neg (.lit 1))) numQx_08_04_expr)))))
theorem numZero_09_04 (X Y : R) : (-((((6*(numQy_09_01 X Y))+(numQy_09_00 X Y+numQy_08_04 X Y))+(((6*X)*(numQx_09_01 X Y))+((X*(numQx_09_00 X Y))+((X-1)*(numQx_08_04 X Y)))))))=0 := by
  have h := certificate_sound X Y numZero_09_04_expr (by rfl)
  change (-(((((6 : ℤ) : R)*(value X Y numQy_09_01_expr))+((value X Y numQy_09_00_expr)+(value X Y numQy_08_04_expr)))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_09_01_expr))+((X*(value X Y numQx_09_00_expr))+((X+(-((1 : ℤ) : R)))*(value X Y numQx_08_04_expr))))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_08_04_interpret,numQx_09_00_interpret,numQx_09_01_interpret,numQy_08_04_interpret,numQy_09_00_interpret,numQy_09_01_interpret,sub_eq_add_neg] using h
#print axioms numZero_09_04
def numZero_09_05_expr : HExpr := (.neg (.add (.add numQy_09_01_expr numQy_08_05_expr) (.add (.mul .x numQx_09_01_expr) (.mul (.add .x (.neg (.lit 1))) numQx_08_05_expr))))
theorem numZero_09_05 (X Y : R) : (-(((numQy_09_01 X Y+numQy_08_05 X Y)+((X*(numQx_09_01 X Y))+((X-1)*(numQx_08_05 X Y))))))=0 := by
  have h := certificate_sound X Y numZero_09_05_expr (by rfl)
  change (-(((value X Y numQy_09_01_expr)+(value X Y numQy_08_05_expr))+((X*(value X Y numQx_09_01_expr))+((X+(-((1 : ℤ) : R)))*(value X Y numQx_08_05_expr)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_08_05_interpret,numQx_09_01_interpret,numQy_08_05_interpret,numQy_09_01_interpret,sub_eq_add_neg] using h
#print axioms numZero_09_05
def numZero_09_06_expr : HExpr := (.neg (.add numQy_08_06_expr (.mul (.add .x (.neg (.lit 1))) numQx_08_06_expr)))
theorem numZero_09_06 (X Y : R) : (-((numQy_08_06 X Y+((X-1)*(numQx_08_06 X Y)))))=0 := by
  have h := certificate_sound X Y numZero_09_06_expr (by rfl)
  change (-((value X Y numQy_08_06_expr)+((X+(-((1 : ℤ) : R)))*(value X Y numQx_08_06_expr))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_08_06_interpret,numQy_08_06_interpret,sub_eq_add_neg] using h
#print axioms numZero_09_06
def numZero_09_07_expr : HExpr := (.neg (.add numQy_08_07_expr (.mul (.add .x (.neg (.lit 1))) numQx_08_07_expr)))
theorem numZero_09_07 (X Y : R) : (-((numQy_08_07 X Y+((X-1)*(numQx_08_07 X Y)))))=0 := by
  have h := certificate_sound X Y numZero_09_07_expr (by rfl)
  change (-((value X Y numQy_08_07_expr)+((X+(-((1 : ℤ) : R)))*(value X Y numQx_08_07_expr))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_08_07_interpret,numQy_08_07_interpret,sub_eq_add_neg] using h
#print axioms numZero_09_07
def numZero_10_00_expr : HExpr := (.neg (.add numQy_09_00_expr (.mul (.add .x (.neg (.lit 1))) numQx_09_00_expr)))
theorem numZero_10_00 (X Y : R) : (-((numQy_09_00 X Y+((X-1)*(numQx_09_00 X Y)))))=0 := by
  have h := certificate_sound X Y numZero_10_00_expr (by rfl)
  change (-((value X Y numQy_09_00_expr)+((X+(-((1 : ℤ) : R)))*(value X Y numQx_09_00_expr))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_09_00_interpret,numQy_09_00_interpret,sub_eq_add_neg] using h
#print axioms numZero_10_00
def numZero_10_01_expr : HExpr := (.neg (.add numQy_09_01_expr (.mul (.add .x (.neg (.lit 1))) numQx_09_01_expr)))
theorem numZero_10_01 (X Y : R) : (-((numQy_09_01 X Y+((X-1)*(numQx_09_01 X Y)))))=0 := by
  have h := certificate_sound X Y numZero_10_01_expr (by rfl)
  change (-((value X Y numQy_09_01_expr)+((X+(-((1 : ℤ) : R)))*(value X Y numQx_09_01_expr))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_09_01_interpret,numQy_09_01_interpret,sub_eq_add_neg] using h
#print axioms numZero_10_01
def denZero_00_00_expr : HExpr := (.add (.lit 0) (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem denZero_00_00 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y denZero_00_00_expr (by rfl)
  change (((0 : ℤ) : R)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+((0 : ℤ) : R))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+(X*((0 : ℤ) : R)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_00_00
def denZero_00_01_expr : HExpr := (.add (.lit 0) (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem denZero_00_01 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y denZero_00_01_expr (by rfl)
  change (((0 : ℤ) : R)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+((0 : ℤ) : R))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+(X*((0 : ℤ) : R)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_00_01
def denZero_00_02_expr : HExpr := (.add (.lit 0) (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem denZero_00_02 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y denZero_00_02_expr (by rfl)
  change (((0 : ℤ) : R)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+((0 : ℤ) : R))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+(X*((0 : ℤ) : R)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_00_02
def denZero_00_03_expr : HExpr := (.add (.lit 0) (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem denZero_00_03 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y denZero_00_03_expr (by rfl)
  change (((0 : ℤ) : R)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+((0 : ℤ) : R))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+(X*((0 : ℤ) : R)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_00_03
def denZero_00_04_expr : HExpr := (.add (.lit 0) (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem denZero_00_04 (X Y : R) : (0+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(0))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(0))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y denZero_00_04_expr (by rfl)
  change (((0 : ℤ) : R)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*((0 : ℤ) : R))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+((0 : ℤ) : R))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*((0 : ℤ) : R))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+(X*((0 : ℤ) : R)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms denZero_00_04
end
end CriticalZeroSplitReduction20261003
