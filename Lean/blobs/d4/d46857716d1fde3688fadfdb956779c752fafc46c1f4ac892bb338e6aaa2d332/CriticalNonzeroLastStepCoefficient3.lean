import CriticalNonzeroLastStepData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroLastStep20261003
open CriticalZeroSplitReduction20261003 HornerReflector

/-- Closed integer normalization of one literal coefficient in the final
pseudo-reduction step. This does not certify the preceding 68 steps. -/
theorem coefficient3_certificate :
    IntegerReflector.zeroII (normalize residualExpr3)=true := by rfl

theorem coefficient3_sound {R : Type*} [CommRing R] (k K : R) :
    value k K residualExpr3=0 :=
  certificate_sound k K residualExpr3 coefficient3_certificate

#print axioms coefficient3_certificate
#print axioms coefficient3_sound
end CriticalNonzeroLastStep20261003
