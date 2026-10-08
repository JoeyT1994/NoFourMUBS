import SeedChartBridge

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartExtension20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006
noncomputable section

theorem reference_height_square : pairHeight (-1)^2=(3/4:ℝ) := by
  have h := pairHeight_square (-1) (by norm_num) (by norm_num)
  norm_num at h
  exact h

theorem reference_height_lower : (3/4:ℝ) < pairHeight (-1) := by
  have hn : 0 ≤ pairHeight (-1) := Real.sqrt_nonneg _
  nlinarith [reference_height_square]

/-- Algebraic height variation bound. It uses the difference of squares and
positive square-root guards; no derivative bound is assumed. -/
theorem anchored_height_difference (S v : ℂ) (hv : Complex.normSq v=1)
    (r : ℝ) (hS : ‖S‖ ≤ 2*r) (hr : r ≤ radiusEnvelope) :
    |pairHeight (anchoredSum S v)-pairHeight (-1)| ≤
      2*|‖anchoredSum S v‖-1| := by
  let a := anchoredSum S v
  let n := ‖a‖
  let k := pairHeight a
  let q := pairHeight (-1)
  obtain ⟨hlo,hn,hb⟩ := anchoredSum_guards S v hv r hS hr
  have hnlo : (89/100:ℝ) < n := hlo
  have hnpos : 0 < n := by linarith
  have hnup : n ≤ (5501/5000:ℝ) := by
    have hh := (anchoredSum_norm_bounds S v hv r hS).2
    dsimp [radiusEnvelope] at hr
    change n ≤ 1+2*r at hh
    linarith
  have hk : (3/4:ℝ) < k := anchoredSum_height_lower S v hv r hS hr
  have hqlo : (3/4:ℝ) < q := reference_height_lower
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
  have hp : (89/100:ℝ)^2 ≤ n^2 :=
    pow_le_pow_left₀ (by norm_num) hnlo.le 2
  have hd : (3/2:ℝ)*(89/100)^2 ≤ (k+q)*n^2 := by
    calc
      _ ≤ (3/2:ℝ)*n^2 := mul_le_mul_of_nonneg_left hp (by norm_num)
      _ ≤ _ := mul_le_mul_of_nonneg_right (by linarith : (3/2:ℝ) ≤ k+q) (sq_nonneg n)
  have hdpos : 0 < (k+q)*n^2 := by nlinarith [hd]
  have hcoef : n+1 ≤ 2*((k+q)*n^2) := by nlinarith [hd]
  have hm := mul_le_mul_of_nonneg_left hcoef (abs_nonneg (n-1))
  change |k-q| ≤ 2*|n-1|
  apply (mul_le_mul_iff_of_pos_right hdpos).mp
  nlinarith [habs,hm]

theorem factor_norm_le_two (a factor : ℂ) (hn : (1/2:ℝ) ≤ ‖a‖)
    (hu : Complex.normSq (a*factor)=1) : ‖factor‖ ≤ 2 := by
  have hprod : ‖a‖*‖factor‖=1 := by
    have hnorm : ‖a*factor‖=1 := by
      rw [Complex.normSq_eq_norm_sq] at hu
      nlinarith [norm_nonneg (a*factor)]
    simpa only [norm_mul] using hnorm
  have hm := mul_le_mul_of_nonneg_right hn (norm_nonneg factor)
  nlinarith

/-- The source's conservative 8r side-entry error follows by exact algebra
uniformly through radiusEnvelope, including radii .03 and .05. -/
theorem anchored_pair_distance (S v : ℂ) (hv : Complex.normSq v=1)
    (r : ℝ) (hS : ‖S‖ ≤ 2*r) (hr : r ≤ radiusEnvelope) :
    ‖pairPlus (anchoredSum S v)-pairPlus (-1)‖ ≤ 8*r ∧
      ‖pairMinus (anchoredSum S v)-pairMinus (-1)‖ ≤ 8*r := by
  let a := anchoredSum S v
  let k := pairHeight a
  let q := pairHeight (-1)
  obtain ⟨hlo,hn,hb⟩ := anchoredSum_guards S v hv r hS hr
  have hnlo : (1/2:ℝ) ≤ ‖a‖ := by change (89/100:ℝ) < ‖a‖ at hlo; linarith
  have hnormv : ‖v‖=1 := by
    rw [Complex.normSq_eq_norm_sq] at hv
    nlinarith [norm_nonneg v]
  have ha : ‖a+1‖ ≤ 2*r := by
    simpa [a,anchoredSum,norm_mul,Complex.norm_conj,hnormv] using hS
  have hnerr : |‖a‖-1| ≤ ‖a+1‖ := by
    simpa using abs_norm_sub_norm_le a (-1:ℂ)
  have hd : |k-q| ≤ 4*r := by
    have hh := anchored_height_difference S v hv r hS hr
    change |k-q| ≤ 2*|‖a‖-1| at hh
    linarith
  have hp : ‖(1/2:ℂ)+Complex.I*(k:ℂ)‖ ≤ 2 :=
    factor_norm_le_two a _ hnlo (pairPlus_unit a hn (by linarith))
  have hm : ‖(1/2:ℂ)-Complex.I*(k:ℂ)‖ ≤ 2 :=
    factor_norm_le_two a _ hnlo (pairMinus_unit a hn (by linarith))
  have hterm : ‖Complex.I*((k-q:ℝ):ℂ)‖=|k-q| := by
    simp only [norm_mul,Complex.norm_I,one_mul,Complex.norm_real,Real.norm_eq_abs]
  constructor
  · have heq : pairPlus a-pairPlus (-1)=
        (a+1)*((1/2:ℂ)+Complex.I*(k:ℂ))-Complex.I*((k-q:ℝ):ℂ) := by
      simp only [pairPlus,k,q,Complex.ofReal_sub]
      ring
    change ‖pairPlus a-pairPlus (-1)‖ ≤ 8*r
    rw [heq]
    calc
      _ ≤ ‖(a+1)*((1/2:ℂ)+Complex.I*(k:ℂ))‖+‖Complex.I*((k-q:ℝ):ℂ)‖ := norm_sub_le _ _
      _ ≤ 8*r := by
        rw [norm_mul,hterm]
        have hh := mul_le_mul_of_nonneg_left hp (norm_nonneg (a+1))
        linarith
  · have heq : pairMinus a-pairMinus (-1)=
        (a+1)*((1/2:ℂ)-Complex.I*(k:ℂ))+Complex.I*((k-q:ℝ):ℂ) := by
      simp only [pairMinus,k,q,Complex.ofReal_sub]
      ring
    change ‖pairMinus a-pairMinus (-1)‖ ≤ 8*r
    rw [heq]
    calc
      _ ≤ ‖(a+1)*((1/2:ℂ)-Complex.I*(k:ℂ))‖+‖Complex.I*((k-q:ℝ):ℂ)‖ := norm_add_le _ _
      _ ≤ 8*r := by
        rw [norm_mul,hterm]
        have hh := mul_le_mul_of_nonneg_left hm (norm_nonneg (a+1))
        linarith

end
end Centiradian20261006.ChartExtension20261006

#print axioms Centiradian20261006.ChartExtension20261006.reference_height_square
#print axioms Centiradian20261006.ChartExtension20261006.reference_height_lower
#print axioms Centiradian20261006.ChartExtension20261006.anchored_height_difference
#print axioms Centiradian20261006.ChartExtension20261006.factor_norm_le_two
#print axioms Centiradian20261006.ChartExtension20261006.anchored_pair_distance
