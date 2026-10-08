import TotalDegreeRadialProduct

/-! Exact degree-bucket regrouping used by PM::norms and PM::operator*.
This identifies real sums only. Interval magnitudes/outward rounding remain
separate enclosure obligations. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.RadialProduct20261008
open scoped BigOperators
noncomputable section

def degreeNorm {n : ℕ} (S : Finset (MultiIndex n))
    (a : MultiIndex n → ℝ) (i : ℕ) : ℝ :=
  ∑ e ∈ S.filter (fun e => totalDegree e=i), |a e|

def degreeBucketMass {n : ℕ} (m : ℕ) (S T : Finset (MultiIndex n))
    (a b : MultiIndex n → ℝ) : ℝ :=
  ∑ i ∈ Finset.range (m+1), ∑ j ∈ Finset.range (m+1),
    if m<i+j then degreeNorm S a i*degreeNorm T b j else 0

theorem sum_by_totalDegree {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (F : MultiIndex n → ℝ) (hS : ∀ e ∈ S, totalDegree e≤m) :
    ∑ e ∈ S, F e = ∑ i ∈ Finset.range (m+1),
      ∑ e ∈ S.filter (fun e => totalDegree e=i), F e := by
  classical
  exact (Finset.sum_fiberwise_of_maps_to
    (fun e he => Finset.mem_range.mpr (Nat.lt_succ_of_le (hS e he))) F).symm

theorem coefficientNorm_by_degree {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (a : MultiIndex n → ℝ) (hS : ∀ e ∈ S, totalDegree e≤m) :
    coefficientNorm S a = ∑ i ∈ Finset.range (m+1), degreeNorm S a i := by
  exact sum_by_totalDegree m S (fun e => |a e|) hS

/-- The literal nested degree loop with i+j>m computes the full discarded
ordered-pair mass. No pair is omitted and no symmetry factor is inserted. -/
theorem discardedMass_eq_degreeBuckets {n : ℕ} (m : ℕ)
    (S T : Finset (MultiIndex n)) (a b : MultiIndex n → ℝ)
    (hS : ∀ e ∈ S, totalDegree e≤m) (hT : ∀ f ∈ T, totalDegree f≤m) :
    discardedMass m S T a b = degreeBucketMass m S T a b := by
  classical
  have hp : discardedMass m S T a b =
      ∑ e ∈ S, ∑ f ∈ T, if m<totalDegree e+totalDegree f then |a e| * |b f| else 0 := by
    simp only [discardedMass, droppedPairs, Finset.sum_filter, not_le]
    exact Finset.sum_product S T
      (fun p => if m<totalDegree p.1+totalDegree p.2 then |a p.1| * |b p.2| else 0)
  rw [hp, sum_by_totalDegree m S _ hS]
  calc
    _ = ∑ i ∈ Finset.range (m+1), ∑ e ∈ S.filter (fun e => totalDegree e=i),
        ∑ j ∈ Finset.range (m+1), ∑ f ∈ T.filter (fun f => totalDegree f=j),
          if m<totalDegree e+totalDegree f then |a e| * |b f| else 0 := by
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro e _
      exact sum_by_totalDegree m T _ hT
    _ = ∑ i ∈ Finset.range (m+1), ∑ j ∈ Finset.range (m+1),
        ∑ e ∈ S.filter (fun e => totalDegree e=i),
          ∑ f ∈ T.filter (fun f => totalDegree f=j),
            if m<totalDegree e+totalDegree f then |a e| * |b f| else 0 := by
      apply Finset.sum_congr rfl
      intro i _
      exact Finset.sum_comm
    _ = degreeBucketMass m S T a b := by
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro j _
      have heq :
          (∑ e ∈ S.filter (fun e => totalDegree e=i),
            ∑ f ∈ T.filter (fun f => totalDegree f=j),
              if m<totalDegree e+totalDegree f then |a e| * |b f| else 0) =
          ∑ e ∈ S.filter (fun e => totalDegree e=i),
            ∑ f ∈ T.filter (fun f => totalDegree f=j),
              if m<i+j then |a e| * |b f| else 0 := by
        apply Finset.sum_congr rfl
        intro e he
        apply Finset.sum_congr rfl
        intro f hf
        rw [(Finset.mem_filter.mp he).2, (Finset.mem_filter.mp hf).2]
      rw [heq]
      by_cases hij : m<i+j
      · simp only [if_pos hij]
        exact (Finset.sum_mul_sum _ _ _ _).symm
      · simp only [if_neg hij, Finset.sum_const_zero]

/-- Exact supplier degree-bucket tail formula, with the truncation bound and
both input polynomial norms discharged by the preceding kernels. -/
theorem degreeBucket_product_remainder {n : ℕ} (m : ℕ)
    (S T : Finset (MultiIndex n)) (a b : MultiIndex n → ℝ) (xi : Fin n → ℝ)
    (hS : ∀ e ∈ S, totalDegree e≤m) (hT : ∀ f ∈ T, totalDegree f≤m)
    {f g ta tb h : ℝ} (hh : 0≤h) (hh1 : h≤1) (hxi : ∀ i, |xi i|≤h)
    (hta : 0≤ta) (htb : 0≤tb)
    (hf : |f-polyEval S a xi|≤ta*h^(m+1))
    (hg : |g-polyEval T b xi|≤tb*h^(m+1)) :
    |f*g-retainedProduct m S T a b xi|≤
      (degreeBucketMass m S T a b+
        (∑ i ∈ Finset.range (m+1), degreeNorm S a i)*tb+
        (∑ j ∈ Finset.range (m+1), degreeNorm T b j)*ta+ta*tb)*h^(m+1) := by
  have hb := totalDegree_product_remainder m S T a b xi hh hh1 hxi hta htb hf hg
  rw [discardedMass_eq_degreeBuckets m S T a b hS hT,
    coefficientNorm_by_degree m S a hS, coefficientNorm_by_degree m T b hT] at hb
  exact hb

end
end Centiradian20261006.RadialProduct20261008
#print axioms Centiradian20261006.RadialProduct20261008.sum_by_totalDegree
#print axioms Centiradian20261006.RadialProduct20261008.coefficientNorm_by_degree
#print axioms Centiradian20261006.RadialProduct20261008.discardedMass_eq_degreeBuckets
#print axioms Centiradian20261006.RadialProduct20261008.degreeBucket_product_remainder
