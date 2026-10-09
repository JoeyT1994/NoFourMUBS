import NoFourMUBs.StageC.Scalar

/-!
# Stage C, C4: edge tests

Two vectors `w_a = c_a e(v_a + x_a) ∈ 𝔅(v_a, s_a)` and `w_b = c_b e(v_b + x_b) ∈ 𝔅(v_b, s_b)` have
`|ip w_a w_b| = |S′|`, where `Q_j = e(v_{a,j} − v_{b,j})`, `S = Σ Q_j`, `S′ = Σ_j Q_j e(z_j)` and `z = x_a − x_b`
(`Σz = 0`, `‖z‖ ≤ r_e = s_a + s_b`).  Write `D_U z = Σ_j (−Im(S̄ Q_j)/6) z_j`; for mean-free `z` it equals the
centred `D_U^c z`.

* **Direct:** orthogonality forces `|S| ≤ 2π√6 r_e`; unbiasedness forces `||S| − √6| ≤ 2π√6 r_e`.
* **Support:** orthogonality forces `|S|²/(2π) ≤ 6 r_e‖D_U^c‖ + π r_e²|S|`; unbiasedness forces
  `|(|S|²/6 − 1)/(4π)| ≤ r_e‖D_U^c‖ + π r_e²(1 + |S|/6)`.
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

noncomputable def Qe (va vb : I6 → ℝ) (j : I6) : ℂ := e (va j - vb j)
noncomputable def Se (va vb : I6 → ℝ) : ℂ := ∑ j, Qe va vb j
noncomputable def Se' (va vb z : I6 → ℝ) : ℂ := ∑ j, Qe va vb j * e (z j)
/-- `D_U` (uncentred) and its centred version. -/
noncomputable def DU (va vb : I6 → ℝ) (j : I6) : ℝ := -(star (Se va vb) * Qe va vb j).im / 6
noncomputable def DUc (va vb : I6 → ℝ) (j : I6) : ℝ := DU va vb j - (∑ k, DU va vb k) / 6

lemma ip_label (va vb xa xb : I6 → ℝ) (ca cb : ℂ) :
    ip (fun j => ca * e (va j + xa j)) (fun j => cb * e (vb j + xb j)) =
      star ca * cb * star (Se' va vb (fun j => xa j - xb j)) := by
  simp only [ip, Se', Qe, star_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  simp only [star_mul', star_e]
  rw [show star ca * e (-(va j + xa j)) * (cb * e (vb j + xb j)) =
    star ca * cb * (e (-(va j + xa j)) * e (vb j + xb j)) by ring, ← e_add, ← e_add]
  congr 2; ring

lemma norm_ip_label (va vb xa xb : I6 → ℝ) {ca cb : ℂ} (ha : ‖ca‖ = 1) (hb : ‖cb‖ = 1) :
    ‖ip (fun j => ca * e (va j + xa j)) (fun j => cb * e (vb j + xb j))‖ =
      ‖Se' va vb (fun j => xa j - xb j)‖ := by
  rw [ip_label, norm_mul, norm_mul, norm_star, norm_star, ha, hb, one_mul, one_mul]

/-- `S′ − S = 2πi Σ Q_j z_j + R` with `|R| ≤ 2π² ‖z‖²`. -/
lemma edge_expand (va vb z : I6 → ℝ) :
    ‖Se' va vb z - Se va vb - ∑ j, Qe va vb j * (((2 * Real.pi * z j : ℝ) : ℂ) * Complex.I)‖ ≤
      2 * Real.pi ^ 2 * vnorm z ^ 2 := by
  have hv : vnorm z ^ 2 = ∑ j, z j ^ 2 := Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)
  rw [hv, Finset.mul_sum]
  have : Se' va vb z - Se va vb - ∑ j, Qe va vb j * (((2 * Real.pi * z j : ℝ) : ℂ) * Complex.I) =
      ∑ j, Qe va vb j * (e (z j) - 1 - ((2 * Real.pi * z j : ℝ) : ℂ) * Complex.I) := by
    simp only [Se', Se, ← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl fun j _ => by ring
  rw [this]
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => ?_)
  rw [norm_mul, Qe, norm_e, one_mul]
  exact norm_e_sub_lin_le _

