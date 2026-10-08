import CriticalZeroConditionalLeavesData03
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
namespace CriticalZeroSumAssembly20261003.Conditional
open CriticalZeroSplitReduction20261003 HornerReflector
noncomputable section
variable {F : Type*} [Field F] [CharZero F]
def cond_p0_p3Zero_00_00_expr : HExpr := (.add primitive_p0_p3_coefficient_00_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) cond_p0_p3Qy_00_00_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) cond_p0_p3Qx_00_00_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem cond_p0_p3Zero_00_00 (X Y : F) : ((primitive_p0_p3_coefficient_00 X Y)+(-((((((((X^2)+(X*Y))+(Y^2))-((9 : F)*X))-((9 : F)*Y))*(value X Y cond_p0_p3Qy_00_00_expr))+((((X+Y)+(9 : F))*(0 : F))+(((6 : F)*(0 : F))+(0 : F))))+(((((X^3)-((9 : F)*(X^2)))*(value X Y cond_p0_p3Qx_00_00_expr))+((((X^2)+((9 : F)*X))*(0 : F))+((((6 : F)*X)*(0 : F))+(X*(0 : F)))))+(0 : F)))))=0 := by
  have h := certificate_sound X Y cond_p0_p3Zero_00_00_expr (by rfl)
  change ((value X Y primitive_p0_p3_coefficient_00_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : F)*(X^1))))+(-(((9 : ℤ) : F)*(Y^1))))*(value X Y cond_p0_p3Qy_00_00_expr))+((((X+Y)+((9 : ℤ) : F))*((0 : ℤ) : F))+((((6 : ℤ) : F)*((0 : ℤ) : F))+((0 : ℤ) : F))))+(((((X^3)+(-(((9 : ℤ) : F)*(X^2))))*(value X Y cond_p0_p3Qx_00_00_expr))+((((X^2)+(((9 : ℤ) : F)*(X^1)))*((0 : ℤ) : F))+(((((6 : ℤ) : F)*(X^1))*((0 : ℤ) : F))+(X*((0 : ℤ) : F)))))+((0 : ℤ) : F)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p0_p3_coefficient_00_interpret,sub_eq_add_neg] using h
#print axioms cond_p0_p3Zero_00_00
def cond_p0_p3Zero_00_01_expr : HExpr := (.add (.lit 0) (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0)))) (.lit 0)))))
theorem cond_p0_p3Zero_00_01 (X Y : F) : ((0 : F)+(-((((((((X^2)+(X*Y))+(Y^2))-((9 : F)*X))-((9 : F)*Y))*(0 : F))+((((X+Y)+(9 : F))*(0 : F))+(((6 : F)*(0 : F))+(0 : F))))+(((((X^2)+((9 : F)*X))*(0 : F))+((((6 : F)*X)*(0 : F))+(X*(0 : F))))+(0 : F)))))=0 := by
  have h := certificate_sound X Y cond_p0_p3Zero_00_01_expr (by rfl)
  change (((0 : ℤ) : F)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : F)*(X^1))))+(-(((9 : ℤ) : F)*(Y^1))))*((0 : ℤ) : F))+((((X+Y)+((9 : ℤ) : F))*((0 : ℤ) : F))+((((6 : ℤ) : F)*((0 : ℤ) : F))+((0 : ℤ) : F))))+(((((X^2)+(((9 : ℤ) : F)*(X^1)))*((0 : ℤ) : F))+(((((6 : ℤ) : F)*(X^1))*((0 : ℤ) : F))+(X*((0 : ℤ) : F))))+((0 : ℤ) : F)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p0_p3Zero_00_01
def cond_p0_p3Zero_00_02_expr : HExpr := (.add primitive_p0_p3_coefficient_02_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) cond_p0_p3Qy_00_02_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) cond_p0_p3Qy_00_00_expr) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) cond_p0_p3Qx_00_00_expr) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0)))) cond_p0_p3Nf_00_02_expr))))
theorem cond_p0_p3Zero_00_02 (X Y : F) : ((primitive_p0_p3_coefficient_02 X Y)+(-((((((((X^2)+(X*Y))+(Y^2))-((9 : F)*X))-((9 : F)*Y))*(value X Y cond_p0_p3Qy_00_02_expr))+((((X+Y)+(9 : F))*(value X Y cond_p0_p3Qy_00_00_expr))+(((6 : F)*(0 : F))+(0 : F))))+(((((X^2)+((9 : F)*X))*(value X Y cond_p0_p3Qx_00_00_expr))+((((6 : F)*X)*(0 : F))+(X*(0 : F))))+(value X Y cond_p0_p3Nf_00_02_expr)))))=0 := by
  have h := certificate_sound X Y cond_p0_p3Zero_00_02_expr (by rfl)
  change ((value X Y primitive_p0_p3_coefficient_02_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : F)*(X^1))))+(-(((9 : ℤ) : F)*(Y^1))))*(value X Y cond_p0_p3Qy_00_02_expr))+((((X+Y)+((9 : ℤ) : F))*(value X Y cond_p0_p3Qy_00_00_expr))+((((6 : ℤ) : F)*((0 : ℤ) : F))+((0 : ℤ) : F))))+(((((X^2)+(((9 : ℤ) : F)*(X^1)))*(value X Y cond_p0_p3Qx_00_00_expr))+(((((6 : ℤ) : F)*(X^1))*((0 : ℤ) : F))+(X*((0 : ℤ) : F))))+(value X Y cond_p0_p3Nf_00_02_expr)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p0_p3_coefficient_02_interpret,sub_eq_add_neg] using h
