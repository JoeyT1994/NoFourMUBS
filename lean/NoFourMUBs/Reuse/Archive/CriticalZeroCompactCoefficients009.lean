import NoFourMUBs.Reuse.Archive.CriticalZeroHornerBindingPilot
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs06
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs07
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs09
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs12
import NoFourMUBs.Reuse.Archive.CriticalZeroHornerInputs13
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
def numZero_01_04_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_01_04_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_01_02_expr) (.add (.mul (.lit 6) numQy_01_01_expr) (.add numQy_01_00_expr numQy_00_04_expr)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_01_04_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_01_02_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_01_01_expr) (.add (.mul .x numQx_01_00_expr) (.mul (.add .x (.neg (.lit 1))) numQx_00_04_expr))))) (.lit 0))))
theorem numZero_01_04 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_04 X Y))+(((X+Y+9)*(numQy_01_02 X Y))+((6*(numQy_01_01 X Y))+(numQy_01_00 X Y+numQy_00_04 X Y))))+((((X^3-9*X^2)*(numQx_01_04 X Y))+(((X^2+9*X)*(numQx_01_02 X Y))+(((6*X)*(numQx_01_01 X Y))+((X*(numQx_01_00 X Y))+((X-1)*(numQx_00_04 X Y))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y numZero_01_04_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_01_04_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_01_02_expr))+((((6 : ℤ) : R)*(value X Y numQy_01_01_expr))+((value X Y numQy_01_00_expr)+(value X Y numQy_00_04_expr)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_01_04_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_01_02_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_01_01_expr))+((X*(value X Y numQx_01_00_expr))+((X+(-((1 : ℤ) : R)))*(value X Y numQx_00_04_expr))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_04_interpret,numQx_01_00_interpret,numQx_01_01_interpret,numQx_01_02_interpret,numQx_01_04_interpret,numQy_00_04_interpret,numQy_01_00_interpret,numQy_01_01_interpret,numQy_01_02_interpret,numQy_01_04_interpret,sub_eq_add_neg] using h
#print axioms numZero_01_04
def numZero_01_05_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_01_05_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_01_03_expr) (.add (.mul (.lit 6) numQy_01_02_expr) (.add numQy_01_01_expr numQy_00_05_expr)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_01_05_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_01_03_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_01_02_expr) (.add (.mul .x numQx_01_01_expr) (.mul (.add .x (.neg (.lit 1))) numQx_00_05_expr))))) (.lit 0))))
theorem numZero_01_05 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_05 X Y))+(((X+Y+9)*(numQy_01_03 X Y))+((6*(numQy_01_02 X Y))+(numQy_01_01 X Y+numQy_00_05 X Y))))+((((X^3-9*X^2)*(numQx_01_05 X Y))+(((X^2+9*X)*(numQx_01_03 X Y))+(((6*X)*(numQx_01_02 X Y))+((X*(numQx_01_01 X Y))+((X-1)*(numQx_00_05 X Y))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y numZero_01_05_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_01_05_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_01_03_expr))+((((6 : ℤ) : R)*(value X Y numQy_01_02_expr))+((value X Y numQy_01_01_expr)+(value X Y numQy_00_05_expr)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_01_05_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_01_03_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_01_02_expr))+((X*(value X Y numQx_01_01_expr))+((X+(-((1 : ℤ) : R)))*(value X Y numQx_00_05_expr))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_05_interpret,numQx_01_01_interpret,numQx_01_02_interpret,numQx_01_03_interpret,numQx_01_05_interpret,numQy_00_05_interpret,numQy_01_01_interpret,numQy_01_02_interpret,numQy_01_03_interpret,numQy_01_05_interpret,sub_eq_add_neg] using h
#print axioms numZero_01_05
def numZero_01_06_expr : HExpr := (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_01_06_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_01_04_expr) (.add (.mul (.lit 6) numQy_01_03_expr) (.add numQy_01_02_expr numQy_00_06_expr)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_01_06_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_01_04_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_01_03_expr) (.add (.mul .x numQx_01_02_expr) (.mul (.add .x (.neg (.lit 1))) numQx_00_06_expr))))) (.lit 0))))
theorem numZero_01_06 (X Y : R) : (-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_01_06 X Y))+(((X+Y+9)*(numQy_01_04 X Y))+((6*(numQy_01_03 X Y))+(numQy_01_02 X Y+numQy_00_06 X Y))))+((((X^3-9*X^2)*(numQx_01_06 X Y))+(((X^2+9*X)*(numQx_01_04 X Y))+(((6*X)*(numQx_01_03 X Y))+((X*(numQx_01_02 X Y))+((X-1)*(numQx_00_06 X Y))))))+(0 : R)))))=0 := by
  have h := certificate_sound X Y numZero_01_06_expr (by rfl)
  change (-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_01_06_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_01_04_expr))+((((6 : ℤ) : R)*(value X Y numQy_01_03_expr))+((value X Y numQy_01_02_expr)+(value X Y numQy_00_06_expr)))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_01_06_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_01_04_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_01_03_expr))+((X*(value X Y numQx_01_02_expr))+((X+(-((1 : ℤ) : R)))*(value X Y numQx_00_06_expr))))))+((0 : ℤ) : R))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_06_interpret,numQx_01_02_interpret,numQx_01_03_interpret,numQx_01_04_interpret,numQx_01_06_interpret,numQy_00_06_interpret,numQy_01_02_interpret,numQy_01_03_interpret,numQy_01_04_interpret,numQy_01_06_interpret,sub_eq_add_neg] using h
#print axioms numZero_01_06
end
end CriticalZeroSplitReduction20261003
