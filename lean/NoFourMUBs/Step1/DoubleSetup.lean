import NoFourMUBs.Step1.Smooth

/-!
# Step 1, item 15: the double boundary in square coordinates

Write the two repeated roots as `a = zw`, `b = z w̄` with `|z| = |w| = 1`, and put `c = Re w`, `h = Re z³`.  Then

  `ℛ(2a + ā², 2b + b̄²) = R(c, h) = −256 L² M² N`,

`L = 2c² + 1`, `M = 8c⁴ + 4c³h − 4c² + 1`, `N = 16c⁴ + 16c³h + 4c²h² − 4c² − 4ch − 1` (`calRUV_boundary`).
The proof splits as in `boundary_trace.json`: `|A|²`, `|B|²` and `Re(AB²)` are polynomials in `(c, h)` (exact
cofactors), and the rest is a polynomial identity.
-/

open NoFourMUBs.Step1Saddle

namespace NoFourMUBs.Step1Geo

noncomputable def Lp (c : ℝ) : ℝ := 2 * c ^ 2 + 1
noncomputable def Mp (c h : ℝ) : ℝ := 8 * c ^ 4 + 4 * c ^ 3 * h - 4 * c ^ 2 + 1
noncomputable def Np (c h : ℝ) : ℝ := 16 * c ^ 4 + 16 * c ^ 3 * h + 4 * c ^ 2 * h ^ 2 - 4 * c ^ 2 - 4 * c * h - 1
noncomputable def Rch (c h : ℝ) : ℝ := -256 * Lp c ^ 2 * Mp c h ^ 2 * Np c h

lemma b_u (z zi c : ℂ) (hz : z * zi = 1) :
    (4 * c * z + 2 * (2 * c ^ 2 - 1) * zi ^ 2) * (4 * c * zi + 2 * (2 * c ^ 2 - 1) * z ^ 2) =
      16 * c ^ 2 + 16 * c * (2 * c ^ 2 - 1) * ((z ^ 3 + zi ^ 3) / 2) + 4 * (2 * c ^ 2 - 1) ^ 2 := by
  linear_combination (16*c^4*z*zi + 16*c^4 - 16*c^2*z*zi + 4*z*zi + 4) * hz

lemma b_v (z zi c s : ℂ) (hz : z * zi = 1) (hs : s ^ 2 + c ^ 2 = 1) :
    (4 * Complex.I * s * (z - c * zi ^ 2)) * (-4 * Complex.I * s * (zi - c * z ^ 2)) =
      16 * (1 - c ^ 2) * (1 - 2 * c * ((z ^ 3 + zi ^ 3) / 2) + c ^ 2) := by
  linear_combination (-16*c^2*s^2*z^2*zi^2 + 16*c*s^2*z^3 + 16*c*s^2*zi^3 - 16*s^2*z*zi) * Complex.I_sq + (16*c^2*z^2*zi^2 - 16*c*z^3 - 16*c*zi^3 + 16*z*zi) * hs + (-16*c^4*z*zi - 16*c^4 + 16*c^2*z*zi + 16) * hz

lemma b_w (z zi c s : ℂ) (hz : z * zi = 1) (hs : s ^ 2 + c ^ 2 = 1) :
    (4 * c * z + 2 * (2 * c ^ 2 - 1) * zi ^ 2) * (4 * Complex.I * s * (z - c * zi ^ 2)) ^ 2 +
      (4 * c * zi + 2 * (2 * c ^ 2 - 1) * z ^ 2) * (-4 * Complex.I * s * (zi - c * z ^ 2)) ^ 2 =
      32 * (c ^ 2 - 1) * (8 * c ^ 4 * ((z ^ 3 + zi ^ 3) / 2) ^ 2 - 4 * c ^ 4 - 4 * c ^ 3 * ((z ^ 3 + zi ^ 3) / 2) - 4 * c ^ 2 * ((z ^ 3 + zi ^ 3) / 2) ^ 2 -
        2 * c ^ 2 + 8 * c * ((z ^ 3 + zi ^ 3) / 2) - 2) := by
  linear_combination (64*c^4*s^2*z^6 + 64*c^4*s^2*zi^6 - 64*c^3*s^2*z^4*zi - 64*c^3*s^2*z*zi^4 - 32*c^2*s^2*z^6 - 128*c^2*s^2*z^2*zi^2 - 32*c^2*s^2*zi^6 + 64*c*s^2*z^4*zi + 64*c*s^2*z^3 + 64*c*s^2*z*zi^4 + 64*c*s^2*zi^3 - 64*s^2*z^2*zi^2) * Complex.I_sq + (-64*c^4*z^6 - 64*c^4*zi^6 + 64*c^3*z^4*zi + 64*c^3*z*zi^4 + 32*c^2*z^6 + 128*c^2*z^2*zi^2 + 32*c^2*zi^6 - 64*c*z^4*zi - 64*c*z^3 - 64*c*z*zi^4 - 64*c*zi^3 + 64*z^2*zi^2) * hs + (-128*c^6*z^2*zi^2 - 128*c^6*z*zi - 128*c^6 - 64*c^5*z^3 - 64*c^5*zi^3 + 192*c^4*z^2*zi^2 + 64*c^4*z*zi + 64*c^4 + 128*c^3*z^3 + 128*c^3*zi^3 - 64*c^2*z^2*zi^2 - 64*c*z^3 - 64*c*zi^3 + 64*z*zi + 64) * hz

