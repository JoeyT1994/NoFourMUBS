import CriticalNonzeroLastStepData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace CriticalNonzeroLastStep20261003
open CriticalZeroSplitReduction20261003 HornerReflector

/-- Closed integer normalization of one literal coefficient in the final
pseudo-reduction step. This does not certify the preceding 68 steps. -/
theorem coefficient1_certificate :
    IntegerReflector.zeroII (normalize residualExpr1)=true := by rfl

theorem coefficient1_sound {R : Type*} [CommRing R] (k K : R) :
    value k K residualExpr1=0 :=
  certificate_sound k K residualExpr1 coefficient1_certificate

#print axioms coefficient1_certificate
#print axioms coefficient1_sound
end CriticalNonzeroLastStep20261003
