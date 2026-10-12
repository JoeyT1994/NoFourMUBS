import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs03
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs06
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs10
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs11
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
def numZero_00_13_expr : HExpr := (.add numRaw_00_13_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_00_13_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_00_11_expr) (.add (.mul (.lit 6) numQy_00_10_expr) numQy_00_09_expr))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_00_13_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_00_11_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_00_10_expr) (.mul .x numQx_00_09_expr)))) (.lit 0)))))
theorem numZero_00_13 (X Y : R) : (numRaw_00_13 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_13 X Y))+(((X+Y+9)*(numQy_00_11 X Y))+((6*(numQy_00_10 X Y))+numQy_00_09 X Y)))+((((X^3-9*X^2)*(numQx_00_13 X Y))+(((X^2+9*X)*(numQx_00_11 X Y))+(((6*X)*(numQx_00_10 X Y))+(X*(numQx_00_09 X Y)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y numZero_00_13_expr (by rfl)
  change ((value X Y numRaw_00_13_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_13_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_00_11_expr))+((((6 : ℤ) : R)*(value X Y numQy_00_10_expr))+(value X Y numQy_00_09_expr))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_13_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_00_11_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_00_10_expr))+(X*(value X Y numQx_00_09_expr)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_09_interpret,numQx_00_10_interpret,numQx_00_11_interpret,numQx_00_13_interpret,numQy_00_09_interpret,numQy_00_10_interpret,numQy_00_11_interpret,numQy_00_13_interpret,numRaw_00_13_interpret,sub_eq_add_neg] using h
#print axioms numZero_00_13
def numZero_00_14_expr : HExpr := (.add numRaw_00_14_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_00_14_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_00_12_expr) (.add (.mul (.lit 6) numQy_00_11_expr) numQy_00_10_expr))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_00_14_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_00_12_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_00_11_expr) (.mul .x numQx_00_10_expr)))) (.lit 0)))))
theorem numZero_00_14 (X Y : R) : (numRaw_00_14 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_14 X Y))+(((X+Y+9)*(numQy_00_12 X Y))+((6*(numQy_00_11 X Y))+numQy_00_10 X Y)))+((((X^3-9*X^2)*(numQx_00_14 X Y))+(((X^2+9*X)*(numQx_00_12 X Y))+(((6*X)*(numQx_00_11 X Y))+(X*(numQx_00_10 X Y)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y numZero_00_14_expr (by rfl)
  change ((value X Y numRaw_00_14_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_14_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_00_12_expr))+((((6 : ℤ) : R)*(value X Y numQy_00_11_expr))+(value X Y numQy_00_10_expr))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_14_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_00_12_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_00_11_expr))+(X*(value X Y numQx_00_10_expr)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_10_interpret,numQx_00_11_interpret,numQx_00_12_interpret,numQx_00_14_interpret,numQy_00_10_interpret,numQy_00_11_interpret,numQy_00_12_interpret,numQy_00_14_interpret,numRaw_00_14_interpret,sub_eq_add_neg] using h
#print axioms numZero_00_14
def numZero_00_15_expr : HExpr := (.add numRaw_00_15_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_00_15_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_00_13_expr) (.add (.mul (.lit 6) numQy_00_12_expr) numQy_00_11_expr))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_00_15_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_00_13_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_00_12_expr) (.mul .x numQx_00_11_expr)))) (.lit 0)))))
theorem numZero_00_15 (X Y : R) : (numRaw_00_15 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_15 X Y))+(((X+Y+9)*(numQy_00_13 X Y))+((6*(numQy_00_12 X Y))+numQy_00_11 X Y)))+((((X^3-9*X^2)*(numQx_00_15 X Y))+(((X^2+9*X)*(numQx_00_13 X Y))+(((6*X)*(numQx_00_12 X Y))+(X*(numQx_00_11 X Y)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y numZero_00_15_expr (by rfl)
  change ((value X Y numRaw_00_15_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_15_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_00_13_expr))+((((6 : ℤ) : R)*(value X Y numQy_00_12_expr))+(value X Y numQy_00_11_expr))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_15_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_00_13_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_00_12_expr))+(X*(value X Y numQx_00_11_expr)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_11_interpret,numQx_00_12_interpret,numQx_00_13_interpret,numQx_00_15_interpret,numQy_00_11_interpret,numQy_00_12_interpret,numQy_00_13_interpret,numQy_00_15_interpret,numRaw_00_15_interpret,sub_eq_add_neg] using h
#print axioms numZero_00_15
end
end CriticalZeroSplitReduction20261003
