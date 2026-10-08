import CriticalNonzeroLastStepData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroLastStep20261003
open CriticalZeroSplitReduction20261003 HornerReflector
open CriticalNonzeroPolynomial20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem reducedCoefficient00_interpret (k K : R) :
    value k K reducedCoefficient00Expr=reducedCoefficient00 k := by
  simp only [reducedCoefficient00Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient00]
#print axioms reducedCoefficient00_interpret
theorem reducedCoefficient01_interpret (k K : R) :
    value k K reducedCoefficient01Expr=reducedCoefficient01 k := by
  simp only [reducedCoefficient01Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient01]
#print axioms reducedCoefficient01_interpret
theorem reducedCoefficient02_interpret (k K : R) :
    value k K reducedCoefficient02Expr=reducedCoefficient02 k := by
  simp only [reducedCoefficient02Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient02]
#print axioms reducedCoefficient02_interpret
theorem reducedCoefficient03_interpret (k K : R) :
    value k K reducedCoefficient03Expr=reducedCoefficient03 k := by
  simp only [reducedCoefficient03Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient03]
#print axioms reducedCoefficient03_interpret
theorem reducedCoefficient04_interpret (k K : R) :
    value k K reducedCoefficient04Expr=reducedCoefficient04 k := by
  simp only [reducedCoefficient04Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient04]
#print axioms reducedCoefficient04_interpret
theorem reducedCoefficient05_interpret (k K : R) :
    value k K reducedCoefficient05Expr=reducedCoefficient05 k := by
  simp only [reducedCoefficient05Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient05]
#print axioms reducedCoefficient05_interpret
theorem reducedCoefficient06_interpret (k K : R) :
    value k K reducedCoefficient06Expr=reducedCoefficient06 k := by
  simp only [reducedCoefficient06Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient06]
#print axioms reducedCoefficient06_interpret
theorem reducedCoefficient07_interpret (k K : R) :
    value k K reducedCoefficient07Expr=reducedCoefficient07 k := by
  simp only [reducedCoefficient07Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient07]
#print axioms reducedCoefficient07_interpret
theorem reducedCoefficient08_interpret (k K : R) :
    value k K reducedCoefficient08Expr=reducedCoefficient08 k := by
  simp only [reducedCoefficient08Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient08]
#print axioms reducedCoefficient08_interpret
theorem reducedCoefficient09_interpret (k K : R) :
    value k K reducedCoefficient09Expr=reducedCoefficient09 k := by
  simp only [reducedCoefficient09Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient09]
#print axioms reducedCoefficient09_interpret
theorem reducedCoefficient10_interpret (k K : R) :
    value k K reducedCoefficient10Expr=reducedCoefficient10 k := by
  simp only [reducedCoefficient10Expr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedCoefficient10]
#print axioms reducedCoefficient10_interpret
theorem target_interpret (k K : R) : value k K targetExpr=reducedNumerator k K := by
  simpa only [targetExpr,value,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,Int.cast_one,pow_one,reducedNumerator,reducedCoefficient00Expr,reducedCoefficient01Expr,reducedCoefficient02Expr,reducedCoefficient03Expr,reducedCoefficient04Expr,reducedCoefficient05Expr,reducedCoefficient06Expr,reducedCoefficient07Expr,reducedCoefficient08Expr,reducedCoefficient09Expr,reducedCoefficient10Expr,reducedCoefficient00,reducedCoefficient01,reducedCoefficient02,reducedCoefficient03,reducedCoefficient04,reducedCoefficient05,reducedCoefficient06,reducedCoefficient07,reducedCoefficient08,reducedCoefficient09,reducedCoefficient10]
#print axioms target_interpret
end
end CriticalNonzeroLastStep20261003
