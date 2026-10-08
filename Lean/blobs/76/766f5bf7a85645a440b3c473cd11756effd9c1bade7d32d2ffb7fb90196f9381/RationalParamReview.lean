import CriticalRationalParam

set_option autoImplicit false
set_option maxHeartbeats 2000000
namespace RationalParamIndependentReview20261003
open CriticalScalarReduction20261003 CriticalRationalParam20261003
noncomputable section

theorem literal_nonzero_endpoint (a b c : ℝ)
    (ha : 0 ≤ a) (hbnd : a + |b| ≤ 9) (hb : b ≠ 0)
    (hp : R a b c = 0) (hm : R a (-b) c = 0) :
    ∃ k : ℝ, k ≠ 0 ∧
      a = 9 - 4 / (1 + k^2) ∧
      b = 8 * k / (1 + k^2)^2 ∧
      c = (4 / (1 + k^2)) * ((4 / (1 + k^2))^2 - 8*(4 / (1 + k^2)) + 18) / 2 := by
  simpa only [p, q, j, w] using
    (nonzero_critical_parameterization ha hbnd hb hp hm)

theorem literal_curve_inverse (a b : ℝ) (ha : 0 < a)
    (hc : b^2 = a^3 * (4-a) / 4) :
    a = 4 / (1 + (2*b/a^2)^2) ∧
    b = 8 * (2*b/a^2) / (1 + (2*b/a^2)^2)^2 := by
  simpa only [q, j] using (curve_param ha hc)

theorem whole_parametric_family (k : ℝ) :
    R (p k) (j k) (w k) = 0 ∧ R (p k) (-j k) (w k) = 0 ∧
    0 ≤ p k ∧ p k + |j k| ≤ 9 :=
  ⟨(param_paired_zeros k).1, (param_paired_zeros k).2, scalar_bounds k⟩

theorem inverse_and_range (k : ℝ) :
    2*j k/(9-p k)^2 = k ∧ 5 ≤ p k ∧ p k < 9 := by
  have hd := denominator_pos k
  have hd0 := ne_of_gt hd
  have hq : 0 < q k := by dsimp [q]; positivity
  have hq4 : q k ≤ 4 := by
    dsimp [q]
    apply (div_le_iff₀ hd).mpr
    nlinarith [sq_nonneg k]
  refine ⟨?_, ?_, ?_⟩
  · have he : 9-p k=q k := by dsimp [p]; ring
    rw [he]
    dsimp [q, j]
    field_simp [hd0]
    <;> ring
  · dsimp [p]; linarith
  · dsimp [p]; linarith

theorem j_zero_iff (k : ℝ) : j k = 0 ↔ k = 0 := by
  constructor
  · intro hz
    have he := (inverse_and_range k).1
    rw [hz] at he
    simpa using he.symm
  · rintro rfl
    norm_num [j]

theorem zero_parameter_retained :
    p 0 = 5 ∧ j 0 = 0 ∧ w 0 = 4 ∧
    R (p 0) (j 0) (w 0) = 0 ∧ R (p 0) (-j 0) (w 0) = 0 ∧
    3*q 0+j 0 = 12 ∧ 3*q 0-j 0 = 12 := by
  norm_num [p, q, j, w, R]

theorem permanent_zero_parameters_retained :
    p 1 = 7 ∧ j 1 = 2 ∧ w 1 = 6 ∧ q 1-j 1 = 0 ∧ 3*q 1-j 1 = 4 ∧
    p (-1) = 7 ∧ j (-1) = -2 ∧ w (-1) = 6 ∧
    q (-1)+j (-1) = 0 ∧ 3*q (-1)+j (-1) = 4 := by
  norm_num [p, q, j, w]

theorem z_formulas_at_permanent_zeros :
    chi (p 1) (j 1) (w 1)/(2*(3*q 1+j 1)) = -2 ∧
    chi (p 1) (-j 1) (w 1)/(2*(3*q 1-j 1)) = 0 ∧
    chi (p (-1)) (j (-1)) (w (-1))/(2*(3*q (-1)+j (-1))) = 0 ∧
    chi (p (-1)) (-j (-1)) (w (-1))/(2*(3*q (-1)-j (-1))) = -2 := by
  norm_num [chi, p, q, j, w]

theorem no_denominator_exception (k : ℝ) :
    0 < 1+k^2 ∧ 0 < 2*(3*q k+j k) ∧ 0 < 2*(3*q k-j k) := by
  obtain ⟨hp, hm⟩ := g_positive k
  exact ⟨denominator_pos k, by positivity, by positivity⟩

/-- A scalar critical boundary point is deliberately outside the finite-real
parameter family. Thus surjectivity must not be asserted for all J=0 points. -/
theorem singular_boundary_outside_family :
    R 9 0 0 = 0 ∧ R 9 (-0) 0 = 0 ∧
    0 ≤ (9:ℝ) ∧ (9:ℝ)+|0| ≤ 9 ∧ ¬∃ k : ℝ, p k = 9 := by
  refine ⟨by norm_num [R], by norm_num [R], by norm_num, by norm_num, ?_⟩
  rintro ⟨k, hk⟩
  have hp := (inverse_and_range k).2.2
  linarith

/-- Even with p<9, the other J=0 branch is not classified by this theorem. -/
theorem other_zero_branch_outside_family :
    R 5 0 100 = 0 ∧ R 5 (-0) 100 = 0 ∧
    0 ≤ (5:ℝ) ∧ (5:ℝ)+|0| ≤ 9 ∧
    ¬∃ k : ℝ, p k = 5 ∧ j k = 0 ∧ w k = 100 := by
  refine ⟨by norm_num [R], by norm_num [R], by norm_num, by norm_num, ?_⟩
  rintro ⟨k, hp, hj, hw⟩
  have hk := (j_zero_iff k).mp hj
  subst k
  norm_num [w, q] at hw

#print axioms literal_nonzero_endpoint
#print axioms literal_curve_inverse
#print axioms whole_parametric_family
#print axioms inverse_and_range
#print axioms j_zero_iff
#print axioms zero_parameter_retained
#print axioms permanent_zero_parameters_retained
#print axioms z_formulas_at_permanent_zeros
#print axioms no_denominator_exception
#print axioms singular_boundary_outside_family
#print axioms other_zero_branch_outside_family
end
end RationalParamIndependentReview20261003
