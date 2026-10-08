import CriticalNonzeroLastStepData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroLastStep20261003
open CriticalZeroSplitReduction20261003 HornerReflector

/-- Closed integer normalization of one literal coefficient in the final
pseudo-reduction step. This does not certify the preceding 68 steps. -/
theorem coefficient2_certificate :
    IntegerReflector.zeroII (normalize residualExpr2)=true := by rfl

theorem coefficient2_sound {R : Type*} [CommRing R] (k K : R) :
    value k K residualExpr2=0 :=
  certificate_sound k K residualExpr2 coefficient2_certificate

#print axioms coefficient2_certificate
#print axioms coefficient2_sound
end CriticalNonzeroLastStep20261003