#print axioms cond_p0_p3Zero_00_02
def cond_p0_p3Zero_00_03_expr : HExpr := (.neg (.add (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) cond_p0_p3Qy_00_00_expr) (.lit 0))) (.add (.add (.mul (.mulX (.lit 6) 1) cond_p0_p3Qx_00_00_expr) (.mul .x (.lit 0))) cond_p0_p3Nf_00_03_expr)))
theorem cond_p0_p3Zero_00_03 (X Y : F) : (-(((((X+Y)+(9 : F))*(0 : F))+(((6 : F)*(value X Y cond_p0_p3Qy_00_00_expr))+(0 : F)))+(((((6 : F)*X)*(value X Y cond_p0_p3Qx_00_00_expr))+(X*(0 : F)))+(value X Y cond_p0_p3Nf_00_03_expr))))=0 := by
  have h := certificate_sound X Y cond_p0_p3Zero_00_03_expr (by rfl)
  change (-(((((X+Y)+((9 : ℤ) : F))*((0 : ℤ) : F))+((((6 : ℤ) : F)*(value X Y cond_p0_p3Qy_00_00_expr))+((0 : ℤ) : F)))+((((((6 : ℤ) : F)*(X^1))*(value X Y cond_p0_p3Qx_00_00_expr))+(X*((0 : ℤ) : F)))+(value X Y cond_p0_p3Nf_00_03_expr))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p0_p3Zero_00_03
def cond_p0_p3Zero_00_04_expr : HExpr := (.neg (.add (.add (.mul (.add (.add .x .y) (.lit 9)) cond_p0_p3Qy_00_02_expr) (.add (.mul (.lit 6) (.lit 0)) cond_p0_p3Qy_00_00_expr)) (.add (.mul .x cond_p0_p3Qx_00_00_expr) cond_p0_p3Nf_00_04_expr)))
theorem cond_p0_p3Zero_00_04 (X Y : F) : (-(((((X+Y)+(9 : F))*(value X Y cond_p0_p3Qy_00_02_expr))+(((6 : F)*(0 : F))+(value X Y cond_p0_p3Qy_00_00_expr)))+((X*(value X Y cond_p0_p3Qx_00_00_expr))+(value X Y cond_p0_p3Nf_00_04_expr))))=0 := by
  have h := certificate_sound X Y cond_p0_p3Zero_00_04_expr (by rfl)
  change (-(((((X+Y)+((9 : ℤ) : F))*(value X Y cond_p0_p3Qy_00_02_expr))+((((6 : ℤ) : F)*((0 : ℤ) : F))+(value X Y cond_p0_p3Qy_00_00_expr)))+((X*(value X Y cond_p0_p3Qx_00_00_expr))+(value X Y cond_p0_p3Nf_00_04_expr))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p0_p3Zero_00_04
def cond_p0_p3Zero_00_05_expr : HExpr := (.neg (.add (.add (.mul (.lit 6) cond_p0_p3Qy_00_02_expr) (.lit 0)) cond_p0_p3Nf_00_05_expr))
theorem cond_p0_p3Zero_00_05 (X Y : F) : (-((((6 : F)*(value X Y cond_p0_p3Qy_00_02_expr))+(0 : F))+(value X Y cond_p0_p3Nf_00_05_expr)))=0 := by
  have h := certificate_sound X Y cond_p0_p3Zero_00_05_expr (by rfl)
  change (-(((((6 : ℤ) : F)*(value X Y cond_p0_p3Qy_00_02_expr))+((0 : ℤ) : F))+(value X Y cond_p0_p3Nf_00_05_expr)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p0_p3Zero_00_05
def cond_p0_p3Zero_00_06_expr : HExpr := (.neg (.add cond_p0_p3Qy_00_02_expr cond_p0_p3Nf_00_06_expr))
theorem cond_p0_p3Zero_00_06 (X Y : F) : (-((value X Y cond_p0_p3Qy_00_02_expr)+(value X Y cond_p0_p3Nf_00_06_expr)))=0 := by
  have h := certificate_sound X Y cond_p0_p3Zero_00_06_expr (by rfl)
  change (-((value X Y cond_p0_p3Qy_00_02_expr)+(value X Y cond_p0_p3Nf_00_06_expr)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p0_p3Zero_00_06
def cond_p0_p3Zero_01_00_expr : HExpr := (.neg (.add cond_p0_p3Qy_00_00_expr (.add (.mul (.add .x (.neg (.lit 1))) cond_p0_p3Qx_00_00_expr) (.lit 0))))
theorem cond_p0_p3Zero_01_00 (X Y : F) : (-((value X Y cond_p0_p3Qy_00_00_expr)+(((X-(1 : F))*(value X Y cond_p0_p3Qx_00_00_expr))+(0 : F))))=0 := by
  have h := certificate_sound X Y cond_p0_p3Zero_01_00_expr (by rfl)
  change (-((value X Y cond_p0_p3Qy_00_00_expr)+(((X+(-((1 : ℤ) : F)))*(value X Y cond_p0_p3Qx_00_00_expr))+((0 : ℤ) : F))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p0_p3Zero_01_00
def cond_p0_p3Zero_01_01_expr : HExpr := (.neg (.add (.lit 0) (.lit 0)))
theorem cond_p0_p3Zero_01_01 (X Y : F) : (-((0 : F)+(0 : F)))=0 := by
  have h := certificate_sound X Y cond_p0_p3Zero_01_01_expr (by rfl)
  change (-(((0 : ℤ) : F)+((0 : ℤ) : F)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p0_p3Zero_01_01
def cond_p0_p3Zero_01_02_expr : HExpr := (.neg (.add cond_p0_p3Qy_00_02_expr cond_p0_p3Nf_01_02_expr))
theorem cond_p0_p3Zero_01_02 (X Y : F) : (-((value X Y cond_p0_p3Qy_00_02_expr)+(value X Y cond_p0_p3Nf_01_02_expr)))=0 := by
  have h := certificate_sound X Y cond_p0_p3Zero_01_02_expr (by rfl)
  change (-((value X Y cond_p0_p3Qy_00_02_expr)+(value X Y cond_p0_p3Nf_01_02_expr)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p0_p3Zero_01_02
def cond_p1_m2Zero_00_00_expr : HExpr := (.add primitive_p1_m2_coefficient_00_expr (.neg cond_p1_m2Nf_00_00_expr))
theorem cond_p1_m2Zero_00_00 (X Y : F) : ((primitive_p1_m2_coefficient_00 X Y)+(-(value X Y cond_p1_m2Nf_00_00_expr)))=0 := by
  have h := certificate_sound X Y cond_p1_m2Zero_00_00_expr (by rfl)
  change ((value X Y primitive_p1_m2_coefficient_00_expr)+(-(value X Y cond_p1_m2Nf_00_00_expr)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_m2_coefficient_00_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_m2Zero_00_00
def cond_p1_m2Zero_00_01_expr : HExpr := (.add primitive_p1_m2_coefficient_01_expr (.neg cond_p1_m2Nf_00_01_expr))
theorem cond_p1_m2Zero_00_01 (X Y : F) : ((primitive_p1_m2_coefficient_01 X Y)+(-(value X Y cond_p1_m2Nf_00_01_expr)))=0 := by
  have h := certificate_sound X Y cond_p1_m2Zero_00_01_expr (by rfl)
  change ((value X Y primitive_p1_m2_coefficient_01_expr)+(-(value X Y cond_p1_m2Nf_00_01_expr)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_m2_coefficient_01_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_m2Zero_00_01
def cond_p1_m3Zero_00_00_expr : HExpr := (.add primitive_p1_m3_coefficient_00_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) cond_p1_m3Qy_00_00_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) cond_p1_m3Qx_00_00_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem cond_p1_m3Zero_00_00 (X Y : F) : ((primitive_p1_m3_coefficient_00 X Y)+(-((((((((X^2)+(X*Y))+(Y^2))-((9 : F)*X))-((9 : F)*Y))*(value X Y cond_p1_m3Qy_00_00_expr))+((((X+Y)+(9 : F))*(0 : F))+(((6 : F)*(0 : F))+(0 : F))))+(((((X^3)-((9 : F)*(X^2)))*(value X Y cond_p1_m3Qx_00_00_expr))+((((X^2)+((9 : F)*X))*(0 : F))+((((6 : F)*X)*(0 : F))+(X*(0 : F)))))+(0 : F)))))=0 := by
  have h := certificate_sound X Y cond_p1_m3Zero_00_00_expr (by rfl)
  change ((value X Y primitive_p1_m3_coefficient_00_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : F)*(X^1))))+(-(((9 : ℤ) : F)*(Y^1))))*(value X Y cond_p1_m3Qy_00_00_expr))+((((X+Y)+((9 : ℤ) : F))*((0 : ℤ) : F))+((((6 : ℤ) : F)*((0 : ℤ) : F))+((0 : ℤ) : F))))+(((((X^3)+(-(((9 : ℤ) : F)*(X^2))))*(value X Y cond_p1_m3Qx_00_00_expr))+((((X^2)+(((9 : ℤ) : F)*(X^1)))*((0 : ℤ) : F))+(((((6 : ℤ) : F)*(X^1))*((0 : ℤ) : F))+(X*((0 : ℤ) : F)))))+((0 : ℤ) : F)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_m3_coefficient_00_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_m3Zero_00_00
def cond_p1_m3Zero_00_01_expr : HExpr := (.add (.lit 0) (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) (.lit 0)) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) (.lit 0)) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem cond_p1_m3Zero_00_01 (X Y : F) : ((0 : F)+(-((((((((X^2)+(X*Y))+(Y^2))-((9 : F)*X))-((9 : F)*Y))*(0 : F))+((((X+Y)+(9 : F))*(0 : F))+(((6 : F)*(0 : F))+(0 : F))))+(((((X^3)-((9 : F)*(X^2)))*(0 : F))+((((X^2)+((9 : F)*X))*(0 : F))+((((6 : F)*X)*(0 : F))+(X*(0 : F)))))+(0 : F)))))=0 := by
  have h := certificate_sound X Y cond_p1_m3Zero_00_01_expr (by rfl)
  change (((0 : ℤ) : F)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : F)*(X^1))))+(-(((9 : ℤ) : F)*(Y^1))))*((0 : ℤ) : F))+((((X+Y)+((9 : ℤ) : F))*((0 : ℤ) : F))+((((6 : ℤ) : F)*((0 : ℤ) : F))+((0 : ℤ) : F))))+(((((X^3)+(-(((9 : ℤ) : F)*(X^2))))*((0 : ℤ) : F))+((((X^2)+(((9 : ℤ) : F)*(X^1)))*((0 : ℤ) : F))+(((((6 : ℤ) : F)*(X^1))*((0 : ℤ) : F))+(X*((0 : ℤ) : F)))))+((0 : ℤ) : F)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p1_m3Zero_00_01
def cond_p1_m3Zero_00_02_expr : HExpr := (.add primitive_p1_m3_coefficient_02_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) cond_p1_m3Qy_00_02_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) cond_p1_m3Qy_00_00_expr) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) cond_p1_m3Qx_00_02_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) cond_p1_m3Qx_00_00_expr) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) cond_p1_m3Nf_00_02_expr))))
theorem cond_p1_m3Zero_00_02 (X Y : F) : ((primitive_p1_m3_coefficient_02 X Y)+(-((((((((X^2)+(X*Y))+(Y^2))-((9 : F)*X))-((9 : F)*Y))*(value X Y cond_p1_m3Qy_00_02_expr))+((((X+Y)+(9 : F))*(value X Y cond_p1_m3Qy_00_00_expr))+(((6 : F)*(0 : F))+(0 : F))))+(((((X^3)-((9 : F)*(X^2)))*(value X Y cond_p1_m3Qx_00_02_expr))+((((X^2)+((9 : F)*X))*(value X Y cond_p1_m3Qx_00_00_expr))+((((6 : F)*X)*(0 : F))+(X*(0 : F)))))+(value X Y cond_p1_m3Nf_00_02_expr)))))=0 := by
  have h := certificate_sound X Y cond_p1_m3Zero_00_02_expr (by rfl)
  change ((value X Y primitive_p1_m3_coefficient_02_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : F)*(X^1))))+(-(((9 : ℤ) : F)*(Y^1))))*(value X Y cond_p1_m3Qy_00_02_expr))+((((X+Y)+((9 : ℤ) : F))*(value X Y cond_p1_m3Qy_00_00_expr))+((((6 : ℤ) : F)*((0 : ℤ) : F))+((0 : ℤ) : F))))+(((((X^3)+(-(((9 : ℤ) : F)*(X^2))))*(value X Y cond_p1_m3Qx_00_02_expr))+((((X^2)+(((9 : ℤ) : F)*(X^1)))*(value X Y cond_p1_m3Qx_00_00_expr))+(((((6 : ℤ) : F)*(X^1))*((0 : ℤ) : F))+(X*((0 : ℤ) : F)))))+(value X Y cond_p1_m3Nf_00_02_expr)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_m3_coefficient_02_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_m3Zero_00_02
def cond_p1_m3Zero_00_03_expr : HExpr := (.add primitive_p1_m3_coefficient_03_expr (.neg (.add (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) cond_p1_m3Qy_00_00_expr) (.lit 0))) (.add (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) cond_p1_m3Qx_00_00_expr) (.mul .x (.lit 0)))) cond_p1_m3Nf_00_03_expr))))
theorem cond_p1_m3Zero_00_03 (X Y : F) : ((primitive_p1_m3_coefficient_03 X Y)+(-(((((X+Y)+(9 : F))*(0 : F))+(((6 : F)*(value X Y cond_p1_m3Qy_00_00_expr))+(0 : F)))+(((((X^2)+((9 : F)*X))*(0 : F))+((((6 : F)*X)*(value X Y cond_p1_m3Qx_00_00_expr))+(X*(0 : F))))+(value X Y cond_p1_m3Nf_00_03_expr)))))=0 := by
  have h := certificate_sound X Y cond_p1_m3Zero_00_03_expr (by rfl)
  change ((value X Y primitive_p1_m3_coefficient_03_expr)+(-(((((X+Y)+((9 : ℤ) : F))*((0 : ℤ) : F))+((((6 : ℤ) : F)*(value X Y cond_p1_m3Qy_00_00_expr))+((0 : ℤ) : F)))+(((((X^2)+(((9 : ℤ) : F)*(X^1)))*((0 : ℤ) : F))+(((((6 : ℤ) : F)*(X^1))*(value X Y cond_p1_m3Qx_00_00_expr))+(X*((0 : ℤ) : F))))+(value X Y cond_p1_m3Nf_00_03_expr)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_m3_coefficient_03_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_m3Zero_00_03
def cond_p1_m3Zero_00_04_expr : HExpr := (.add primitive_p1_m3_coefficient_04_expr (.neg (.add (.add (.mul (.add (.add .x .y) (.lit 9)) cond_p1_m3Qy_00_02_expr) (.add (.mul (.lit 6) (.lit 0)) cond_p1_m3Qy_00_00_expr)) (.add (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) cond_p1_m3Qx_00_02_expr) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x cond_p1_m3Qx_00_00_expr))) cond_p1_m3Nf_00_04_expr))))
theorem cond_p1_m3Zero_00_04 (X Y : F) : ((primitive_p1_m3_coefficient_04 X Y)+(-(((((X+Y)+(9 : F))*(value X Y cond_p1_m3Qy_00_02_expr))+(((6 : F)*(0 : F))+(value X Y cond_p1_m3Qy_00_00_expr)))+(((((X^2)+((9 : F)*X))*(value X Y cond_p1_m3Qx_00_02_expr))+((((6 : F)*X)*(0 : F))+(X*(value X Y cond_p1_m3Qx_00_00_expr))))+(value X Y cond_p1_m3Nf_00_04_expr)))))=0 := by
  have h := certificate_sound X Y cond_p1_m3Zero_00_04_expr (by rfl)
  change ((value X Y primitive_p1_m3_coefficient_04_expr)+(-(((((X+Y)+((9 : ℤ) : F))*(value X Y cond_p1_m3Qy_00_02_expr))+((((6 : ℤ) : F)*((0 : ℤ) : F))+(value X Y cond_p1_m3Qy_00_00_expr)))+(((((X^2)+(((9 : ℤ) : F)*(X^1)))*(value X Y cond_p1_m3Qx_00_02_expr))+(((((6 : ℤ) : F)*(X^1))*((0 : ℤ) : F))+(X*(value X Y cond_p1_m3Qx_00_00_expr))))+(value X Y cond_p1_m3Nf_00_04_expr)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_m3_coefficient_04_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_m3Zero_00_04
def cond_p1_m3Zero_00_05_expr : HExpr := (.add primitive_p1_m3_coefficient_05_expr (.neg (.add (.add (.mul (.lit 6) cond_p1_m3Qy_00_02_expr) (.lit 0)) (.add (.add (.mul (.mulX (.lit 6) 1) cond_p1_m3Qx_00_02_expr) (.mul .x (.lit 0))) cond_p1_m3Nf_00_05_expr))))
theorem cond_p1_m3Zero_00_05 (X Y : F) : ((primitive_p1_m3_coefficient_05 X Y)+(-((((6 : F)*(value X Y cond_p1_m3Qy_00_02_expr))+(0 : F))+(((((6 : F)*X)*(value X Y cond_p1_m3Qx_00_02_expr))+(X*(0 : F)))+(value X Y cond_p1_m3Nf_00_05_expr)))))=0 := by
  have h := certificate_sound X Y cond_p1_m3Zero_00_05_expr (by rfl)
  change ((value X Y primitive_p1_m3_coefficient_05_expr)+(-(((((6 : ℤ) : F)*(value X Y cond_p1_m3Qy_00_02_expr))+((0 : ℤ) : F))+((((((6 : ℤ) : F)*(X^1))*(value X Y cond_p1_m3Qx_00_02_expr))+(X*((0 : ℤ) : F)))+(value X Y cond_p1_m3Nf_00_05_expr)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_m3_coefficient_05_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_m3Zero_00_05
def cond_p1_m3Zero_00_06_expr : HExpr := (.add primitive_p1_m3_coefficient_06_expr (.neg (.add cond_p1_m3Qy_00_02_expr (.add (.mul .x cond_p1_m3Qx_00_02_expr) cond_p1_m3Nf_00_06_expr))))
theorem cond_p1_m3Zero_00_06 (X Y : F) : ((primitive_p1_m3_coefficient_06 X Y)+(-((value X Y cond_p1_m3Qy_00_02_expr)+((X*(value X Y cond_p1_m3Qx_00_02_expr))+(value X Y cond_p1_m3Nf_00_06_expr)))))=0 := by
  have h := certificate_sound X Y cond_p1_m3Zero_00_06_expr (by rfl)
  change ((value X Y primitive_p1_m3_coefficient_06_expr)+(-((value X Y cond_p1_m3Qy_00_02_expr)+((X*(value X Y cond_p1_m3Qx_00_02_expr))+(value X Y cond_p1_m3Nf_00_06_expr)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_m3_coefficient_06_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_m3Zero_00_06
def cond_p1_m3Zero_01_00_expr : HExpr := (.neg (.add cond_p1_m3Qy_00_00_expr (.add (.mul (.add .x (.neg (.lit 1))) cond_p1_m3Qx_00_00_expr) (.lit 0))))
theorem cond_p1_m3Zero_01_00 (X Y : F) : (-((value X Y cond_p1_m3Qy_00_00_expr)+(((X-(1 : F))*(value X Y cond_p1_m3Qx_00_00_expr))+(0 : F))))=0 := by
  have h := certificate_sound X Y cond_p1_m3Zero_01_00_expr (by rfl)
  change (-((value X Y cond_p1_m3Qy_00_00_expr)+(((X+(-((1 : ℤ) : F)))*(value X Y cond_p1_m3Qx_00_00_expr))+((0 : ℤ) : F))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p1_m3Zero_01_00
def cond_p1_m3Zero_01_01_expr : HExpr := (.neg (.add (.lit 0) (.add (.mul (.add .x (.neg (.lit 1))) (.lit 0)) (.lit 0))))
theorem cond_p1_m3Zero_01_01 (X Y : F) : (-((0 : F)+(((X-(1 : F))*(0 : F))+(0 : F))))=0 := by
  have h := certificate_sound X Y cond_p1_m3Zero_01_01_expr (by rfl)
  change (-(((0 : ℤ) : F)+(((X+(-((1 : ℤ) : F)))*((0 : ℤ) : F))+((0 : ℤ) : F))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p1_m3Zero_01_01
def cond_p1_m3Zero_01_02_expr : HExpr := (.neg (.add cond_p1_m3Qy_00_02_expr (.add (.mul (.add .x (.neg (.lit 1))) cond_p1_m3Qx_00_02_expr) cond_p1_m3Nf_01_02_expr)))
theorem cond_p1_m3Zero_01_02 (X Y : F) : (-((value X Y cond_p1_m3Qy_00_02_expr)+(((X-(1 : F))*(value X Y cond_p1_m3Qx_00_02_expr))+(value X Y cond_p1_m3Nf_01_02_expr))))=0 := by
  have h := certificate_sound X Y cond_p1_m3Zero_01_02_expr (by rfl)
  change (-((value X Y cond_p1_m3Qy_00_02_expr)+(((X+(-((1 : ℤ) : F)))*(value X Y cond_p1_m3Qx_00_02_expr))+(value X Y cond_p1_m3Nf_01_02_expr))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p1_m3Zero_01_02
def cond_p1_p1Zero_00_00_expr : HExpr := (.add primitive_p1_p1_coefficient_00_expr (.neg cond_p1_p1Nf_00_00_expr))
theorem cond_p1_p1Zero_00_00 (X Y : F) : ((primitive_p1_p1_coefficient_00 X Y)+(-(value X Y cond_p1_p1Nf_00_00_expr)))=0 := by
  have h := certificate_sound X Y cond_p1_p1Zero_00_00_expr (by rfl)
  change ((value X Y primitive_p1_p1_coefficient_00_expr)+(-(value X Y cond_p1_p1Nf_00_00_expr)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_p1_coefficient_00_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_p1Zero_00_00
def cond_p1_p1Zero_00_01_expr : HExpr := (.add primitive_p1_p1_coefficient_01_expr (.neg cond_p1_p1Nf_00_01_expr))
theorem cond_p1_p1Zero_00_01 (X Y : F) : ((primitive_p1_p1_coefficient_01 X Y)+(-(value X Y cond_p1_p1Nf_00_01_expr)))=0 := by
  have h := certificate_sound X Y cond_p1_p1Zero_00_01_expr (by rfl)
  change ((value X Y primitive_p1_p1_coefficient_01_expr)+(-(value X Y cond_p1_p1Nf_00_01_expr)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_p1_coefficient_01_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_p1Zero_00_01
def cond_p1_p2Zero_00_00_expr : HExpr := (.add primitive_p1_p2_coefficient_00_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) cond_p1_p2Qy_00_00_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) cond_p1_p2Qx_00_00_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem cond_p1_p2Zero_00_00 (X Y : F) : ((primitive_p1_p2_coefficient_00 X Y)+(-((((((((X^2)+(X*Y))+(Y^2))-((9 : F)*X))-((9 : F)*Y))*(value X Y cond_p1_p2Qy_00_00_expr))+((((X+Y)+(9 : F))*(0 : F))+(((6 : F)*(0 : F))+(0 : F))))+(((((X^3)-((9 : F)*(X^2)))*(value X Y cond_p1_p2Qx_00_00_expr))+((((X^2)+((9 : F)*X))*(0 : F))+((((6 : F)*X)*(0 : F))+(X*(0 : F)))))+(0 : F)))))=0 := by
  have h := certificate_sound X Y cond_p1_p2Zero_00_00_expr (by rfl)
  change ((value X Y primitive_p1_p2_coefficient_00_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : F)*(X^1))))+(-(((9 : ℤ) : F)*(Y^1))))*(value X Y cond_p1_p2Qy_00_00_expr))+((((X+Y)+((9 : ℤ) : F))*((0 : ℤ) : F))+((((6 : ℤ) : F)*((0 : ℤ) : F))+((0 : ℤ) : F))))+(((((X^3)+(-(((9 : ℤ) : F)*(X^2))))*(value X Y cond_p1_p2Qx_00_00_expr))+((((X^2)+(((9 : ℤ) : F)*(X^1)))*((0 : ℤ) : F))+(((((6 : ℤ) : F)*(X^1))*((0 : ℤ) : F))+(X*((0 : ℤ) : F)))))+((0 : ℤ) : F)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_p2_coefficient_00_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_p2Zero_00_00
def cond_p1_p2Zero_00_01_expr : HExpr := (.add (.lit 0) (.neg (.add (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0))) (.add (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0)))) (.lit 0)))))
theorem cond_p1_p2Zero_00_01 (X Y : F) : ((0 : F)+(-(((((X+Y)+(9 : F))*(0 : F))+(((6 : F)*(0 : F))+(0 : F)))+(((((X^2)+((9 : F)*X))*(0 : F))+((((6 : F)*X)*(0 : F))+(X*(0 : F))))+(0 : F)))))=0 := by
  have h := certificate_sound X Y cond_p1_p2Zero_00_01_expr (by rfl)
  change (((0 : ℤ) : F)+(-(((((X+Y)+((9 : ℤ) : F))*((0 : ℤ) : F))+((((6 : ℤ) : F)*((0 : ℤ) : F))+((0 : ℤ) : F)))+(((((X^2)+(((9 : ℤ) : F)*(X^1)))*((0 : ℤ) : F))+(((((6 : ℤ) : F)*(X^1))*((0 : ℤ) : F))+(X*((0 : ℤ) : F))))+((0 : ℤ) : F)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p1_p2Zero_00_01
def cond_p1_p2Zero_00_02_expr : HExpr := (.add primitive_p1_p2_coefficient_02_expr (.neg (.add (.add (.mul (.add (.add .x .y) (.lit 9)) cond_p1_p2Qy_00_00_expr) (.add (.mul (.lit 6) (.lit 0)) (.lit 0))) (.add (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) cond_p1_p2Qx_00_00_expr) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0)))) cond_p1_p2Nf_00_02_expr))))
theorem cond_p1_p2Zero_00_02 (X Y : F) : ((primitive_p1_p2_coefficient_02 X Y)+(-(((((X+Y)+(9 : F))*(value X Y cond_p1_p2Qy_00_00_expr))+(((6 : F)*(0 : F))+(0 : F)))+(((((X^2)+((9 : F)*X))*(value X Y cond_p1_p2Qx_00_00_expr))+((((6 : F)*X)*(0 : F))+(X*(0 : F))))+(value X Y cond_p1_p2Nf_00_02_expr)))))=0 := by
  have h := certificate_sound X Y cond_p1_p2Zero_00_02_expr (by rfl)
  change ((value X Y primitive_p1_p2_coefficient_02_expr)+(-(((((X+Y)+((9 : ℤ) : F))*(value X Y cond_p1_p2Qy_00_00_expr))+((((6 : ℤ) : F)*((0 : ℤ) : F))+((0 : ℤ) : F)))+(((((X^2)+(((9 : ℤ) : F)*(X^1)))*(value X Y cond_p1_p2Qx_00_00_expr))+(((((6 : ℤ) : F)*(X^1))*((0 : ℤ) : F))+(X*((0 : ℤ) : F))))+(value X Y cond_p1_p2Nf_00_02_expr)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_p2_coefficient_02_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_p2Zero_00_02
def cond_p1_p2Zero_00_03_expr : HExpr := (.add primitive_p1_p2_coefficient_03_expr (.neg (.add (.add (.mul (.lit 6) cond_p1_p2Qy_00_00_expr) (.lit 0)) (.add (.add (.mul (.mulX (.lit 6) 1) cond_p1_p2Qx_00_00_expr) (.mul .x (.lit 0))) cond_p1_p2Nf_00_03_expr))))
theorem cond_p1_p2Zero_00_03 (X Y : F) : ((primitive_p1_p2_coefficient_03 X Y)+(-((((6 : F)*(value X Y cond_p1_p2Qy_00_00_expr))+(0 : F))+(((((6 : F)*X)*(value X Y cond_p1_p2Qx_00_00_expr))+(X*(0 : F)))+(value X Y cond_p1_p2Nf_00_03_expr)))))=0 := by
  have h := certificate_sound X Y cond_p1_p2Zero_00_03_expr (by rfl)
  change ((value X Y primitive_p1_p2_coefficient_03_expr)+(-(((((6 : ℤ) : F)*(value X Y cond_p1_p2Qy_00_00_expr))+((0 : ℤ) : F))+((((((6 : ℤ) : F)*(X^1))*(value X Y cond_p1_p2Qx_00_00_expr))+(X*((0 : ℤ) : F)))+(value X Y cond_p1_p2Nf_00_03_expr)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_p2_coefficient_03_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_p2Zero_00_03
def cond_p1_p2Zero_00_04_expr : HExpr := (.add primitive_p1_p2_coefficient_04_expr (.neg (.add cond_p1_p2Qy_00_00_expr (.add (.mul .x cond_p1_p2Qx_00_00_expr) cond_p1_p2Nf_00_04_expr))))
theorem cond_p1_p2Zero_00_04 (X Y : F) : ((primitive_p1_p2_coefficient_04 X Y)+(-((value X Y cond_p1_p2Qy_00_00_expr)+((X*(value X Y cond_p1_p2Qx_00_00_expr))+(value X Y cond_p1_p2Nf_00_04_expr)))))=0 := by
  have h := certificate_sound X Y cond_p1_p2Zero_00_04_expr (by rfl)
  change ((value X Y primitive_p1_p2_coefficient_04_expr)+(-((value X Y cond_p1_p2Qy_00_00_expr)+((X*(value X Y cond_p1_p2Qx_00_00_expr))+(value X Y cond_p1_p2Nf_00_04_expr)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p1_p2_coefficient_04_interpret,sub_eq_add_neg] using h
#print axioms cond_p1_p2Zero_00_04
def cond_p1_p2Zero_01_00_expr : HExpr := (.neg (.add cond_p1_p2Qy_00_00_expr (.mul (.add .x (.neg (.lit 1))) cond_p1_p2Qx_00_00_expr)))
theorem cond_p1_p2Zero_01_00 (X Y : F) : (-((value X Y cond_p1_p2Qy_00_00_expr)+((X-(1 : F))*(value X Y cond_p1_p2Qx_00_00_expr))))=0 := by
  have h := certificate_sound X Y cond_p1_p2Zero_01_00_expr (by rfl)
  change (-((value X Y cond_p1_p2Qy_00_00_expr)+((X+(-((1 : ℤ) : F)))*(value X Y cond_p1_p2Qx_00_00_expr))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,sub_eq_add_neg] using h
#print axioms cond_p1_p2Zero_01_00
def cond_p2_m1Zero_00_00_expr : HExpr := (.add primitive_p2_m1_coefficient_00_expr (.neg cond_p2_m1Nf_00_00_expr))
theorem cond_p2_m1Zero_00_00 (X Y : F) : ((primitive_p2_m1_coefficient_00 X Y)+(-(value X Y cond_p2_m1Nf_00_00_expr)))=0 := by
  have h := certificate_sound X Y cond_p2_m1Zero_00_00_expr (by rfl)
  change ((value X Y primitive_p2_m1_coefficient_00_expr)+(-(value X Y cond_p2_m1Nf_00_00_expr)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p2_m1_coefficient_00_interpret,sub_eq_add_neg] using h
#print axioms cond_p2_m1Zero_00_00
def cond_p2_m1Zero_00_01_expr : HExpr := (.add primitive_p2_m1_coefficient_01_expr (.neg cond_p2_m1Nf_00_01_expr))
theorem cond_p2_m1Zero_00_01 (X Y : F) : ((primitive_p2_m1_coefficient_01 X Y)+(-(value X Y cond_p2_m1Nf_00_01_expr)))=0 := by
  have h := certificate_sound X Y cond_p2_m1Zero_00_01_expr (by rfl)
  change ((value X Y primitive_p2_m1_coefficient_01_expr)+(-(value X Y cond_p2_m1Nf_00_01_expr)))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_neg,Int.cast_zero,Int.cast_one,pow_one,primitive_p2_m1_coefficient_01_interpret,sub_eq_add_neg] using h
#print axioms cond_p2_m1Zero_00_01
end
end CriticalZeroSumAssembly20261003.Conditional
