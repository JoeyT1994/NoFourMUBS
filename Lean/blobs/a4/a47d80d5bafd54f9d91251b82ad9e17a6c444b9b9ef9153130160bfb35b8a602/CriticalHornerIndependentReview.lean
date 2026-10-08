import CriticalZeroHornerBindingPilot

set_option autoImplicit false
namespace CriticalHornerIndependentReview20261003
open CriticalZeroSplitReduction20261003
open HornerReflector

theorem arbitrary_ring_sound {R : Type*} [CommRing R] (X Y : R) (e : HExpr)
    (h : IntegerReflector.zeroII (normalize e) = true) : value X Y e = 0 :=
  certificate_sound X Y e h

theorem shifts_commute {R : Type*} [CommRing R] (X Y : R) :
    value X Y (.add (.mulX (.mulY (.lit 7) 3) 2)
      (.neg (.mulY (.mulX (.lit 7) 2) 3))) = 0 :=
  certificate_sound X Y _ (by rfl)

theorem rejects_swapped_variables :
    IntegerReflector.zeroII (normalize
      (.add (.mulX (.lit 1) 2) (.neg (.mulY (.lit 1) 2)))) = false := by rfl

theorem rejects_wrong_exponent :
    IntegerReflector.zeroII (normalize
      (.add (.mulY (.mulX (.lit 1) 3) 2)
        (.neg (.mulY (.mulX (.lit 1) 2) 3)))) = false := by rfl

theorem exact_original_coefficient {R : Type*} [CommRing R] (X Y : R) :
    numRaw_00_05 X Y =
      ((X^2+X*Y+Y^2-9*X-9*Y)*numQy_00_05 X Y +
        ((X+Y+9)*numQy_00_03 X Y + (6*numQy_00_02 X Y+numQy_00_01 X Y))) +
      ((X^3-9*X^2)*numQx_00_05 X Y +
        ((X^2+9*X)*numQx_00_03 X Y +
          (6*X*numQx_00_02 X Y + X*numQx_00_01 X Y))) := by
  have h := binding_pilot X Y
  apply sub_eq_zero.mp
  simpa only [sub_eq_add_neg, add_zero] using h

#print axioms arbitrary_ring_sound
#print axioms shifts_commute
#print axioms rejects_swapped_variables
#print axioms rejects_wrong_exponent
#print axioms exact_original_coefficient
end CriticalHornerIndependentReview20261003
