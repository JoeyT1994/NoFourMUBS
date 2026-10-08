import FormalCore

namespace Mub6.Numerical.Generated
open scoped BigOperators

def grid_0 : RayGrid := fun j => if j.val = 0 then ⟨(0, 0), by decide⟩ else if j.val = 1 then ⟨(0, 0), by decide⟩ else if j.val = 2 then ⟨(0, 0), by decide⟩ else if j.val = 3 then ⟨(0, 0), by decide⟩ else ⟨(0, 0), by decide⟩

theorem exclude_0 (H : BasisMatrix) (hcol : ∀ r, H r 0 = 1)
    (z : Vector) (hz : MemRayGrid grid_0 z) : ¬ IsRawCommonRay H z := by
  intro hc
  have h0 := hz.2 (0 : Fin 5)
  change ((-1 / 1 : ℚ) : ℝ) ≤ (z 1).re ∧ (z 1).re ≤ ((-1 / 2 : ℚ) : ℝ) ∧ ((-1 / 1 : ℚ) : ℝ) ≤ (z 1).im ∧ (z 1).im ≤ ((-1 / 2 : ℚ) : ℝ) at h0
  have h1 := hz.2 (1 : Fin 5)
  change ((-1 / 1 : ℚ) : ℝ) ≤ (z 2).re ∧ (z 2).re ≤ ((-1 / 2 : ℚ) : ℝ) ∧ ((-1 / 1 : ℚ) : ℝ) ≤ (z 2).im ∧ (z 2).im ≤ ((-1 / 2 : ℚ) : ℝ) at h1
  have h2 := hz.2 (2 : Fin 5)
  change ((-1 / 1 : ℚ) : ℝ) ≤ (z 3).re ∧ (z 3).re ≤ ((-1 / 2 : ℚ) : ℝ) ∧ ((-1 / 1 : ℚ) : ℝ) ≤ (z 3).im ∧ (z 3).im ≤ ((-1 / 2 : ℚ) : ℝ) at h2
  have h3 := hz.2 (3 : Fin 5)
  change ((-1 / 1 : ℚ) : ℝ) ≤ (z 4).re ∧ (z 4).re ≤ ((-1 / 2 : ℚ) : ℝ) ∧ ((-1 / 1 : ℚ) : ℝ) ≤ (z 4).im ∧ (z 4).im ≤ ((-1 / 2 : ℚ) : ℝ) at h3
  have h4 := hz.2 (4 : Fin 5)
  change ((-1 / 1 : ℚ) : ℝ) ≤ (z 5).re ∧ (z 5).re ≤ ((-1 / 2 : ℚ) : ℝ) ∧ ((-1 / 1 : ℚ) : ℝ) ≤ (z 5).im ∧ (z 5).im ≤ ((-1 / 2 : ℚ) : ℝ) at h4
  norm_num at h0 h1 h2 h3 h4
  have hr : (carrierAmplitude H z 0).re = 1 + ∑ j : Fin 5, (z j.succ).re := by
    rw [carrierAmplitude_re, Fin.sum_univ_succ]
    simp [hcol, hz.1]
  have hi : (carrierAmplitude H z 0).im = ∑ j : Fin 5, (z j.succ).im := by
    rw [carrierAmplitude_im, Fin.sum_univ_succ]
    simp [hcol, hz.1]
  simp only [Fin.sum_univ_succ, Fin.sum_univ_zero, add_zero] at hr hi
  have ha : (-4 / 1 : ℝ) ≤ (carrierAmplitude H z 0).re := by linarith! only [hr, h0.1, h1.1, h2.1, h3.1, h4.1]
  have hb : (carrierAmplitude H z 0).re ≤ (-3 / 2 : ℝ) := by linarith! only [hr, h0.2.1, h1.2.1, h2.2.1, h3.2.1, h4.2.1]
  have hc' : (-5 / 1 : ℝ) ≤ (carrierAmplitude H z 0).im := by linarith! only [hi, h0.2.2.1, h1.2.2.1, h2.2.2.1, h3.2.2.1, h4.2.2.1]
  have hd : (carrierAmplitude H z 0).im ≤ (-5 / 2 : ℝ) := by linarith! only [hi, h0.2.2.2, h1.2.2.2, h2.2.2.2, h3.2.2.2, h4.2.2.2]
  have hn := hc.2 (0 : Fin 6)
  rw [Complex.normSq_apply] at hn
  have hp := mul_nonneg (sub_nonneg.mpr ha) (sub_nonneg.mpr hb)
  have hq := mul_nonneg (sub_nonneg.mpr hc') (sub_nonneg.mpr hd)
  nlinarith only [hn, ha, hb, hc', hd, hp, hq, sq_nonneg ((carrierAmplitude H z 0).re - (-4 / 1 : ℝ)), sq_nonneg ((carrierAmplitude H z 0).re - (-3 / 2 : ℝ)),
    sq_nonneg ((carrierAmplitude H z 0).im - (-5 / 1 : ℝ)), sq_nonneg ((carrierAmplitude H z 0).im - (-5 / 2 : ℝ))]

#print axioms exclude_0

def grid_1 : RayGrid := fun j => if j.val = 0 then ⟨(0, 0), by decide⟩ else if j.val = 1 then ⟨(0, 0), by decide⟩ else if j.val = 2 then ⟨(0, 0), by decide⟩ else if j.val = 3 then ⟨(0, 0), by decide⟩ else ⟨(0, 1), by decide⟩

theorem exclude_1 (H : BasisMatrix) (hcol : ∀ r, H r 0 = 1)
    (z : Vector) (hz : MemRayGrid grid_1 z) : ¬ IsRawCommonRay H z := by
  intro hc
  have h0 := hz.2 (0 : Fin 5)
  change ((-1 / 1 : ℚ) : ℝ) ≤ (z 1).re ∧ (z 1).re ≤ ((-1 / 2 : ℚ) : ℝ) ∧ ((-1 / 1 : ℚ) : ℝ) ≤ (z 1).im ∧ (z 1).im ≤ ((-1 / 2 : ℚ) : ℝ) at h0
  have h1 := hz.2 (1 : Fin 5)
  change ((-1 / 1 : ℚ) : ℝ) ≤ (z 2).re ∧ (z 2).re ≤ ((-1 / 2 : ℚ) : ℝ) ∧ ((-1 / 1 : ℚ) : ℝ) ≤ (z 2).im ∧ (z 2).im ≤ ((-1 / 2 : ℚ) : ℝ) at h1
  have h2 := hz.2 (2 : Fin 5)
  change ((-1 / 1 : ℚ) : ℝ) ≤ (z 3).re ∧ (z 3).re ≤ ((-1 / 2 : ℚ) : ℝ) ∧ ((-1 / 1 : ℚ) : ℝ) ≤ (z 3).im ∧ (z 3).im ≤ ((-1 / 2 : ℚ) : ℝ) at h2
  have h3 := hz.2 (3 : Fin 5)
  change ((-1 / 1 : ℚ) : ℝ) ≤ (z 4).re ∧ (z 4).re ≤ ((-1 / 2 : ℚ) : ℝ) ∧ ((-1 / 1 : ℚ) : ℝ) ≤ (z 4).im ∧ (z 4).im ≤ ((-1 / 2 : ℚ) : ℝ) at h3
  have h4 := hz.2 (4 : Fin 5)
  change ((-1 / 1 : ℚ) : ℝ) ≤ (z 5).re ∧ (z 5).re ≤ ((-1 / 2 : ℚ) : ℝ) ∧ ((-1 / 2 : ℚ) : ℝ) ≤ (z 5).im ∧ (z 5).im ≤ ((0 / 1 : ℚ) : ℝ) at h4
  norm_num at h0 h1 h2 h3 h4
  have hr : (carrierAmplitude H z 0).re = 1 + ∑ j : Fin 5, (z j.succ).re := by
    rw [carrierAmplitude_re, Fin.sum_univ_succ]
    simp [hcol, hz.1]
  have hi : (carrierAmplitude H z 0).im = ∑ j : Fin 5, (z j.succ).im := by
    rw [carrierAmplitude_im, Fin.sum_univ_succ]
    simp [hcol, hz.1]
  simp only [Fin.sum_univ_succ, Fin.sum_univ_zero, add_zero] at hr hi
  have ha : (-4 / 1 : ℝ) ≤ (carrierAmplitude H z 0).re := by linarith! only [hr, h0.1, h1.1, h2.1, h3.1, h4.1]
  have hb : (carrierAmplitude H z 0).re ≤ (-3 / 2 : ℝ) := by linarith! only [hr, h0.2.1, h1.2.1, h2.2.1, h3.2.1, h4.2.1]
  have hc' : (-9 / 2 : ℝ) ≤ (carrierAmplitude H z 0).im := by linarith! only [hi, h0.2.2.1, h1.2.2.1, h2.2.2.1, h3.2.2.1, h4.2.2.1]
  have hd : (carrierAmplitude H z 0).im ≤ (-2 / 1 : ℝ) := by linarith! only [hi, h0.2.2.2, h1.2.2.2, h2.2.2.2, h3.2.2.2, h4.2.2.2]
  have hn := hc.2 (0 : Fin 6)
  rw [Complex.normSq_apply] at hn
  have hp := mul_nonneg (sub_nonneg.mpr ha) (sub_nonneg.mpr hb)
  have hq := mul_nonneg (sub_nonneg.mpr hc') (sub_nonneg.mpr hd)
  nlinarith only [hn, ha, hb, hc', hd, hp, hq, sq_nonneg ((carrierAmplitude H z 0).re - (-4 / 1 : ℝ)), sq_nonneg ((carrierAmplitude H z 0).re - (-3 / 2 : ℝ)),
    sq_nonneg ((carrierAmplitude H z 0).im - (-9 / 2 : ℝ)), sq_nonneg ((carrierAmplitude H z 0).im - (-2 / 1 : ℝ))]

#print axioms exclude_1

end Mub6.Numerical.Generated
