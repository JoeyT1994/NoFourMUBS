import NoFourMUBs.Step1.Deltoid
import NoFourMUBs.Step1Saddle

/-!
# Step 1, items 10–13: relative maxima on `D × D` with an interior trace

`calRUV U V = ℛ(U + V, U − V)`.  `DD = D × D`.  A relative local maximum is `IsLocalMaxOn calRUV' DD (U, V)`.

* `interior_case`: both traces interior (`Δ < 0`) is impossible (the saddle theorem);
* `rotate_case`, `cube_case`: invariance under the circle action and under common cube roots of unity;
* `localMaxOn_of_near`: a nearby point of `DD` with the same value is again a relative local maximum.
-/

open Filter Topology NoFourMUBs.Step1Saddle

namespace NoFourMUBs.Step1Geo

noncomputable def calRUV (U V : ℂ) : ℝ := calR (U + V) (U - V)

noncomputable def calRUV' (p : ℂ × ℂ) : ℝ := calRUV p.1 p.2

def DD : Set (ℂ × ℂ) := {p | InD p.1 ∧ InD p.2}

lemma DD_mem_nhds {U V : ℂ} (hU : Delta U < 0) (hV : Delta V < 0) : DD ∈ 𝓝 (U, V) := by
  have := prod_mem_nhds (inD_mem_nhds hU) (inD_mem_nhds hV)
  exact Filter.mem_of_superset this fun p hp => hp

