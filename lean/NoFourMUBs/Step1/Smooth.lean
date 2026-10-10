import NoFourMUBs.Step1.Single

/-!
# Step 1, item 11: a smooth boundary trace with an interior partner

Along the invariant orbit `U_τ = (e^{−2iτ}(U + V) + e^{iτ}(U − V))/2`, `φ(τ) = Δ(U_τ)` has `φ(0) = 0`.
* If `φ′(0) ≠ 0`, one sign of small `τ` gives `Δ(U_τ) < 0`.
* If `φ′(0) = 0`, the tangency forces `V = rz − (r + 1)z̄²` with `r` real, and `φ″(0) = −(9/2)(r + 2)²Q² < 0`,
  where `Q = |z³ − 1|² > 0` and `r ≠ −2` because `V` is interior.

So interior orbit points with the same value of `ℛ` lie arbitrarily close, and `interior_case` gives a contradiction.
-/

open Filter Topology NoFourMUBs.Step1Saddle

namespace NoFourMUBs.Step1Geo

/-! ### The polynomial `P(Z, W)` with `Δ(Z) = Re P(Z, Z̄)` and its derivatives -/

def Pc (Z W : ℂ) : ℂ := Z ^ 2 * W ^ 2 + 18 * Z * W - 4 * (Z ^ 3 + W ^ 3) - 27
def PZ (Z W : ℂ) : ℂ := 2 * Z * W ^ 2 + 18 * W - 12 * Z ^ 2
def PW (Z W : ℂ) : ℂ := 2 * Z ^ 2 * W + 18 * Z - 12 * W ^ 2
def PZZ (Z W : ℂ) : ℂ := 2 * W ^ 2 - 24 * Z
def PWW (Z W : ℂ) : ℂ := 2 * Z ^ 2 - 24 * W
def PZW (Z W : ℂ) : ℂ := 4 * Z * W + 18

lemma delta_re (Z : ℂ) : Delta Z = (Pc Z (star Z)).re := by
  have h := delta_cast Z
  have : Pc Z (star Z) = (Delta Z : ℂ) := by rw [h]; unfold Pc; ring
  rw [this, Complex.ofReal_re]

lemma PW_star (Z : ℂ) : PW Z (star Z) = star (PZ Z (star Z)) := by
  unfold PW PZ; simp only [star_sub, star_add, star_mul, star_pow, star_star, star_ofNat]; ring

/-- First-order chain rule for `P(u, ū)`. -/
lemma hasDerivAt_Pc {u : ℝ → ℂ} {u1 : ℂ} {t : ℝ} (hu : HasDerivAt u u1 t) :
    HasDerivAt (fun s => Pc (u s) (star (u s)))
      (PZ (u t) (star (u t)) * u1 + PW (u t) (star (u t)) * star u1) t := by
  have hs := hu.star
  have := ((((hu.pow 2).mul (hs.pow 2)).add (((hu.const_mul (18 : ℂ)).mul hs))).sub
    (((hu.pow 3).add (hs.pow 3)).const_mul (4 : ℂ))).sub_const (27 : ℂ)
  refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun s => ?_)
  · simp only [PZ, PW, Nat.cast_ofNat, Pi.pow_apply, Pi.mul_apply, Pi.add_apply, Pi.sub_apply]; ring
  · simp only [Pc, Pi.pow_apply, Pi.mul_apply, Pi.add_apply, Pi.sub_apply] <;> ring

