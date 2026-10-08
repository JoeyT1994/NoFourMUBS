import Mathlib.Data.Complex.Basic
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FinCases

set_option autoImplicit false
namespace CriticalUnitSumTerminal20261003
open scoped BigOperators
noncomputable section

/-- Equality at the maximal phase sum retains its literal common phase.
The proof uses a sum of three nonnegative squared distances. -/
theorem three_unit_sum_forces_common_phase (u : Fin 3 → ℂ) (kappa : ℂ)
    (hu : ∀ i, Complex.normSq (u i)=1) (hk : Complex.normSq kappa=1)
    (hs : (∑ i, u i)=3*kappa) : ∀ i, u i=kappa := by
  have hr : (u 0).re+(u 1).re+(u 2).re=3*kappa.re := by
    simpa [Fin.sum_univ_three] using congrArg Complex.re hs
  have hi : (u 0).im+(u 1).im+(u 2).im=3*kappa.im := by
    simpa [Fin.sum_univ_three] using congrArg Complex.im hs
  have h0 := hu 0
  have h1 := hu 1
  have h2 := hu 2
  have he : Complex.normSq (u 0-kappa)+Complex.normSq (u 1-kappa)+
      Complex.normSq (u 2-kappa)=0 := by
    simp only [Complex.normSq_apply,Complex.sub_re,Complex.sub_im] at h0 h1 h2 hk ⊢
    linear_combination h0+h1+h2-3*hk-(2*kappa.re)*hr-(2*kappa.im)*hi
  have e0 : Complex.normSq (u 0-kappa)=0 := by
    nlinarith [Complex.normSq_nonneg (u 0-kappa),
      Complex.normSq_nonneg (u 1-kappa),Complex.normSq_nonneg (u 2-kappa)]
  have e1 : Complex.normSq (u 1-kappa)=0 := by
    nlinarith [Complex.normSq_nonneg (u 0-kappa),
      Complex.normSq_nonneg (u 1-kappa),Complex.normSq_nonneg (u 2-kappa)]
  have e2 : Complex.normSq (u 2-kappa)=0 := by
    nlinarith [Complex.normSq_nonneg (u 0-kappa),
      Complex.normSq_nonneg (u 1-kappa),Complex.normSq_nonneg (u 2-kappa)]
  intro i
  fin_cases i
  · exact sub_eq_zero.mp (Complex.normSq_eq_zero.mp e0)
  · exact sub_eq_zero.mp (Complex.normSq_eq_zero.mp e1)
  · exact sub_eq_zero.mp (Complex.normSq_eq_zero.mp e2)

/-- A maximal sum of pointwise products gives the actual conjugate-row
identity, without taking square roots or selecting phase representatives. -/
theorem maximal_product_sum_conjugate_rows (x y : Fin 3 → ℂ) (kappa : ℂ)
    (hx : ∀ i, Complex.normSq (x i)=1)
    (hy : ∀ i, Complex.normSq (y i)=1)
    (hk : Complex.normSq kappa=1)
    (hs : (∑ i, x i*y i)=3*kappa) :
    ∀ i, y i=kappa*star (x i) := by
  have hp := three_unit_sum_forces_common_phase (fun i => x i*y i) kappa
    (by intro i; simp only [map_mul,hx i,hy i,one_mul]) hk hs
  intro i
  calc
    y i = y i*((x i)*star (x i)) := by
      rw [Complex.star_def,Complex.mul_conj,hx i,Complex.ofReal_one,mul_one]
    _ = (x i*y i)*star (x i) := by ring
    _ = kappa*star (x i) := by rw [hp i]

end
#print axioms three_unit_sum_forces_common_phase
#print axioms maximal_product_sum_conjugate_rows
end CriticalUnitSumTerminal20261003
