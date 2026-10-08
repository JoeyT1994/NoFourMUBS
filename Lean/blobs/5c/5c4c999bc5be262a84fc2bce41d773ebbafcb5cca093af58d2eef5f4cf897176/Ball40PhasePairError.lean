import Ball40GramPerturbation
import SharpPhaseTaylor

/-! Source-only analytic translation. The error bound is derived from the
checked imaginary-axis Taylor theorem, not postulated as a Gram hypothesis. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.Ball40Translation20261007
open scoped ComplexConjugate
open SharpTaylor20261006
noncomputable section

def phasePair (z : ℂ) (x y : ℝ) : ℂ :=
  -1-z*Complex.exp (Complex.I*(x:ℂ))-conj z*Complex.exp (Complex.I*(y:ℂ))

def phasePairLinear (z : ℂ) (x y : ℝ) : ℂ :=
  -z*Complex.I*(x:ℂ)-conj z*Complex.I*(y:ℂ)

theorem unit_norm_of_normSq {z : ℂ} (hz : Complex.normSq z=1) : ‖z‖=1 := by
  rw [Complex.normSq_eq_norm_sq] at hz
  nlinarith [norm_nonneg z]

theorem root_sum_zero {z : ℂ} (hz : z.re=-(1:ℝ)/2) : 1+z+conj z=0 := by
  apply Complex.ext <;> simp [hz] <;> ring

theorem root_im_square {z : ℂ} (hu : Complex.normSq z=1)
    (hr : z.re=-(1:ℝ)/2) : z.im^2=3/4 := by
  rw [Complex.normSq_apply, hr] at hu
  nlinarith

/-- This holds for either member of the conjugate pair, retaining its sign. -/
theorem phasePairLinear_normSq {z : ℂ} (hu : Complex.normSq z=1)
    (hr : z.re=-(1:ℝ)/2) (x y : ℝ) :
    Complex.normSq (phasePairLinear z x y)=homogeneousNorm x y := by
  have him := root_im_square hu hr
  simp only [phasePairLinear, Complex.normSq_apply, Complex.sub_re,
    Complex.sub_im, Complex.mul_re, Complex.mul_im, Complex.neg_re,
    Complex.neg_im, Complex.I_re, Complex.I_im, Complex.ofReal_re,
    Complex.ofReal_im, Complex.conj_re, Complex.conj_im, hr]
  ring_nf
  simp only [him]
  unfold homogeneousNorm
  ring

theorem phasePairLinear_bound {z : ℂ} (hu : Complex.normSq z=1)
    (hr : z.re=-(1:ℝ)/2) {x y ρ : ℝ} (hρ : 0 ≤ ρ)
    (hx : |x| ≤ ρ) (hy : |y| ≤ ρ) :
    ‖phasePairLinear z x y‖ ≤ (7/4:ℝ)*ρ := by
  have hq := homogeneousNorm_bound hρ hx hy
  rw [← phasePairLinear_normSq hu hr x y, Complex.normSq_eq_norm_sq] at hq
  nlinarith [norm_nonneg (phasePairLinear z x y)]

theorem phase_first_order_remainder (x : ℝ) :
    ‖Complex.exp (Complex.I*(x:ℂ))-(1+Complex.I*(x:ℂ))‖ ≤ |x|^2/2 := by
  simpa [phaseRemainder, phasePartial, Finset.sum_range_succ] using
    phaseRemainder_bound 2 x

theorem phasePair_error_identity {z : ℂ} (hr : z.re=-(1:ℝ)/2) (x y : ℝ) :
    phasePair z x y-phasePairLinear z x y =
      -z*(Complex.exp (Complex.I*(x:ℂ))-(1+Complex.I*(x:ℂ)))-
      conj z*(Complex.exp (Complex.I*(y:ℂ))-(1+Complex.I*(y:ℂ))) := by
  have hc : -1-z-conj z=0 := by
    calc
      _ = -(1+z+conj z) := by ring
      _ = 0 := by rw [root_sum_zero hr]; simp
  calc
    _ = (-1-z-conj z)-
      z*(Complex.exp (Complex.I*(x:ℂ))-(1+Complex.I*(x:ℂ)))-
      conj z*(Complex.exp (Complex.I*(y:ℂ))-(1+Complex.I*(y:ℂ))) := by
        unfold phasePair phasePairLinear
        ring
    _ = _ := by rw [hc]; ring

