import CriticalZeroHornerPilot
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace CriticalZeroSplitReduction20261003
open HornerReflector
noncomputable section
variable {R : Type*} [CommRing R]
theorem numQx_00_01_interpret (X Y : R) : value X Y numQx_00_01_expr=numQx_00_01 X Y := by
  simp only [numQx_00_01_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_01]
#print axioms numQx_00_01_interpret
theorem numQx_00_02_interpret (X Y : R) : value X Y numQx_00_02_expr=numQx_00_02 X Y := by
  simp only [numQx_00_02_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_02]
#print axioms numQx_00_02_interpret
theorem numQx_00_03_interpret (X Y : R) : value X Y numQx_00_03_expr=numQx_00_03 X Y := by
  simp only [numQx_00_03_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_03]
#print axioms numQx_00_03_interpret
theorem numQx_00_05_interpret (X Y : R) : value X Y numQx_00_05_expr=numQx_00_05 X Y := by
  simp only [numQx_00_05_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_05]
#print axioms numQx_00_05_interpret
theorem numQy_00_01_interpret (X Y : R) : value X Y numQy_00_01_expr=numQy_00_01 X Y := by
  simp only [numQy_00_01_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQy_00_01]
#print axioms numQy_00_01_interpret
theorem numQy_00_02_interpret (X Y : R) : value X Y numQy_00_02_expr=numQy_00_02 X Y := by
  simp only [numQy_00_02_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQy_00_02]
#print axioms numQy_00_02_interpret
theorem numQy_00_03_interpret (X Y : R) : value X Y numQy_00_03_expr=numQy_00_03 X Y := by
  simp only [numQy_00_03_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQy_00_03]
#print axioms numQy_00_03_interpret
theorem numQy_00_05_interpret (X Y : R) : value X Y numQy_00_05_expr=numQy_00_05 X Y := by
  simp only [numQy_00_05_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQy_00_05]
#print axioms numQy_00_05_interpret
theorem numRaw_00_05_interpret (X Y : R) : value X Y numRaw_00_05_expr=numRaw_00_05 X Y := by
  simp only [numRaw_00_05_expr,value,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numRaw_00_05]
#print axioms numRaw_00_05_interpret
theorem binding_pilot (X Y : R) : (numRaw_00_05 X Y+(-(((((X^2+X*Y+Y^2-9*X-9*Y)*(numQy_00_05 X Y))+(((X+Y+9)*(numQy_00_03 X Y))+((6*(numQy_00_02 X Y))+numQy_00_01 X Y)))+((((X^3-9*X^2)*(numQx_00_05 X Y))+(((X^2+9*X)*(numQx_00_03 X Y))+(((6*X)*(numQx_00_02 X Y))+(X*(numQx_00_01 X Y)))))+(0 : R))))))=0 := by
  have h := certificate_sound X Y hornerPilotExpr (by rfl)
  change ((value X Y numRaw_00_05_expr)+(-((((((((X^2)+(X*(Y^1)))+(Y^2))+(-(((9 : ℤ) : R)*(X^1))))+(-(((9 : ℤ) : R)*(Y^1))))*(value X Y numQy_00_05_expr))+((((X+Y)+((9 : ℤ) : R))*(value X Y numQy_00_03_expr))+((((6 : ℤ) : R)*(value X Y numQy_00_02_expr))+(value X Y numQy_00_01_expr))))+(((((X^3)+(-(((9 : ℤ) : R)*(X^2))))*(value X Y numQx_00_05_expr))+((((X^2)+(((9 : ℤ) : R)*(X^1)))*(value X Y numQx_00_03_expr))+(((((6 : ℤ) : R)*(X^1))*(value X Y numQx_00_02_expr))+(X*(value X Y numQx_00_01_expr)))))+((0 : ℤ) : R)))))=0 at h
  simpa only [Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,numQx_00_01_interpret,numQx_00_02_interpret,numQx_00_03_interpret,numQx_00_05_interpret,numQy_00_01_interpret,numQy_00_02_interpret,numQy_00_03_interpret,numQy_00_05_interpret,numRaw_00_05_interpret,sub_eq_add_neg] using h
#print axioms binding_pilot
end
end CriticalZeroSplitReduction20261003