/-- **Both traces interior is impossible.** -/
theorem interior_case {U V : ℂ} (hU : Delta U < 0) (hV : Delta V < 0) (hpos : 0 < calRUV U V)
    (hmax : IsLocalMaxOn calRUV' DD (U, V)) : False := by
  have hloc : IsLocalMax calRUV' (U, V) := hmax.isLocalMax (DD_mem_nhds hU hV)
  set L : ℂ × ℂ → ℂ × ℂ := fun q => ((q.1 + q.2) / 2, (q.1 - q.2) / 2)
  have hL : L (U + V, U - V) = (U, V) := by simp only [L, Prod.mk.injEq]; constructor <;> ring
  have hcomp : calRUV' ∘ L = fun q : ℂ × ℂ => calR q.1 q.2 := by
    funext q; simp only [Function.comp, calRUV', calRUV, L]; congr 1 <;> ring
  have h2 := IsLocalMax.comp_continuous (f := calRUV') (g := L) (b := (U + V, U - V)) (by rw [hL]; exact hloc)
    (by fun_prop)
  rw [hcomp] at h2
  exact calR_no_pos_localMax (U + V) (U - V) hpos h2

/-- The circle action, in trace coordinates. -/
noncomputable def orbitU (U V : ℂ) (ζ : ℂ) : ℂ := (star ζ ^ 2 * (U + V) + ζ * (U - V)) / 2
noncomputable def orbitV (U V : ℂ) (ζ : ℂ) : ℂ := (star ζ ^ 2 * (U + V) - ζ * (U - V)) / 2

lemma calRUV_orbit (U V ζ : ℂ) (hζ : Complex.normSq ζ = 1) :
    calRUV (orbitU U V ζ) (orbitV U V ζ) = calRUV U V := by
  unfold calRUV orbitU orbitV
  have e1 : (star ζ ^ 2 * (U + V) + ζ * (U - V)) / 2 + (star ζ ^ 2 * (U + V) - ζ * (U - V)) / 2 =
      star ζ ^ 2 * (U + V) := by ring
  have e2 : (star ζ ^ 2 * (U + V) + ζ * (U - V)) / 2 - (star ζ ^ 2 * (U + V) - ζ * (U - V)) / 2 =
      ζ * (U - V) := by ring
  rw [e1, e2, calR_rotate _ _ _ hζ]

/-- Common multiplication by a cube root of unity. -/
lemma calRUV_cube (U V ω : ℂ) (hω : ω ^ 3 = 1) (hn : Complex.normSq ω = 1) :
    calRUV (ω * U) (ω * V) = calRUV U V := by
  unfold calRUV calR
  have hA : ω * U + ω * V = ω * (U + V) := by ring
  have hB : ω * U - ω * V = ω * (U - V) := by ring
  rw [hA, hB, Complex.normSq_mul, Complex.normSq_mul, hn, one_mul, one_mul]
  have : ω * (U + V) * (ω * (U - V)) ^ 2 = (U + V) * (U - V) ^ 2 := by
    linear_combination ((U + V) * (U - V) ^ 2) * hω
  rw [this]

lemma inD_cube {Z ω : ℂ} (h : InD Z) (hω : ω ^ 3 = 1) (hn : Complex.normSq ω = 1) : InD (ω * Z) := by
  obtain ⟨a, b, c, ha, hb, hc, habc, rfl⟩ := h
  refine ⟨ω * a, ω * b, ω * c, ?_, ?_, ?_, ?_, by ring⟩
  · rw [Complex.normSq_mul, hn, ha, one_mul]
  · rw [Complex.normSq_mul, hn, hb, one_mul]
  · rw [Complex.normSq_mul, hn, hc, one_mul]
  · linear_combination (a * b * c) * hω + habc

lemma calRUV_swap (U V : ℂ) : calRUV V U = calRUV U V := by
  unfold calRUV calR
  have h1 : V + U = U + V := by ring
  have h2 : Complex.normSq (V - U) = Complex.normSq (U - V) := by
    rw [show V - U = -(U - V) by ring, Complex.normSq_neg]
  have h3 : (V + U) * (V - U) ^ 2 = (U + V) * (U - V) ^ 2 := by ring
  rw [h3, h1, h2]

/-- A point of `DD` near a relative local maximum, with the same value, is again a relative local maximum. -/
theorem localMaxOn_of_near {p : ℂ × ℂ} (hmax : IsLocalMaxOn calRUV' DD p) :
    ∀ᶠ q in 𝓝 p, calRUV' q = calRUV' p → IsLocalMaxOn calRUV' DD q := by
  obtain ⟨N, hN, hNmax⟩ : ∃ N ∈ 𝓝 p, ∀ q ∈ N, q ∈ DD → calRUV' q ≤ calRUV' p := by
    have := hmax
    rw [IsLocalMaxOn, IsMaxFilter, eventually_nhdsWithin_iff] at this
    exact ⟨_, this, fun q hq hD => hq hD⟩
  obtain ⟨O, hOsub, hOopen, hpO⟩ := mem_nhds_iff.mp hN
  filter_upwards [hOopen.mem_nhds hpO] with q hq hval
  rw [IsLocalMaxOn, IsMaxFilter, eventually_nhdsWithin_iff]
  filter_upwards [hOopen.mem_nhds hq] with r hr hrD
  rw [hval]; exact hNmax r (hOsub hr) hrD

/-! ### The cusp with an interior partner (item 12) -/

noncomputable def cuspF (x y : ℝ) : ℝ := 2 * x ^ 2 + 24 * x + y ^ 2 + 18
noncomputable def cuspG (x y : ℝ) : ℝ := 5 * x ^ 2 + 18 * x + y ^ 2 + 9

lemma calRUV_three (x y : ℝ) : calRUV 3 ⟨x, y⟩ = -4 * cuspF x y * cuspG x y ^ 2 := by
  have h1 : Complex.normSq (3 + (⟨x, y⟩ : ℂ)) = (3 + x) ^ 2 + y ^ 2 := by
    rw [Complex.normSq_apply]; simp; ring
  have h2 : Complex.normSq (3 - (⟨x, y⟩ : ℂ)) = (3 - x) ^ 2 + y ^ 2 := by
    rw [Complex.normSq_apply]; simp; ring
  have h3 : ((3 + (⟨x, y⟩ : ℂ)) * (3 - (⟨x, y⟩ : ℂ)) ^ 2).re =
      (3 + x) * ((3 - x) ^ 2 - y ^ 2) + y * (2 * (3 - x) * y) := by
    simp [Complex.mul_re, Complex.mul_im, sq]; ring
  unfold calRUV calR cuspF cuspG
  rw [h1, h2, h3]; ring

lemma delta_real (x : ℝ) : Delta ⟨x, 0⟩ = (x - 3) ^ 3 * (x + 1) := by
  have h1 : Complex.normSq (⟨x, 0⟩ : ℂ) = x ^ 2 := by rw [Complex.normSq_apply]; ring
  have h3 : ((⟨x, 0⟩ : ℂ) ^ 3).re = x ^ 3 := by simp [pow_succ, Complex.mul_re, Complex.mul_im]
  unfold Delta; rw [h1, h3]; ring

lemma hasDerivAt_cusp_x (x y : ℝ) : HasDerivAt (fun t => -4 * cuspF t y * cuspG t y ^ 2)
    (-4 * cuspG x y * ((4 * x + 24) * (cuspG x y + 2 * cuspF x y) + 12 * (x - 1) * cuspF x y)) x := by
  have hF : HasDerivAt (fun t => cuspF t y) (4 * x + 24) x := by
    have := (((hasDerivAt_pow 2 x).const_mul 2).add ((hasDerivAt_id x).const_mul 24)).add_const (y ^ 2 + 18)
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_) <;>
      norm_num [cuspF, Pi.add_apply, Pi.mul_apply] <;> ring
  have hG : HasDerivAt (fun t => cuspG t y) (10 * x + 18) x := by
    have := (((hasDerivAt_pow 2 x).const_mul 5).add ((hasDerivAt_id x).const_mul 18)).add_const (y ^ 2 + 9)
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_) <;>
      norm_num [cuspG, Pi.add_apply, Pi.mul_apply] <;> ring
  have := ((hF.const_mul (-4)).mul (hG.pow 2))
  refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_) <;>
    norm_num [cuspF, cuspG, Pi.add_apply, Pi.mul_apply] <;> ring

lemma hasDerivAt_cusp_y (x y : ℝ) : HasDerivAt (fun t => -4 * cuspF x t * cuspG x t ^ 2)
    (-24 * y * cuspG x y * (3 * x ^ 2 + 22 * x + y ^ 2 + 15)) y := by
  have hF : HasDerivAt (fun t => cuspF x t) (2 * y) y := by
    have := ((hasDerivAt_pow 2 y).const_add (2 * x ^ 2 + 24 * x)).add_const 18
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_) <;>
      norm_num [cuspF, Pi.add_apply, Pi.mul_apply] <;> ring
  have hG : HasDerivAt (fun t => cuspG x t) (2 * y) y := by
    have := ((hasDerivAt_pow 2 y).const_add (5 * x ^ 2 + 18 * x)).add_const 9
    refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_) <;>
      norm_num [cuspG, Pi.add_apply, Pi.mul_apply] <;> ring
  have := ((hF.const_mul (-4)).mul (hG.pow 2))
  refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_) <;>
    norm_num [cuspF, cuspG, Pi.add_apply, Pi.mul_apply] <;> ring

