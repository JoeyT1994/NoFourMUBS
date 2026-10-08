import CriticalNonzeroFinalScalarBinding
import CriticalNonzeroCubicAssembly
set_option autoImplicit false
namespace CriticalNonzeroFinalStep20261003
open CriticalZeroSplitReduction20261003.HornerReflector
open CriticalNonzeroFinalRows20261003 CriticalNonzeroLastStep20261003
noncomputable section
variable {R : Type*} [CommRing R]

/-- The actual retained final-X-step input with its integer multiplier 16. -/
def integerBefore (X k K : R) : R :=
  value k K beforeExpr0+value k K beforeExpr1*X+
    value k K beforeExpr2*X^2+value k K beforeExpr3*X^3
/-- The exact retained quotient is the input's leading X coefficient. -/
def integerQuotient (k K : R) : R := value k K beforeExpr3
/-- Literal external splitting polynomial, now over an arbitrary ring. -/
def fx (X k K : R) : R :=
  (stepH k)^3*(X^3+K*X-K)-(9*stepH k-4)*(stepH k)^2*X^2+
    2*(16-32*stepH k+18*(stepH k)^2)*X

/-- The complete final X pseudo-reduction step, including multiplier 16.
No vanishing premise or nonzero divisor is needed for this ring identity. -/
theorem integer_identity (X k K : R) :
    (stepH k)^3*integerBefore X k K-integerQuotient k K*fx X k K=
      16*(stepH k)^4*CriticalNonzeroPolynomial20261003.reducedNumerator k K := by
  have he := CriticalNonzeroCubicAssembly20261003.assemble X K (stepH k) (stepU k) (stepV k)
    (value k K beforeExpr0) (value k K beforeExpr1) (value k K beforeExpr2)
    (value k K beforeExpr3) (value k K beforeExpr3)
    (CriticalNonzeroPolynomial20261003.reducedNumerator k K)
    (coefficient_equation0 k K) (coefficient_equation1 k K)
    (coefficient_equation2 k K) (coefficient_equation3 k K)
  rw [CriticalNonzeroCubicAssembly20261003.cubic_form] at he
  exact he

end
noncomputable section
variable {F : Type*} [Field F] [CharZero F]

def before (X k K : F) : F := integerBefore X k K/16
def quotient (k K : F) : F := integerQuotient k K/16

/-- The exact rational step. Only the characteristic-zero integer divisor 16
is canceled; no physical pole or preceding trace identity is suppressed. -/
theorem rational_identity (X k K : F) :
    (stepH k)^4*CriticalNonzeroPolynomial20261003.reducedNumerator k K=
      (stepH k)^3*before X k K-quotient k K*fx X k K :=
  CriticalNonzeroCubicAssembly20261003.divide_multiplier _ _ _ _ _
    (integer_identity X k K)

/-- Conditional one-step zero propagation. The preceding 68 trace steps
and actual numerator binding are deliberately not conclusions of this theorem. -/
theorem final_step_zero (X k K : F) (hh : stepH k≠0)
    (hb : before X k K=0) (hx : fx X k K=0) :
    CriticalNonzeroPolynomial20261003.reducedNumerator k K=0 :=
  CriticalNonzeroCubicAssembly20261003.preserves_zero _ _ _ _ _ hh
    (rational_identity X k K) hb hx

end
#print axioms integer_identity
#print axioms rational_identity
#print axioms final_step_zero
end CriticalNonzeroFinalStep20261003
