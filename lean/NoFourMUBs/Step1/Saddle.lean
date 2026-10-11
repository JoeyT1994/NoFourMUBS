import Mathlib
import Step1.InteriorConsequences

/-!
# Step 1: the ambient saddle theorem

For `A, B ∈ ℂ` put `u = |A|²`, `v = |B|²`, `C = (3u − v)(v − u + 12)/2 − 2 Re(AB²)` and
`ℛ(A, B) = 4(2v − 3u)²(v − 2u) − C²` (the corner invariant `R` in deltoid-trace coordinates, `PROOF.md` Step 1).

**Theorem (`calR_no_pos_localMax`).** `ℛ` has no local maximum on `ℂ²` with positive value.

The algebra is `Step1.interior_positive_stationary` (compiled from the Step 1 certificates). Here we add:
- the circle action `(A, B) ↦ (ζ̄²A, ζB)`, to make `B = b > 0`;
- the first-order conditions along coordinate lines;
- the second-order test along `Im A`: with `H_y = 0` and `H_yy > 0`, the point is not a local maximum.
-/

open Filter Topology

namespace NoFourMUBs.Step1Saddle

/-- The invariant `ℛ(A, B)`. -/
noncomputable def calR (A B : ℂ) : ℝ :=
  4 * (2 * Complex.normSq B - 3 * Complex.normSq A) ^ 2 * (Complex.normSq B - 2 * Complex.normSq A) -
    ((3 * Complex.normSq A - Complex.normSq B) * (Complex.normSq B - Complex.normSq A + 12) / 2 -
      2 * (A * B ^ 2).re) ^ 2

