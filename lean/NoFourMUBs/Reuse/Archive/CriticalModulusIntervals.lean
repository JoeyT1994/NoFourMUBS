import NoFourMUBs.Reuse.Archive.CriticalModulusDiscriminant

set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace CriticalModulusDomain20261003
noncomputable section

theorem roots_above_minimum (k : ℝ) :
    minimum k<root0 k ∧ minimum k≤rootPlus k ∧ minimum k≤rootMinus k := by
  have hd : 0<(h k)^4 := pow_pos (h_pos k) 4
  have hq : 0<3*k^2+1 := by nlinarith [sq_nonneg k]
  have hp : 0<3*k^2+2*k+3 := by nlinarith [sq_nonneg (3*k+1)]
  have hm : 0<3*k^2-2*k+3 := by nlinarith [sq_nonneg (3*k-1)]
  constructor
  · apply sub_pos.mp
    rw [zero_minimum_difference]
    exact div_pos (mul_pos (by norm_num) (pow_pos hq 2)) hd
  constructor
  · apply sub_nonneg.mp
    rw [plus_minimum_difference]
    exact div_nonneg (mul_nonneg hp.le (sq_nonneg _)) hd.le
  · apply sub_nonneg.mp
    rw [minus_minimum_difference]
    exact div_nonneg (mul_nonneg hm.le (sq_nonneg _)) hd.le

theorem minus_lt_plus {k : ℝ} (hk : 0<k) : rootMinus k<rootPlus k := by
  apply sub_pos.mp
  rw [plus_minus_difference]
  exact div_pos (mul_pos (by norm_num) hk) (pow_pos (h_pos k) 2)

theorem root_order_lower {k : ℝ} (hk : 0<k) (hb : k≤1/3) :
    rootMinus k≤rootPlus k ∧ rootPlus k≤root0 k := by
  refine ⟨(minus_lt_plus hk).le,?_⟩
  apply sub_nonpos.mp
  rw [plus_zero_difference]
  have hc : 3*k-1≤0 := by linarith
  have hc3 : (3*k-1)^3≤0 := by
    rw [pow_succ]
    exact mul_nonpos_of_nonneg_of_nonpos (sq_nonneg _) hc
  exact div_nonpos_of_nonpos_of_nonneg
    (mul_nonpos_of_nonneg_of_nonpos (by linarith) hc3) (pow_nonneg (h_pos k).le 2)

theorem root_order_middle {k : ℝ} (hl : 1/3≤k) (hu : k≤1) :
    rootMinus k≤root0 k ∧ root0 k≤rootPlus k := by
  constructor
  · apply sub_nonpos.mp
    rw [minus_zero_difference]
    exact div_nonpos_of_nonpos_of_nonneg
      (mul_nonpos_of_nonpos_of_nonneg (by linarith) (pow_nonneg (by linarith) 3))
      (pow_nonneg (h_pos k).le 2)
  · apply sub_nonneg.mp
    rw [plus_zero_difference]
    exact div_nonneg (mul_nonneg (by linarith) (pow_nonneg (by linarith) 3))
      (pow_nonneg (h_pos k).le 2)

theorem root_order_upper {k : ℝ} (hk : 1≤k) :
    root0 k≤rootMinus k ∧ rootMinus k≤rootPlus k := by
  refine ⟨?_,(minus_lt_plus (by linarith : 0<k)).le⟩
  apply sub_nonneg.mp
  rw [minus_zero_difference]
  exact div_nonneg (mul_nonneg (by linarith) (pow_nonneg (by linarith) 3))
    (pow_nonneg (h_pos k).le 2)

