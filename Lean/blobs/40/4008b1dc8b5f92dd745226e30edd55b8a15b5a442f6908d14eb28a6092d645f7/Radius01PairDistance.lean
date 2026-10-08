import Radius01SideGuards

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

/-- A correlated bound retains n inside the coefficient. Splitting at 17/20
and 1 avoids combining unrelated worst cases for n and its square root. -/
theorem height_coefficient_bound (n k q : ℝ) (hn : (79/100:ℝ) < n)
    (hk : (33/50:ℝ) < k) (hq : (43/50:ℝ) < q)
    (hsq : k^2=1/n^2-1/4) :
    n+1 ≤ (3/2)*((k+q)*n^2) := by
  have hnpos : 0 < n := by linarith
  have hnsq : 0 < n^2 := sq_pos_of_pos hnpos
  by_cases hlow : n ≤ 17/20
  · have hp : n^2 ≤ (17/20:ℝ)^2 := pow_le_pow_left₀ hnpos.le hlow 2
    have hi : (53/50:ℝ)^2+1/4 < 1/n^2 := by
      apply (lt_div_iff₀ hnsq).2
      nlinarith
    have hks : (53/50:ℝ) < k := by nlinarith
    have hd := mul_le_mul_of_nonneg_right
      (by linarith : (48/25:ℝ) ≤ k+q) (sq_nonneg n)
    have hm := mul_le_mul_of_nonneg_right hn.le hnpos.le
    nlinarith
  · have hnmid : (17/20:ℝ) < n := lt_of_not_ge hlow
    by_cases hmid : n ≤ 1
    · have hp : n^2 ≤ (1:ℝ)^2 := pow_le_pow_left₀ hnpos.le hmid 2
      have hi : (1:ℝ) ≤ 1/n^2 := by
        apply (le_div_iff₀ hnsq).2
        nlinarith
      have hks : (43/50:ℝ) < k := by nlinarith
      have hd := mul_le_mul_of_nonneg_right
        (by linarith : (43/25:ℝ) ≤ k+q) (sq_nonneg n)
      have hm := mul_le_mul_of_nonneg_right hnmid.le hnpos.le
      nlinarith
    · have hnhigh : (1:ℝ) < n := lt_of_not_ge hmid
      have hd := mul_le_mul_of_nonneg_right
        (by linarith : (38/25:ℝ) ≤ k+q) (sq_nonneg n)
      have hm := mul_le_mul_of_nonneg_right hnhigh.le hnpos.le
      nlinarith

theorem anchored_height_difference01 (S v : ℂ) (hv : Complex.normSq v=1)
    (r : ℝ) (hS : ‖S‖ ≤ 2*r) (hr : r ≤ radiusEnvelope01) :
    |pairHeight (anchoredSum S v)-pairHeight (-1)| ≤
      (3/2)*|‖anchoredSum S v‖-1| := by
  let a := anchoredSum S v
  let n := ‖a‖
  let k := pairHeight a
  let q := pairHeight (-1)
  obtain ⟨hlo,hn,hb⟩ := anchoredSum_guards01 S v hv r hS hr
  have hnlo : (79/100:ℝ) < n := hlo
  have hnpos : 0 < n := by linarith
  have hk : (33/50:ℝ) < k := anchoredSum_height_lower01 S v hv r hS hr
  have hqlo : (43/50:ℝ) < q := reference_height_lower01
  have hsq : k^2=1/n^2-1/4 := by
    simpa [a,n,k,Complex.normSq_eq_norm_sq] using
      pairHeight_square (anchoredSum S v) hn (by linarith)
  have hq : q^2=(3/4:ℝ) := reference_height_square
  have hrel : (k-q)*(k+q)*n^2=1-n^2 := by
    calc
      _ = (k^2-q^2)*n^2 := by ring
      _ = _ := by rw [hsq,hq]; field_simp; ring
  have hkq : 0 ≤ k+q := by linarith
  have hn1 : 0 ≤ n+1 := by linarith
  have hf : 1-n^2=-(n-1)*(n+1) := by ring
  have habs := congrArg abs hrel
  rw [hf] at habs
  simp only [abs_mul,abs_neg,abs_of_nonneg hkq,abs_of_nonneg (sq_nonneg n),
    abs_of_nonneg hn1] at habs
  have hdpos : 0 < (k+q)*n^2 := mul_pos (by linarith) (sq_pos_of_pos hnpos)
  have hcoef := height_coefficient_bound n k q hnlo hk hqlo hsq
  have hm := mul_le_mul_of_nonneg_left hcoef (abs_nonneg (n-1))
  change |k-q| ≤ (3/2)*|n-1|
  apply (mul_le_mul_iff_of_pos_right hdpos).mp
  nlinarith [habs,hm]

