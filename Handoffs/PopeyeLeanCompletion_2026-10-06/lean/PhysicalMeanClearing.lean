import NativeMeanMoments

/-! Physical necessary inequalities for the actual native six-moment sum.
The clearing factor is allowed to vanish: no division or MC3 denominator
positivity assumption is needed for these necessary bounds. -/
set_option autoImplicit false
namespace Centiradian20261006.NativeMean20261006
open scoped BigOperators ComplexConjugate
open SignedDeterminant NativeSigned20261006
noncomputable section

def physicalSignedMean (H : Mat6) (pair : Fin 3) : ℝ := physicalSignedSum H pair/3

theorem physicalSignedMean_abs_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (pair : Fin 3) :
    |physicalSignedMean H pair| ≤ Real.sqrt (leadingR H) := by
  have h := physicalSignedSum_abs_bound hH hd hm hR pair
  rw [physicalSignedMean,abs_div]
  norm_num
  linarith

theorem physicalSignedMean_square_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (pair : Fin 3) :
    (physicalSignedMean H pair)^2 ≤ leadingR H := by
  have h := pow_le_pow_left₀ (abs_nonneg (physicalSignedMean H pair))
    (physicalSignedMean_abs_bound hH hd hm hR pair) 2
  simpa only [sq_abs,Real.sq_sqrt hR.le] using h

theorem physical_cleared_sum_abs_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (pair : Fin 3) {Δ : ℝ} (hΔ : 0≤Δ) :
    |Δ*physicalSignedSum H pair| ≤ (3*Δ)*Real.sqrt (leadingR H) := by
  rw [abs_mul,abs_of_nonneg hΔ]
  have h := mul_le_mul_of_nonneg_left (physicalSignedSum_abs_bound hH hd hm hR pair) hΔ
  simpa only [mul_left_comm,mul_assoc] using h

theorem physical_cleared_sum_square_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (pair : Fin 3) {Δ : ℝ} (hΔ : 0≤Δ) :
    (Δ*physicalSignedSum H pair)^2 ≤ ((3*Δ)*Real.sqrt (leadingR H))^2 := by
  have h := pow_le_pow_left₀ (abs_nonneg (Δ*physicalSignedSum H pair))
    (physical_cleared_sum_abs_bound hH hd hm hR pair hΔ) 2
  simpa only [sq_abs] using h

/-- Native clearing needs only nonnegativity of this product, which holds
for arbitrary complex P0,P1,P2, including zero values. -/
def deltaProduct (P0 P1 P2 : ℂ) : ℝ :=
  Complex.normSq P0*Complex.normSq P1*Complex.normSq P2

theorem deltaProduct_nonnegative (P0 P1 P2 : ℂ) : 0≤deltaProduct P0 P1 P2 := by
  exact mul_nonneg (mul_nonneg (Complex.normSq_nonneg _) (Complex.normSq_nonneg _))
    (Complex.normSq_nonneg _)

/-- Concrete norm-square clearing, with no extra mathematical premise about
the factor and no use of a native certificate's interval claims. -/
theorem physical_normSq_cleared_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0<leadingR H) (pair : Fin 3) (P0 P1 P2 : ℂ) :
    (deltaProduct P0 P1 P2*physicalSignedSum H pair)^2 ≤
      ((3*deltaProduct P0 P1 P2)*Real.sqrt (leadingR H))^2 :=
  physical_cleared_sum_square_bound hH hd hm hR pair (deltaProduct_nonnegative P0 P1 P2)

end
end Centiradian20261006.NativeMean20261006

#print axioms Centiradian20261006.NativeMean20261006.physicalSignedMean_abs_bound
#print axioms Centiradian20261006.NativeMean20261006.physicalSignedMean_square_bound
#print axioms Centiradian20261006.NativeMean20261006.physical_cleared_sum_abs_bound
#print axioms Centiradian20261006.NativeMean20261006.physical_cleared_sum_square_bound
#print axioms Centiradian20261006.NativeMean20261006.deltaProduct_nonnegative
#print axioms Centiradian20261006.NativeMean20261006.physical_normSq_cleared_bound
