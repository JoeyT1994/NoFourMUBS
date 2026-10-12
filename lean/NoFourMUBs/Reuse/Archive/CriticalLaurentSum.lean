import NoFourMUBs.Reuse.Archive.CriticalNewtonCore
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Group.Finset.Pi
import Mathlib.Tactic.FinCases

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalLaurent20261003
open scoped BigOperators
noncomputable section

abbrev Exponent := Fin 6 → ℤ
abbrev Triple := Fin 6 × Fin 6 × Fin 6

def value (u : Fin 6 → ℂ) (e : Exponent) : ℂ := ∏ n, (u n)^(e n)
def columns (x y : Fin 6 → ℂ) (t : Triple) : Fin 6 → ℂ :=
  ![x t.1,x t.2.1,x t.2.2,y t.1,y t.2.1,y t.2.2]
def moment (x y : Fin 6 → ℂ) (a b : ℤ) : ℂ := ∑ j, (x j)^a*(y j)^b
def momentProduct (x y : Fin 6 → ℂ) (e : Exponent) : ℂ :=
  moment x y (e 0) (e 3) * moment x y (e 1) (e 4) * moment x y (e 2) (e 5)

theorem value_add (u : Fin 6 → ℂ) (hu : ∀ n,u n≠0) (e f : Exponent) :
    value u (e+f)=value u e*value u f := by
  simp only [value,Pi.add_apply,zpow_add₀ (hu _),Finset.prod_mul_distrib]

theorem columns_nonzero (x y : Fin 6 → ℂ)
    (hx : ∀ j,x j≠0) (hy : ∀ j,y j≠0) (t : Triple) :
    ∀ n,columns x y t n≠0 := by
  intro n
  fin_cases n <;> simp [columns,hx,hy]

/-- Ordered triples factor into whole-strip moments, including repeated columns. -/
theorem ordered_monomial_sum (x y : Fin 6 → ℂ) (e : Exponent) :
    (∑ t : Triple, value (columns x y t) e)=momentProduct x y e := by
  simp only [Fintype.sum_prod_type]
  calc
    _ = ∑ i : Fin 6, ∑ j : Fin 6, ∑ k : Fin 6,
      ((x i)^(e 0)*(y i)^(e 3))*
      ((x j)^(e 1)*(y j)^(e 4))*
      ((x k)^(e 2)*(y k)^(e 5)) := by
        apply Finset.sum_congr rfl
        intro i _
        apply Finset.sum_congr rfl
        intro j _
        apply Finset.sum_congr rfl
        intro k _
        simp [value,columns,Fin.prod_univ_succ]
        ring
    _ = momentProduct x y e := by
      simp only [momentProduct,moment,mul_assoc]
      rw [Finset.sum_mul_sum,Finset.sum_mul_sum]
      simp only [Finset.mul_sum,mul_assoc]

def polynomial {n : ℕ} (terms : Fin n → ℤ × Exponent) (u : Fin 6 → ℂ) : ℂ :=
  ∑ r, (terms r).1 * value u (terms r).2

theorem polynomial_square {n : ℕ} (terms : Fin n → ℤ × Exponent)
    (u : Fin 6 → ℂ) (hu : ∀ j,u j≠0) :
    (polynomial terms u)^2 =
      ∑ rs : Fin n × Fin n,
        (((terms rs.1).1*(terms rs.2).1 : ℤ) : ℂ) *
          value u ((terms rs.1).2+(terms rs.2).2) := by
  simp only [polynomial,pow_two,Fintype.sum_prod_type,Finset.sum_mul,Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r _
  apply Finset.sum_congr rfl
  intro s _
  rw [value_add u hu,Int.cast_mul]
  ring

/-- The exact unsimplified moment expansion underlying the 66-term expression.
There is no scalar substitution, denominator cancellation, or discarded pole. -/
theorem ordered_square_moment_expansion {n : ℕ} (terms : Fin n → ℤ × Exponent)
    (x y : Fin 6 → ℂ) (hx : ∀ j,x j≠0) (hy : ∀ j,y j≠0) :
    (-(∑ t : Triple, (polynomial terms (columns x y t))^2))/6 =
      (-(∑ rs : Fin n × Fin n,
        (((terms rs.1).1*(terms rs.2).1 : ℤ) : ℂ) *
          momentProduct x y ((terms rs.1).2+(terms rs.2).2)))/6 := by
  congr 2
  simp_rw [polynomial_square terms _ (columns_nonzero x y hx hy _)]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro rs _
  rw [← Finset.mul_sum,ordered_monomial_sum]

end
#print axioms value_add
#print axioms columns_nonzero
#print axioms ordered_monomial_sum
#print axioms polynomial_square
#print axioms ordered_square_moment_expansion
end CriticalLaurent20261003