/-- Second-order chain rule: the derivative of `PZ(u, ū)u′ + PW(u, ū)ū′`. -/
lemma hasDerivAt_Pc1 {u u1 : ℝ → ℂ} {u2 : ℂ} {t : ℝ} (hu : HasDerivAt u (u1 t) t)
    (hu1 : HasDerivAt u1 u2 t) :
    HasDerivAt (fun s => PZ (u s) (star (u s)) * u1 s + PW (u s) (star (u s)) * star (u1 s))
      (PZZ (u t) (star (u t)) * u1 t ^ 2 + 2 * PZW (u t) (star (u t)) * u1 t * star (u1 t) +
        PWW (u t) (star (u t)) * star (u1 t) ^ 2 + PZ (u t) (star (u t)) * u2 +
        PW (u t) (star (u t)) * star u2) t := by
  have hs := hu.star
  have hs1 := hu1.star
  have hPZ := (((hu.const_mul (2 : ℂ)).mul (hs.pow 2)).add (hs.const_mul (18 : ℂ))).sub
    ((hu.pow 2).const_mul (12 : ℂ))
  have hPW := ((((hu.pow 2).const_mul (2 : ℂ)).mul hs).add (hu.const_mul (18 : ℂ))).sub
    ((hs.pow 2).const_mul (12 : ℂ))
  have := (hPZ.mul hu1).add (hPW.mul hs1)
  refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun s => ?_)
  · simp only [PZ, PW, PZZ, PWW, PZW, Nat.cast_ofNat, Pi.pow_apply, Pi.mul_apply, Pi.add_apply, Pi.sub_apply]; ring
  · simp only [PZ, PW, Pi.pow_apply, Pi.mul_apply, Pi.add_apply, Pi.sub_apply] <;> ring

/-! ### Sign lemmas -/

