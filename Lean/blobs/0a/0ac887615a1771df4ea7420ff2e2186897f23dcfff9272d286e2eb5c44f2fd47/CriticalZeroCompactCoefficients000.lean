import CriticalZeroHornerBindingPilot
import CriticalZeroHornerInputs00
import CriticalZeroHornerInputs01
import CriticalZeroHornerInputs06
import CriticalZeroHornerInputs09
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
theorem numZero_00_05 (X Y : R) : (numRaw_00_05 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_05 X Y))+(((X+Y+9)*(numQy_00_03 X Y))+((6*(numQy_00_02 X Y))+numQy_00_01 X Y)))+((((X^3-9*X^2)*(numQx_00_05 X Y))+(((X^2+9*X)*(numQx_00_03 X Y))+(((6*X)*(numQx_00_02 X Y))+(X*(numQx_00_01 X Y)))))+(0 : R))))))=0 := binding_pilot X Y
#print axioms numZero_00_05
def numZero_00_00_expr : HExpr := (.add numRaw_00_00_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_00_00_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_00_00_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem numZero_00_00 (X Y : R) : (numRaw_00_00 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_00 X Y))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(numQx_00_00 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y numZero_00_00_expr (by rfl)
  change ((value X Y numRaw_00_00_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_00_expr))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+((0 : ℤ) : R))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_00_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+(X*((0 : ℤ) : R)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_00_interpret,numQy_00_00_interpret,numRaw_00_00_interpret,sub_eq_add_neg] using h
#print axioms numZero_00_00
def numZero_00_01_expr : HExpr := (.add numRaw_00_01_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_00_01_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) (.lit 0)) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_00_01_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) (.lit 0)) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem numZero_00_01 (X Y : R) : (numRaw_00_01 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_01 X Y))+(((X+Y+9)*(0))+((6*(0))+0)))+((((X^3-9*X^2)*(numQx_00_01 X Y))+(((X^2+9*X)*(0))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y numZero_00_01_expr (by rfl)
  change ((value X Y numRaw_00_01_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_01_expr))+((((X+Y)+((9 : ℤ) : R))*((0 : ℤ) : R))+((((6 : ℤ) : R)*((0 : ℤ) : R))+((0 : ℤ) : R))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_01_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*((0 : ℤ) : R))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+(X*((0 : ℤ) : R)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_01_interpret,numQy_00_01_interpret,numRaw_00_01_interpret,sub_eq_add_neg] using h
#print axioms numZero_00_01
def numZero_00_02_expr : HExpr := (.add numRaw_00_02_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_00_02_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_00_00_expr) (.add (.mul (.lit 6) (.lit 0)) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_00_02_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_00_00_expr) (.add (.mul (.mulX (.lit 6) 1) (.lit 0)) (.mul .x (.lit 0))))) (.lit 0)))))
theorem numZero_00_02 (X Y : R) : (numRaw_00_02 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_02 X Y))+(((X+Y+9)*(numQy_00_00 X Y))+((6*(0))+0)))+((((X^3-9*X^2)*(numQx_00_02 X Y))+(((X^2+9*X)*(numQx_00_00 X Y))+(((6*X)*(0))+(X*(0)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y numZero_00_02_expr (by rfl)
  change ((value X Y numRaw_00_02_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_02_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_00_00_expr))+((((6 : ℤ) : R)*((0 : ℤ) : R))+((0 : ℤ) : R))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_02_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_00_00_expr))+(((((6 : ℤ) : R)*(X^1))*((0 : ℤ) : R))+(X*((0 : ℤ) : R)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_00_interpret,numQx_00_02_interpret,numQy_00_00_interpret,numQy_00_02_interpret,numRaw_00_02_interpret,sub_eq_add_neg] using h
#print axioms numZero_00_02
def numZero_00_03_expr : HExpr := (.add numRaw_00_03_expr (.neg (.add (.add (.mul (.add (.add (.add (.add (.pow .x 2) (.mulY .x 1)) (.pow .y 2)) (.neg (.mulX (.lit 9) 1))) (.neg (.mulY (.lit 9) 1))) numQy_00_03_expr) (.add (.mul (.add (.add .x .y) (.lit 9)) numQy_00_01_expr) (.add (.mul (.lit 6) numQy_00_00_expr) (.lit 0)))) (.add (.add (.mul (.add (.pow .x 3) (.neg (.mulX (.lit 9) 2))) numQx_00_03_expr) (.add (.mul (.add (.pow .x 2) (.mulX (.lit 9) 1)) numQx_00_01_expr) (.add (.mul (.mulX (.lit 6) 1) numQx_00_00_expr) (.mul .x (.lit 0))))) (.lit 0)))))
theorem numZero_00_03 (X Y : R) : (numRaw_00_03 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_03 X Y))+(((X+Y+9)*(numQy_00_01 X Y))+((6*(numQy_00_00 X Y))+0)))+((((X^3-9*X^2)*(numQx_00_03 X Y))+(((X^2+9*X)*(numQx_00_01 X Y))+(((6*X)*(numQx_00_00 X Y))+(X*(0)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y numZero_00_03_expr (by rfl)
  change ((value X Y numRaw_00_03_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_03_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_00_01_expr))+((((6 : ℤ) : R)*(value X Y numQy_00_00_expr))+((0 : ℤ) : R))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_03_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_00_01_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_00_00_expr))+(X*((0 : ℤ) : R)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_00_interpret,numQx_00_01_interpret,numQx_00_03_interpret,numQy_00_00_interpret,numQy_00_01_interpret,numQy_00_03_interpret,numRaw_00_03_interpret,sub_eq_add_neg] using h
#print axioms numZero_00_03
end
end CriticalZeroSplitReduction20261003
