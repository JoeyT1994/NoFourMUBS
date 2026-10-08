import SquareRootCoefficients
import CenteredReciprocalRadial
import Mathlib.Analysis.Analytic.Binomial
import Mathlib.Analysis.Normed.Group.InfiniteSum
import Mathlib.Analysis.SpecificLimits.Basic

/-! The literal supplier square-root tail, obtained from the binomial series
and decreasing absolute coefficients. The library binomial import must be
restored at its pinned revision before this source can be kernel checked. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.RadialSquareRoot20261008
open scoped BigOperators
open RadialReciprocal20261008
noncomputable section

theorem half_choose_succ (k : ℕ) :
    Ring.choose (1/2 : ℝ) (k+1) =
      Ring.choose (1/2 : ℝ) k*((1/2 : ℝ)-k)/(k+1) := by
  have h := Ring.choose_smul_choose (1/2 : ℝ) (n:=k+1) (k:=k) (Nat.le_succ k)
  have he : ((k : ℝ)+1)*Ring.choose (1/2 : ℝ) (k+1) =
      Ring.choose (1/2 : ℝ) k*((1/2 : ℝ)-k) := by
    simpa [Nat.choose_succ_self_right,nsmul_eq_mul] using h
  apply (eq_div_iff (by positivity : (k : ℝ)+1≠0)).2
  simpa only [mul_comm] using he

theorem sqrtCoefficient_eq_choose (k : ℕ) :
    sqrtCoefficient k=Ring.choose (1/2 : ℝ) k := by
  induction k with
  | zero => simp [sqrtCoefficient,Ring.choose_zero_right]
  | succ k ih => rw [sqrtCoefficient,half_choose_succ,ih]

/-- Identification with the positive real square root, not an assumed series value. -/
theorem hasSum_sqrtCoefficient {x : ℝ} (hx : |x|<1) :
    HasSum (fun k : ℕ => sqrtCoefficient k*x^k) (Real.sqrt (1+x)) := by
  have hxball : x∈Metric.eball (0 : ℝ) 1 := by
    rw [show (1 : ENNReal)=ENNReal.ofReal (1 : ℝ) by simp,Metric.eball_ofReal]
    simpa [Metric.mem_ball,Real.dist_eq] using hx
  have hs := (Real.one_add_rpow_hasFPowerSeriesOnBall_zero (a:=(1/2 : ℝ))).hasSum hxball
  simpa only [zero_add,binomialSeries,FormalMultilinearSeries.ofScalars_apply_eq,
    smul_eq_mul,← Real.sqrt_eq_rpow,← sqrtCoefficient_eq_choose] using hs