/-- **The cusp `U = 3` with an interior partner is not a local maximum.** -/
theorem cusp_three {V : ℂ} (hV : Delta V < 0) (hpos : 0 < calRUV 3 V)
    (hmax : IsLocalMax (fun W => calRUV 3 W) V) : False := by
  set x := V.re
  set y := V.im
  have hVxy : V = ⟨x, y⟩ := (Complex.eta V).symm
  have hval : ∀ a b : ℝ, calRUV 3 ⟨a, b⟩ = -4 * cuspF a b * cuspG a b ^ 2 := calRUV_three
  rw [hVxy, hval] at hpos
  have hlx : IsLocalMax (fun t : ℝ => -4 * cuspF t y * cuspG t y ^ 2) x := by
    have hc : ContinuousAt (fun t : ℝ => (⟨t, y⟩ : ℂ)) x :=
      (Complex.equivRealProdCLM.symm.continuous.comp (continuous_id.prodMk continuous_const)).continuousAt
    have := IsLocalMax.comp_continuous (f := fun W => calRUV 3 W) (g := fun t : ℝ => (⟨t, y⟩ : ℂ)) (b := x)
      (by rw [← hVxy]; exact hmax) hc
    have e : ((fun W => calRUV 3 W) ∘ fun t : ℝ => (⟨t, y⟩ : ℂ)) = fun t => -4 * cuspF t y * cuspG t y ^ 2 := by
      funext t; exact hval t y
    rwa [e] at this
  have hly : IsLocalMax (fun t : ℝ => -4 * cuspF x t * cuspG x t ^ 2) y := by
    have hc : ContinuousAt (fun t : ℝ => (⟨x, t⟩ : ℂ)) y :=
      (Complex.equivRealProdCLM.symm.continuous.comp (continuous_const.prodMk continuous_id)).continuousAt
    have := IsLocalMax.comp_continuous (f := fun W => calRUV 3 W) (g := fun t : ℝ => (⟨x, t⟩ : ℂ)) (b := y)
      (by rw [← hVxy]; exact hmax) hc
    have e : ((fun W => calRUV 3 W) ∘ fun t : ℝ => (⟨x, t⟩ : ℂ)) = fun t => -4 * cuspF x t * cuspG x t ^ 2 := by
      funext t; exact hval x t
    rwa [e] at this
  have hRx := hlx.hasDerivAt_eq_zero (hasDerivAt_cusp_x x y)
  have hRy := hly.hasDerivAt_eq_zero (hasDerivAt_cusp_y x y)
  -- positivity: F < 0, G ≠ 0
  have hG0 : cuspG x y ≠ 0 := by intro h; rw [h] at hpos; simp at hpos
  have hF : cuspF x y < 0 := by
    have hG2 : 0 < cuspG x y ^ 2 := by positivity
    by_contra hF; push Not at hF; nlinarith [mul_nonneg hF hG2.le]
  -- y = 0
  have hy : y = 0 := by
    by_contra hy
    have h1 : 3 * x ^ 2 + 22 * x + y ^ 2 + 15 = 0 := by
      have : -24 * y * cuspG x y ≠ 0 := mul_ne_zero (mul_ne_zero (by norm_num) hy) hG0
      exact (mul_eq_zero.mp hRy).resolve_left this
    have hsum : cuspG x y + 2 * cuspF x y = 0 := by simp only [cuspF, cuspG]; linear_combination 3 * h1
    rw [hsum, mul_zero, zero_add] at hRx
    have hx1 : x = 1 := by
      have : -4 * cuspG x y * (12 * (x - 1) * cuspF x y) = 0 := hRx
      have hne : -4 * cuspG x y ≠ 0 := mul_ne_zero (by norm_num) hG0
      have h2 := (mul_eq_zero.mp this).resolve_left hne
      have h3 : 12 * (x - 1) = 0 := (mul_eq_zero.mp h2).resolve_right hF.ne
      linarith
    have : cuspF x y = 44 + y ^ 2 := by simp only [cuspF, hx1]; ring
    nlinarith [sq_nonneg y]
  -- the real axis: −1 < x < −4/5
  rw [hy] at hF hRx
  have hD : (x - 3) ^ 3 * (x + 1) < 0 := by rw [← delta_real]; rw [hVxy, hy] at hV; exact hV
  have hx1 : -1 < x := by
    by_contra h; push Not at h
    have h3 : (x - 3) ^ 3 ≤ 0 := by
      have : (x - 3) ^ 3 = (x - 3) * (x - 3) ^ 2 := by ring
      rw [this]; exact mul_nonpos_of_nonpos_of_nonneg (by linarith) (sq_nonneg _)
    have : 0 ≤ (x - 3) ^ 3 * (x + 1) := mul_nonneg_of_nonpos_of_nonpos h3 (by linarith)
    linarith
  have hx2 : x < -4 / 5 := by
    by_contra h; push Not at h
    have : 0 < cuspF x 0 := by
      simp only [cuspF]; nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ x + 4/5) (by linarith : (0:ℝ) ≤ x + 4/5)]
    linarith
  -- R_x ≠ 0 there
  have hP : 0 < -(5 * x ^ 3 + 62 * x ^ 2 + 141 * x + 72) := by
    nlinarith [mul_pos (by linarith : (0:ℝ) < x + 1) (by linarith : (0:ℝ) < -4/5 - x),
      mul_pos (mul_pos (by linarith : (0:ℝ) < x + 1) (by linarith : (0:ℝ) < -4/5 - x)) (by linarith : (0:ℝ) < x + 1),
      mul_pos (mul_pos (by linarith : (0:ℝ) < x + 1) (by linarith : (0:ℝ) < -4/5 - x)) (by linarith : (0:ℝ) < -4/5 - x)]
  have hfac : -4 * cuspG x 0 * ((4 * x + 24) * (cuspG x 0 + 2 * cuspF x 0) + 12 * (x - 1) * cuspF x 0) =
      -48 * (x + 3) * (5 * x + 3) * (5 * x ^ 3 + 62 * x ^ 2 + 141 * x + 72) := by
    simp only [cuspF, cuspG]; ring
  rw [hfac] at hRx
  have : -48 * (x + 3) * (5 * x + 3) * (5 * x ^ 3 + 62 * x ^ 2 + 141 * x + 72) ≠ 0 := by
    have h1 : x + 3 ≠ 0 := by linarith
    have h2 : 5 * x + 3 ≠ 0 := by linarith
    have h3 : 5 * x ^ 3 + 62 * x ^ 2 + 141 * x + 72 ≠ 0 := by linarith
    exact mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) h1) h2) h3
  exact this hRx