theorem phasePair_error_bound {z : ℂ} (hu : Complex.normSq z=1)
    (hr : z.re=-(1:ℝ)/2) {x y ρ : ℝ} (hρ : 0 ≤ ρ)
    (hx : |x| ≤ ρ) (hy : |y| ≤ ρ) :
    ‖phasePair z x y-phasePairLinear z x y‖ ≤ ρ^2 := by
  have hnx : |x|^2 ≤ ρ^2 := by
    simpa only [pow_two] using mul_self_le_mul_self (abs_nonneg x) hx
  have hny : |y|^2 ≤ ρ^2 := by
    simpa only [pow_two] using mul_self_le_mul_self (abs_nonneg y) hy
  have heX := phase_first_order_remainder x
  have heY := phase_first_order_remainder y
  rw [phasePair_error_identity hr]
  calc
    _ ≤ ‖-z*(Complex.exp (Complex.I*(x:ℂ))-(1+Complex.I*(x:ℂ)))‖+
        ‖conj z*(Complex.exp (Complex.I*(y:ℂ))-(1+Complex.I*(y:ℂ)))‖ :=
      norm_sub_le _ _
    _ = ‖Complex.exp (Complex.I*(x:ℂ))-(1+Complex.I*(x:ℂ))‖+
        ‖Complex.exp (Complex.I*(y:ℂ))-(1+Complex.I*(y:ℂ))‖ := by
      simp only [norm_mul, norm_neg, Complex.norm_conj, unit_norm_of_normSq hu, one_mul]
    _ ≤ ρ^2 := by linarith

theorem normSq_difference_bound (v L : ℂ) :
    |Complex.normSq v-Complex.normSq L| ≤
      ‖v-L‖^2+2*(‖L‖*‖v-L‖) := by
  have heq : Complex.normSq v-Complex.normSq L =
      Complex.normSq (v-L)+2*(L*conj (v-L)).re := by
    have h := Complex.normSq_add L (v-L)
    rw [show L+(v-L)=v by ring] at h
    linarith
  have hr : |(L*conj (v-L)).re| ≤ ‖L‖*‖v-L‖ := by
    simpa only [norm_mul, Complex.norm_conj] using Complex.abs_re_le_norm (L*conj (v-L))
  rw [heq]
  calc
    _ ≤ |Complex.normSq (v-L)|+|2*(L*conj (v-L)).re| := abs_add_le _ _
    _ = ‖v-L‖^2+2*|(L*conj (v-L)).re| := by
      rw [abs_of_nonneg (Complex.normSq_nonneg _), Complex.normSq_eq_norm_sq, abs_mul]
      norm_num
    _ ≤ ‖v-L‖^2+2*(‖L‖*‖v-L‖) := by linarith

/-- The source pairwise squared-Gram error, analytically derived for every
real pair of perturbations. No interval or floating-point predicate is used. -/
theorem phasePair_gram_error {z : ℂ} (hu : Complex.normSq z=1)
    (hr : z.re=-(1:ℝ)/2) {x y ρ : ℝ} (hρ : 0 ≤ ρ)
    (hx : |x| ≤ ρ) (hy : |y| ≤ ρ) :
    |Complex.normSq (phasePair z x y)-homogeneousNorm x y| ≤
      (7/2:ℝ)*ρ^3+ρ^4 := by
  rw [← phasePairLinear_normSq hu hr x y]
  have he := phasePair_error_bound hu hr hρ hx hy
  have hl := phasePairLinear_bound hu hr hρ hx hy
  calc
    _ ≤ ‖phasePair z x y-phasePairLinear z x y‖^2+
        2*(‖phasePairLinear z x y‖*‖phasePair z x y-phasePairLinear z x y‖) :=
      normSq_difference_bound _ _
    _ ≤ (ρ^2)^2+2*(((7/4:ℝ)*ρ)*(ρ^2)) := by gcongr
    _ = (7/2:ℝ)*ρ^3+ρ^4 := by ring

end
end Centiradian20261006.Ball40Translation20261007

#print axioms Centiradian20261006.Ball40Translation20261007.unit_norm_of_normSq
#print axioms Centiradian20261006.Ball40Translation20261007.root_sum_zero
#print axioms Centiradian20261006.Ball40Translation20261007.root_im_square
#print axioms Centiradian20261006.Ball40Translation20261007.phasePairLinear_normSq
#print axioms Centiradian20261006.Ball40Translation20261007.phasePairLinear_bound
#print axioms Centiradian20261006.Ball40Translation20261007.phase_first_order_remainder
#print axioms Centiradian20261006.Ball40Translation20261007.phasePair_error_identity
#print axioms Centiradian20261006.Ball40Translation20261007.phasePair_error_bound
#print axioms Centiradian20261006.Ball40Translation20261007.normSq_difference_bound
#print axioms Centiradian20261006.Ball40Translation20261007.phasePair_gram_error
