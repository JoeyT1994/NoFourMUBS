import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
namespace CriticalNonzeroCubicAssembly20261003
noncomputable section
variable {R : Type*} [CommRing R]

/-- Reassemble the four exact X coefficients without expanding their
internal k and K polynomials. The integer multiplier is retained. -/
theorem assemble (X K h U V b0 b1 b2 b3 Q T : R)
    (e0 : h^3*b0+h^3*(K*Q)-16*h^4*T=0)
    (e1 : h^3*b1-(h^3*(K*Q)+U*Q)=0)
    (e2 : h^3*b2+V*Q=0)
    (e3 : h^3*b3-h^3*Q=0) :
    h^3*(b0+b1*X+b2*X^2+b3*X^3)-
      Q*(h^3*X^3-V*X^2+(h^3*K+U)*X-h^3*K)=16*h^4*T := by
  linear_combination e0+X*e1+X^2*e2+X^3*e3

theorem cubic_form (X K h U V : R) :
    h^3*X^3-V*X^2+(h^3*K+U)*X-h^3*K=
      h^3*(X^3+K*X-K)-V*X^2+U*X := by ring

end
section
variable {F : Type*} [Field F] [CharZero F]

/-- Division is only by the explicitly nonzero integer 16. -/
theorem divide_multiplier (h B Q f T : F)
    (he : h^3*B-Q*f=16*h^4*T) :
    h^4*T=h^3*(B/16)-(Q/16)*f := by
  have h16 : (16 : F)≠0 := by norm_num
  apply (mul_right_inj' h16).mp
  field_simp
  linear_combination -he

/-- This is a single-step consumer. The preceding numerator is an
explicit premise, and h=0 remains outside this division argument. -/
theorem preserves_zero (h B Q f T : F) (hh : h≠0)
    (he : h^4*T=h^3*B-Q*f) (hB : B=0) (hf : f=0) : T=0 := by
  have hz : h^4*T=0 := by simpa only [hB,hf,mul_zero,sub_zero] using he
  exact (mul_eq_zero.mp hz).resolve_left (pow_ne_zero 4 hh)

end
#print axioms assemble
#print axioms cubic_form
#print axioms divide_multiplier
#print axioms preserves_zero
end CriticalNonzeroCubicAssembly20261003
