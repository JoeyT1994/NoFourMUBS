import RadialProductError
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset

/-! Literal finite coefficient multiplication with a total-degree cutoff.
Every monomial uses the same vector xi and radius h. The intended supplier
instance is n=8, m=2 or4. No floating-point or interval operations are modeled. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.RadialProduct20261008
open scoped BigOperators
noncomputable section

abbrev MultiIndex (n : ℕ) := Fin n → ℕ

def totalDegree {n : ℕ} (e : MultiIndex n) : ℕ := ∑ i, e i

def monomial {n : ℕ} (xi : Fin n → ℝ) (e : MultiIndex n) : ℝ := ∏ i, xi i ^ e i

def polyEval {n : ℕ} (S : Finset (MultiIndex n)) (a : MultiIndex n → ℝ)
    (xi : Fin n → ℝ) : ℝ := ∑ e ∈ S, a e * monomial xi e

def coefficientNorm {n : ℕ} (S : Finset (MultiIndex n)) (a : MultiIndex n → ℝ) : ℝ :=
  ∑ e ∈ S, |a e|

def keptPairs {n : ℕ} (m : ℕ) (S T : Finset (MultiIndex n)) :
    Finset (MultiIndex n × MultiIndex n) :=
  (S.product T).filter (fun p => totalDegree p.1 + totalDegree p.2 ≤ m)

def droppedPairs {n : ℕ} (m : ℕ) (S T : Finset (MultiIndex n)) :
    Finset (MultiIndex n × MultiIndex n) :=
  (S.product T).filter (fun p => ¬ totalDegree p.1 + totalDegree p.2 ≤ m)

def productTerm {n : ℕ} (a b : MultiIndex n → ℝ) (xi : Fin n → ℝ)
    (p : MultiIndex n × MultiIndex n) : ℝ :=
  (a p.1*b p.2)*monomial xi (p.1+p.2)

def retainedProduct {n : ℕ} (m : ℕ) (S T : Finset (MultiIndex n))
    (a b : MultiIndex n → ℝ) (xi : Fin n → ℝ) : ℝ :=
  ∑ p ∈ keptPairs m S T, productTerm a b xi p

def discardedMass {n : ℕ} (m : ℕ) (S T : Finset (MultiIndex n))
    (a b : MultiIndex n → ℝ) : ℝ :=
  ∑ p ∈ droppedPairs m S T, |a p.1| *|b p.2|

def groupedCoefficient {n : ℕ} (m : ℕ) (S T : Finset (MultiIndex n))
    (a b : MultiIndex n → ℝ) (e : MultiIndex n) : ℝ := by
  classical
  exact ∑ p ∈ (keptPairs m S T).filter (fun p => p.1+p.2=e), a p.1*b p.2

theorem totalDegree_add {n : ℕ} (e f : MultiIndex n) :
    totalDegree (e+f)=totalDegree e+totalDegree f := by
  simp [totalDegree, Pi.add_apply, Finset.sum_add_distrib]

theorem monomial_add {n : ℕ} (xi : Fin n → ℝ) (e f : MultiIndex n) :
    monomial xi (e+f)=monomial xi e*monomial xi f := by
  simp [monomial, Pi.add_apply, pow_add, Finset.prod_mul_distrib]

theorem monomial_radial_bound {n : ℕ} (xi : Fin n → ℝ) (e : MultiIndex n)
    {h : ℝ} (hh : 0 ≤ h) (hxi : ∀ i, |xi i| ≤ h) :
    |monomial xi e| ≤ h^(totalDegree e) := by
  calc
    _ = ∏ i, |xi i|^(e i) := by simp only [monomial, Finset.abs_prod, abs_pow]
    _ ≤ ∏ i, h^(e i) := Finset.prod_le_prod
      (fun i _ => pow_nonneg (abs_nonneg (xi i)) _) (fun i _ =>
        pow_le_pow_left₀ (abs_nonneg (xi i)) (hxi i) _)
    _ = _ := Finset.prod_pow_eq_pow_sum _ _ _

theorem polynomial_uniform_bound {n : ℕ} (S : Finset (MultiIndex n))
    (a : MultiIndex n → ℝ) (xi : Fin n → ℝ) {h : ℝ}
    (hh : 0 ≤ h) (hh1 : h ≤ 1) (hxi : ∀ i, |xi i| ≤ h) :
    |polyEval S a xi| ≤ coefficientNorm S a := by
  calc
    _ ≤ ∑ e ∈ S, |a e*monomial xi e| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ e ∈ S, |a e| := by
      apply Finset.sum_le_sum
      intro e _
      rw [abs_mul]
      have hm := (monomial_radial_bound xi e hh hxi).trans (pow_le_one₀ hh hh1)
      simpa using mul_le_mul_of_nonneg_left hm (abs_nonneg (a e))
    _ = _ := rfl

/-- Every ordered pair is included once; only total degree decides retention. -/
theorem exact_product_split {n : ℕ} (m : ℕ) (S T : Finset (MultiIndex n))
    (a b : MultiIndex n → ℝ) (xi : Fin n → ℝ) :
    polyEval S a xi*polyEval T b xi = retainedProduct m S T a b xi +
      ∑ p ∈ droppedPairs m S T, productTerm a b xi p := by
  classical
  have hp : polyEval S a xi*polyEval T b xi =
      ∑ p ∈ S.product T, productTerm a b xi p := by
    rw [polyEval, polyEval, Finset.sum_mul_sum, Finset.sum_product]
    apply Finset.sum_congr rfl
    intro e _
    apply Finset.sum_congr rfl
    intro f _
    dsimp [productTerm]
    rw [monomial_add]
    ring
  rw [hp]
  exact (Finset.sum_filter_add_sum_filter_not (S.product T)
    (fun p => totalDegree p.1+totalDegree p.2≤m) (productTerm a b xi)).symm