lemma exists_neg_of_deriv_ne {f : ℝ → ℝ} {d : ℝ} (hf0 : f 0 = 0) (hf : HasDerivAt f d 0) (hd : d ≠ 0) :
    ∀ ε > 0, ∃ t, |t| < ε ∧ f t < 0 := by
  intro ε hε
  have hslope := hasDerivAt_iff_tendsto_slope.mp hf
  have hsl : ∀ t, slope f 0 t = f t / t := fun t => by rw [slope_def_field, hf0, sub_zero, sub_zero]
  rcases lt_or_gt_of_ne hd with hneg | hpos
  · have hev : ∀ᶠ t in 𝓝[>] (0 : ℝ), slope f 0 t < 0 :=
      (hslope.eventually (gt_mem_nhds hneg)).filter_mono (nhdsWithin_mono _ fun t (ht : 0 < t) => ne_of_gt ht)
    have hev2 : ∀ᶠ t in 𝓝[>] (0 : ℝ), t < ε := (gt_mem_nhds hε).filter_mono nhdsWithin_le_nhds
    obtain ⟨t, ht1, ht2, ht3⟩ := (hev.and (hev2.and self_mem_nhdsWithin)).exists
    refine ⟨t, by rw [abs_of_pos ht3]; exact ht2, ?_⟩
    rw [hsl] at ht1; exact (div_neg_iff.mp ht1).elim (fun h => by linarith [h.2]) (fun h => h.1)
  · have hev : ∀ᶠ t in 𝓝[<] (0 : ℝ), 0 < slope f 0 t :=
      (hslope.eventually (lt_mem_nhds hpos)).filter_mono (nhdsWithin_mono _ fun t (ht : t < 0) => ne_of_lt ht)
    have hev2 : ∀ᶠ t in 𝓝[<] (0 : ℝ), -ε < t := (lt_mem_nhds (by linarith : -ε < 0)).filter_mono nhdsWithin_le_nhds
    obtain ⟨t, ht1, ht2, ht3⟩ := (hev.and (hev2.and self_mem_nhdsWithin)).exists
    have ht3' : t < 0 := ht3
    refine ⟨t, by rw [abs_of_neg ht3']; linarith, ?_⟩
    rw [hsl] at ht1; exact (div_pos_iff.mp ht1).elim (fun h => by linarith [h.2]) (fun h => h.1)

lemma exists_neg_of_deriv2 {f f' : ℝ → ℝ} {d : ℝ} (hf0 : f 0 = 0) (hf : ∀ t, HasDerivAt f (f' t) t)
    (hf'0 : f' 0 = 0) (hf2 : HasDerivAt f' d 0) (hd : d < 0) : ∀ ε > 0, ∃ t, |t| < ε ∧ f t < 0 := by
  intro ε hε
  have hslope := hasDerivAt_iff_tendsto_slope.mp hf2
  have hev : ∀ᶠ t in 𝓝[>] (0 : ℝ), f' t < 0 := by
    have h1 : ∀ᶠ t in 𝓝[>] (0 : ℝ), slope f' 0 t < 0 :=
      (hslope.eventually (gt_mem_nhds hd)).filter_mono (nhdsWithin_mono _ fun t (ht : 0 < t) => ne_of_gt ht)
    filter_upwards [h1, self_mem_nhdsWithin] with t ht (htpos : 0 < t)
    rw [slope_def_field, hf'0, sub_zero, sub_zero] at ht
    exact (div_neg_iff.mp ht).elim (fun h => by linarith [h.2]) (fun h => h.1)
  obtain ⟨δ, hδ, hδI⟩ := mem_nhdsGT_iff_exists_Ioo_subset.mp hev
  have hδ0 : 0 < δ := hδ
  set t := min ε δ / 2 with htdef
  have ht0 : 0 < t := by rw [htdef]; have := lt_min hε hδ0; positivity
  have htε : t < ε := by have := min_le_left ε δ; rw [htdef]; linarith
  have htδ : t < δ := by have := min_le_right ε δ; rw [htdef]; linarith
  obtain ⟨ξ, ⟨hξ0, hξt⟩, hξ⟩ := exists_hasDerivAt_eq_slope f f' ht0
    (fun x _ => (hf x).continuousAt.continuousWithinAt) (fun x _ => hf x)
  have hneg : f' ξ < 0 := hδI ⟨hξ0, hξt.trans htδ⟩
  refine ⟨t, by rw [abs_of_pos ht0]; exact htε, ?_⟩
  rw [hξ, hf0, sub_zero, sub_zero] at hneg
  exact (div_neg_iff.mp hneg).elim (fun h => by linarith [h.2]) (fun h => h.1)

/-! ### The orbit curve -/

noncomputable def e1 (τ : ℝ) : ℂ := Complex.exp ((τ : ℂ) * (-2 * Complex.I))
noncomputable def e2 (τ : ℝ) : ℂ := Complex.exp ((τ : ℂ) * Complex.I)

noncomputable def uf (U V : ℂ) (τ : ℝ) : ℂ := (e1 τ * (U + V) + e2 τ * (U - V)) / 2
noncomputable def vf (U V : ℂ) (τ : ℝ) : ℂ := (e1 τ * (U + V) - e2 τ * (U - V)) / 2
noncomputable def u1f (U V : ℂ) (τ : ℝ) : ℂ := ((-2 * Complex.I) * e1 τ * (U + V) + Complex.I * e2 τ * (U - V)) / 2
noncomputable def u2f (U V : ℂ) (τ : ℝ) : ℂ := (-4 * e1 τ * (U + V) - e2 τ * (U - V)) / 2

lemma hasDerivAt_cexp_mul (c : ℂ) (τ : ℝ) :
    HasDerivAt (fun s : ℝ => Complex.exp ((s : ℂ) * c)) (c * Complex.exp ((τ : ℂ) * c)) τ := by
  have := ((hasDerivAt_id τ).ofReal_comp.mul_const c).cexp
  refine this.congr_deriv ?_
  simp [mul_comm]

lemma hasDerivAt_uf (U V : ℂ) (τ : ℝ) : HasDerivAt (uf U V) (u1f U V τ) τ := by
  have := (((hasDerivAt_cexp_mul (-2 * Complex.I) τ).mul_const (U + V)).add
    ((hasDerivAt_cexp_mul Complex.I τ).mul_const (U - V))).div_const 2
  exact this.congr_deriv (by simp only [u1f, e1, e2] <;> ring)

lemma hasDerivAt_u1f (U V : ℂ) (τ : ℝ) : HasDerivAt (u1f U V) (u2f U V τ) τ := by
  have := ((((hasDerivAt_cexp_mul (-2 * Complex.I) τ).const_mul (-2 * Complex.I)).mul_const (U + V)).add
    (((hasDerivAt_cexp_mul Complex.I τ).const_mul Complex.I).mul_const (U - V))).div_const 2
  refine (this.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun s => ?_)
  · simp only [u2f, e1, e2]; ring_nf; rw [Complex.I_sq]; ring
  · simp only [u1f, e1, e2, Pi.add_apply] <;> ring

lemma continuous_uf (U V : ℂ) : Continuous (uf U V) := by unfold uf e1 e2; fun_prop
lemma continuous_vf (U V : ℂ) : Continuous (vf U V) := by unfold vf e1 e2; fun_prop

lemma e2_normSq (τ : ℝ) : Complex.normSq (e2 τ) = 1 := by
  rw [e2, Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I]; norm_num

lemma star_e2_sq (τ : ℝ) : star (e2 τ) ^ 2 = e1 τ := by
  rw [e2, e1, Complex.star_def, ← Complex.exp_conj, ← Complex.exp_nat_mul]
  congr 1; simp [Complex.conj_ofReal]; ring

lemma uf_orbit (U V : ℂ) (τ : ℝ) : uf U V τ = orbitU U V (e2 τ) := by
  rw [uf, orbitU, star_e2_sq]
lemma vf_orbit (U V : ℂ) (τ : ℝ) : vf U V τ = orbitV U V (e2 τ) := by
  rw [vf, orbitV, star_e2_sq]

lemma uf_zero (U V : ℂ) : uf U V 0 = U := by simp [uf, e1, e2] <;> ring
lemma vf_zero (U V : ℂ) : vf U V 0 = V := by simp [vf, e1, e2] <;> ring
lemma u1f_zero (U V : ℂ) : u1f U V 0 = -Complex.I * (U + 3 * V) / 2 := by simp [u1f, e1, e2] <;> ring
lemma u2f_zero (U V : ℂ) : u2f U V 0 = -(5 * U + 3 * V) / 2 := by simp [u2f, e1, e2] <;> ring


/-! ### The three identities (exact cofactors) -/

lemma alg_tang (z zi : ℂ) (hz : z * zi = 1) :
    PZ (2 * z + zi ^ 2) (2 * zi + z ^ 2) * (-Complex.I) * (z - zi ^ 2) +
      PW (2 * z + zi ^ 2) (2 * zi + z ^ 2) * Complex.I * (zi - z ^ 2) = 0 := by
  unfold PZ PW
  linear_combination (-6*Complex.I*z^4*zi + 6*Complex.I*z^3 + 6*Complex.I*z*zi^4 - 6*Complex.I*zi^3) * hz + (0) * Complex.I_sq

lemma alg_grad (z zi : ℂ) (hz : z * zi = 1) :
    PZ (2 * z + zi ^ 2) (2 * zi + z ^ 2) * PW (2 * z + zi ^ 2) (2 * zi + z ^ 2) =
      16 * ((z ^ 3 - 1) * (zi ^ 3 - 1)) ^ 3 := by
  unfold PZ PW
  linear_combination (-16*z^8*zi^8 + 48*z^8*zi^5 - 48*z^8*zi^2 - 16*z^7*zi^7 + 48*z^7*zi^4 - 24*z^7*zi - 16*z^6*zi^6 + 72*z^6*zi^3 - 216*z^6 + 48*z^5*zi^8 - 156*z^5*zi^5 + 312*z^5*zi^2 + 48*z^4*zi^7 - 12*z^4*zi^4 - 360*z^4*zi + 72*z^3*zi^6 - 372*z^3*zi^3 + 1032*z^3 - 48*z^2*zi^8 + 312*z^2*zi^5 + 124*z^2*zi^2 - 24*z*zi^7 - 360*z*zi^4 - 1280*z*zi - 216*zi^6 + 1032*zi^3 + 16) * hz

lemma alg_second (z zi r : ℂ) (hz : z * zi = 1) :
    PZZ (2 * z + zi ^ 2) (2 * zi + z ^ 2) * (-Complex.I * ((2 * z + zi ^ 2) + 3 * (r * z - (r + 1) * zi ^ 2)) / 2) ^ 2 +
      2 * PZW (2 * z + zi ^ 2) (2 * zi + z ^ 2) *
        (-Complex.I * ((2 * z + zi ^ 2) + 3 * (r * z - (r + 1) * zi ^ 2)) / 2) *
        (Complex.I * ((2 * zi + z ^ 2) + 3 * (r * zi - (r + 1) * z ^ 2)) / 2) +
      PWW (2 * z + zi ^ 2) (2 * zi + z ^ 2) * (Complex.I * ((2 * zi + z ^ 2) + 3 * (r * zi - (r + 1) * z ^ 2)) / 2) ^ 2 +
      PZ (2 * z + zi ^ 2) (2 * zi + z ^ 2) * (-(5 * (2 * z + zi ^ 2) + 3 * (r * z - (r + 1) * zi ^ 2)) / 2) +
      PW (2 * z + zi ^ 2) (2 * zi + z ^ 2) * (-(5 * (2 * zi + z ^ 2) + 3 * (r * zi - (r + 1) * z ^ 2)) / 2) =
      -9 / 2 * (r + 2) ^ 2 * ((z ^ 3 - 1) * (zi ^ 3 - 1)) ^ 2 := by
  unfold PZZ PZW PWW PZ PW
  linear_combination (-9*Complex.I^2*r^2*z^4*zi - 9*Complex.I^2*r^2*z^3*zi^3 + 9*Complex.I^2*r^2*z^3 - 99*Complex.I^2*r^2*z^2*zi^2 - 9*Complex.I^2*r^2*z*zi^4 + 108*Complex.I^2*r^2*z*zi + 9*Complex.I^2*r^2*zi^3 + 27*Complex.I^2*r^2 - 12*Complex.I^2*r*z^4*zi - 12*Complex.I^2*r*z^3*zi^3 + 12*Complex.I^2*r*z^3 - 132*Complex.I^2*r*z^2*zi^2 - 12*Complex.I^2*r*z*zi^4 + 144*Complex.I^2*r*z*zi + 12*Complex.I^2*r*zi^3 + 36*Complex.I^2*r - 4*Complex.I^2*z^4*zi - 4*Complex.I^2*z^3*zi^3 + 4*Complex.I^2*z^3 - 44*Complex.I^2*z^2*zi^2 - 4*Complex.I^2*z*zi^4 + 48*Complex.I^2*z*zi + 4*Complex.I^2*zi^3 + 12*Complex.I^2 + 9*r^2*z^5*zi^5/2 - 9*r^2*z^5*zi^2 + 9*r^2*z^4*zi^4/2 - 9*r^2*z^4*zi + 9*r^2*z^3*zi^3/2 - 9*r^2*z^3 - 9*r^2*z^2*zi^5 + 45*r^2*z^2*zi^2/2 - 9*r^2*z*zi^4 + 45*r^2*z*zi/2 - 9*r^2*zi^3 + 45*r^2/2 + 18*r*z^5*zi^5 - 36*r*z^5*zi^2 + 18*r*z^4*zi^4 - 21*r*z^4*zi + 24*r*z^3*zi^3 - 87*r*z^3 - 36*r*z^2*zi^5 + 120*r*z^2*zi^2 - 21*r*z*zi^4 + 126*r*z*zi - 87*r*zi^3 + 18*r + 18*z^5*zi^5 - 36*z^5*zi^2 + 18*z^4*zi^4 - 58*z^4*zi + 14*z^3*zi^3 - 86*z^3 - 36*z^2*zi^5 - 26*z^2*zi^2 - 58*z*zi^4 + 354*z*zi - 86*zi^3 - 6) * hz + (9*r^2*z^6/2 - 18*r^2*z^3 + 9*r^2*zi^6/2 - 18*r^2*zi^3 + 27*r^2 + 6*r*z^6 - 24*r*z^3 + 6*r*zi^6 - 24*r*zi^3 + 36*r + 2*z^6 - 8*z^3 + 2*zi^6 - 8*zi^3 + 12) * Complex.I_sq

/-! ### The smooth single-boundary case -/

lemma hasDerivAt_re {g : ℝ → ℂ} {g' : ℂ} {t : ℝ} (h : HasDerivAt g g' t) :
    HasDerivAt (fun s => (g s).re) g'.re t := by
  exact Complex.reCLM.hasFDerivAt.comp_hasDerivAt t h

lemma re_add_star (p : ℂ) : (p + star p).re = 2 * p.re := by
  simp [Complex.star_def]; ring

lemma delta_repeated {z : ℂ} (hz1 : Complex.normSq z = 1) : Delta (2 * z + star z ^ 2) = 0 := by
  have hs : star z * z = 1 := by
    rw [Complex.star_def, Complex.conj_mul', ← Complex.ofReal_pow, ← Complex.normSq_eq_norm_sq, hz1]; norm_num
  have h3 : Complex.normSq (star z ^ 2) = 1 := by
    rw [sq, Complex.normSq_mul, Complex.star_def, Complex.normSq_conj, hz1, one_mul]
  have := delta_trace hz1 hz1 h3 (by linear_combination (star z * z + 1) * hs)
  rw [show z + z + star z ^ 2 = 2 * z + star z ^ 2 by ring, sub_self, zero_mul, zero_mul,
    Complex.normSq_zero, neg_zero] at this
  exact this

/-- **A smooth boundary trace with an interior partner is not a relative local maximum.** -/
theorem smooth_case {U V z : ℂ} (hz1 : Complex.normSq z = 1) (hz3 : z ^ 3 ≠ 1) (hUz : U = 2 * z + star z ^ 2)
    (hV : Delta V < 0) (hpos : 0 < calRUV U V) (hmax : IsLocalMaxOn calRUV' DD (U, V)) : False := by
  have hzz : z * star z = 1 := by
    rw [mul_comm, Complex.star_def, Complex.conj_mul', ← Complex.ofReal_pow, ← Complex.normSq_eq_norm_sq, hz1]
    norm_num
  have hsU : star U = 2 * star z + z ^ 2 := by
    rw [hUz]; simp only [star_add, star_mul', star_pow, star_star, star_ofNat]
  set Q : ℂ := (z ^ 3 - 1) * (star z ^ 3 - 1)
  have hQn : Q = (Complex.normSq (z ^ 3 - 1) : ℂ) := by
    rw [Complex.normSq_eq_conj_mul_self, ← Complex.star_def, star_sub, star_pow, star_one, mul_comm]
  have hQpos : 0 < Complex.normSq (z ^ 3 - 1) := Complex.normSq_pos.mpr (sub_ne_zero.mpr hz3)
  -- φ and its derivatives
  set g1 : ℝ → ℂ := fun τ => PZ (uf U V τ) (star (uf U V τ)) * u1f U V τ +
    PW (uf U V τ) (star (uf U V τ)) * star (u1f U V τ)
  have hφ : ∀ τ, HasDerivAt (fun s => Delta (uf U V s)) (g1 τ).re τ := by
    intro τ
    have := hasDerivAt_re (hasDerivAt_Pc (hasDerivAt_uf U V τ))
    exact this.congr_of_eventuallyEq (Filter.Eventually.of_forall fun s => delta_re _)
  set G2 : ℂ := PZZ U (star U) * u1f U V 0 ^ 2 + 2 * PZW U (star U) * u1f U V 0 * star (u1f U V 0) +
    PWW U (star U) * star (u1f U V 0) ^ 2 + PZ U (star U) * u2f U V 0 + PW U (star U) * star (u2f U V 0)
  have hφ1 : HasDerivAt (fun s => (g1 s).re) G2.re 0 := by
    have := hasDerivAt_re (hasDerivAt_Pc1 (hasDerivAt_uf U V 0) (hasDerivAt_u1f U V 0))
    simpa only [uf_zero] using this
  have hφ0 : Delta (uf U V 0) = 0 := by rw [uf_zero, hUz]; exact delta_repeated hz1
  -- interior orbit points arbitrarily close
  have key : ∀ ε > 0, ∃ τ, |τ| < ε ∧ Delta (uf U V τ) < 0 := by
    by_cases h1 : (g1 0).re = 0
    · set c := PZ U (star U) * (-Complex.I)
      set d := z - star z ^ 2
      set w := U + 3 * V
      have hg10 : g1 0 = c * w / 2 + star (c * w / 2) := by
        simp only [g1, uf_zero, u1f_zero, PW_star, c, w, star_mul', star_div₀]
        simp only [star_mul', star_neg, Complex.star_def, Complex.conj_I, star_ofNat]; ring
      have hcw : (c * w).re = 0 := by
        rw [hg10, re_add_star] at h1
        have h2 : (c * w / 2).re = (c * w).re / 2 := by simp
        linarith [h2]
      have hcdre : (c * d).re = 0 := by
        have hcd : c * d + star (c * d) = 0 := by
          have hsc : star c = PW U (star U) * Complex.I := by
            simp only [c, star_mul', star_neg]
            rw [← PW_star]
            simp only [Complex.star_def, Complex.conj_I, neg_neg]
          have hsd : star d = star z - z ^ 2 := by simp only [d, star_sub, star_pow, star_star]
          rw [star_mul', hsc, hsd]
          show PZ U (star U) * (-Complex.I) * (z - star z ^ 2) + PW U (star U) * Complex.I * (star z - z ^ 2) = 0
          rw [hsU, hUz]
          exact alg_tang z (star z) hzz
        have := congrArg Complex.re hcd; rw [re_add_star, Complex.zero_re] at this; linarith
      have hPZ : PZ U (star U) ≠ 0 := by
        intro h0
        have hid := alg_grad z (star z) hzz
        rw [← hUz, ← hsU, h0, zero_mul] at hid
        have : Q ^ 3 = 0 := by linear_combination -hid / 16
        have hQ0 : Q = 0 := pow_eq_zero_iff (by norm_num) |>.mp this
        rw [hQn] at hQ0; exact hQpos.ne' (by exact_mod_cast hQ0)
      have hc0 : c ≠ 0 := mul_ne_zero hPZ (by simp)
      have hd0 : d ≠ 0 := by
        intro h0; apply hz3
        have : z = star z ^ 2 := sub_eq_zero.mp h0
        linear_combination z ^ 2 * this + (z * star z + 1) * hzz
      have hcdim : (c * d).im ≠ 0 := by
        intro him; exact mul_ne_zero hc0 hd0 (Complex.ext hcdre him)
      set σ : ℝ := (c * w).im / (c * d).im
      have hw : w = (σ : ℂ) * d := by
        have hcw' : c * w = ((c * w).im : ℂ) * Complex.I := by apply Complex.ext <;> simp [hcw]
        have hcd' : c * d = ((c * d).im : ℂ) * Complex.I := by apply Complex.ext <;> simp [hcdre]
        apply mul_left_cancel₀ hc0
        rw [hcw', show c * ((σ : ℂ) * d) = (σ : ℂ) * (c * d) by ring, hcd']
        simp only [σ]; push_cast
        have hb : ((c * d).im : ℂ) ≠ 0 := by exact_mod_cast hcdim
        rw [div_mul_eq_mul_div, eq_div_iff hb]; ring
      set r : ℝ := (σ - 2) / 3
      have hVr : V = (r : ℂ) * z - ((r : ℂ) + 1) * star z ^ 2 := by
        have h3 : 3 * V = (σ : ℂ) * d - U := by rw [← hw]; simp only [w]; ring
        simp only [r, d] at h3 ⊢; rw [hUz] at h3; push_cast
        linear_combination h3 / 3
      have hsV : star V = (r : ℂ) * star z - ((r : ℂ) + 1) * z ^ 2 := by
        rw [hVr]; simp [star_sub, star_mul, star_pow, Complex.conj_ofReal]; ring
      have hr2 : r ≠ -2 := by
        intro h; rw [h] at hVr
        have : V = 2 * (-z) + star (-z) ^ 2 := by rw [hVr]; simp [star_neg]; ring
        have h0 := delta_repeated (z := -z) (by rw [Complex.normSq_neg, hz1])
        rw [← this] at h0; linarith
      have hG2 : G2 = -9 / 2 * ((r : ℂ) + 2) ^ 2 * Q ^ 2 := by
        simp only [G2, u1f_zero, u2f_zero, star_div₀, star_mul', star_neg, star_add, star_ofNat]
        rw [show star Complex.I = -Complex.I from Complex.conj_I, neg_neg, hsU, hsV, hVr, hUz]
        exact alg_second z (star z) r hzz
      have hneg : G2.re < 0 := by
        rw [hG2, hQn]
        have : (-9 / 2 * ((r : ℂ) + 2) ^ 2 * (Complex.normSq (z ^ 3 - 1) : ℂ) ^ 2).re =
            -9 / 2 * (r + 2) ^ 2 * Complex.normSq (z ^ 3 - 1) ^ 2 := by
          rw [show (-9 / 2 * ((r : ℂ) + 2) ^ 2 * (Complex.normSq (z ^ 3 - 1) : ℂ) ^ 2) =
            ((-9 / 2 * (r + 2) ^ 2 * Complex.normSq (z ^ 3 - 1) ^ 2 : ℝ) : ℂ) by push_cast; ring]
          exact Complex.ofReal_re _
        rw [this]
        have : 0 < (r + 2) ^ 2 := by have : r + 2 ≠ 0 := fun h => hr2 (by linarith); positivity
        nlinarith [mul_pos this (pow_pos hQpos 2)]
      exact exists_neg_of_deriv2 hφ0 hφ h1 hφ1 hneg
    · exact exists_neg_of_deriv_ne hφ0 (hφ 0) h1
  -- conclude: a nearby interior orbit point is a relative local maximum
  have hT : Tendsto (fun τ => (uf U V τ, vf U V τ)) (𝓝 0) (𝓝 (U, V)) := by
    have := ((continuous_uf U V).prodMk (continuous_vf U V)).tendsto 0
    simpa [uf_zero, vf_zero] using this
  have hev1 := hT.eventually (localMaxOn_of_near hmax)
  have hev2 : ∀ᶠ τ in 𝓝 (0 : ℝ), Delta (vf U V τ) < 0 := by
    have := (continuous_Delta.comp (continuous_vf U V)).tendsto 0
    simp only [Function.comp, vf_zero] at this
    exact this.eventually (gt_mem_nhds hV)
  obtain ⟨δ, hδ, hδI⟩ := Metric.eventually_nhds_iff.mp (hev1.and hev2)
  obtain ⟨τ, hτ, hτneg⟩ := key δ hδ
  obtain ⟨hloc, hVτ⟩ := hδI (by rwa [Real.dist_eq, sub_zero])
  have hval : calRUV' (uf U V τ, vf U V τ) = calRUV' (U, V) := by
    simp only [calRUV']; rw [uf_orbit, vf_orbit, calRUV_orbit _ _ _ (e2_normSq τ)]
  exact interior_case hτneg hVτ (by simp only [calRUV'] at hval; rw [hval]; exact hpos) (hloc hval)

/-! ### Item 13: both traces lie on the boundary -/

lemma localMaxOn_swap {U V : ℂ} (h : IsLocalMaxOn calRUV' DD (U, V)) : IsLocalMaxOn calRUV' DD (V, U) := by
  rw [IsLocalMaxOn, IsMaxFilter, eventually_nhdsWithin_iff] at h ⊢
  have hT : Tendsto Prod.swap (𝓝 (V, U)) (𝓝 (U, V)) := continuous_swap.tendsto (V, U)
  filter_upwards [hT.eventually h] with p hp hpD
  have := hp ⟨hpD.2, hpD.1⟩
  simp only [calRUV', Prod.fst_swap, Prod.snd_swap] at this ⊢
  have e1 : calRUV V U = calRUV U V := calRUV_swap U V
  have e2 : calRUV p.1 p.2 = calRUV p.2 p.1 := calRUV_swap p.2 p.1
  rw [e1, e2]; exact this

lemma not_one_trace_interior {U V : ℂ} (hU : InD U) (hU0 : Delta U = 0) (hV : Delta V < 0)
    (hpos : 0 < calRUV U V) (hmax : IsLocalMaxOn calRUV' DD (U, V)) : False := by
  obtain ⟨z, hz1, hUz⟩ := boundary_form hU hU0
  by_cases hz3 : z ^ 3 = 1
  · exact cusp_case hz1 hz3 hUz hV hpos hmax
  · exact smooth_case hz1 hz3 hUz hV hpos hmax

/-- **Item 13.** At a positive relative local maximum on `D × D`, both traces lie on the boundary. -/
theorem both_boundary {U V : ℂ} (hU : InD U) (hV : InD V) (hpos : 0 < calRUV U V)
    (hmax : IsLocalMaxOn calRUV' DD (U, V)) : Delta U = 0 ∧ Delta V = 0 := by
  have hU' := delta_nonpos hU
  have hV' := delta_nonpos hV
  rcases hU'.lt_or_eq with hUlt | hUeq <;> rcases hV'.lt_or_eq with hVlt | hVeq
  · exact (interior_case hUlt hVlt hpos hmax).elim
  · exact (not_one_trace_interior hV hVeq hUlt (by rwa [calRUV_swap]) (localMaxOn_swap hmax)).elim
  · exact (not_one_trace_interior hU hUeq hVlt hpos hmax).elim
  · exact ⟨hUeq, hVeq⟩

end NoFourMUBs.Step1Geo
