import NoFourMUBs.Step1.DoubleAlg
import Step1.Generated_boundary_core

/-!
# Step 1, items 14–23: the double-boundary census (analysis)

Both traces on the boundary: `U₀ = 2a₀ + ā₀²`, `V₀ = 2b₀ + b̄₀²`.  Write `a₀ = z₀w₀`, `b₀ = z₀w̄₀`.  Moving `w₀` and `z₀`
along the circle keeps the pair in `D × D`, and `ℛ = R(Re w, Re z³)` there.  A relative local maximum therefore gives
local maxima of one-variable restrictions; first-order conditions and the algebra of `DoubleAlg` leave only the
edge points, after excluding the origin (`c = h = 0`) and the cusp branch by explicit curves along which `ℛ` increases.
-/

open Filter Topology NoFourMUBs.Step1Saddle

namespace NoFourMUBs.Step1Geo

open Step1.boundary_core

/-! ### Basic facts -/

lemma unit_star_mul {z : ℂ} (hz : Complex.normSq z = 1) : star z * z = 1 := by
  rw [Complex.star_def, Complex.conj_mul', ← Complex.ofReal_pow, ← Complex.normSq_eq_norm_sq, hz]; norm_num

lemma inD_boundary {a : ℂ} (ha : Complex.normSq a = 1) : InD (2 * a + star a ^ 2) := by
  have hs := unit_star_mul ha
  refine ⟨a, a, star a ^ 2, ha, ha, ?_, ?_, by ring⟩
  · rw [sq, Complex.normSq_mul, Complex.star_def, Complex.normSq_conj, ha, one_mul]
  · linear_combination (star a * a + 1) * hs

lemma inD_three : InD 3 := ⟨1, 1, 1, by simp, by simp, by simp, by ring, by norm_num⟩

lemma normSq_mul_one {z w : ℂ} (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1) :
    Complex.normSq (z * w) = 1 := by rw [Complex.normSq_mul, hz, hw, one_mul]

lemma normSq_star_one {z : ℂ} (hz : Complex.normSq z = 1) : Complex.normSq (star z) = 1 := by
  rw [Complex.star_def, Complex.normSq_conj, hz]

/-- Square-root coordinates for two boundary roots. -/
lemma exists_zw {a b : ℂ} (ha : Complex.normSq a = 1) (hb : Complex.normSq b = 1) :
    ∃ z w : ℂ, Complex.normSq z = 1 ∧ Complex.normSq w = 1 ∧ a = z * w ∧ b = z * star w := by
  obtain ⟨z, hz⟩ := IsAlgClosed.exists_pow_nat_eq (a * b) (by norm_num : 0 < 2)
  have hz1 : Complex.normSq z = 1 := by
    have : Complex.normSq z ^ 2 = 1 := by
      rw [← map_pow, hz, Complex.normSq_mul, ha, hb, one_mul]
    have h0 : 0 ≤ Complex.normSq z := Complex.normSq_nonneg z
    nlinarith
  have hz0 : z ≠ 0 := by rintro rfl; simp at hz1
  have hsz := unit_star_mul hz1
  refine ⟨z, a * star z, hz1, normSq_mul_one ha (normSq_star_one hz1), ?_, ?_⟩
  · rw [mul_comm z, mul_assoc, hsz, mul_one]
  · rw [star_mul', star_star]
    have hsa := unit_star_mul ha
    calc b = (star a * a) * b := by rw [hsa, one_mul]
      _ = star a * (a * b) := by ring
      _ = star a * z ^ 2 := by rw [hz]
      _ = z * (star a * z) := by ring

/-- The pair of boundary traces of `zw`, `z w̄`. -/
noncomputable def Tp (z w : ℂ) : ℂ × ℂ := (2 * (z * w) + star (z * w) ^ 2, 2 * (z * star w) + star (z * star w) ^ 2)

lemma Tp_mem {z w : ℂ} (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1) : Tp z w ∈ DD :=
  ⟨inD_boundary (normSq_mul_one hz hw), inD_boundary (normSq_mul_one hz (normSq_star_one hw))⟩

lemma calRUV_Tp {z w : ℂ} (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1) :
    calRUV' (Tp z w) = Rch w.re (z ^ 3).re := calRUV_boundary hz hw

/-- A relative local maximum restricts to a local maximum along any continuous curve in `DD`. -/
lemma localMax_along {p : ℂ × ℂ} (hmax : IsLocalMaxOn calRUV' DD p) {γ : ℝ → ℂ × ℂ} (hγ : Continuous γ)
    (hγD : ∀ t, γ t ∈ DD) (h0 : γ 0 = p) : IsLocalMax (fun t => calRUV' (γ t)) 0 := by
  have hT : Tendsto γ (𝓝 0) (𝓝[DD] p) :=
    tendsto_nhdsWithin_iff.mpr ⟨h0 ▸ hγ.tendsto 0, Filter.Eventually.of_forall hγD⟩
  have := IsMaxFilter.comp_tendsto (f := calRUV') (g := γ) (b := 0) (by rw [h0]; exact hmax) hT
  exact this

/-- A local maximum cannot have strictly larger values at all nearby nonzero points. -/
lemma not_localMax_of_gt {g : ℝ → ℝ} (hmax : IsLocalMax g 0) (hgt : ∀ᶠ t in 𝓝[≠] (0 : ℝ), g 0 < g t) : False := by
  have h1 : ∀ᶠ t in 𝓝[≠] (0 : ℝ), g t ≤ g 0 := nhdsWithin_le_nhds hmax
  obtain ⟨t, ht1, ht2⟩ := (h1.and hgt).exists
  linarith

/-! ### Circle coordinates -/

lemma re_mul_exp (w : ℂ) (t : ℝ) :
    (w * Complex.exp (t * Complex.I)).re = w.re * Real.cos t - w.im * Real.sin t := by
  rw [Complex.mul_re, Complex.exp_ofReal_mul_I_re, Complex.exp_ofReal_mul_I_im]

lemma normSq_exp_I (t : ℝ) : Complex.normSq (Complex.exp (t * Complex.I)) = 1 := by
  rw [Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I]; norm_num

lemma hasDerivAt_cos_sin (A B : ℝ) : HasDerivAt (fun t => A * Real.cos t - B * Real.sin t) (-B) 0 := by
  have := ((Real.hasDerivAt_cos 0).const_mul A).sub ((Real.hasDerivAt_sin 0).const_mul B)
  refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_) <;> simp

lemma cube_mul_exp (z : ℂ) (t : ℝ) : (z * Complex.exp (t * Complex.I)) ^ 3 = z ^ 3 * Complex.exp ((3 * t : ℝ) * Complex.I) := by
  rw [mul_pow, ← Complex.exp_nat_mul]; congr 2; push_cast; ring

/-- The vertical edges `c = ±1` have `R ≤ 0`. -/
lemma Rch_vertical {c h : ℝ} (hc : c ^ 2 = 1) : Rch c h ≤ 0 := by
  have hN : 0 < Np c h := by
    have hc4 : c ^ 4 = 1 := by rw [show c ^ 4 = (c ^ 2) ^ 2 by ring, hc]; norm_num
    have hc3 : c ^ 3 = c := by rw [show c ^ 3 = c * c ^ 2 by ring, hc, mul_one]
    unfold Np; rw [hc4, hc3, hc]; nlinarith [sq_nonneg (2 * h + 3 * c), sq_nonneg c]
  unfold Rch
  have : 0 ≤ Lp c ^ 2 * Mp c h ^ 2 := by positivity
  nlinarith [mul_nonneg this hN.le]

/-! ### The cusp branch: the split curve increases `ℛ` -/

noncomputable def Kspl (q y : ℝ) : ℝ := -4096*q^5*y^6 - 6144*q^5*y^4 - 2304*q^5*y^2 - 256*q^5 - 49152*q^4*y^7 - 4096*q^4*y^6 - 79872*q^4*y^5 - 6144*q^4*y^4 - 29184*q^4*y^3 - 2304*q^4*y^2 - 3072*q^4*y - 256*q^4 - 196608*q^3*y^8 - 49152*q^3*y^7 - 378880*q^3*y^6 - 79872*q^3*y^5 - 139008*q^3*y^4 - 29184*q^3*y^3 - 12288*q^3*y^2 - 3072*q^3*y + 512*q^3 - 319488*q^2*y^9 - 196608*q^2*y^8 - 897024*q^2*y^7 - 378880*q^2*y^6 - 408576*q^2*y^5 - 139008*q^2*y^4 - 37376*q^2*y^3 - 12288*q^2*y^2 + 3072*q^2*y + 512*q^2 - 196608*q*y^10 - 319488*q*y^9 - 1136640*q*y^8 - 897024*q*y^7 - 892672*q*y^6 - 408576*q*y^5 - 118272*q*y^4 - 37376*q*y^3 + 5376*q*y^2 + 3072*q*y - 256*q - 49152*y^11 - 196608*y^10 - 718848*y^9 - 1136640*y^8 - 1362432*y^7 - 892672*y^6 - 380928*y^5 - 118272*y^4 - 8192*y^3 + 5376*y^2 - 256

lemma split_identity (q y σ : ℝ) (hσ : σ ^ 2 = 1 - y ^ 2) :
    -4 * cuspF (2 * y * q + 2 * y ^ 2 - 1) (2 * σ * (q - y)) * cuspG (2 * y * q + 2 * y ^ 2 - 1) (2 * σ * (q - y)) ^ 2 -
      (-4 * cuspF (2 * y * 1 + 2 * y ^ 2 - 1) (2 * σ * (1 - y)) * cuspG (2 * y * 1 + 2 * y ^ 2 - 1) (2 * σ * (1 - y)) ^ 2) =
      (q - 1) * Kspl q y := by
  unfold cuspF cuspG Kspl
  linear_combination (-256*q^6*σ^4 - 2816*q^6*σ^2*y^2 - 256*q^6*σ^2 - 8704*q^6*y^4 - 2560*q^6*y^2 - 256*q^6 + 1536*q^5*σ^4*y + 4608*q^5*σ^2*y^3 - 3072*q^5*σ^2*y - 27648*q^5*y^5 - 32256*q^5*y^3 - 3072*q^5*y - 3840*q^4*σ^4*y^2 + 6912*q^4*σ^2*y^4 + 9984*q^4*σ^2*y^2 + 768*q^4*σ^2 + 4608*q^4*y^6 - 43008*q^4*y^4 - 9216*q^4*y^2 + 768*q^4 + 5120*q^3*σ^4*y^3 - 17408*q^3*σ^2*y^5 - 4096*q^3*σ^2*y^3 - 3072*q^3*σ^2*y + 63488*q^3*y^7 + 66560*q^3*y^5 - 1024*q^3*y^3 + 6144*q^3*y - 3840*q^2*σ^4*y^4 + 6912*q^2*σ^2*y^6 - 13056*q^2*σ^2*y^4 + 4608*q^2*σ^2*y^2 + 4608*q^2*y^8 + 99840*q^2*y^6 + 19200*q^2*y^4 - 4608*q^2*y^2 - 768*q^2 + 1536*q*σ^4*y^5 + 4608*q*σ^2*y^7 + 15360*q*σ^2*y^5 - 3072*q*σ^2*y^3 - 27648*q*y^9 - 50688*q*y^7 + 18432*q*y^5 - 12288*q*y^3 + 1536*q*y - 1536*σ^4*y^5 + 3840*σ^4*y^4 - 5120*σ^4*y^3 + 3840*σ^4*y^2 - 1536*σ^4*y + 256*σ^4 - 4608*σ^2*y^7 - 6912*σ^2*y^6 + 2048*σ^2*y^5 + 6144*σ^2*y^4 + 2560*σ^2*y^3 - 11776*σ^2*y^2 + 6144*σ^2*y - 512*σ^2 + 27648*y^9 - 4608*y^8 - 12800*y^7 - 104448*y^6 - 57344*y^5 + 32512*y^4 + 45568*y^3 + 16384*y^2 - 4608*y + 256) * hσ

lemma Kspl_one (y : ℝ) : Kspl 1 y = (-12288*y^9 - 79872*y^8 - 216576*y^7 - 321792*y^6 - 276864*y^5 - 142080*y^4 - 57120*y^3 - 10512*y^2 - 5280*y + 5940) * (4 * y ^ 2 + 6 * y + 1) - 30360 * y - 5940 := by
  unfold Kspl; ring

lemma Kspl_one_neg {y : ℝ} (hy : 4 * y ^ 2 + 6 * y + 1 = 0) (hlo : -9 / 46 < y) : Kspl 1 y < 0 := by
  rw [Kspl_one, hy, mul_zero]; linarith

lemma inD_split (e : ℂ) (he : Complex.normSq e = 1) (ε : ℝ) : InD (2 * e * (Real.cos ε : ℂ) + star e ^ 2) := by
  have hs := unit_star_mul he
  have hE : Complex.exp (ε * Complex.I) * Complex.exp ((-ε : ℝ) * Complex.I) = 1 := by
    rw [← Complex.exp_add]; push_cast; ring_nf; exact Complex.exp_zero
  refine ⟨e * Complex.exp (ε * Complex.I), e * Complex.exp ((-ε : ℝ) * Complex.I), star e ^ 2,
    normSq_mul_one he (normSq_exp_I ε), normSq_mul_one he (normSq_exp_I (-ε)), ?_, ?_, ?_⟩
  · rw [sq, Complex.normSq_mul, normSq_star_one he, one_mul]
  · linear_combination (e * e * star e ^ 2) * hE + (star e * e + 1) * hs
  · rw [Complex.ofReal_cos]; have := Complex.two_cos (ε : ℂ); push_cast; linear_combination (-e) * this

/-- **The split curve.**  At `(2e + ē², 3)` with `4y² + 6y + 1 = 0` (`y = Re e`), splitting the double root `e`
into `e e^{±iε}` strictly increases `ℛ`. -/
theorem split_contra {e : ℂ} (he : Complex.normSq e = 1) (hy : 4 * e.re ^ 2 + 6 * e.re + 1 = 0)
    (hmax : IsLocalMaxOn calRUV' DD (2 * e + star e ^ 2, 3)) : False := by
  set y := e.re with hydef
  set σ := e.im with hσdef
  have hσ : σ ^ 2 = 1 - y ^ 2 := by rw [Complex.normSq_apply] at he; nlinarith
  have hy1 : -1 ≤ y := by nlinarith [sq_nonneg σ]
  have hlo : -9 / 46 < y := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ y + 1) (by linarith : (0 : ℝ) ≤ -9 / 46 - y)]
  have hK := Kspl_one_neg hy hlo
  set γ : ℝ → ℂ × ℂ := fun ε => (2 * e * (Real.cos ε : ℂ) + star e ^ 2, 3) with hγdef
  have hγ : Continuous γ := by simp only [hγdef]; fun_prop
  have hloc := localMax_along hmax hγ (fun ε => ⟨inD_split e he ε, inD_three⟩) (by simp [hγdef])
  set Φ : ℝ → ℝ := fun q => -4 * cuspF (2 * y * q + 2 * y ^ 2 - 1) (2 * σ * (q - y)) *
    cuspG (2 * y * q + 2 * y ^ 2 - 1) (2 * σ * (q - y)) ^ 2 with hΦdef
  have hval : ∀ ε, calRUV' (γ ε) = Φ (Real.cos ε) := by
    intro ε
    have hU : 2 * e * (Real.cos ε : ℂ) + star e ^ 2 =
        ⟨2 * y * Real.cos ε + 2 * y ^ 2 - 1, 2 * σ * (Real.cos ε - y)⟩ := by
      apply Complex.ext
      · simp only [Complex.add_re, Complex.mul_re, sq, Complex.star_def, Complex.conj_re, Complex.conj_im,
          Complex.ofReal_re, Complex.ofReal_im]; norm_num; linear_combination (-1 : ℝ) * hσ
      · simp only [Complex.add_im, Complex.mul_im, Complex.mul_re, sq, Complex.star_def, Complex.conj_re,
          Complex.conj_im, Complex.ofReal_re, Complex.ofReal_im]; norm_num; ring
    simp only [hγdef, calRUV', hΦdef]
    rw [calRUV_swap, hU, calRUV_three]
  refine not_localMax_of_gt hloc ?_
  have hKc : Continuous fun ε : ℝ => Kspl (Real.cos ε) y := by unfold Kspl; fun_prop
  have hKe : ∀ᶠ ε in 𝓝 (0 : ℝ), Kspl (Real.cos ε) y < 0 :=
    hKc.continuousAt.eventually_lt continuousAt_const (by simpa using hK)
  have hcos : ∀ᶠ ε in 𝓝[≠] (0 : ℝ), Real.cos ε < 1 := by
    have : Set.Ioo (-(2 * Real.pi)) (2 * Real.pi) ∈ 𝓝 (0 : ℝ) :=
      Ioo_mem_nhds (by linarith [Real.pi_pos]) (by linarith [Real.pi_pos])
    filter_upwards [nhdsWithin_le_nhds this, self_mem_nhdsWithin] with ε hε hε0
    exact lt_of_le_of_ne (Real.cos_le_one ε)
      (fun h => hε0 ((Real.cos_eq_one_iff_of_lt_of_lt hε.1 hε.2).mp h))
  filter_upwards [nhdsWithin_le_nhds hKe, hcos] with ε hKε hcε
  show calRUV' (γ 0) < calRUV' (γ ε)
  rw [hval 0, hval ε, Real.cos_zero]
  have hid := split_identity (Real.cos ε) y σ hσ
  have : 0 < (Real.cos ε - 1) * Kspl (Real.cos ε) y := mul_pos_of_neg_of_neg (by linarith) hKε
  simp only [hΦdef]; linarith

/-! ### First-order conditions -/

lemma hasDerivAt_Rch_c (c h : ℝ) : HasDerivAt (fun x => Rch x h) (d_dRc c h) c := by
  have := derivative_differentiate_R_c_1 c h
  simp only [d_dRc, d_L, d_M, d_P]
  refine this.congr_of_eventuallyEq (Filter.Eventually.of_forall fun x => ?_)
  simp only [Rch, Lp, Mp, Np]; ring

lemma hasDerivAt_Rch_h (c h : ℝ) : HasDerivAt (fun x => Rch c x) (d_dRh c h) h := by
  have := derivative_differentiate_R_h_1 c h
  simp only [d_dRh, d_L, d_M, d_Q]
  refine this.congr_of_eventuallyEq (Filter.Eventually.of_forall fun x => ?_)
  simp only [Rch, Lp, Mp, Np]; ring

lemma hasDerivAt_cos_sin3 (A B : ℝ) :
    HasDerivAt (fun t => A * Real.cos (3 * t) - B * Real.sin (3 * t)) (-3 * B) 0 := by
  have hc := (Real.hasDerivAt_cos (3 * 0)).comp 0 ((hasDerivAt_id (0 : ℝ)).const_mul 3)
  have hs := (Real.hasDerivAt_sin (3 * 0)).comp 0 ((hasDerivAt_id (0 : ℝ)).const_mul 3)
  have := (hc.const_mul A).sub (hs.const_mul B)
  refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)
  · simp; ring
  · simp

lemma im_ne_of_Rch_pos {w : ℂ} (hw : Complex.normSq w = 1) {h : ℝ} (hpos : 0 < Rch w.re h) : w.im ≠ 0 := by
  intro h0
  have : w.re ^ 2 = 1 := by rw [Complex.normSq_apply, h0] at hw; nlinarith
  exact absurd (Rch_vertical (h := h) this) (not_le.mpr hpos)

/-- **First-order conditions** along the two circle directions `w ↦ w e^{it}`, `z ↦ z e^{it}`. -/
theorem first_order {z w : ℂ} (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1)
    (hpos : 0 < calRUV' (Tp z w)) (hmax : IsLocalMaxOn calRUV' DD (Tp z w)) :
    d_dRc w.re (z ^ 3).re = 0 ∧ (d_dRh w.re (z ^ 3).re = 0 ∨ (z ^ 3).im = 0) := by
  rw [calRUV_Tp hz hw] at hpos
  constructor
  · have hγ : Continuous fun t : ℝ => Tp z (w * Complex.exp (t * Complex.I)) := by unfold Tp; fun_prop
    have hloc := localMax_along hmax hγ
      (fun t => Tp_mem hz (normSq_mul_one hw (normSq_exp_I t))) (by simp)
    have hfun : (fun t : ℝ => calRUV' (Tp z (w * Complex.exp (t * Complex.I)))) =
        fun t => Rch (w.re * Real.cos t - w.im * Real.sin t) (z ^ 3).re := by
      funext t; rw [calRUV_Tp hz (normSq_mul_one hw (normSq_exp_I t)), re_mul_exp]
    rw [hfun] at hloc
    have h1 : HasDerivAt (fun x => Rch x (z ^ 3).re) (d_dRc w.re (z ^ 3).re)
        (w.re * Real.cos 0 - w.im * Real.sin 0) := by simpa using hasDerivAt_Rch_c w.re (z ^ 3).re
    have hd := h1.comp 0 (hasDerivAt_cos_sin w.re w.im)
    have := hloc.hasDerivAt_eq_zero hd
    rcases mul_eq_zero.mp this with h | h
    · exact h
    · exact absurd (neg_eq_zero.mp h) (im_ne_of_Rch_pos hw hpos)
  · by_cases him : (z ^ 3).im = 0
    · exact Or.inr him
    left
    have hγ : Continuous fun t : ℝ => Tp (z * Complex.exp (t * Complex.I)) w := by unfold Tp; fun_prop
    have hloc := localMax_along hmax hγ
      (fun t => Tp_mem (normSq_mul_one hz (normSq_exp_I t)) hw) (by simp)
    have hfun : (fun t : ℝ => calRUV' (Tp (z * Complex.exp (t * Complex.I)) w)) =
        fun t => Rch w.re ((z ^ 3).re * Real.cos (3 * t) - (z ^ 3).im * Real.sin (3 * t)) := by
      funext t; rw [calRUV_Tp (normSq_mul_one hz (normSq_exp_I t)) hw, cube_mul_exp, re_mul_exp]
    rw [hfun] at hloc
    have h1 : HasDerivAt (fun x => Rch w.re x) (d_dRh w.re (z ^ 3).re)
        ((z ^ 3).re * Real.cos (3 * 0) - (z ^ 3).im * Real.sin (3 * 0)) := by
      simpa using hasDerivAt_Rch_h w.re (z ^ 3).re
    have hd := h1.comp 0 (hasDerivAt_cos_sin3 (z ^ 3).re (z ^ 3).im)
    have := hloc.hasDerivAt_eq_zero hd
    rcases mul_eq_zero.mp this with h | h
    · exact h
    · exact absurd (by linarith : (z ^ 3).im = 0) him

/-! ### The origin -/

noncomputable def P1 (c : ℝ) : ℝ := -16777216*c^22 + 67108864*c^20 - 90177536*c^18 + 30408704*c^16 + 28770304*c^14 - 22740992*c^12 + 2850816*c^10 + 1327104*c^8 - 1015808*c^6 + 274432*c^4 - 38912*c^2 + 3072

lemma Rch_origin_curve (c : ℝ) : Rch c (c * (3 - 4 * c ^ 2)) = 256 + c ^ 2 * P1 c := by
  unfold Rch Lp Mp Np P1; ring

/-- **The origin `c = h = 0` is not a relative local maximum**: along `c = sin t`, `h = sin 3t`,
`R − 256 = c² P₁(c)` with `P₁(0) = 3072`. -/
theorem origin_contra {z w : ℂ} (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1) (hc : w.re = 0)
    (hh : (z ^ 3).re = 0) (hmax : IsLocalMaxOn calRUV' DD (Tp z w)) : False := by
  have hwi : w.im ^ 2 = 1 := by rw [Complex.normSq_apply, hc] at hw; nlinarith
  have hz3 : Complex.normSq (z ^ 3) = 1 := by rw [map_pow, hz, one_pow]
  have hzi : (z ^ 3).im ^ 2 = 1 := by rw [Complex.normSq_apply, hh] at hz3; nlinarith
  set σ := (z ^ 3).im * w.im with hσdef
  have hσ : σ = 1 ∨ σ = -1 := by
    have : (σ - 1) * (σ + 1) = 0 := by
      have : σ ^ 2 = 1 := by rw [hσdef, mul_pow, hzi, hwi]; norm_num
      linear_combination this
    rcases mul_eq_zero.mp this with h | h
    · left; linarith
    · right; linarith
  set γ : ℝ → ℂ × ℂ := fun t => Tp (z * Complex.exp ((σ * t : ℝ) * Complex.I)) (w * Complex.exp (t * Complex.I))
    with hγdef
  have hγ : Continuous γ := by simp only [hγdef]; unfold Tp; fun_prop
  have hloc := localMax_along hmax hγ (fun t => Tp_mem (normSq_mul_one hz (normSq_exp_I _))
    (normSq_mul_one hw (normSq_exp_I t))) (by simp [hγdef])
  have hval : ∀ t, calRUV' (γ t) = 256 + (-(w.im * Real.sin t)) ^ 2 * P1 (-(w.im * Real.sin t)) := by
    intro t
    simp only [hγdef]
    rw [calRUV_Tp (normSq_mul_one hz (normSq_exp_I _)) (normSq_mul_one hw (normSq_exp_I t)), cube_mul_exp,
      re_mul_exp, re_mul_exp, hc, hh, ← Rch_origin_curve]
    congr 1
    · ring
    · have hS := Real.sin_three_mul t
      rcases hσ with h1 | h1
      · have e1 : (z ^ 3).im * w.im = 1 := by rw [← hσdef, h1]
        rw [h1, one_mul, hS]
        linear_combination (-(w.im) * (3 * Real.sin t - 4 * Real.sin t ^ 3)) * e1 +
          ((z ^ 3).im * (3 * Real.sin t - 4 * Real.sin t ^ 3) - 4 * w.im * Real.sin t ^ 3) * hwi
      · have e1 : (z ^ 3).im * w.im = -1 := by rw [← hσdef, h1]
        rw [h1, neg_one_mul, mul_neg, Real.sin_neg, hS]
        linear_combination (w.im * (3 * Real.sin t - 4 * Real.sin t ^ 3)) * e1 +
          (-(z ^ 3).im * (3 * Real.sin t - 4 * Real.sin t ^ 3) - 4 * w.im * Real.sin t ^ 3) * hwi
  refine not_localMax_of_gt hloc ?_
  have hPc : Continuous fun t : ℝ => P1 (-(w.im * Real.sin t)) := by unfold P1; fun_prop
  have hP : ∀ᶠ t in 𝓝 (0 : ℝ), 0 < P1 (-(w.im * Real.sin t)) :=
    continuousAt_const.eventually_lt hPc.continuousAt (by simp [P1])
  have hS : ∀ᶠ t in 𝓝[≠] (0 : ℝ), Real.sin t ≠ 0 := by
    have : Set.Ioo (-Real.pi) Real.pi ∈ 𝓝 (0 : ℝ) := Ioo_mem_nhds (by linarith [Real.pi_pos]) Real.pi_pos
    filter_upwards [nhdsWithin_le_nhds this, self_mem_nhdsWithin] with t ht ht0
    exact fun h => ht0 ((Real.sin_eq_zero_iff_of_lt_of_lt ht.1 ht.2).mp h)
  have hwi0 : w.im ≠ 0 := fun h => by rw [h] at hwi; norm_num at hwi
  filter_upwards [nhdsWithin_le_nhds hP, hS] with t hPt hSt
  show calRUV' (γ 0) < calRUV' (γ t)
  rw [hval 0, hval t]
  have hne : -(w.im * Real.sin t) ≠ 0 := neg_ne_zero.mpr (mul_ne_zero hwi0 hSt)
  have h2 : 0 < (-(w.im * Real.sin t)) ^ 2 := lt_of_le_of_ne (sq_nonneg _) (Ne.symm (pow_ne_zero 2 hne))
  have := mul_pos h2 hPt
  simp only [Real.sin_zero, mul_zero, neg_zero, ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true,
    zero_pow, zero_mul, add_zero]
  linarith

/-! ### The cusp branch -/

lemma localMaxOn_rot {U V ω : ℂ} (h : IsLocalMaxOn calRUV' DD (U, V)) (hω : ω ^ 3 = 1)
    (hn : Complex.normSq ω = 1) : IsLocalMaxOn calRUV' DD (ω * U, ω * V) := by
  have hs := unit_star_mul hn
  have hω' : star ω ^ 3 = 1 := by rw [← star_pow, hω, star_one]
  have hn' := normSq_star_one hn
  rw [IsLocalMaxOn, IsMaxFilter, eventually_nhdsWithin_iff] at h ⊢
  have hφ : Continuous fun p : ℂ × ℂ => (star ω * p.1, star ω * p.2) := by fun_prop
  have h0 : (star ω * (ω * U), star ω * (ω * V)) = (U, V) := by
    rw [← mul_assoc, ← mul_assoc, hs, one_mul, one_mul]
  have hT : Tendsto (fun p : ℂ × ℂ => (star ω * p.1, star ω * p.2)) (𝓝 (ω * U, ω * V)) (𝓝 (U, V)) := by
    have := hφ.tendsto (ω * U, ω * V); rwa [h0] at this
  filter_upwards [hT.eventually h] with p hp hpD
  have := hp ⟨inD_cube hpD.1 hω' hn', inD_cube hpD.2 hω' hn'⟩
  simp only [calRUV'] at this ⊢
  rw [calRUV_cube _ _ _ hω' hn'] at this
  rw [calRUV_cube _ _ _ hω hn]; exact this

/-- A pair whose second trace is a cusp `3b` (`b³ = 1`) rotates to `(2e + ē², 3)`, `e = b̄a`. -/
theorem cube_root_branch {a b : ℂ} (ha : Complex.normSq a = 1) (hb : Complex.normSq b = 1) (hb3 : b ^ 3 = 1)
    (hy : 4 * (star b * a).re ^ 2 + 6 * (star b * a).re + 1 = 0)
    (hmax : IsLocalMaxOn calRUV' DD (2 * a + star a ^ 2, 2 * b + star b ^ 2)) : False := by
  have hs := unit_star_mul hb
  have hω3 : star b ^ 3 = 1 := by rw [← star_pow, hb3, star_one]
  have hsb : star b = b ^ 2 := by linear_combination (b ^ 2) * hs - star b * hb3
  have h' := localMaxOn_rot hmax hω3 (normSq_star_one hb)
  have e1 : star b * (2 * a + star a ^ 2) = 2 * (star b * a) + star (star b * a) ^ 2 := by
    rw [star_mul', star_star, hsb]; linear_combination (star a ^ 2 * b ^ 2) * hb3 - (star a ^ 2 * b ^ 2) * hb3
  have e2 : star b * (2 * b + star b ^ 2) = 3 := by
    rw [hsb]; linear_combination (b ^ 3 + 3) * hb3
  rw [e1, e2] at h'
  exact split_contra (normSq_mul_one (normSq_star_one hb) ha) hy h'

lemma re_cube_of_unit {w : ℂ} (hw : Complex.normSq w = 1) : (w ^ 3).re = 4 * w.re ^ 3 - 3 * w.re := by
  have hn : w.re ^ 2 + w.im ^ 2 = 1 := by rw [Complex.normSq_apply] at hw; linear_combination hw
  rw [show w ^ 3 = w * w * w by ring]
  simp only [Complex.mul_re, Complex.mul_im]
  linear_combination (-3 * w.re) * hn

/-- **The cusp branch `16c⁴ − 4c² − 1 = 0`, `h = 4c³ − 3c` carries no relative local maximum.** -/
theorem golden_contra {z w : ℂ} (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1)
    (hg : d_golden_factor w.re (z ^ 3).re = 0) (hr : d_golden_relation w.re (z ^ 3).re = 0)
    (hmax : IsLocalMaxOn calRUV' DD (Tp z w)) : False := by
  simp only [d_golden_factor, d_golden_relation] at hg hr
  have hsz := unit_star_mul hz
  have hsw := unit_star_mul hw
  have hn : w.re ^ 2 + w.im ^ 2 = 1 := by rw [Complex.normSq_apply] at hw; linear_combination hw
  have hZW : (z ^ 3).re = (w ^ 3).re := by rw [re_cube_of_unit hw]; linarith
  have hZ : Complex.normSq (z ^ 3) = 1 := by rw [map_pow, hz, one_pow]
  have hW : Complex.normSq (w ^ 3) = 1 := by rw [map_pow, hw, one_pow]
  have him : ((z ^ 3).im - (w ^ 3).im) * ((z ^ 3).im + (w ^ 3).im) = 0 := by
    rw [Complex.normSq_apply] at hZ hW; rw [hZW] at hZ; linear_combination hZ - hW
  have hmax' : IsLocalMaxOn calRUV' DD
      (2 * (z * w) + star (z * w) ^ 2, 2 * (z * star w) + star (z * star w) ^ 2) := hmax
  have hw2 : (w * w).re = 2 * w.re ^ 2 - 1 := by
    simp only [Complex.mul_re]; linear_combination (-1 : ℝ) * hn
  have hgold : ∀ y : ℝ, y = 2 * w.re ^ 2 - 1 → 4 * y ^ 2 + 6 * y + 1 = 0 := by
    rintro y rfl; linear_combination hg
  rcases mul_eq_zero.mp him with h | h
  · -- `z³ = w³`: the second root `z w̄` is a cube root of unity
    have hE : z ^ 3 = w ^ 3 := Complex.ext hZW (by linarith)
    have hb3 : (z * star w) ^ 3 = 1 := by
      rw [mul_pow, hE, ← star_pow, mul_comm (w ^ 3)]; exact unit_star_mul hW
    refine cube_root_branch (normSq_mul_one hz hw) (normSq_mul_one hz (normSq_star_one hw)) hb3 ?_ hmax'
    have : star (z * star w) * (z * w) = w * w := by
      rw [star_mul', star_star]; linear_combination (w * w) * hsz
    rw [this]; exact hgold _ hw2
  · -- `z³ = conj w³`: the first root `z w` is a cube root of unity
    have hE : z ^ 3 = star (w ^ 3) := Complex.ext (by rw [hZW]; rfl) (by
      show (z ^ 3).im = -(w ^ 3).im; linarith)
    have ha3 : (z * w) ^ 3 = 1 := by
      rw [mul_pow, hE]; exact unit_star_mul hW
    refine cube_root_branch (normSq_mul_one hz (normSq_star_one hw)) (normSq_mul_one hz hw) ha3 ?_
      (localMaxOn_swap hmax')
    have : star (z * w) * (z * star w) = star w * star w := by
      rw [star_mul']; linear_combination (star w * star w) * hsz
    rw [this]
    refine hgold _ ?_
    simp only [Complex.mul_re, Complex.star_def, Complex.conj_re, Complex.conj_im]
    linear_combination (-1 : ℝ) * hn

/-! ### The census on the double boundary -/

lemma Rch_neg (c h : ℝ) : Rch (-c) (-h) = Rch c h := by unfold Rch Lp Mp Np; ring

lemma dRc_neg (c h : ℝ) : d_dRc (-c) (-h) = -d_dRc c h := by simp only [d_dRc, d_L, d_M, d_P]; ring

/-- **Items 14–23.**  A positive relative local maximum with both traces on the boundary is an edge point:
`Re z³ = ±1`, `Re w = ±1/4` (same sign). -/
theorem double_boundary {z w : ℂ} (hz : Complex.normSq z = 1) (hw : Complex.normSq w = 1)
    (hpos : 0 < calRUV' (Tp z w)) (hmax : IsLocalMaxOn calRUV' DD (Tp z w)) :
    ((z ^ 3).re = 1 ∧ w.re = 1 / 4) ∨ ((z ^ 3).re = -1 ∧ w.re = -1 / 4) := by
  obtain ⟨hc, hh⟩ := first_order hz hw hpos hmax
  have hpos' := hpos
  rw [calRUV_Tp hz hw] at hpos'
  rcases hh with hh | him
  · exfalso
    rcases square_stationary hpos' hc hh with ⟨h0, h1⟩ | ⟨hg, hr⟩
    · exact origin_contra hz hw h0 h1 hmax
    · exact golden_contra hz hw hg hr hmax
  · have hZ : Complex.normSq (z ^ 3) = 1 := by rw [map_pow, hz, one_pow]
    have hre : ((z ^ 3).re - 1) * ((z ^ 3).re + 1) = 0 := by
      rw [Complex.normSq_apply, him] at hZ; linear_combination hZ
    rcases mul_eq_zero.mp hre with h1 | h1
    · left
      have h1' : (z ^ 3).re = 1 := by linarith
      rw [h1'] at hpos' hc
      exact ⟨h1', edge_stationary hpos' hc⟩
    · right
      have h1' : (z ^ 3).re = -1 := by linarith
      rw [h1'] at hpos' hc
      have hp2 : 0 < Rch (-w.re) 1 := by rw [← Rch_neg, neg_neg]; exact hpos'
      have hd2 : d_dRc (-w.re) 1 = 0 := by
        have := dRc_neg (-w.re) 1; rw [neg_neg, hc] at this; linarith
      have := edge_stationary hp2 hd2
      exact ⟨h1', by linarith⟩

/-- **The census of positive relative local maxima of `ℛ` on `D × D`** (Step 1, geometric form). -/
theorem relmax_census {U V : ℂ} (hU : InD U) (hV : InD V) (hpos : 0 < calRUV U V)
    (hmax : IsLocalMaxOn calRUV' DD (U, V)) :
    ∃ z w : ℂ, Complex.normSq z = 1 ∧ Complex.normSq w = 1 ∧ (U, V) = Tp z w ∧
      (((z ^ 3).re = 1 ∧ w.re = 1 / 4) ∨ ((z ^ 3).re = -1 ∧ w.re = -1 / 4)) := by
  obtain ⟨hU0, hV0⟩ := both_boundary hU hV hpos hmax
  obtain ⟨a, ha, hUa⟩ := boundary_form hU hU0
  obtain ⟨b, hb, hVb⟩ := boundary_form hV hV0
  obtain ⟨z, w, hz, hw, rfl, rfl⟩ := exists_zw ha hb
  have hT : (U, V) = Tp z w := by rw [hUa, hVb]; rfl
  have hpos' : 0 < calRUV' (Tp z w) := by rw [← hT]; exact hpos
  rw [hT] at hmax
  exact ⟨z, w, hz, hw, hT, double_boundary hz hw hpos' hmax⟩

end NoFourMUBs.Step1Geo
