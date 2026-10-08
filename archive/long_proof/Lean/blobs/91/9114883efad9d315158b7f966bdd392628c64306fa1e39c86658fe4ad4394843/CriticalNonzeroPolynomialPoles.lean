import CriticalNonzeroPolynomialData
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 10000
namespace CriticalNonzeroPolynomial20261003
section
variable {F : Type*} [Field F]

/-- Rational product identity in a generic field, using exactly the plus
factor supplied by the external quartic data. -/
theorem denominator_plus (k K : F) (hh : 1+k^2≠0) :
    let h := 1+k^2
    let q := 4/h
    let j := 8*k/h^2
    let z := -2*(1+k)/h
    let g := 3*q+j
    (g+9*z)^3-(g+9*z)^2*z*(9-q)+
      (g+9*z)*z^2*(2*(16-32*h+18*h^2)/h^3+K)-z^3*K =
      -16*denFactorPlus k K/h^7 := by
  dsimp only
  unfold denFactorPlus
  field_simp [hh]
  <;> ring

theorem denominator_minus (k K : F) (hh : 1+k^2≠0) :
    let h := 1+k^2
    let q := 4/h
    let j := 8*k/h^2
    let z := -2*(1-k)/h
    let g := 3*q-j
    (g+9*z)^3-(g+9*z)^2*z*(9-q)+
      (g+9*z)*z^2*(2*(16-32*h+18*h^2)/h^3+K)-z^3*K =
      16*denFactorMinus k K/h^7 := by
  dsimp only
  unfold denFactorMinus
  field_simp [hh]
  <;> ring

end
#print axioms denominator_plus
#print axioms denominator_minus
end CriticalNonzeroPolynomial20261003
