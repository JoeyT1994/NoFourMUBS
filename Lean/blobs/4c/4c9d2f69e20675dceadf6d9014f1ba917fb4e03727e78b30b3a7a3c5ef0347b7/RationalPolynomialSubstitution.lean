import LiftedAtlasPolynomial
import Mathlib.Algebra.MvPolynomial.Degrees

/-! Explicit rational-polynomial denominator clearing. The construction is a
finite support sum, with one common coordinate denominator and a degree bound.
The evaluation identity does not assume that this denominator is nonzero. -/
namespace Mub6.Classification.RationalPolynomialSubstitution
open MvPolynomial SharedRationalIncidence
open scoped BigOperators
noncomputable section

def clearDenominators {σ τ : Type*} (Q : CarrierPoly τ)
    (N : σ → CarrierPoly τ) (D : ℕ) (P : CarrierPoly σ) : CarrierPoly τ :=
  ∑ d ∈ P.support, C (P.coeff d) *
    (∏ i ∈ d.support, N i ^ d i) * Q ^ (D - d.sum (fun _ e => e))

theorem scaled_monomial {σ : Type*} (d : σ →₀ ℕ) (x : σ → ℝ) (q : ℝ)
    (D : ℕ) (hD : d.sum (fun _ e => e) ≤ D) :
    (∏ i ∈ d.support, (q * x i) ^ d i) * q ^ (D - d.sum (fun _ e => e)) =
      q ^ D * (∏ i ∈ d.support, x i ^ d i) := by
  classical
  simp_rw [mul_pow]
  rw [Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum]
  change (q ^ d.sum (fun _ e => e) * (∏ i ∈ d.support, x i ^ d i)) *
    q ^ (D - d.sum (fun _ e => e)) = _
  calc
    _ = (q ^ d.sum (fun _ e => e) * q ^ (D - d.sum (fun _ e => e))) *
        (∏ i ∈ d.support, x i ^ d i) := by ring
    _ = _ := by rw [← pow_add, Nat.add_sub_of_le hD]

theorem clearDenominators_eval {σ τ : Type*} (Q : CarrierPoly τ)
    (N : σ → CarrierPoly τ) (D : ℕ) (P : CarrierPoly σ)
    (x : σ → ℝ) (y : τ → ℝ)
    (hcoord : ∀ i, evalReal y (N i) = evalReal y Q * x i)
    (hD : P.totalDegree ≤ D) :
    evalReal y (clearDenominators Q N D P) =
      evalReal y Q ^ D * evalReal x P := by
  classical
  simp only [clearDenominators, evalReal, eval₂_sum, eval₂_mul,
    eval₂_C, eval₂_pow, eval₂_prod]
  rw [eval₂_eq (algebraMap ℚ ℝ) x P, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d hd
  change ((P.coeff d : ℚ) : ℝ) * (∏ i ∈ d.support, evalReal y (N i) ^ d i) *
    evalReal y Q ^ (D - d.sum (fun _ e => e)) = _
  simp_rw [hcoord]
  have hm := scaled_monomial d x (evalReal y Q) D ((le_totalDegree hd).trans hD)
  calc
    _ = ((P.coeff d : ℚ) : ℝ) *
      ((∏ i ∈ d.support, (evalReal y Q * x i) ^ d i) *
        evalReal y Q ^ (D - d.sum (fun _ e => e))) := by ring
    _ = _ := by
      rw [hm]
      change ((P.coeff d : ℚ) : ℝ) * (evalReal y Q ^ D *
        (∏ i ∈ d.support, x i ^ d i)) =
        evalReal y Q ^ D * (((P.coeff d : ℚ) : ℝ) * (∏ i ∈ d.support, x i ^ d i))
      ring

theorem clearDenominators_quotient {σ τ : Type*} (Q : CarrierPoly τ)
    (N : σ → CarrierPoly τ) (D : ℕ) (P : CarrierPoly σ)
    (x : σ → ℝ) (y : τ → ℝ)
    (hcoord : ∀ i, evalReal y (N i) = evalReal y Q * x i)
    (hD : P.totalDegree ≤ D) (hQ : evalReal y Q ≠ 0) :
    evalReal y (clearDenominators Q N D P) / evalReal y (Q ^ D) = evalReal x P := by
  rw [clearDenominators_eval Q N D P x y hcoord hD]
  simp only [evalReal, eval₂_pow]
  exact mul_div_cancel_left₀ _ (pow_ne_zero D hQ)

#print axioms Mub6.Classification.RationalPolynomialSubstitution.scaled_monomial
#print axioms Mub6.Classification.RationalPolynomialSubstitution.clearDenominators_eval
#print axioms Mub6.Classification.RationalPolynomialSubstitution.clearDenominators_quotient

end
end Mub6.Classification.RationalPolynomialSubstitution