/-- The supplier's accumulation at the slot for exponent e+f is this grouped
coefficient. Closure of the output slot set is explicit, not silently assumed. -/
theorem grouped_coefficients_evaluate {n : ℕ} (m : ℕ)
    (S T U : Finset (MultiIndex n)) (a b : MultiIndex n → ℝ) (xi : Fin n → ℝ)
    (hU : ∀ p ∈ keptPairs m S T, p.1+p.2 ∈ U) :
    polyEval U (groupedCoefficient m S T a b) xi = retainedProduct m S T a b xi := by
  classical
  calc
    _ = ∑ e ∈ U, ∑ p ∈ (keptPairs m S T).filter (fun p => p.1+p.2=e),
        productTerm a b xi p := by
      apply Finset.sum_congr rfl
      intro e _
      rw [groupedCoefficient, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro p hp
      dsimp [productTerm]
      rw [(Finset.mem_filter.mp hp).2]
    _ = _ := Finset.sum_fiberwise_of_maps_to hU (productTerm a b xi)

/-- A discarded monomial has degree at least m+1, hence its error has the
actual h^(m+1) factor. There is no division by h or nonzero-radius premise. -/
theorem discarded_product_radial_bound {n : ℕ} (m : ℕ)
    (S T : Finset (MultiIndex n)) (a b : MultiIndex n → ℝ) (xi : Fin n → ℝ)
    {h : ℝ} (hh : 0 ≤ h) (hh1 : h ≤ 1) (hxi : ∀ i, |xi i| ≤ h) :
    |polyEval S a xi*polyEval T b xi-retainedProduct m S T a b xi| ≤
      discardedMass m S T a b*h^(m+1) := by
  classical
  have he := exact_product_split m S T a b xi
  have hid : polyEval S a xi*polyEval T b xi-retainedProduct m S T a b xi =
      ∑ p ∈ droppedPairs m S T, productTerm a b xi p := by linarith
  rw [hid]
  calc
    _ ≤ ∑ p ∈ droppedPairs m S T, |productTerm a b xi p| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ droppedPairs m S T, (|a p.1| *|b p.2|)*h^(m+1) := by
      apply Finset.sum_le_sum
      intro p hp
      have hd : m+1 ≤ totalDegree p.1+totalDegree p.2 :=
        Nat.succ_le_of_lt (Nat.lt_of_not_ge (Finset.mem_filter.mp hp).2)
      have hm := monomial_radial_bound xi (p.1+p.2) hh hxi
      rw [totalDegree_add] at hm
      have hb := hm.trans (pow_le_pow_of_le_one hh hh1 hd)
      simpa only [productTerm, abs_mul] using
        mul_le_mul_of_nonneg_left hb (mul_nonneg (abs_nonneg (a p.1)) (abs_nonneg (b p.2)))
    _ = _ := by rw [← Finset.sum_mul]; rfl

/-- The complete real PM product rule, now with the truncation error derived
from literal shared-variable monomials rather than postulated. -/
theorem totalDegree_product_remainder {n : ℕ} (m : ℕ)
    (S T : Finset (MultiIndex n)) (a b : MultiIndex n → ℝ) (xi : Fin n → ℝ)
    {f g ta tb h : ℝ} (hh : 0 ≤ h) (hh1 : h ≤ 1)
    (hxi : ∀ i, |xi i| ≤ h) (hta : 0 ≤ ta) (htb : 0 ≤ tb)
    (hf : |f-polyEval S a xi| ≤ ta*h^(m+1))
    (hg : |g-polyEval T b xi| ≤ tb*h^(m+1)) :
    |f*g-retainedProduct m S T a b xi| ≤
      (discardedMass m S T a b+coefficientNorm S a*tb+
        coefficientNorm T b*ta+ta*tb)*h^(m+1) := by
  exact radial_product_error (m+1) hh hh1
    (Finset.sum_nonneg (fun _ _ => abs_nonneg _))
    (Finset.sum_nonneg (fun _ _ => abs_nonneg _)) hta htb
    (polynomial_uniform_bound S a xi hh hh1 hxi)
    (polynomial_uniform_bound T b xi hh hh1 hxi) hf hg
    (discarded_product_radial_bound m S T a b xi hh hh1 hxi)

end
end Centiradian20261006.RadialProduct20261008
#print axioms Centiradian20261006.RadialProduct20261008.totalDegree_add
#print axioms Centiradian20261006.RadialProduct20261008.monomial_add
#print axioms Centiradian20261006.RadialProduct20261008.monomial_radial_bound
#print axioms Centiradian20261006.RadialProduct20261008.polynomial_uniform_bound
#print axioms Centiradian20261006.RadialProduct20261008.exact_product_split
#print axioms Centiradian20261006.RadialProduct20261008.grouped_coefficients_evaluate
#print axioms Centiradian20261006.RadialProduct20261008.discarded_product_radial_bound
#print axioms Centiradian20261006.RadialProduct20261008.totalDegree_product_remainder