lemma calR_rotate (A B ζ : ℂ) (hζ : Complex.normSq ζ = 1) :
    calR (star ζ ^ 2 * A) (ζ * B) = calR A B := by
  have hs : Complex.normSq (star ζ) = 1 := by rw [Complex.star_def, Complex.normSq_conj, hζ]
  have hA : Complex.normSq (star ζ ^ 2 * A) = Complex.normSq A := by
    rw [Complex.normSq_mul, sq, Complex.normSq_mul, hs, one_mul, one_mul]
  have hB : Complex.normSq (ζ * B) = Complex.normSq B := by rw [Complex.normSq_mul, hζ, one_mul]
  have hprod : star ζ ^ 2 * A * (ζ * B) ^ 2 = A * B ^ 2 := by
    have h1 : star ζ * ζ = 1 := by
      rw [Complex.star_def, Complex.conj_mul', ← Complex.ofReal_pow, ← Complex.normSq_eq_norm_sq, hζ]; norm_num
    calc star ζ ^ 2 * A * (ζ * B) ^ 2 = (star ζ * ζ) ^ 2 * (A * B ^ 2) := by ring
      _ = A * B ^ 2 := by rw [h1, one_pow, one_mul]
  unfold calR; rw [hA, hB, hprod]

/-- With `B = b` real and `A = x + iy`, `ℛ` is the certificate's `H(x, y, b²)`. -/
lemma calR_real (x y b : ℝ) :
    calR ⟨x, y⟩ (b : ℂ) = Step1.interior_core.d_H x y (b ^ 2) 0 0 := by
  have hA : Complex.normSq (⟨x, y⟩ : ℂ) = x ^ 2 + y ^ 2 := by rw [Complex.normSq_mk]; ring
  have hB : Complex.normSq (b : ℂ) = b ^ 2 := by rw [Complex.normSq_ofReal]; ring
  have hre : ((⟨x, y⟩ : ℂ) * (b : ℂ) ^ 2).re = b ^ 2 * x := by
    simp [Complex.mul_re, sq]; ring
  unfold calR
  rw [hA, hB, hre]
  simp only [Step1.interior_core.d_H, Step1.interior_core.d_C, Step1.interior_core.d_eta,
    Step1.interior_core.d_g, Step1.interior_core.d_u]
  ring

/-! ### A second-order necessary condition -/

/-- If `g′(0) = 0` and `g″(0) > 0` then `0` is not a local maximum of `g`. -/
theorem not_isLocalMax_of_deriv2 {g g' : ℝ → ℝ} {c : ℝ} (hg : ∀ t, HasDerivAt g (g' t) t) (hg0 : g' 0 = 0)
    (hg2 : HasDerivAt g' c 0) (hc : 0 < c) : ¬ IsLocalMax g 0 := by
  intro hmax
  -- g' > 0 just to the right of 0
  have hslope := hasDerivAt_iff_tendsto_slope.mp hg2
  have hev : ∀ᶠ t in 𝓝[≠] (0 : ℝ), 0 < slope g' 0 t := hslope.eventually (lt_mem_nhds hc)
  have hev' : ∀ᶠ t in 𝓝[>] (0 : ℝ), 0 < g' t := by
    have h1 : ∀ᶠ t in 𝓝[>] (0 : ℝ), 0 < slope g' 0 t :=
      hev.filter_mono (nhdsWithin_mono _ fun t (ht : 0 < t) => ne_of_gt ht)
    filter_upwards [h1, self_mem_nhdsWithin] with t ht (htpos : 0 < t)
    rw [slope_def_field, hg0, sub_zero, sub_zero] at ht
    exact (div_pos_iff_of_pos_right htpos).mp ht
  obtain ⟨ε, hε, hεI⟩ := mem_nhdsGT_iff_exists_Ioo_subset.mp hev'
  obtain ⟨δ, hδ, hδI⟩ := Metric.eventually_nhds_iff.mp hmax
  have hε0 : 0 < ε := hε
  have hm : 0 < min ε δ := lt_min hε0 hδ
  set t := min ε δ / 2 with htdef
  have ht0 : 0 < t := by rw [htdef]; positivity
  have htε : t < ε := by have := min_le_left ε δ; rw [htdef]; linarith
  have htδ : t < δ := by have := min_le_right ε δ; rw [htdef]; linarith
  obtain ⟨ξ, ⟨hξ0, hξt⟩, hξ⟩ := exists_hasDerivAt_eq_slope g g' ht0
    (fun x _ => (hg x).continuousAt.continuousWithinAt) (fun x _ => hg x)
  have hpos : 0 < g' ξ := hεI ⟨hξ0, hξt.trans htε⟩
  have hle : g t ≤ g 0 := hδI (by rw [Real.dist_eq, sub_zero, abs_of_pos ht0]; exact htδ)
  rw [hξ, sub_zero] at hpos
  have : 0 < g t - g 0 := (div_pos_iff_of_pos_right ht0).mp hpos
  linarith

/-! ### Derivatives of `H` from the certificates -/

open Step1.interior_core in
lemma hasDerivAt_Hx (x y v : ℝ) : HasDerivAt (fun t => d_H t y v 0 0) (d_Hx x y v 0 0) x := by
  refine ((derivative_differentiate_H_x_1 x y v 0 0).congr_deriv ?_).congr_of_eventuallyEq
    (Filter.Eventually.of_forall fun t => ?_)
  · simp only [d_Hx, d_C, d_Cx, d_K, d_g, d_u]
  · simp only [d_H, d_C, d_eta, d_g, d_u]

open Step1.interior_core in
lemma hasDerivAt_Hy (x y v : ℝ) : HasDerivAt (fun t => d_H x t v 0 0) (d_Hy x y v 0 0) y := by
  refine ((derivative_differentiate_H_y_1 x y v 0 0).congr_deriv ?_).congr_of_eventuallyEq
    (Filter.Eventually.of_forall fun t => ?_)
  · simp only [d_Hy, d_C, d_Cy, d_K, d_g, d_u]
  · simp only [d_H, d_C, d_eta, d_g, d_u]

open Step1.interior_core in
lemma hasDerivAt_Hv (x y v : ℝ) : HasDerivAt (fun t => d_H x y t 0 0) (d_Hv x y v 0 0) v := by
  refine ((derivative_differentiate_H_v_1 x y v 0 0).congr_deriv ?_).congr_of_eventuallyEq
    (Filter.Eventually.of_forall fun t => ?_)
  · simp only [d_Hv, d_C, d_Cv, d_g, d_u]
  · simp only [d_H, d_C, d_eta, d_g, d_u]

open Step1.interior_core in
lemma hasDerivAt_Hyy (x y v : ℝ) : HasDerivAt (fun t => d_Hy x t v 0 0) (d_Hyy x y v 0 0) y := by
  refine ((derivative_differentiate_H_yy_1 x y v 0 0).congr_deriv ?_).congr_of_eventuallyEq
    (Filter.Eventually.of_forall fun t => ?_)
  · simp only [d_Hyy]
  · simp only [d_Hy, d_C, d_Cy, d_K, d_g, d_u]

/-! ### The saddle theorem -/

/-- The slice `(x, y, w) ↦ (x + iy, w)`. -/
def slice (p : ℝ × ℝ × ℝ) : ℂ × ℂ := (⟨p.1, p.2.1⟩, (p.2.2 : ℂ))

lemma continuous_slice : Continuous slice := by
  unfold slice
  refine Continuous.prodMk ?_ (Complex.continuous_ofReal.comp (continuous_snd.comp continuous_snd))
  exact Complex.equivRealProdCLM.symm.continuous.comp (continuous_fst.prodMk (continuous_fst.comp continuous_snd))

open Step1.interior_core in
/-- **No positive local maximum on `ℂ²`.** -/
theorem calR_no_pos_localMax (A B : ℂ) (hpos : 0 < calR A B) :
    ¬ IsLocalMax (fun p : ℂ × ℂ => calR p.1 p.2) (A, B) := by
  intro hmax
  set f : ℂ × ℂ → ℝ := fun p => calR p.1 p.2
  -- B ≠ 0
  have hB : B ≠ 0 := by
    rintro rfl
    have hu := Complex.normSq_nonneg A
    have : calR A 0 ≤ 0 := by
      unfold calR; simp only [map_zero, zero_pow two_ne_zero, mul_zero, Complex.zero_re]
      nlinarith [sq_nonneg ((3 * Complex.normSq A - 0) * (0 - Complex.normSq A + 12) / 2 - 2 * 0),
        mul_nonneg (mul_nonneg hu hu) hu]
    linarith
  -- rotate B to b = ‖B‖ > 0
  set b : ℝ := ‖B‖
  have hb : 0 < b := norm_pos_iff.mpr hB
  set ζ : ℂ := star B * ((b : ℂ))⁻¹
  have hbC : (b : ℂ) ≠ 0 := by exact_mod_cast hb.ne'
  have hζ : Complex.normSq ζ = 1 := by
    rw [Complex.normSq_mul, Complex.star_def, Complex.normSq_conj, Complex.normSq_inv, Complex.normSq_ofReal,
      Complex.normSq_eq_norm_sq]
    field_simp
    rfl
  have hζB : ζ * B = (b : ℂ) := by
    simp only [ζ]
    rw [mul_comm (star B), mul_assoc, Complex.star_def, mul_comm (starRingEnd ℂ B), Complex.mul_conj',
      ← Complex.ofReal_pow]
    field_simp
    push_cast; rfl
  have hsζ : star ζ * ζ = 1 := by
    rw [Complex.star_def, Complex.conj_mul', ← Complex.ofReal_pow, ← Complex.normSq_eq_norm_sq, hζ]; norm_num
  set Φinv : ℂ × ℂ → ℂ × ℂ := fun p => (ζ ^ 2 * p.1, star ζ * p.2)
  set A0 : ℂ := star ζ ^ 2 * A
  have hΦ : Φinv (A0, (b : ℂ)) = (A, B) := by
    simp only [Φinv, A0, Prod.mk.injEq]
    constructor
    · calc ζ ^ 2 * (star ζ ^ 2 * A) = (star ζ * ζ) ^ 2 * A := by ring
        _ = A := by rw [hsζ, one_pow, one_mul]
    · rw [← hζB, ← mul_assoc, hsζ, one_mul]
  have hfΦ : f ∘ Φinv = f := by
    funext p
    simp only [Function.comp, f, Φinv]
    have := calR_rotate p.1 p.2 (star ζ) (by rw [Complex.star_def, Complex.normSq_conj, hζ])
    rw [Complex.star_def, Complex.conj_conj] at this
    rw [← Complex.star_def] at this
    exact this
  have hmax0 : IsLocalMax f (A0, (b : ℂ)) := by
    have hcont : ContinuousAt Φinv (A0, (b : ℂ)) :=
      ((continuous_const.mul continuous_fst).prodMk (continuous_const.mul continuous_snd)).continuousAt
    have := IsLocalMax.comp_continuous (f := f) (g := Φinv) (b := (A0, (b : ℂ))) (by rw [hΦ]; exact hmax) hcont
    rwa [hfΦ] at this
  -- slice to real coordinates
  set x := A0.re
  set y := A0.im
  have hsl : slice (x, y, b) = (A0, (b : ℂ)) := by simp [slice, x, y]
  have hF : ∀ p : ℝ × ℝ × ℝ, (f ∘ slice) p = d_H p.1 p.2.1 (p.2.2 ^ 2) 0 0 := fun p => calR_real _ _ _
  have hmaxS : IsLocalMax (f ∘ slice) (x, y, b) :=
    IsLocalMax.comp_continuous (f := f) (g := slice) (b := (x, y, b)) (by rw [hsl]; exact hmax0)
      continuous_slice.continuousAt
  have line : ∀ (L : ℝ → ℝ × ℝ × ℝ) (t0 : ℝ), Continuous L → L t0 = (x, y, b) →
      IsLocalMax (fun t => (f ∘ slice) (L t)) t0 := fun L t0 hL h0 =>
    IsLocalMax.comp_continuous (f := f ∘ slice) (g := L) (b := t0) (by rw [h0]; exact hmaxS) hL.continuousAt
  have hx : d_Hx x y (b ^ 2) 0 0 = 0 := by
    have hm := line (fun t => (t, y, b)) x (by fun_prop) rfl
    simp only [hF] at hm
    exact hm.hasDerivAt_eq_zero (hasDerivAt_Hx x y (b ^ 2))
  have hy : d_Hy x y (b ^ 2) 0 0 = 0 := by
    have hm := line (fun t => (x, t, b)) y (by fun_prop) rfl
    simp only [hF] at hm
    exact hm.hasDerivAt_eq_zero (hasDerivAt_Hy x y (b ^ 2))
  have hv : d_Hv x y (b ^ 2) 0 0 = 0 := by
    have hm := line (fun t => (x, y, t)) b (by fun_prop) rfl
    simp only [hF] at hm
    have hd : HasDerivAt (fun t => d_H x y (t ^ 2) 0 0) (d_Hv x y (b ^ 2) 0 0 * (2 * b)) b := by
      have h2 : HasDerivAt (fun t : ℝ => t ^ 2) (2 * b) b := by simpa using hasDerivAt_pow 2 b
      exact (hasDerivAt_Hv x y (b ^ 2)).comp b h2
    have := hm.hasDerivAt_eq_zero hd
    rcases mul_eq_zero.mp this with h | h
    · exact h
    · exfalso; linarith
  have hHpos : 0 < d_H x y (b ^ 2) 0 0 := by
    have e1 : d_H x y (b ^ 2) 0 0 = f (A0, (b : ℂ)) := by rw [← hsl]; exact (hF (x, y, b)).symm
    have e2 : f (A0, (b : ℂ)) = f (A, B) := by rw [← hΦ]; exact (congrFun hfΦ _).symm
    rw [e1, e2]; exact hpos
  obtain ⟨-, hy0, -, hyy⟩ := Step1.interior_positive_stationary x y (b ^ 2) hHpos hx hy hv
  -- second-order test along y
  have hm := line (fun t => (x, t, b)) y (by fun_prop) rfl
  simp only [hF] at hm
  rw [hy0] at hm hyy hy
  exact not_isLocalMax_of_deriv2 (g := fun t => d_H x t (b ^ 2) 0 0) (g' := fun t => d_Hy x t (b ^ 2) 0 0)
    (fun t => hasDerivAt_Hy x t (b ^ 2)) hy (hasDerivAt_Hyy x 0 (b ^ 2)) hyy hm

end NoFourMUBs.Step1Saddle
