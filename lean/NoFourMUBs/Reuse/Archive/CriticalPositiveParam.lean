import NoFourMUBs.Reuse.Archive.CriticalRationalParam

set_option autoImplicit false
namespace CriticalRationalParam20261003
open CriticalScalarReduction20261003
noncomputable section

theorem parameter_signs (k : ℝ) :
    p (-k)=p k ∧ j (-k)= -j k ∧ w (-k)=w k := by
  simp [p,q,j,w] <;> ring

/-- The positive parameter used in whole-strip classification covers the
magnitude of every nonzero critical J, retaining either complementary sign. -/
theorem positive_magnitude_parameterization {a b c : ℝ}
    (ha : 0≤a) (hphys : a+|b|≤9) (hb : b≠0)
    (hp : R a b c=0) (hm : R a (-b) c=0) :
    ∃ k : ℝ, 0<k ∧ a=p k ∧ |b|=j k ∧ c=w k := by
  obtain ⟨_,ha9,hc,hw⟩ := nonzero_reduction ha hphys hb hp hm
  have hc' : |b|^2=(9-a)^3*(a-5)/4 := by simpa only [sq_abs] using hc
  refine ⟨2*|b|/(9-a)^2,?_,parameterization ha9 hc' hw⟩
  exact div_pos (mul_pos (by norm_num) (abs_pos.mpr hb))
    (sq_pos_of_ne_zero (by linarith))

theorem eta_minus_zero_iff (k : ℝ) : q k-j k=0 ↔ k=1 := by
  rw [(eta_identities k).2]
  have hd : (1+k^2)^2≠0 := pow_ne_zero 2 (ne_of_gt (denominator_pos k))
  rw [div_eq_zero_iff]
  simp only [hd,or_false]
  constructor
  · intro h; nlinarith only [h]
  · intro h; rw [h]; norm_num

theorem eta_plus_zero_iff (k : ℝ) : q k+j k=0 ↔ k= -1 := by
  rw [(eta_identities k).1]
  have hd : (1+k^2)^2≠0 := pow_ne_zero 2 (ne_of_gt (denominator_pos k))
  rw [div_eq_zero_iff]
  simp only [hd,or_false]
  constructor
  · intro h; nlinarith only [h]
  · intro h; rw [h]; norm_num

theorem permanent_zero_scalar_values :
    p 1=7 ∧ j 1=2 ∧ w 1=6 ∧ p (-1)=7 ∧ j (-1)= -2 ∧ w (-1)=6 := by
  norm_num [p,q,j,w]

#print axioms parameter_signs
#print axioms positive_magnitude_parameterization
#print axioms eta_minus_zero_iff
#print axioms eta_plus_zero_iff
#print axioms permanent_zero_scalar_values
end
end CriticalRationalParam20261003
