import CriticalZeroIntegerReflector
set_option autoImplicit false
namespace CriticalIntegerReflectorIndependentReview20261003
open CriticalZeroSplitReduction20261003.IntegerReflector
variable {R : Type*} [CommRing R]

theorem accepted_expression_sound (X Y : R) (e : Expr)
    (h : zeroII (normalize e)=true) : value X Y e=0 :=
  certificate_sound X Y e h

theorem concrete_commutator (X Y : R) :
    value X Y (.add (.mul .x .y) (.neg (.mul .y .x)))=0 :=
  certificate_sound X Y _ (by decide)

theorem rejects_constant_one : zeroII (normalize (.lit 1))=false := rfl

theorem rejects_nonzero_polynomial :
    zeroII (normalize (.add (.mul .x .y) (.neg (.pow .x 2))))=false := rfl

#print axioms accepted_expression_sound
#print axioms concrete_commutator
#print axioms rejects_constant_one
#print axioms rejects_nonzero_polynomial
end CriticalIntegerReflectorIndependentReview20261003