/-- The first omitted coefficient bounds every later coefficient. This proves
exactly the supplier denominator 1-|x|, without a Lagrange-tail replacement. -/
theorem sqrt_remainder_bound (m : ℕ) {x : ℝ} (hx : |x|<1) :
    |Real.sqrt (1+x)-sqrtPartial m x|≤
      |sqrtCoefficient (m+1)| *|x|^(m+1)/(1-|x|) := by
  have ht : HasSum (fun k : ℕ => sqrtCoefficient (k+(m+1))*x^(k+(m+1)))
      (Real.sqrt (1+x)-sqrtPartial m x) := by
    simpa only [sqrtPartial] using (hasSum_nat_add_iff' (m+1)).2 (hasSum_sqrtCoefficient hx)
  have hg := (hasSum_geometric_of_lt_one (abs_nonneg x) hx).mul_left
    (|sqrtCoefficient (m+1)| *|x|^(m+1))
  have hb := ht.norm_le_of_bounded hg (fun k => by
    rw [Real.norm_eq_abs,abs_mul,abs_pow,pow_add]
    calc
      _ ≤ |sqrtCoefficient (m+1)| *(|x|^k*|x|^(m+1)) :=
        mul_le_mul_of_nonneg_right (sqrtCoefficient_abs_tail_le m k)
          (mul_nonneg (pow_nonneg (abs_nonneg x) _) (pow_nonneg (abs_nonneg x) _))
      _ = _ := by ring)
  simpa only [Real.norm_eq_abs,div_eq_mul_inv] using hb

theorem sqrt_radial_remainder (m : ℕ) {x alpha h : ℝ}
    (ha : 0≤alpha) (ha1 : alpha<1) (hh : 0≤h) (hh1 : h≤1)
    (hx : |x|≤alpha*h) :
    |Real.sqrt (1+x)-sqrtPartial m x|≤
      (|sqrtCoefficient (m+1)| *alpha^(m+1)/(1-alpha))*h^(m+1) := by
  have hxalpha : |x|≤alpha := le_trans hx (by nlinarith)
  have hxp : |x|<1 := lt_of_le_of_lt hxalpha ha1
  calc
    _ ≤ |sqrtCoefficient (m+1)| *|x|^(m+1)/(1-|x|) := sqrt_remainder_bound m hxp
    _ ≤ |sqrtCoefficient (m+1)| *(alpha*h)^(m+1)/(1-alpha) :=
      div_le_div₀ (mul_nonneg (abs_nonneg _) (pow_nonneg (abs_nonneg x) _))
        (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (abs_nonneg x) hx _) (abs_nonneg _))
        (sub_pos.mpr ha1) (by linarith)
    _ = _ := by rw [mul_pow]; ring

theorem centered_sqrt_radial_remainder {E : Type*} [Zero E]
    (m : ℕ) (f : E→ℝ) (xi : E) (hc : 0<f 0)
    {alpha h : ℝ} (ha : 0≤alpha) (ha1 : alpha<1) (hh : 0≤h) (hh1 : h≤1)
    (hx : |centeredRatio f xi|≤alpha*h) :
    0<f xi ∧ |Real.sqrt (f xi)-Real.sqrt (f 0)*sqrtPartial m (centeredRatio f xi)|≤
      (Real.sqrt (f 0)*|sqrtCoefficient (m+1)| *alpha^(m+1)/(1-alpha))*h^(m+1) := by
  have hid := centeredRatio_reconstruct f xi (ne_of_gt hc)
  have hp := (radial_denominator_guard ha ha1 hh1 hx).2
  have hf : 0<f xi := by rw [← hid]; exact mul_pos hc hp
  refine ⟨hf,?_⟩
  have he : Real.sqrt (f xi)-Real.sqrt (f 0)*sqrtPartial m (centeredRatio f xi) =
      Real.sqrt (f 0)*(Real.sqrt (1+centeredRatio f xi)-sqrtPartial m (centeredRatio f xi)) := by
    rw [← hid,Real.sqrt_mul hc.le]
    ring
  rw [he,abs_mul,abs_of_nonneg (Real.sqrt_nonneg _)]
  calc
    _ ≤ Real.sqrt (f 0)*((|sqrtCoefficient (m+1)| *alpha^(m+1)/(1-alpha))*h^(m+1)) :=
      mul_le_mul_of_nonneg_left (sqrt_radial_remainder m ha ha1 hh hh1 hx) (Real.sqrt_nonneg _)
    _ = _ := by ring

end
end Centiradian20261006.RadialSquareRoot20261008
#print axioms Centiradian20261006.RadialSquareRoot20261008.half_choose_succ
#print axioms Centiradian20261006.RadialSquareRoot20261008.sqrtCoefficient_eq_choose
#print axioms Centiradian20261006.RadialSquareRoot20261008.hasSum_sqrtCoefficient
#print axioms Centiradian20261006.RadialSquareRoot20261008.sqrt_remainder_bound
#print axioms Centiradian20261006.RadialSquareRoot20261008.sqrt_radial_remainder
#print axioms Centiradian20261006.RadialSquareRoot20261008.centered_sqrt_radial_remainder
