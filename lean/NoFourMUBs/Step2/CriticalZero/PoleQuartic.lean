import NoFourMUBs.Reuse.Archive.CriticalNonzeroPolynomialData
import NoFourMUBs.Reuse.Archive.CriticalModulusDiscriminant

/-! Connect the pole boundary to the existing quartic, so both cases use
the same scalar classification. All polynomial identities are checked by Lean. -/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 10000
noncomputable section
namespace NoFourMUBs.Step2.Critical.Poles
open CriticalNonzeroPolynomial20261003 CriticalModulusDomain20261003

section
variable {R : Type*} [CommRing R]

def poleBoundaryProduct (k K : R) : R :=
  ((1+k^2)^4*K-16*k^2) * ((1+k^2)^3*K-4*(9*k^2+1)) *
    ((1+k^2)^3*K-(27*k^6+9*k^4+17*k^2+3+8*k*(1+k^2))) *
    ((1+k^2)^3*K-(27*k^6+9*k^4+17*k^2+3-8*k*(1+k^2)))

def poleQuotient (k K : R) : R :=
  (1+k^2)^6*(69*k^6+45*k^4+23*k^2-9)*K^2 -
    2*(1+k^2)^3*(2187*k^12+3564*k^10+4995*k^8+2520*k^6+
      361*k^4-324*k^2+9)*K +
    (59049*k^18+115911*k^16+209952*k^14+209304*k^12+
      179850*k^10+88942*k^8+10216*k^6-12992*k^4-315*k^2+243)

/-- No division by a pole or by a parameter polynomial is used. -/
theorem quartic_pole_boundary_identity (k K : R) :
    quartic k K = poleQuotient k K * (denFactorMinus k K * denFactorPlus k K) +
      ((k^2-1)*(3*k^2-1)*(3*k^2+1)*
        (405*k^10+423*k^8+150*k^6+2*k^4+53*k^2-9)) *
        poleBoundaryProduct k K := by
  unfold quartic denFactorMinus denFactorPlus poleQuotient poleBoundaryProduct
  ring

end

/-- The four existing rational boundaries are precisely the four factors
of the cleared product. Its only denominator is a power of 1+k². -/
theorem poleBoundaryProduct_eq (k K : ℝ) :
    poleBoundaryProduct k K = (h k)^13 *
      ((K-minimum k)*(K-root0 k)*(K-rootPlus k)*(K-rootMinus k)) := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  unfold poleBoundaryProduct minimum root0 rootPlus rootMinus h
  field_simp [hh]
  <;> ring

theorem quartic_zero_of_pole_boundary (k K : ℝ)
    (hA : denFactorMinus k K=0 ∨ denFactorPlus k K=0)
    (hB : K=minimum k ∨ K=root0 k ∨ K=rootPlus k ∨ K=rootMinus k) :
    quartic k K=0 := by
  have hb : poleBoundaryProduct k K=0 := by
    rw [poleBoundaryProduct_eq]
    rcases hB with hB | hB | hB | hB <;>
      simp only [hB, sub_self, mul_zero, zero_mul]
  rw [quartic_pole_boundary_identity, hb, mul_zero, add_zero]
  rcases hA with hA | hA <;> simp only [hA, mul_zero, zero_mul]

end NoFourMUBs.Step2.Critical.Poles