/-- This necessary interval cover includes repeated and coincident roots. -/
theorem ordered_cubic_nonpositive {a b c x : ℝ} (_hab : a≤b) (hbc : b≤c)
    (hs : (x-a)*(x-b)*(x-c)≤0) : x≤a ∨ (b≤x ∧ x≤c) := by
  by_cases hxa : x≤a
  · exact Or.inl hxa
  right
  have hax : a<x := lt_of_not_ge hxa
  constructor
  · by_contra hn
    have hxb : x<b := lt_of_not_ge hn
    have hxc : x<c := lt_of_lt_of_le hxb hbc
    have hp : 0<(x-a)*((x-b)*(x-c)) :=
      mul_pos (sub_pos.mpr hax)
        (mul_pos_of_neg_of_neg (sub_neg.mpr hxb) (sub_neg.mpr hxc))
    rw [← mul_assoc] at hp
    exact (not_lt_of_ge hs) hp
  · by_contra hn
    have hcx : c<x := lt_of_not_ge hn
    have hbx : b<x := lt_of_le_of_lt hbc hcx
    have hp : 0<(x-a)*(x-b)*(x-c) :=
      mul_pos (mul_pos (sub_pos.mpr hax) (sub_pos.mpr hbx)) (sub_pos.mpr hcx)
    exact (not_lt_of_ge hs) hp

theorem physical_product_nonpositive (X Y Z k K : ℝ)
    (hp : X+Y+Z=p k) (hw : X*Y+X*Z+Y*Z=w k+K) (hk : X*Y*Z=K) :
    (K-root0 k)*(K-rootPlus k)*(K-rootMinus k)≤0 := by
  have hd := physical_discriminant_nonnegative X Y Z (p k) (w k) K hp hw hk
  rw [discriminant_factorization] at hd
  nlinarith

/-- All three closed parameter ranges retain the two possible K intervals.
The hypotheses are actual real-root sums, product and trace lower bound. -/
theorem physical_intervals (X Y Z k K : ℝ) (hkp : 0<k)
    (hp : X+Y+Z=p k) (hw : X*Y+X*Z+Y*Z=w k+K) (hk : X*Y*Z=K)
    (hb : (8*k/(h k)^2)^2≤4*K) :
    (k≤1/3 ∧ ((minimum k≤K ∧ K≤rootMinus k) ∨
      (rootPlus k≤K ∧ K≤root0 k))) ∨
    (1/3≤k ∧ k≤1 ∧ ((minimum k≤K ∧ K≤rootMinus k) ∨
      (root0 k≤K ∧ K≤rootPlus k))) ∨
    (1≤k ∧ ((minimum k≤K ∧ K≤root0 k) ∨
      (rootMinus k≤K ∧ K≤rootPlus k))) := by
  have hmin := minimum_le_of_trace_bound k K hb
  have hs := physical_product_nonpositive X Y Z k K hp hw hk
  by_cases hlo : k≤1/3
  · left
    refine ⟨hlo,?_⟩
    obtain ⟨hab,hbc⟩ := root_order_lower hkp hlo
    have hp' : (K-rootMinus k)*(K-rootPlus k)*(K-root0 k)≤0 := by nlinarith [hs]
    rcases ordered_cubic_nonpositive hab hbc hp' with ha | hbc
    · exact Or.inl ⟨hmin,ha⟩
    · exact Or.inr hbc
  have hmid : 1/3≤k := le_of_lt (lt_of_not_ge hlo)
  by_cases hhi : k≤1
  · right; left
    refine ⟨hmid,hhi,?_⟩
    obtain ⟨hab,hbc⟩ := root_order_middle hmid hhi
    have hp' : (K-rootMinus k)*(K-root0 k)*(K-rootPlus k)≤0 := by nlinarith [hs]
    rcases ordered_cubic_nonpositive hab hbc hp' with ha | hbc
    · exact Or.inl ⟨hmin,ha⟩
    · exact Or.inr hbc
  · right; right
    have hu : 1≤k := le_of_lt (lt_of_not_ge hhi)
    refine ⟨hu,?_⟩
    obtain ⟨hab,hbc⟩ := root_order_upper hu
    have hp' : (K-root0 k)*(K-rootMinus k)*(K-rootPlus k)≤0 := by nlinarith [hs]
    rcases ordered_cubic_nonpositive hab hbc hp' with ha | hbc
    · exact Or.inl ⟨hmin,ha⟩
    · exact Or.inr hbc

end
#print axioms roots_above_minimum
#print axioms minus_lt_plus
#print axioms root_order_lower
#print axioms root_order_middle
#print axioms root_order_upper
#print axioms ordered_cubic_nonpositive
#print axioms physical_product_nonpositive
#print axioms physical_intervals
end CriticalModulusDomain20261003