lemma delta_cube {V ω : ℂ} (hω : ω ^ 3 = 1) (hn : Complex.normSq ω = 1) : Delta (ω * V) = Delta V := by
  unfold Delta
  rw [Complex.normSq_mul, hn, one_mul, mul_pow, hω, one_mul]

/-- Extract a neighbourhood from a relative local maximum. -/
lemma exists_nhds_of_localMaxOn {p : ℂ × ℂ} (hmax : IsLocalMaxOn calRUV' DD p) :
    ∃ N ∈ 𝓝 p, ∀ q ∈ N, q ∈ DD → calRUV' q ≤ calRUV' p := by
  rw [IsLocalMaxOn, IsMaxFilter, eventually_nhdsWithin_iff] at hmax
  exact ⟨_, hmax, fun q hq hD => hq hD⟩

/-- **A cusp trace with an interior partner is not a relative local maximum.** -/
theorem cusp_case {U V z : ℂ} (hz1 : Complex.normSq z = 1) (hz3 : z ^ 3 = 1) (hUz : U = 2 * z + star z ^ 2)
    (hV : Delta V < 0) (hpos : 0 < calRUV U V) (hmax : IsLocalMaxOn calRUV' DD (U, V)) : False := by
  set ω := star z
  have hωz : ω * z = 1 := by
    simp only [ω]; rw [Complex.star_def, Complex.conj_mul', ← Complex.ofReal_pow, ← Complex.normSq_eq_norm_sq, hz1]
    norm_num
  have hω3 : ω ^ 3 = 1 := by simp only [ω]; rw [← star_pow, hz3, star_one]
  have hωn : Complex.normSq ω = 1 := by simp only [ω]; rw [Complex.star_def, Complex.normSq_conj, hz1]
  have hωU : ω * U = 3 := by rw [hUz]; linear_combination 2 * hωz + hω3
  have hD3 : ∀ W, InD W → InD (z * W) := fun W h => inD_cube h hz3 hz1
  obtain ⟨N, hN, hNmax⟩ := exists_nhds_of_localMaxOn hmax
  have hUD : InD U := ⟨z, z, ω ^ 2, hz1, hz1, by rw [sq, Complex.normSq_mul, hωn, one_mul],
    by linear_combination (ω * z + 1) * hωz, by rw [hUz]; ring⟩
  refine cusp_three (V := ω * V) (by rw [delta_cube hω3 hωn]; exact hV)
    (by rw [← hωU, calRUV_cube _ _ _ hω3 hωn]; exact hpos) ?_
  have hm : Continuous fun W : ℂ => (U, z * W) := by fun_prop
  have hmV : (U, z * (ω * V)) = (U, V) := by rw [← mul_assoc, mul_comm z ω, hωz, one_mul]
  have hN' : (fun W : ℂ => (U, z * W)) ⁻¹' N ∈ 𝓝 (ω * V) := hm.continuousAt.preimage_mem_nhds (by show N ∈ 𝓝 (U, z * (ω * V)); rw [hmV]; exact hN)
  have hint : {W : ℂ | Delta W < 0} ∈ 𝓝 (ω * V) :=
    (isOpen_lt continuous_Delta continuous_const).mem_nhds (by show Delta (ω * V) < 0; rw [delta_cube hω3 hωn]; exact hV)
  filter_upwards [hN', hint] with W hW hWint
  have hle := hNmax _ hW ⟨hUD, hD3 W (inD_of_delta_neg hWint)⟩
  simp only [calRUV'] at hle
  have e1 : calRUV 3 W = calRUV U (z * W) := by
    rw [← hωU, ← calRUV_cube U (z * W) ω hω3 hωn, ← mul_assoc, hωz, one_mul]
  have e2 : calRUV 3 (ω * V) = calRUV U V := by rw [← hωU, calRUV_cube _ _ _ hω3 hωn]
  rw [e1, e2]; exact hle

end NoFourMUBs.Step1Geo
