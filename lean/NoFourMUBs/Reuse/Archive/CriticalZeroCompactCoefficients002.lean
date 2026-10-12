import NoFourMUBs.Reuse.Archive.CriticalZeroHornerBindingPilot
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs02
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs06
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs09
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs10
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
def numZero_00_07_expr : HExpr := (.add numRaw_00_07_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_00_07_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_00_05_expr) (.add (.mul (.lit 6) numQy_00_04_expr) numQy_00_03_expr))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_00_07_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_00_05_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_00_04_expr) (.mul .x numQx_00_03_expr)))) (.lit 0)))))
theorem numZero_00_07 (X Y : R) : (numRaw_00_07 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_07 X Y))+(((X+Y+9)*(numQy_00_05 X Y))+((6*(numQy_00_04 X Y))+numQy_00_03 X Y)))+((((X^3-9*X^2)*(numQx_00_07 X Y))+(((X^2+9*X)*(numQx_00_05 X Y))+(((6*X)*(numQx_00_04 X Y))+(X*(numQx_00_03 X Y)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y numZero_00_07_expr (by rfl)
  change ((value X Y numRaw_00_07_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_07_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_00_05_expr))+((((6 : ℤ) : R)*(value X Y numQy_00_04_expr))+(value X Y numQy_00_03_expr))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_07_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_00_05_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_00_04_expr))+(X*(value X Y numQx_00_03_expr)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_03_interpret,numQx_00_04_interpret,numQx_00_05_interpret,numQx_00_07_interpret,numQy_00_03_interpret,numQy_00_04_interpret,numQy_00_05_interpret,numQy_00_07_interpret,numRaw_00_07_interpret,sub_eq_add_neg] using h
#print axioms numZero_00_07
def numZero_00_08_expr : HExpr := (.add numRaw_00_08_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_00_08_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_00_06_expr) (.add (.mul (.lit 6) numQy_00_05_expr) numQy_00_04_expr))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_00_08_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_00_06_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_00_05_expr) (.mul .x numQx_00_04_expr)))) (.lit 0)))))
theorem numZero_00_08 (X Y : R) : (numRaw_00_08 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_08 X Y))+(((X+Y+9)*(numQy_00_06 X Y))+((6*(numQy_00_05 X Y))+numQy_00_04 X Y)))+((((X^3-9*X^2)*(numQx_00_08 X Y))+(((X^2+9*X)*(numQx_00_06 X Y))+(((6*X)*(numQx_00_05 X Y))+(X*(numQx_00_04 X Y)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y numZero_00_08_expr (by rfl)
  change ((value X Y numRaw_00_08_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_08_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_00_06_expr))+((((6 : ℤ) : R)*(value X Y numQy_00_05_expr))+(value X Y numQy_00_04_expr))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_08_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_00_06_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_00_05_expr))+(X*(value X Y numQx_00_04_expr)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_04_interpret,numQx_00_05_interpret,numQx_00_06_interpret,numQx_00_08_interpret,numQy_00_04_interpret,numQy_00_05_interpret,numQy_00_06_interpret,numQy_00_08_interpret,numRaw_00_08_interpret,sub_eq_add_neg] using h
#print axioms numZero_00_08
def numZero_00_09_expr : HExpr := (.add numRaw_00_09_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_00_09_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_00_07_expr) (.add (.mul (.lit 6) numQy_00_06_expr) numQy_00_05_expr))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_00_09_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_00_07_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_00_06_expr) (.mul .x numQx_00_05_expr)))) (.lit 0)))))
theorem numZero_00_09 (X Y : R) : (numRaw_00_09 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_09 X Y))+(((X+Y+9)*(numQy_00_07 X Y))+((6*(numQy_00_06 X Y))+numQy_00_05 X Y)))+((((X^3-9*X^2)*(numQx_00_09 X Y))+(((X^2+9*X)*(numQx_00_07 X Y))+(((6*X)*(numQx_00_06 X Y))+(X*(numQx_00_05 X Y)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y numZero_00_09_expr (by rfl)
  change ((value X Y numRaw_00_09_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_09_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_00_07_expr))+((((6 : ℤ) : R)*(value X Y numQy_00_06_expr))+(value X Y numQy_00_05_expr))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_09_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_00_07_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_00_06_expr))+(X*(value X Y numQx_00_05_expr)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_05_interpret,numQx_00_06_interpret,numQx_00_07_interpret,numQx_00_09_interpret,numQy_00_05_interpret,numQy_00_06_interpret,numQy_00_07_interpret,numQy_00_09_interpret,numRaw_00_09_interpret,sub_eq_add_neg] using h
#print axioms numZero_00_09
end
end CriticalZeroSplitReduction20261003