lemma norm_Se'_sub_Se_le (va vb z : I6 → ℝ) :
    ‖Se' va vb z - Se va vb‖ ≤ 2 * Real.pi * (Real.sqrt 6 * vnorm z) := by
  have : Se' va vb z - Se va vb = ∑ j, Qe va vb j * (e (z j) - 1) := by
    simp only [Se', Se, ← Finset.sum_sub_distrib]; exact Finset.sum_congr rfl fun j _ => by ring
  rw [this]
  calc _ ≤ ∑ j, 2 * Real.pi * |z j| := (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => by
        rw [norm_mul, Qe, norm_e, one_mul]; exact norm_e_sub_one_le _)
    _ = 2 * Real.pi * ∑ j, |z j| := by rw [Finset.mul_sum]
    _ ≤ _ := by gcongr; exact l1_le_sqrt6_vnorm z

/-- `Re(S̄ · 2πi Σ Q_j z_j) = 12π Σ D_U(j) z_j`. -/
lemma re_lin (va vb z : I6 → ℝ) :
    (star (Se va vb) * ∑ j, Qe va vb j * (((2 * Real.pi * z j : ℝ) : ℂ) * Complex.I)).re =
      12 * Real.pi * ∑ j, DU va vb j * z j := by
  rw [Finset.mul_sum, Complex.re_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [← mul_assoc, show star (Se va vb) * Qe va vb j * (((2 * Real.pi * z j : ℝ) : ℂ) * Complex.I) =
    star (Se va vb) * (Qe va vb j * (((2 * Real.pi * z j : ℝ) : ℂ) * Complex.I)) by ring,
    re_star_mul_I_mul, DU]
  ring

lemma DU_dot_centre {va vb z : I6 → ℝ} (hz : ∑ j, z j = 0) :
    ∑ j, DU va vb j * z j = ∑ j, DUc va vb j * z j := by
  simp only [DUc, sub_mul, Finset.sum_sub_distrib, ← Finset.mul_sum, hz, mul_zero, sub_zero]

lemma abs_DU_dot_le {va vb z : I6 → ℝ} (hz : ∑ j, z j = 0) :
    |∑ j, DU va vb j * z j| ≤ vnorm (DUc va vb) * vnorm z := by
  rw [DU_dot_centre hz]; exact abs_sum_mul_le _ _

/-! ### Direct and support tests -/

/-- **Orthogonality (direct and support).** -/
theorem edge_O {va vb z : I6 → ℝ} {re : ℝ} (hz : ∑ j, z j = 0) (hzr : vnorm z ≤ re)
    (horth : Se' va vb z = 0) :
    ‖Se va vb‖ ≤ 2 * Real.pi * Real.sqrt 6 * re ∧
      ‖Se va vb‖ ^ 2 / (2 * Real.pi) ≤ 6 * re * vnorm (DUc va vb) + Real.pi * re ^ 2 * ‖Se va vb‖ := by
  have hpi := Real.pi_pos
  have h6 := sqrt6_pos
  have hz0 := vnorm_nonneg z
  refine ⟨?_, ?_⟩
  · have := norm_Se'_sub_Se_le va vb z
    rw [horth, zero_sub, norm_neg] at this
    have := mul_le_mul_of_nonneg_left hzr (by positivity : (0:ℝ) ≤ 2 * Real.pi * Real.sqrt 6)
    linarith
  · set S := Se va vb
    set L := ∑ j, Qe va vb j * (((2 * Real.pi * z j : ℝ) : ℂ) * Complex.I)
    have hR := edge_expand va vb z
    rw [horth] at hR
    -- 0 = S + L + R, so |S|² = Re(S̄ S) = −Re(S̄ L) − Re(S̄ R)
    have hkey : ‖S‖ ^ 2 = -(star S * L).re - (star S * (0 - S - L)).re - ‖S‖ ^ 2 + ‖S‖ ^ 2 := by
      have : (star S * (0 - S - L)).re = -‖S‖ ^ 2 - (star S * L).re := by
        rw [mul_sub, mul_sub, mul_zero, zero_sub, Complex.sub_re, Complex.neg_re, Complex.star_def,
          Complex.conj_mul']
        simp [← Complex.ofReal_pow]
      linarith
    have h1 : |(star S * L).re| ≤ 12 * Real.pi * (vnorm (DUc va vb) * re) := by
      rw [re_lin, abs_mul, abs_of_pos (by positivity : (0:ℝ) < 12 * Real.pi)]
      exact mul_le_mul_of_nonneg_left ((abs_DU_dot_le hz).trans
        (mul_le_mul_of_nonneg_left hzr (vnorm_nonneg _))) (by positivity)
    have h2 : |(star S * (0 - S - L)).re| ≤ ‖S‖ * (2 * Real.pi ^ 2 * re ^ 2) := by
      refine (Complex.abs_re_le_norm _).trans ?_
      rw [norm_mul, norm_star]
      exact mul_le_mul_of_nonneg_left (hR.trans (by gcongr)) (norm_nonneg _)
    rw [div_le_iff₀ (by positivity)]
    have hsq : ‖S‖ ^ 2 ≤ 12 * Real.pi * (vnorm (DUc va vb) * re) + ‖S‖ * (2 * Real.pi ^ 2 * re ^ 2) := by
      have := neg_abs_le (star S * L).re
      have := neg_abs_le (star S * (0 - S - L)).re
      linarith
    nlinarith

/-- **Unbiasedness, the identity form.**  `|(|S|²/6 − 1)/(4π) + D_U·z| ≤ π r_e²(1 + |S|/6)`. -/
theorem edge_U_identity {va vb z : I6 → ℝ} {re : ℝ} (hzr : vnorm z ≤ re)
    (hunb : ‖Se' va vb z‖ ^ 2 = 6) :
    |(‖Se va vb‖ ^ 2 / 6 - 1) / (4 * Real.pi) + ∑ j, DU va vb j * z j| ≤
      Real.pi * re ^ 2 * (1 + ‖Se va vb‖ / 6) := by
  have hpi := Real.pi_pos
  have h6 := sqrt6_pos
  have h6sq : Real.sqrt 6 ^ 2 = 6 := Real.sq_sqrt (by norm_num)
  have hz0 := vnorm_nonneg z
  have hre0 : 0 ≤ re := hz0.trans hzr
  set S := Se va vb
  set L := ∑ j, Qe va vb j * (((2 * Real.pi * z j : ℝ) : ℂ) * Complex.I)
  set D := Se' va vb z - S
  set R := D - L
  have hz2 : vnorm z ^ 2 ≤ re ^ 2 := pow_le_pow_left₀ hz0 hzr 2
  have hR : ‖R‖ ≤ 2 * Real.pi ^ 2 * re ^ 2 :=
    (edge_expand va vb z).trans (mul_le_mul_of_nonneg_left hz2 (by positivity))
  have hD : ‖D‖ ≤ 2 * Real.pi * (Real.sqrt 6 * re) :=
    (norm_Se'_sub_Se_le va vb z).trans (mul_le_mul_of_nonneg_left
      (mul_le_mul_of_nonneg_left hzr h6.le) (by positivity))
  have hsq : ‖Se' va vb z‖ ^ 2 = ‖S‖ ^ 2 + 2 * (star S * D).re + ‖D‖ ^ 2 := by
    have : Se' va vb z = S + D := by simp [D]
    rw [this, ← Complex.normSq_eq_norm_sq, ← Complex.normSq_eq_norm_sq, ← Complex.normSq_eq_norm_sq,
      Complex.normSq_add]
    simp only [Complex.mul_re, Complex.star_def, Complex.conj_re, Complex.conj_im]; ring
  have hre_D : (star S * D).re = 12 * Real.pi * ∑ j, DU va vb j * z j + (star S * R).re := by
    have : D = L + R := by simp [R]
    rw [this, mul_add, Complex.add_re, re_lin]
  have hSR : |(star S * R).re| ≤ ‖S‖ * (2 * Real.pi ^ 2 * re ^ 2) := by
    refine (Complex.abs_re_le_norm _).trans ?_
    rw [norm_mul, norm_star]; exact mul_le_mul_of_nonneg_left hR (norm_nonneg _)
  have hD2 : ‖D‖ ^ 2 ≤ 24 * Real.pi ^ 2 * re ^ 2 := by
    have := pow_le_pow_left₀ (norm_nonneg _) hD 2
    nlinarith
  have hval : (‖S‖ ^ 2 / 6 - 1) / (4 * Real.pi) + ∑ j, DU va vb j * z j =
      -(2 * (star S * R).re + ‖D‖ ^ 2) / (24 * Real.pi) := by
    rw [hunb, hre_D] at hsq
    field_simp
    linarith
  rw [hval, abs_div, abs_neg, abs_of_pos (by positivity : (0:ℝ) < 24 * Real.pi), div_le_iff₀ (by positivity)]
  have h1 : |2 * (star S * R).re + ‖D‖ ^ 2| ≤ 2 * (‖S‖ * (2 * Real.pi ^ 2 * re ^ 2)) + 24 * Real.pi ^ 2 * re ^ 2 := by
    refine (abs_add_le _ _).trans ?_
    rw [abs_mul, abs_two, abs_of_nonneg (sq_nonneg ‖D‖)]
    linarith
  refine h1.trans (le_of_eq ?_)
  field_simp; ring

/-- **Unbiasedness (direct and support).** -/
theorem edge_U {va vb z : I6 → ℝ} {re : ℝ} (hz : ∑ j, z j = 0) (hzr : vnorm z ≤ re)
    (hunb : ‖Se' va vb z‖ ^ 2 = 6) :
    |‖Se va vb‖ - Real.sqrt 6| ≤ 2 * Real.pi * Real.sqrt 6 * re ∧
      |(‖Se va vb‖ ^ 2 / 6 - 1) / (4 * Real.pi)| ≤ re * vnorm (DUc va vb) + Real.pi * re ^ 2 * (1 + ‖Se va vb‖ / 6) := by
  have hpi := Real.pi_pos
  have h6 := sqrt6_pos
  refine ⟨?_, ?_⟩
  · have hS' : ‖Se' va vb z‖ = Real.sqrt 6 := by
      rw [← Real.sqrt_sq (norm_nonneg _), hunb]
    have h1 := norm_Se'_sub_Se_le va vb z
    have h2 : |‖Se va vb‖ - Real.sqrt 6| ≤ ‖Se' va vb z - Se va vb‖ := by
      rw [← hS', abs_sub_comm]; exact abs_norm_sub_norm_le _ _
    have := mul_le_mul_of_nonneg_left hzr (by positivity : (0:ℝ) ≤ 2 * Real.pi * Real.sqrt 6)
    linarith
  · have hI := edge_U_identity hzr hunb
    have hdot : |∑ j, DU va vb j * z j| ≤ re * vnorm (DUc va vb) := by
      rw [mul_comm]
      exact (abs_DU_dot_le hz).trans (mul_le_mul_of_nonneg_left hzr (vnorm_nonneg _))
    set A := (‖Se va vb‖ ^ 2 / 6 - 1) / (4 * Real.pi)
    set B := ∑ j, DU va vb j * z j
    rw [abs_le] at hI hdot ⊢
    constructor <;> linarith [hI.1, hI.2, hdot.1, hdot.2]

/-- **Orthogonality, the identity form** (for the joint test): for `y_e = (y₁, y₂)`,
`|y₁(Re S/(2π) + Σ(−Im Q_j)z_j) + y₂(Im S/(2π) + Σ Re Q_j z_j)| ≤ ‖y_e‖ π r_e²`. -/
theorem edge_O_identity {va vb z : I6 → ℝ} {re : ℝ} (hzr : vnorm z ≤ re) (horth : Se' va vb z = 0)
    (y1 y2 : ℝ) :
    |y1 * ((Se va vb).re / (2 * Real.pi) + ∑ j, -(Qe va vb j).im * z j) +
      y2 * ((Se va vb).im / (2 * Real.pi) + ∑ j, (Qe va vb j).re * z j)| ≤
      Real.sqrt (y1 ^ 2 + y2 ^ 2) * (Real.pi * re ^ 2) := by
  have hpi := Real.pi_pos
  set S := Se va vb
  set L := ∑ j, Qe va vb j * (((2 * Real.pi * z j : ℝ) : ℂ) * Complex.I)
  set R := Se' va vb z - S - L
  have hz2 : vnorm z ^ 2 ≤ re ^ 2 := pow_le_pow_left₀ (vnorm_nonneg z) hzr 2
  have hR : ‖R‖ ≤ 2 * Real.pi ^ 2 * re ^ 2 :=
    (edge_expand va vb z).trans (mul_le_mul_of_nonneg_left hz2 (by positivity))
  -- S + L = −R, so (S + L)/(2π) = −R/(2π)
  have hL : L = ((2 * Real.pi : ℝ) : ℂ) * ∑ j, Qe va vb j * ((z j : ℂ) * Complex.I) := by
    simp only [L, Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by push_cast; ring
  have hLre : L.re = 2 * Real.pi * ∑ j, -(Qe va vb j).im * z j := by
    rw [hL, Complex.re_ofReal_mul, Complex.re_sum]
    congr 1; exact Finset.sum_congr rfl fun j _ => by simp [Complex.mul_re]
  have hLim : L.im = 2 * Real.pi * ∑ j, (Qe va vb j).re * z j := by
    rw [hL, Complex.im_ofReal_mul, Complex.im_sum]
    congr 1; exact Finset.sum_congr rfl fun j _ => by simp [Complex.mul_im]
  have hsum : S + L = -R := by simp only [R, horth]; ring
  have hre : (S.re / (2 * Real.pi) + ∑ j, -(Qe va vb j).im * z j) = -R.re / (2 * Real.pi) := by
    have := congrArg Complex.re hsum
    rw [Complex.add_re, Complex.neg_re, hLre] at this
    rw [eq_div_iff (by positivity), add_mul, div_mul_cancel₀ _ (by positivity)]
    linarith
  have him : (S.im / (2 * Real.pi) + ∑ j, (Qe va vb j).re * z j) = -R.im / (2 * Real.pi) := by
    have := congrArg Complex.im hsum
    rw [Complex.add_im, Complex.neg_im, hLim] at this
    rw [eq_div_iff (by positivity), add_mul, div_mul_cancel₀ _ (by positivity)]
    linarith
  rw [hre, him]
  have hcs := abs_sum_mul_le (ι := Fin 2) (![y1, y2]) (![-R.re / (2 * Real.pi), -R.im / (2 * Real.pi)])
  simp only [Fin.sum_univ_two, Matrix.cons_val_zero, Matrix.cons_val_one] at hcs
  refine hcs.trans (mul_le_mul_of_nonneg_left ?_ (Real.sqrt_nonneg _))
  have hn : Real.sqrt ((-R.re / (2 * Real.pi)) ^ 2 + (-R.im / (2 * Real.pi)) ^ 2) = ‖R‖ / (2 * Real.pi) := by
    have e2 : (-R.re / (2 * Real.pi)) ^ 2 + (-R.im / (2 * Real.pi)) ^ 2 = (‖R‖ / (2 * Real.pi)) ^ 2 := by
      rw [div_pow, div_pow, div_pow, neg_sq, neg_sq, ← add_div, Complex.sq_norm, Complex.normSq_apply]
      ring
    rw [e2, Real.sqrt_sq (by positivity)]
  rw [hn, div_le_iff₀ (by positivity)]
  nlinarith

end NoFourMUBs.StageC
