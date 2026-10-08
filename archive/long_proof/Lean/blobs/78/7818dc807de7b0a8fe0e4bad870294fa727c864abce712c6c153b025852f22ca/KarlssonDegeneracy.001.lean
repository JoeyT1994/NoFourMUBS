import KarlssonCore

namespace Mub6.Classification.KarlssonCover
open Complex Hadamard6
noncomputable section
set_option maxHeartbeats 1600000

def realU (t : ℝ) : ℝ := (1-t^2)/(1+t^2)
def realV (t : ℝ) : ℝ := 2*t/(1+t^2)

theorem uv_circle (t : ℝ) : realU t ^ 2 + realV t ^ 2 = 1 := by
  unfold realU realV
  have h : 1+t^2 ≠ 0 := by positivity
  field_simp
  ring

theorem v_positive {t : ℝ} (ht : 0<t) : 0 < realV t := by
  unfold realV
  positivity

def entryA (u v : ℝ) (p : ℂ) : ℂ :=
  ⟨-1/2+Real.sqrt 3*v*p.im/2, Real.sqrt 3*(u+v*p.re)/2⟩
def entryB (u v : ℝ) (p : ℂ) : ℂ :=
  ⟨-1/2-Real.sqrt 3*v*p.im/2, Real.sqrt 3*(v*p.re-u)/2⟩

theorem core_entries (t : ℝ) {p : ℂ} (hp : normSq p = 1) :
    karlssonCoreA t p 0 0 = entryA (realU t) (realV t) p ∧
    karlssonCoreA t p 0 1 = entryB (realU t) (realV t) p := by
  have hpinv : p⁻¹ = star p := by
    apply inv_eq_of_mul_eq_one_right
    simpa [mul_comm] using star_mul_self_of_normSq_one hp
  constructor <;> apply Complex.ext <;>
    simp [karlssonCoreA, karlssonF2, karlssonLambda, karlssonHalfAngleU,
      karlssonHalfAngleV, realU, realV, entryA, entryB,
      Matrix.mul_apply, Fin.sum_univ_two, div_eq_mul_inv, hpinv] <;> ring

theorem entry_norms {u v : ℝ} {p : ℂ}
    (huv : u^2+v^2=1) (hp : normSq p = 1) :
    normSq (entryA u v p) + normSq (entryB u v p) = 2 ∧
    normSq (-1-entryA u v p) + normSq (-1-entryB u v p) = 2 ∧
    normSq (entryA u v p) - normSq (entryB u v p) =
      v*(3*u*p.re-Real.sqrt 3*p.im) ∧
    normSq (-1-entryA u v p) - normSq (-1-entryB u v p) =
      v*(3*u*p.re+Real.sqrt 3*p.im) := by
  have hq : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have hp' : p.re^2+p.im^2=1 := by simpa [normSq_apply, pow_two] using hp
  dsimp [entryA, entryB, normSq_apply]
  constructor
  · linear_combination (Real.sqrt 3)^2/2*huv +
      (Real.sqrt 3)^2*v^2/2*hp' + hq/2
  constructor
  · simp only [sub_re, sub_im, neg_re, neg_im, one_re, one_im]
    linear_combination (Real.sqrt 3)^2/2*huv +
      (Real.sqrt 3)^2*v^2/2*hp' + hq/2
  constructor
  · linear_combination u*v*p.re*hq
  · simp only [sub_re, sub_im, neg_re, neg_im, one_re, one_im]
    linear_combination u*v*p.re*hq

theorem core_norms (t : ℝ) {p : ℂ} (hp : normSq p = 1) :
    normSq (karlssonCoreA t p 0 0) + normSq (karlssonCoreA t p 0 1) = 2 ∧
    normSq (karlssonCoreB t p 0 0) + normSq (karlssonCoreB t p 0 1) = 2 ∧
    normSq (karlssonCoreA t p 0 0) - normSq (karlssonCoreA t p 0 1) =
      realV t*(3*realU t*p.re-Real.sqrt 3*p.im) ∧
    normSq (karlssonCoreB t p 0 0) - normSq (karlssonCoreB t p 0 1) =
      realV t*(3*realU t*p.re+Real.sqrt 3*p.im) := by
  rcases core_entries t hp with ⟨ha,hb⟩
  simpa [karlssonCoreB, karlssonF2, ha, hb] using entry_norms (uv_circle t) hp

theorem normSq_square_injective {a b : ℂ} (h : normSq (a^2) = normSq (b^2)) :
    normSq a = normSq b := by
  simp only [map_pow] at h
  nlinarith [normSq_nonneg a, normSq_nonneg b]

theorem degenerate_coeff_nonzero (t : ℝ) {p : ℂ} (hp : normSq p = 1) :
    (normSq (coeffA t p) = normSq (coeffB t p) → coeffB t p ≠ 0) ∧
    (normSq (coeffC t p) = normSq (coeffD t p) → coeffD t p ≠ 0) := by
  have hN := core_norms t hp
  constructor
  · intro h hz
    have he := normSq_square_injective h
    have ha : karlssonCoreA t p 0 0 = 0 := (pow_eq_zero_iff (by decide)).mp hz
    simp only [ha, normSq_zero] at he hN
    linarith [hN.1]
  · intro h hz
    have he := normSq_square_injective h
    have ha : karlssonCoreB t p 0 0 = 0 := (pow_eq_zero_iff (by decide)).mp hz
    simp only [ha, normSq_zero] at he hN
    linarith [hN.2.1]

theorem common_degeneracy {t : ℝ} {p : ℂ}
    (ht : 0<t) (hp : normSq p = 1) (hpm : p ≠ -1)
    (hA : normSq (coeffA t p) = normSq (coeffB t p))
    (hB : normSq (coeffC t p) = normSq (coeffD t p)) :
    t=1 ∧ p=1 := by
  have ha := normSq_square_injective hA
  have hb := normSq_square_injective hB
  have hn := core_norms t hp
  have hzA : 3*realU t*p.re-Real.sqrt 3*p.im=0 := by
    have : realV t*(3*realU t*p.re-Real.sqrt 3*p.im)=0 := by linarith [hn.2.2.1]
    exact (mul_eq_zero.mp this).resolve_left (ne_of_gt (v_positive ht))
  have hzB : 3*realU t*p.re+Real.sqrt 3*p.im=0 := by
    have : realV t*(3*realU t*p.re+Real.sqrt 3*p.im)=0 := by linarith [hn.2.2.2]
    exact (mul_eq_zero.mp this).resolve_left (ne_of_gt (v_positive ht))
  have hi : p.im=0 := by
    have hq : 0<Real.sqrt 3 := Real.sqrt_pos.mpr (by norm_num)
    nlinarith [hzA,hzB]
  have hp' : p.re^2=1 := by simpa [normSq_apply, hi, pow_two] using hp
  have hr : p.re ≠ 0 := by intro he; simp [he] at hp'
  have hu : realU t=0 := by
    have : realU t*p.re=0 := by nlinarith [hzA]
    exact (mul_eq_zero.mp this).resolve_right hr
  have ht1 : t=1 := by
    have he : 1-t^2=0 := (div_eq_zero_iff.mp hu).resolve_right (by positivity)
    nlinarith
  refine ⟨ht1, ?_⟩
  rcases (sq_eq_one_iff).mp hp' with hp1 | hpm1
  · exact Complex.ext (by simpa using hp1) (by simpa using hi)
  · exfalso
    apply hpm
    exact Complex.ext (by simpa using hpm1) (by simpa using hi)

end
end Mub6.Classification.KarlssonCover