/-- **Item 15.** `ℛ(2a + ā², 2b + b̄²) = R(Re w, Re z³)` for `a = zw`, `b = z w̄`. -/
theorem calRUV_boundary {z w : ℂ} (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1) :
    calRUV (2 * (z * w) + star (z * w) ^ 2) (2 * (z * star w) + star (z * star w) ^ 2) = Rch w.re (z ^ 3).re := by
  set c := w.re
  set s := w.im
  have hzzi : z * star z = 1 := by
    rw [mul_comm]
    rw [Complex.star_def, Complex.conj_mul', ← Complex.ofReal_pow, ← Complex.normSq_eq_norm_sq, hz]; norm_num
  have hs : (s : ℂ) ^ 2 + (c : ℂ) ^ 2 = 1 := by
    have : c ^ 2 + s ^ 2 = 1 := by rw [← hw, Complex.normSq_apply]; ring
    exact_mod_cast (by linarith : s ^ 2 + c ^ 2 = 1)
  have hw' : w = c + s * Complex.I := (Complex.re_add_im w).symm
  have hsw : star w = c - s * Complex.I := by
    rw [hw']; simp [Complex.conj_ofReal]; ring
  set A := 2 * (z * w) + star (z * w) ^ 2 + (2 * (z * star w) + star (z * star w) ^ 2)
  set B := 2 * (z * w) + star (z * w) ^ 2 - (2 * (z * star w) + star (z * star w) ^ 2)
  have hA : A = 4 * c * z + 2 * (2 * c ^ 2 - 1) * (star z) ^ 2 := by
    simp only [A, star_mul', star_star]; rw [hsw, hw']
    linear_combination (2 * (star z) ^ 2 * (s : ℂ) ^ 2) * Complex.I_sq - (2 * (star z) ^ 2) * hs
  have hB : B = 4 * Complex.I * s * (z - c * (star z) ^ 2) := by
    simp only [B, star_mul', star_star]; rw [hsw, hw']; ring
  have hsA : star A = 4 * c * (star z) + 2 * (2 * c ^ 2 - 1) * z ^ 2 := by
    rw [hA]; simp [star_add, star_mul', star_pow, Complex.conj_ofReal]
  have hsB : star B = -4 * Complex.I * s * ((star z) - c * z ^ 2) := by
    rw [hB]; simp [star_sub, star_mul', star_pow, Complex.conj_ofReal]
  have hH : ((z ^ 3).re : ℂ) = (z ^ 3 + (star z) ^ 3) / 2 := by
    rw [Complex.re_eq_add_conj, map_pow]; rfl
  set h := (z ^ 3).re
  have hu : Complex.normSq A = 16 * c ^ 2 + 16 * c * (2 * c ^ 2 - 1) * h + 4 * (2 * c ^ 2 - 1) ^ 2 := by
    have : (Complex.normSq A : ℂ) = A * star A := by
      rw [Complex.normSq_eq_conj_mul_self, ← Complex.star_def, mul_comm]
    have h2 := b_u z (star z) c hzzi
    rw [← hA, ← hsA, ← this, ← hH] at h2
    exact_mod_cast h2
  have hv : Complex.normSq B = 16 * (1 - c ^ 2) * (1 - 2 * c * h + c ^ 2) := by
    have : (Complex.normSq B : ℂ) = B * star B := by
      rw [Complex.normSq_eq_conj_mul_self, ← Complex.star_def, mul_comm]
    have h2 := b_v z (star z) c s hzzi hs
    rw [← hB, ← hsB, ← this, ← hH] at h2
    exact_mod_cast h2
  have hre : (A * B ^ 2).re = 16 * (c ^ 2 - 1) * (8 * c ^ 4 * h ^ 2 - 4 * c ^ 4 - 4 * c ^ 3 * h -
      4 * c ^ 2 * h ^ 2 - 2 * c ^ 2 + 8 * c * h - 2) := by
    have : ((A * B ^ 2).re : ℂ) = (A * B ^ 2 + star A * star B ^ 2) / 2 := by
      rw [Complex.re_eq_add_conj, ← Complex.star_def, star_mul', star_pow]
    have h2 := b_w z (star z) c s hzzi hs
    rw [← hA, ← hB, ← hsA, ← hsB, ← hH] at h2
    have h3 : ((A * B ^ 2).re : ℂ) = ((16 * (c ^ 2 - 1) * (8 * c ^ 4 * h ^ 2 - 4 * c ^ 4 - 4 * c ^ 3 * h -
        4 * c ^ 2 * h ^ 2 - 2 * c ^ 2 + 8 * c * h - 2) : ℝ) : ℂ) := by
      rw [this, h2]; push_cast; ring
    exact_mod_cast h3
  unfold calRUV calR
  rw [hu, hv, hre]
  unfold Rch Lp Mp Np
  ring

end NoFourMUBs.Step1Geo
