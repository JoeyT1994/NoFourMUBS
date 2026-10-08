import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-! The integer scalar tests' error margins, with actual complex sums.
The coordinate approximation and floor hypotheses remain explicit; this file
does not assert soundness of a supplied trigonometric table. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007
open scoped BigOperators

theorem coordinate_error_norm_lt (z : ℂ)
    (hr : |z.re|<1) (hi : |z.im|<1) : ‖z‖<(3:ℝ)/2 := by
  have hrr : z.re^2<1 := by
    have h := abs_lt.mp hr
    nlinarith [sq_nonneg (z.re-1),sq_nonneg (z.re+1)]
  have hii : z.im^2<1 := by
    have h := abs_lt.mp hi
    nlinarith [sq_nonneg (z.im-1),sq_nonneg (z.im+1)]
  have hn := Complex.sq_norm z
  rw [Complex.normSq_apply] at hn
  nlinarith [norm_nonneg z]

theorem five_coordinate_errors_lt (z : Fin 5 → ℂ)
    (hr : ∀i, |(z i).re|<1) (hi : ∀i, |(z i).im|<1) :
    ‖∑i,z i‖<(15:ℝ)/2 := by
  have hn := norm_sum_le (s := Finset.univ) z
  have hs : (∑i, ‖z i‖)<∑_i : Fin 5,(3:ℝ)/2 := by
    apply Finset.sum_lt_sum_of_nonempty
    · simp
    · intro i _
      exact coordinate_error_norm_lt (z i) (hr i) (hi i)
  norm_num at hs
  exact hn.trans_lt hs

theorem midpoint_sum_rounding_lt (Q : ℝ) (w t : Fin 5 → ℂ)
    (hr : ∀i, |(t i-(Q:ℂ)*w i).re|<1)
    (hi : ∀i, |(t i-(Q:ℂ)*w i).im|<1) :
    ‖((Q:ℂ)+∑i,t i)-(Q:ℂ)*(1+∑i,w i)‖<(15:ℝ)/2 := by
  have he : ((Q:ℂ)+∑i,t i)-(Q:ℂ)*(1+∑i,w i)=
      ∑i,(t i-(Q:ℂ)*w i) := by
    rw [Finset.sum_sub_distrib,←Finset.mul_sum]
    ring
  rw [he]
  exact five_coordinate_errors_lt _ hr hi

theorem midpoint_floor_error_lt (S s : ℂ) (q r : ℝ)
    (hq : 0≤q) (happrox : ‖s-(q:ℂ)*S‖<(15:ℝ)/2)
    (hfloor : |r-‖s‖|<1) : |r-q*‖S‖|<(17:ℝ)/2 := by
  have hn := abs_norm_sub_norm_le s ((q:ℂ)*S)
  rw [norm_mul,Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg hq] at hn
  calc
    _ = |(r-‖s‖)+(‖s‖-q*‖S‖)| := by congr 1; ring
    _ ≤ |r-‖s‖|+|‖s‖-q*‖S‖| := abs_add_le _ _
    _ < (17:ℝ)/2 := by linarith

theorem rounded_target_distance_error_lt (S s : ℂ) (q r target rho : ℝ)
    (hq : 0≤q) (happrox : ‖s-(q:ℂ)*S‖<(15:ℝ)/2)
    (hfloor : |r-‖s‖|<1) (htarget : |target-q*rho|<1) :
    ||r-target|-q*|‖S‖-rho||<10 := by
  have hmid := midpoint_floor_error_lt S s q r hq happrox hfloor
  have hdist := abs_abs_sub_abs_le_abs_sub (r-target) (q*(‖S‖-rho))
  rw [abs_mul,abs_of_nonneg hq] at hdist
  have he : (r-target)-q*(‖S‖-rho)=(r-q*‖S‖)-(target-q*rho) := by ring
  rw [he] at hdist
  have ht := abs_sub_le (r-q*‖S‖) (target-q*rho)
  exact hdist.trans_lt (by linarith)

theorem difference_rounding_lt (E e S s : ℂ) (q : ℝ)
    (hE : ‖e-(q:ℂ)*E‖<(15:ℝ)/2)
    (hS : ‖s-(q:ℂ)*S‖<(15:ℝ)/2) :
    ‖(e-s)-(q:ℂ)*(E-S)‖<15 := by
  have he : (e-s)-(q:ℂ)*(E-S)=(e-(q:ℂ)*E)-(s-(q:ℂ)*S) := by ring
  rw [he]
  exact (norm_sub_le _ _).trans_lt (by linarith)

theorem endpoint_floor_error_lt (E e : ℂ) (q r : ℝ)
    (hq : 0≤q) (happrox : ‖e-(q:ℂ)*E‖<15)
    (hfloor : |r-‖e‖|<1) : |r-q*‖E‖|<16 := by
  have hn := abs_norm_sub_norm_le e ((q:ℂ)*E)
  rw [norm_mul,Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg hq] at hn
  calc
    _ = |(r-‖e‖)+(‖e‖-q*‖E‖)| := by congr 1; ring
    _ ≤ |r-‖e‖|+|‖e‖-q*‖E‖| := abs_add_le _ _
    _ < 16 := by linarith

end Seed0024ClusterTube20261007
#print axioms Seed0024ClusterTube20261007.coordinate_error_norm_lt
#print axioms Seed0024ClusterTube20261007.five_coordinate_errors_lt
#print axioms Seed0024ClusterTube20261007.midpoint_sum_rounding_lt
#print axioms Seed0024ClusterTube20261007.midpoint_floor_error_lt
#print axioms Seed0024ClusterTube20261007.rounded_target_distance_error_lt
#print axioms Seed0024ClusterTube20261007.difference_rounding_lt
#print axioms Seed0024ClusterTube20261007.endpoint_floor_error_lt
