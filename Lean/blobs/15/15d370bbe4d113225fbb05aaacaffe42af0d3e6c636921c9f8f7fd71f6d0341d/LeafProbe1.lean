import FormalCore

namespace Mub6.Numerical.Generated
open scoped BigOperators

def grid_0 : RayGrid := fun j => if j.val = 0 then ⟨(0, 0), by decide⟩ else if j.val = 1 then ⟨(0, 0), by decide⟩ else if j.val = 2 then ⟨(0, 0), by decide⟩ else if j.val = 3 then ⟨(0, 0), by decide⟩ else ⟨(0, 0), by decide⟩

theorem exclude_0 (H : BasisMatrix) (hcol : ∀ r, H r 0 = 1)
    (z : Vector) (hz : MemRayGrid grid_0 z) : ¬ IsRawCommonRay H z := by
  intro hc
  have h0 := hz.2 (0 : Fin 5)
  have h1 := hz.2 (1 : Fin 5)
  have h2 := hz.2 (2 : Fin 5)
  have h3 := hz.2 (3 : Fin 5)
  have h4 := hz.2 (4 : Fin 5)
  norm_num [MemRectangle, grid_0, circleRectangle, gridLo, gridHi] at h0 h1 h2 h3 h4
  have hr : (carrierAmplitude H z 0).re = 1 + ∑ j : Fin 5, (z j.succ).re := by
    rw [carrierAmplitude_re, Fin.sum_univ_succ]
    simp [hcol, hz.1]
  have hi : (carrierAmplitude H z 0).im = ∑ j : Fin 5, (z j.succ).im := by
    rw [carrierAmplitude_im, Fin.sum_univ_succ]
    simp [hcol, hz.1]
  simp only [Fin.sum_univ_succ, Fin.sum_univ_zero, add_zero] at hr hi
  have ha : (-4 / 1 : ℝ) ≤ (carrierAmplitude H z 0).re := by
    linarith only [hr, h0.1, h1.1, h2.1, h3.1, h4.1]
  have hb : (carrierAmplitude H z 0).re ≤ (-3 / 2 : ℝ) := by
    linarith only [hr, h0.2.1, h1.2.1, h2.2.1, h3.2.1, h4.2.1]
  have hc' : (-5 / 1 : ℝ) ≤ (carrierAmplitude H z 0).im := by
    linarith only [hi, h0.2.2.1, h1.2.2.1, h2.2.2.1, h3.2.2.1, h4.2.2.1]
  have hd : (carrierAmplitude H z 0).im ≤ (-5 / 2 : ℝ) := by
    linarith only [hi, h0.2.2.2, h1.2.2.2, h2.2.2.2, h3.2.2.2, h4.2.2.2]
  have hn := hc.2 (0 : Fin 6)
  rw [Complex.normSq_apply] at hn
  have hp := mul_nonneg (sub_nonneg.mpr ha) (sub_nonneg.mpr hb)
  have hq := mul_nonneg (sub_nonneg.mpr hc') (sub_nonneg.mpr hd)
  nlinarith only [hn, ha, hb, hc', hd, hp, hq, sq_nonneg ((carrierAmplitude H z 0).re - (-4 / 1 : ℝ)), sq_nonneg ((carrierAmplitude H z 0).re - (-3 / 2 : ℝ)),
    sq_nonneg ((carrierAmplitude H z 0).im - (-5 / 1 : ℝ)), sq_nonneg ((carrierAmplitude H z 0).im - (-5 / 2 : ℝ))]

#print axioms exclude_0

end Mub6.Numerical.Generated