theorem factor_norm_le_four_thirds (a factor : ℂ) (hn : (3/4:ℝ) ≤ ‖a‖)
    (hu : Complex.normSq (a*factor)=1) : ‖factor‖ ≤ 4/3 := by
  have hprod : ‖a‖*‖factor‖=1 := by
    have hnorm : ‖a*factor‖=1 := by
      rw [Complex.normSq_eq_norm_sq] at hu
      nlinarith [norm_nonneg (a*factor)]
    simpa only [norm_mul] using hnorm
  have hm := mul_le_mul_of_nonneg_right hn (norm_nonneg factor)
  nlinarith

/-- Uniform exact-complex side-entry error below 6r through the .1 envelope.
This sharpens the earlier 8r bound and assumes no derivative estimate. -/
theorem anchored_pair_distance01 (S v : ℂ) (hv : Complex.normSq v=1)
    (r : ℝ) (hS : ‖S‖ ≤ 2*r) (hr : r ≤ radiusEnvelope01) :
    ‖pairPlus (anchoredSum S v)-pairPlus (-1)‖ ≤ (17/3)*r ∧
      ‖pairMinus (anchoredSum S v)-pairMinus (-1)‖ ≤ (17/3)*r := by
  let a := anchoredSum S v
  let k := pairHeight a
  let q := pairHeight (-1)
  obtain ⟨hlo,hn,hb⟩ := anchoredSum_guards01 S v hv r hS hr
  have hnlo : (3/4:ℝ) ≤ ‖a‖ := by change (79/100:ℝ) < ‖a‖ at hlo; linarith
  have hnormv : ‖v‖=1 := by
    rw [Complex.normSq_eq_norm_sq] at hv
    nlinarith [norm_nonneg v]
  have ha : ‖a+1‖ ≤ 2*r := by
    simpa [a,anchoredSum,norm_mul,Complex.norm_conj,hnormv] using hS
  have hnerr : |‖a‖-1| ≤ ‖a+1‖ := by
    simpa using abs_norm_sub_norm_le a (-1:ℂ)
  have hd : |k-q| ≤ 3*r := by
    have hh := anchored_height_difference01 S v hv r hS hr
    change |k-q| ≤ (3/2)*|‖a‖-1| at hh
    linarith
  have hp : ‖(1/2:ℂ)+Complex.I*(k:ℂ)‖ ≤ 4/3 :=
    factor_norm_le_four_thirds a _ hnlo (pairPlus_unit a hn (by linarith))
  have hm : ‖(1/2:ℂ)-Complex.I*(k:ℂ)‖ ≤ 4/3 :=
    factor_norm_le_four_thirds a _ hnlo (pairMinus_unit a hn (by linarith))
  have hterm : ‖Complex.I*((k-q:ℝ):ℂ)‖=|k-q| := by
    simp only [norm_mul,Complex.norm_I,one_mul,Complex.norm_real,Real.norm_eq_abs]
  constructor
  · have heq : pairPlus a-pairPlus (-1)=
        (a+1)*((1/2:ℂ)+Complex.I*(k:ℂ))-Complex.I*((k-q:ℝ):ℂ) := by
      simp only [pairPlus,k,q,Complex.ofReal_sub]
      ring
    change ‖pairPlus a-pairPlus (-1)‖ ≤ (17/3)*r
    rw [heq]
    calc
      _ ≤ ‖(a+1)*((1/2:ℂ)+Complex.I*(k:ℂ))‖+‖Complex.I*((k-q:ℝ):ℂ)‖ := norm_sub_le _ _
      _ ≤ (17/3)*r := by
        rw [norm_mul,hterm]
        have hh := mul_le_mul_of_nonneg_left hp (norm_nonneg (a+1))
        linarith
  · have heq : pairMinus a-pairMinus (-1)=
        (a+1)*((1/2:ℂ)-Complex.I*(k:ℂ))+Complex.I*((k-q:ℝ):ℂ) := by
      simp only [pairMinus,k,q,Complex.ofReal_sub]
      ring
    change ‖pairMinus a-pairMinus (-1)‖ ≤ (17/3)*r
    rw [heq]
    calc
      _ ≤ ‖(a+1)*((1/2:ℂ)-Complex.I*(k:ℂ))‖+‖Complex.I*((k-q:ℝ):ℂ)‖ := norm_add_le _ _
      _ ≤ (17/3)*r := by
        rw [norm_mul,hterm]
        have hh := mul_le_mul_of_nonneg_left hm (norm_nonneg (a+1))
        linarith

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.height_coefficient_bound
#print axioms Centiradian20261006.ChartRadius0120261006.anchored_height_difference01
#print axioms Centiradian20261006.ChartRadius0120261006.factor_norm_le_four_thirds
#print axioms Centiradian20261006.ChartRadius0120261006.anchored_pair_distance01
