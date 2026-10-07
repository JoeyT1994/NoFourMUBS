import RepeatedFourierColumns
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse

/-! Actual nearest-pi rounding and a quantitative small-sine bound. -/
set_option autoImplicit false
set_option maxHeartbeats 1600000
namespace Seed0024Mathematical20261007
noncomputable section

theorem local_sin_quarter_gt : (1 : ℝ) / 6 < Real.sin (1/4) := by
  have h := Real.sin_bound (x := (1:ℝ)/4) (by norm_num)
  norm_num only [abs_of_pos (by norm_num : (0:ℝ) < 1/4)] at h
  have hl := (abs_le.mp h).1
  norm_num at hl ⊢
  linarith

/-- The required arcsine slope bound from exact Taylor inequalities. -/
theorem local_arcsin_le_51_over_50 (u : ℝ) (hu0 : 0 ≤ u) (hu1 : u ≤ 1/6) :
    Real.arcsin u ≤ (51/50 : ℝ)*u := by
  have h0 : 0 ≤ Real.arcsin u := Real.arcsin_nonneg.mpr hu0
  have h1 : Real.arcsin u ≤ (1:ℝ)/4 := by
    have h := Real.arcsin_le_arcsin (hu1.trans local_sin_quarter_gt.le)
    rw [Real.arcsin_sin (by linarith [Real.two_le_pi])
      (by linarith [Real.two_le_pi])] at h
    exact h
  have hs : Real.sin (Real.arcsin u) = u :=
    Real.sin_arcsin (by linarith) (by linarith)
  have ht := Real.sin_bound (x := Real.arcsin u)
    (by rw [abs_of_nonneg h0]; linarith)
  rw [abs_of_nonneg h0, hs] at ht
  have htlow := (abs_le.mp ht).1
  have hp2 := pow_le_pow_left₀ h0 h1 2
  have hp4 := pow_le_pow_left₀ h0 h1 4
  have hp3 := mul_le_mul_of_nonneg_left hp2 h0
  have hp5 := mul_le_mul_of_nonneg_left hp4 h0
  norm_num at hp3 hp5
  nlinarith

theorem local_arcsin_abs (u : ℝ) : Real.arcsin |u| = |Real.arcsin u| := by
  rcases le_total 0 u with hu | hu
  · rw [abs_of_nonneg hu, abs_of_nonneg (Real.arcsin_nonneg.mpr hu)]
  · rw [abs_of_nonpos hu, Real.arcsin_neg,
      abs_of_nonpos (Real.arcsin_nonpos.mpr hu)]

def nearestPiInt (x : ℝ) : ℤ := Int.floor (x/Real.pi + 1/2)
def piResidue (x : ℝ) : ℝ := x - (nearestPiInt x : ℝ)*Real.pi

theorem piResidue_mem (x : ℝ) : -(Real.pi/2) ≤ piResidue x ∧
    piResidue x < Real.pi/2 := by
  have hl := Int.floor_le (x/Real.pi + 1/2)
  have hu := Int.lt_floor_add_one (x/Real.pi + 1/2)
  have hlp := mul_le_mul_of_nonneg_right hl Real.pi_pos.le
  have hup := mul_lt_mul_of_pos_right hu Real.pi_pos
  have he : (x/Real.pi)*Real.pi=x := div_mul_cancel₀ x Real.pi_ne_zero
  unfold piResidue nearestPiInt
  constructor <;> nlinarith

theorem piResidue_decomposition (x : ℝ) :
    x = (nearestPiInt x : ℝ)*Real.pi + piResidue x := by
  unfold piResidue
  ring

theorem piResidue_abs_sin (x : ℝ) : |Real.sin (piResidue x)| = |Real.sin x| := by
  rw [piResidue, Real.sin_sub_int_mul_pi, abs_mul, abs_zpow]
  norm_num

theorem piResidue_small_sine_bound (x : ℝ) (hx : |Real.sin x| ≤ (1:ℝ)/6) :
    |piResidue x| ≤ (51/50 : ℝ)*|Real.sin x| := by
  have hm := piResidue_mem x
  have hb := local_arcsin_le_51_over_50 |Real.sin (piResidue x)|
    (abs_nonneg _) (by rw [piResidue_abs_sin]; exact hx)
  rw [local_arcsin_abs, Real.arcsin_sin hm.1 hm.2.le,
    piResidue_abs_sin] at hb
  exact hb

theorem local_int_mul_pi_small (k : ℤ) (h : |(k:ℝ)*Real.pi| < 1) : k=0 := by
  rw [abs_mul, abs_of_pos Real.pi_pos] at h
  have hk : |(k:ℝ)| < 1 := by
    nlinarith [Real.two_le_pi, abs_nonneg (k:ℝ)]
  have hki : |k| < (1:ℤ) := by exact_mod_cast hk
  have hi := abs_lt.mp hki
  omega

/-- Rounding the three dependent phase arguments preserves their linear relation. -/
theorem local_sine_triple_rounding (A B C : ℝ) (hrel : A+B=C)
    (hs : |Real.sin A|+|Real.sin B|+|Real.sin C| < (1:ℝ)/6) :
    piResidue A + piResidue B = piResidue C ∧
    |piResidue A|+|piResidue B|+|piResidue C| < (17:ℝ)/100 := by
  have hA : |Real.sin A| ≤ (1:ℝ)/6 := by
    linarith [abs_nonneg (Real.sin B), abs_nonneg (Real.sin C)]
  have hB : |Real.sin B| ≤ (1:ℝ)/6 := by
    linarith [abs_nonneg (Real.sin A), abs_nonneg (Real.sin C)]
  have hC : |Real.sin C| ≤ (1:ℝ)/6 := by
    linarith [abs_nonneg (Real.sin A), abs_nonneg (Real.sin B)]
  have hr : |piResidue A|+|piResidue B|+|piResidue C| < (17:ℝ)/100 := by
    have ha := piResidue_small_sine_bound A hA
    have hb := piResidue_small_sine_bound B hB
    have hc := piResidue_small_sine_bound C hC
    linarith
  refine ⟨?_, hr⟩
  let k : ℤ := nearestPiInt C - nearestPiInt A - nearestPiInt B
  have he : (k:ℝ)*Real.pi = piResidue A+piResidue B-piResidue C := by
    dsimp [k, piResidue]
    push_cast
    linarith
  have habs : |piResidue A+piResidue B-piResidue C| < 1 := by
    have h1 := abs_sub (piResidue A+piResidue B) (piResidue C)
    have h2 := abs_add_le (piResidue A) (piResidue B)
    linarith
  have hk : k=0 := local_int_mul_pi_small k (by rw [he]; exact habs)
  rw [hk] at he
  norm_num at he
  linarith

end
end Seed0024Mathematical20261007

#print axioms Seed0024Mathematical20261007.local_arcsin_le_51_over_50
#print axioms Seed0024Mathematical20261007.piResidue_small_sine_bound
#print axioms Seed0024Mathematical20261007.local_sine_triple_rounding
