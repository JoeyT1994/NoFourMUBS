import KernelAtlas.ExactK
import NoFourMUBs.Step2.BaseAnchor

/-!
# The `anchor` field in the kernel: `H₀` in a Record

The entries of `BaseAnchor.H0` lie in `ℚ(i, √3, √5, √7)`: `z = Σ_k (α_k + iβ_k) μ_k` over the eight surd monomials
`μ_k = √3^{k₀} √5^{k₁} √7^{k₂}` (`cpoly`, one `ring` identity per entry, generated). Their phases are not rational
multiples of `π`, so the certificate gives, per entry, a rational `θ̃` and a bound `η` (`entOK`):
* `Re z`, `Im z` lie in rational intervals (`√p` between rational bounds, interval sums);
* `q = (c + is)/2^p ≈ e^{−iθ̃}` from the Taylor enclosure of `Trig.lean`, and `‖zq − 1‖ ≤ B` by intervals;
* `‖z e^{−iθ̃} − 1‖ ≤ B + ε`, and for a unit `w = e^{iψ}`, `|ψ| ≤ (π/2)‖w − 1‖` (Jordan's inequality), so
  `z = e^{iφ}` with `|φ − θ̃| ≤ η` (`phase_near`).
Then `H₀ = e^{i(Θ̃ + E)}` with `‖E‖ ≤ Ē`, and `memOKg` checks `‖h(AΘ̃ + 2πN − P_t)‖ + Ē < R_t` exactly
(`anchorK`).
-/

open Matrix Hadamard6 NoFourMUBs

namespace NoFourMUBs.KernelAtlas

/-! ### Membership with a rational part and a slack -/

/-- `M' = A M + 2N` and the test `‖h(AQ + π̃M' − P_t)‖ < R_t − 10⁻²⁰(‖M'‖² + 1)/2 − E`. -/
def memDg (Mq : I6 → I6 → ℚ) (t : BTgt) (E : ℚ) : ℚ := t.Rt - 1 / 10 ^ 20 * (sq6 (mPr Mq t) + 1) / 2 - E

def memOKg (Q Mq : I6 → I6 → ℚ) (t : BTgt) (E : ℚ) : Bool :=
  permChk t.rp t.rpi && permChk t.cp t.cpi && decide (0 ≤ memDg Mq t E) &&
  decide (sq6 (horQ fun a b => t.actQ Q a b + piLo * mPr Mq t a b - t.pt a b) < memDg Mq t E ^ 2)

lemma memg_sound {Q Mq : I6 → I6 → ℚ} {t : BTgt} {E : ℚ} (h : memOKg Q Mq t E = true) {Pt : RMat6}
    (hPt : Pt = Pmat t.pt) {Rt : ℝ} (hRt : (t.Rt : ℝ) ≤ Rt) {Err : RMat6} (hErr : frob Err ≤ E) :
    frob (hor (t.sp.act (Matrix.of (fun a b => (Q a b : ℝ)) + piM Mq + Err) +
      (2 * Real.pi) • t.wind.map (Int.cast : ℤ → ℝ) - Pt) + hor (t.sp.act 0)) + 0 < Rt := by
  simp only [memOKg, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨h1, h2⟩, hD0⟩, hlt⟩ := h
  set Mr : RMat6 := Matrix.of fun a b => (mPr Mq t a b : ℝ)
  set Yl : RMat6 := Matrix.of fun a b => ((t.actQ Q a b + piLo * mPr Mq t a b - t.pt a b : ℚ) : ℝ)
  have hY : t.sp.act (Matrix.of (fun a b => (Q a b : ℝ)) + piM Mq + Err) +
      (2 * Real.pi) • t.wind.map (Int.cast : ℤ → ℝ) - Pt = (Yl + (Real.pi - piLo) • Mr) + t.sp.act Err := by
    rw [SignedPerm.act_add]
    ext i j
    by_cases hcj : t.cj = true <;> by_cases htr : t.tr = true <;>
      simp [hcj, htr, Yl, Mr, mPr, BTgt.actQ, piM, hPt, Pmat, BTgt.wind, sp_act h1 h2] <;> ring
  have h0 : t.sp.act (0 : RMat6) = 0 := by simpa using act_smul t.sp 0 0
  have hpi1 := piLo_le_pi
  have hpi2 : Real.pi - piLo ≤ 1 / 10 ^ 20 := by
    have := Real.pi_lt_d20; unfold piLo; push_cast; norm_num at this ⊢; linarith
  have hfY : frob (hor Yl) < memDg Mq t E := by
    apply frob_lt_of_sumsq (by exact_mod_cast hD0)
    rw [hor_ofRat, sumsq_ofRat]
    exact_mod_cast hlt
  have hS : sumsq Mr = (sq6 (mPr Mq t) : ℝ) := sumsq_ofRat _
  have hS0 : (0 : ℝ) ≤ (sq6 (mPr Mq t) : ℝ) := by rw [← hS]; exact sumsq_nonneg _
  have hfM : frob (hor ((Real.pi - piLo) • Mr)) ≤ 1 / 10 ^ 20 * ((sq6 (mPr Mq t) : ℝ) + 1) / 2 := by
    refine (frob_hor_le _).trans ?_
    rw [frob_smul, frob_eq_sqrt Mr, hS, abs_of_nonneg (by linarith)]
    have := sqrt_le_half _ hS0
    have := Real.sqrt_nonneg (sq6 (mPr Mq t) : ℝ)
    nlinarith
  have hfE : frob (hor (t.sp.act Err)) ≤ E :=
    (frob_hor_le _).trans ((SignedPerm.frob_act _ _).le.trans hErr)
  have hDr : ((memDg Mq t E : ℚ) : ℝ) = t.Rt - 1 / 10 ^ 20 * ((sq6 (mPr Mq t) : ℝ) + 1) / 2 - E := by
    simp only [memDg]; push_cast; ring
  rw [hY, h0, hor_add, hor_add, hor_zero, add_zero, add_zero]
  have := frob_add_le (hor Yl + hor ((Real.pi - piLo) • Mr)) (hor (t.sp.act Err))
  have := frob_add_le (hor Yl) (hor ((Real.pi - piLo) • Mr))
  linarith

/-! ### Phases near a rational angle -/

/-- A unit `z` with `‖z e^{−iθ} − 1‖ ≤ b` is `e^{iφ}` with `|φ − θ| ≤ (π/2) b`. -/
lemma phase_near {z : ℂ} (hz : ‖z‖ = 1) (θ : ℝ) :
    ∃ φ : ℝ, Complex.exp (φ * Complex.I) = z ∧
      |φ - θ| ≤ Real.pi / 2 * ‖z * Complex.exp (↑(-θ) * Complex.I) - 1‖ := by
  set w := z * Complex.exp (↑(-θ) * Complex.I)
  have hw : ‖w‖ = 1 := by
    simp only [w, norm_mul, hz, one_mul, Complex.norm_exp_ofReal_mul_I]
  set ψ := Complex.arg w
  have hwe : Complex.exp (ψ * Complex.I) = w := by
    have := Complex.norm_mul_exp_arg_mul_I w
    rw [hw, Complex.ofReal_one, one_mul] at this; exact this
  refine ⟨θ + ψ, ?_, ?_⟩
  · rw [Complex.ofReal_add, add_mul, Complex.exp_add, hwe]
    simp only [w]
    rw [mul_left_comm, ← Complex.exp_add]
    push_cast; ring_nf; simp
  · have e : θ + ψ - θ = ψ := by ring
    rw [e]
    have hn : ‖w - 1‖ = 2 * |Real.sin (ψ / 2)| := by
      rw [← hwe, mul_comm, Complex.norm_exp_I_mul_ofReal_sub_one, norm_mul, Real.norm_eq_abs,
        Real.norm_eq_abs, abs_two]
    rw [hn]
    have hpi := Real.pi_pos
    have hψ : |ψ| ≤ Real.pi := Complex.abs_arg_le_pi w
    have hs : 2 / Real.pi * (|ψ| / 2) ≤ Real.sin (|ψ| / 2) :=
      Real.mul_le_sin (by positivity) (by linarith)
    have habs : Real.sin (|ψ| / 2) = |Real.sin (ψ / 2)| := by
      rcases le_or_gt 0 ψ with h | h
      · rw [abs_of_nonneg h, abs_of_nonneg (Real.sin_nonneg_of_nonneg_of_le_pi (by linarith) (by
          rw [abs_of_nonneg h] at hψ; linarith))]
      · rw [abs_of_neg h, neg_div, Real.sin_neg, abs_of_nonpos]
        exact Real.sin_nonpos_of_nonpos_of_neg_pi_le (by linarith) (by
          rw [abs_of_neg h] at hψ; linarith)
    rw [← habs]
    have : 2 / Real.pi * (|ψ| / 2) * Real.pi = |ψ| := by field_simp
    nlinarith

/-! ### Surds and intervals -/

/-- Rational bounds `l_p ≤ √p ≤ h_p` (`p = 3, 5, 7`). -/
structure SurdQ where
  l3 : ℚ
  h3 : ℚ
  l5 : ℚ
  h5 : ℚ
  l7 : ℚ
  h7 : ℚ

def SurdQ.ok (S : SurdQ) : Bool :=
  decide (0 ≤ S.l3) && decide (S.l3 ^ 2 ≤ 3) && decide (3 ≤ S.h3 ^ 2) && decide (0 ≤ S.h3) &&
  decide (0 ≤ S.l5) && decide (S.l5 ^ 2 ≤ 5) && decide (5 ≤ S.h5 ^ 2) && decide (0 ≤ S.h5) &&
  decide (0 ≤ S.l7) && decide (S.l7 ^ 2 ≤ 7) && decide (7 ≤ S.h7 ^ 2) && decide (0 ≤ S.h7)

lemma sqrt_between {p l h : ℚ} (_hl0 : 0 ≤ l) (hl : l ^ 2 ≤ p) (hh : p ≤ h ^ 2) (hh0 : 0 ≤ h) :
    (l : ℝ) ≤ Real.sqrt p ∧ Real.sqrt p ≤ h := by
  constructor
  · exact Real.le_sqrt_of_sq_le (by exact_mod_cast hl)
  · exact Real.sqrt_le_iff.mpr ⟨by exact_mod_cast hh0, by exact_mod_cast hh⟩

/-- A surd factor: `√p` if the bit is set, else `1`. -/
noncomputable def sf (b : Bool) (p : ℝ) : ℝ := if b then Real.sqrt p else 1
def sfq (b : Bool) (x : ℚ) : ℚ := if b then x else 1

lemma sf_between {b : Bool} {p : ℕ} {l h : ℚ} (hb : (l : ℝ) ≤ Real.sqrt p ∧ Real.sqrt p ≤ h) (hl : 0 ≤ l) :
    ((sfq b l : ℚ) : ℝ) ≤ sf b p ∧ sf b p ≤ ((sfq b h : ℚ) : ℝ) ∧ (0 : ℝ) ≤ (sfq b l : ℚ) := by
  cases b <;> simp [sf, sfq, hb.1, hb.2, hl]

/-- The monomial `μ_k = √3^{k₀} √5^{k₁} √7^{k₂}`. -/
noncomputable def mu (k : ℕ) : ℝ := sf (k % 2 == 1) 3 * sf (k / 2 % 2 == 1) 5 * sf (k / 4 % 2 == 1) 7
def muL (S : SurdQ) (k : ℕ) : ℚ := sfq (k % 2 == 1) S.l3 * sfq (k / 2 % 2 == 1) S.l5 * sfq (k / 4 % 2 == 1) S.l7
def muH (S : SurdQ) (k : ℕ) : ℚ := sfq (k % 2 == 1) S.h3 * sfq (k / 2 % 2 == 1) S.h5 * sfq (k / 4 % 2 == 1) S.h7

lemma mu_between {S : SurdQ} (hS : S.ok = true) (k : ℕ) :
    ((muL S k : ℚ) : ℝ) ≤ mu k ∧ mu k ≤ ((muH S k : ℚ) : ℝ) := by
  simp only [SurdQ.ok, Bool.and_eq_true, decide_eq_true_eq] at hS
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩, h8⟩, h9⟩, h10⟩, h11⟩, h12⟩ := hS
  have s3 := sqrt_between (p := 3) h1 h2 h3 h4
  have s5 := sqrt_between (p := 5) h5 h6 h7 h8
  have s7 := sqrt_between (p := 7) h9 h10 h11 h12
  push_cast at s3 s5 s7
  obtain ⟨a1, a2, a3⟩ := sf_between (b := k % 2 == 1) (p := 3) (by exact_mod_cast s3) h1
  obtain ⟨b1, b2, b3⟩ := sf_between (b := k / 2 % 2 == 1) (p := 5) (by exact_mod_cast s5) h5
  obtain ⟨c1, c2, c3⟩ := sf_between (b := k / 4 % 2 == 1) (p := 7) (by exact_mod_cast s7) h9
  simp only [mu, muL, muH]
  push_cast at a1 a2 a3 b1 b2 b3 c1 c2 c3 ⊢
  constructor
  · exact mul_le_mul (mul_le_mul a1 b1 b3 (a3.trans a1)) c1 c3 (mul_nonneg (a3.trans a1) (b3.trans b1))
  · exact mul_le_mul (mul_le_mul a2 b2 (b3.trans b1) (a3.trans (a1.trans a2))) c2 (c3.trans c1)
      (mul_nonneg (a3.trans (a1.trans a2)) (b3.trans (b1.trans b2)))

/-- `α · [lo, hi]`. -/
def ilo (α lo hi : ℚ) : ℚ := if 0 ≤ α then α * lo else α * hi
def ihi (α lo hi : ℚ) : ℚ := if 0 ≤ α then α * hi else α * lo

lemma i_between {α lo hi : ℚ} {x : ℝ} (h1 : (lo : ℝ) ≤ x) (h2 : x ≤ hi) :
    ((ilo α lo hi : ℚ) : ℝ) ≤ α * x ∧ α * x ≤ ((ihi α lo hi : ℚ) : ℝ) := by
  unfold ilo ihi
  split_ifs with h
  · have : (0 : ℝ) ≤ α := by exact_mod_cast h
    push_cast; exact ⟨mul_le_mul_of_nonneg_left h1 this, mul_le_mul_of_nonneg_left h2 this⟩
  · have : (α : ℝ) < 0 := by exact_mod_cast not_le.mp h
    push_cast; exact ⟨by nlinarith, by nlinarith⟩

/-- The coefficients `(α_k, β_k)`, `k < 8`. -/
def cf (c : List (ℚ × ℚ)) (k : ℕ) : ℚ × ℚ := c.getD k (0, 0)

/-- `Σ_k (α_k + iβ_k) μ_k`, written with the `a3, a5, a7` of `BaseAnchor`. -/
noncomputable def cpoly (c : List (ℚ × ℚ)) : ℂ :=
  ((cf c 0).1 + (cf c 0).2 * Complex.I) + ((cf c 1).1 + (cf c 1).2 * Complex.I) * BaseAnchor.a3 +
  ((cf c 2).1 + (cf c 2).2 * Complex.I) * BaseAnchor.a5 +
  ((cf c 3).1 + (cf c 3).2 * Complex.I) * (BaseAnchor.a3 * BaseAnchor.a5) +
  ((cf c 4).1 + (cf c 4).2 * Complex.I) * BaseAnchor.a7 +
  ((cf c 5).1 + (cf c 5).2 * Complex.I) * (BaseAnchor.a3 * BaseAnchor.a7) +
  ((cf c 6).1 + (cf c 6).2 * Complex.I) * (BaseAnchor.a5 * BaseAnchor.a7) +
  ((cf c 7).1 + (cf c 7).2 * Complex.I) * (BaseAnchor.a3 * BaseAnchor.a5 * BaseAnchor.a7)

/-- `Σ_k f(k) μ_k`. -/
noncomputable def msum (f : ℕ → ℚ) : ℝ :=
  (f 0 : ℝ) * mu 0 + f 1 * mu 1 + f 2 * mu 2 + f 3 * mu 3 + f 4 * mu 4 + f 5 * mu 5 + f 6 * mu 6 + f 7 * mu 7

lemma cpoly_re_im (c : List (ℚ × ℚ)) :
    (cpoly c).re = msum (fun k => (cf c k).1) ∧ (cpoly c).im = msum (fun k => (cf c k).2) := by
  simp only [cpoly, msum, mu, sf, BaseAnchor.a3, BaseAnchor.a5, BaseAnchor.a7]
  constructor <;> simp [Complex.add_re, Complex.mul_re, Complex.add_im, Complex.mul_im]

def isum (f : ℕ → ℚ) : ℚ := f 0 + f 1 + f 2 + f 3 + f 4 + f 5 + f 6 + f 7

lemma msum_between {S : SurdQ} (hS : S.ok = true) (f : ℕ → ℚ) :
    ((isum fun k => ilo (f k) (muL S k) (muH S k) : ℚ) : ℝ) ≤ msum f ∧
      msum f ≤ ((isum fun k => ihi (f k) (muL S k) (muH S k) : ℚ) : ℝ) := by
  have b : ∀ k, ((ilo (f k) (muL S k) (muH S k) : ℚ) : ℝ) ≤ f k * mu k ∧
      (f k : ℝ) * mu k ≤ ((ihi (f k) (muL S k) (muH S k) : ℚ) : ℝ) := fun k =>
    i_between (mu_between hS k).1 (mu_between hS k).2
  simp only [isum, msum]; push_cast
  constructor <;> linarith [(b 0).1, (b 1).1, (b 2).1, (b 3).1, (b 4).1, (b 5).1, (b 6).1, (b 7).1,
    (b 0).2, (b 1).2, (b 2).2, (b 3).2, (b 4).2, (b 5).2, (b 6).2, (b 7).2]

/-! ### One entry -/

/-- `ilo` / `ihi` for a product of a rational and an interval. -/
def piHiQ : ℚ := 314159265358979323847 / 10 ^ 20

/-- The certificate of one entry: `z = cpoly c` is `e^{iφ}` with `|φ − θ| ≤ η`. -/
def entOK (S : SurdQ) (c : List (ℚ × ℚ)) (θ : ℚ) (n p : ℕ) (B η : ℚ) : Bool :=
  let xl := isum fun k => ilo (cf c k).1 (muL S k) (muH S k)
  let xh := isum fun k => ihi (cf c k).1 (muL S k) (muH S k)
  let yl := isum fun k => ilo (cf c k).2 (muL S k) (muH S k)
  let yh := isum fun k => ihi (cf c k).2 (muL S k) (muH S k)
  let cs := cisRound (-θ) n p
  let c' : ℚ := cs.1 / 2 ^ p
  let s' : ℚ := cs.2 / 2 ^ p
  let rl := ilo c' xl xh + ilo (-s') yl yh - 1
  let rh := ihi c' xl xh + ihi (-s') yl yh - 1
  let il := ilo s' xl xh + ilo c' yl yh
  let ih := ihi s' xl xh + ihi c' yl yh
  decide (|-θ| / (n + 1) ≤ 1 / 2) && decide (0 ≤ B) &&
  decide (max (rl ^ 2) (rh ^ 2) + max (il ^ 2) (ih ^ 2) ≤ B ^ 2) &&
  decide (piHiQ / 2 * (B + cisRem (-θ) n + 1 / 2 ^ p) ≤ η)

lemma sq_le_max {x l h : ℝ} (h1 : l ≤ x) (h2 : x ≤ h) : x ^ 2 ≤ max (l ^ 2) (h ^ 2) := by
  rcases le_total 0 x with hx | hx
  · exact (pow_le_pow_left₀ hx h2 2).trans (le_max_right _ _)
  · have : x ^ 2 ≤ l ^ 2 := by nlinarith
    exact this.trans (le_max_left _ _)

theorem entOK_sound {S : SurdQ} (hS : S.ok = true) {c : List (ℚ × ℚ)} {θ : ℚ} {n p : ℕ} {B η : ℚ}
    (h : entOK S c θ n p B η = true) (hz : ‖cpoly c‖ = 1) :
    ∃ φ : ℝ, Complex.exp (φ * Complex.I) = cpoly c ∧ |φ - θ| ≤ η := by
  simp only [entOK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨hx, hB0⟩, hUV⟩, hη⟩ := h
  obtain ⟨hre, him⟩ := cpoly_re_im c
  set z := cpoly c
  set XL := isum fun k => ilo (cf c k).1 (muL S k) (muH S k)
  set XH := isum fun k => ihi (cf c k).1 (muL S k) (muH S k)
  set YL := isum fun k => ilo (cf c k).2 (muL S k) (muH S k)
  set YH := isum fun k => ihi (cf c k).2 (muL S k) (muH S k)
  obtain ⟨xl, xh⟩ := msum_between hS (fun k => (cf c k).1)
  obtain ⟨yl, yh⟩ := msum_between hS (fun k => (cf c k).2)
  set cs := cisRound (-θ) n p
  set c' : ℚ := cs.1 / 2 ^ p
  set s' : ℚ := cs.2 / 2 ^ p
  set q : ℂ := ((cs.1 : ℂ) + (cs.2 : ℂ) * Complex.I) / 2 ^ p
  have hq : ‖Complex.exp (((-θ : ℚ) : ℝ) * Complex.I) - q‖ ≤ (cisRem (-θ) n : ℝ) + 1 / 2 ^ p :=
    cisRound_spec (-θ) n p (by have h' := (Rat.cast_le (K := ℝ)).mpr hx; push_cast at h' ⊢; exact h')
  -- z q − 1 by intervals
  have hzq : ‖z * q - 1‖ ≤ B := by
    have hqe : q = (((c' : ℚ) : ℝ) : ℂ) + (((s' : ℚ) : ℝ) : ℂ) * Complex.I := by
      simp only [q, c', s']; push_cast; ring
    have hqre : q.re = c' := by rw [hqe]; simp
    have hqim : q.im = s' := by rw [hqe]; simp
    have e1 : (z * q - 1).re = z.re * c' + z.im * (-(s' : ℝ)) - 1 := by
      simp only [Complex.sub_re, Complex.mul_re, hqre, hqim, Complex.one_re]; ring
    have e2 : (z * q - 1).im = z.re * s' + z.im * c' := by
      simp only [Complex.sub_im, Complex.mul_im, hqre, hqim, Complex.one_im]; ring
    obtain ⟨a1, a2⟩ := i_between (α := c') (x := z.re) (by rw [hre]; exact xl) (by rw [hre]; exact xh)
    obtain ⟨b1, b2⟩ := i_between (α := -s') (x := z.im) (by rw [him]; exact yl) (by rw [him]; exact yh)
    obtain ⟨d1, d2⟩ := i_between (α := s') (x := z.re) (by rw [hre]; exact xl) (by rw [hre]; exact xh)
    obtain ⟨f1, f2⟩ := i_between (α := c') (x := z.im) (by rw [him]; exact yl) (by rw [him]; exact yh)
    have hR := sq_le_max (x := (z * q - 1).re)
      (l := ((ilo c' XL XH + ilo (-s') YL YH - 1 : ℚ) : ℝ)) (h := ((ihi c' XL XH + ihi (-s') YL YH - 1 : ℚ) : ℝ))
      (by rw [e1]; push_cast; push_cast at b1; linarith) (by rw [e1]; push_cast; push_cast at b2; linarith)
    have hI := sq_le_max (x := (z * q - 1).im)
      (l := ((ilo s' XL XH + ilo c' YL YH : ℚ) : ℝ)) (h := ((ihi s' XL XH + ihi c' YL YH : ℚ) : ℝ))
      (by rw [e2]; push_cast; linarith) (by rw [e2]; push_cast; linarith)
    have hUV' := (Rat.cast_le (K := ℝ)).mpr hUV
    push_cast at hUV' hR hI
    rw [← Real.sqrt_sq (by exact_mod_cast hB0 : (0 : ℝ) ≤ B), Complex.norm_eq_sqrt_sq_add_sq]
    exact Real.sqrt_le_sqrt (by linarith)
  obtain ⟨φ, hφ, hb⟩ := phase_near hz θ
  refine ⟨φ, hφ, hb.trans ?_⟩
  have hw : ‖z * Complex.exp (↑(-(θ : ℝ)) * Complex.I) - 1‖ ≤ B + ((cisRem (-θ) n : ℝ) + 1 / 2 ^ p) := by
    have e : z * Complex.exp (↑(-(θ : ℝ)) * Complex.I) - 1 =
        (z * q - 1) + z * (Complex.exp (((-θ : ℚ) : ℝ) * Complex.I) - q) := by push_cast; ring
    rw [e]
    refine (norm_add_le _ _).trans (add_le_add hzq ?_)
    rw [norm_mul, hz, one_mul]; exact hq
  have hpi : Real.pi ≤ piHiQ := by
    have := Real.pi_lt_d20; unfold piHiQ; push_cast; norm_num at this ⊢; linarith
  have hη' := (Rat.cast_le (K := ℝ)).mpr hη
  push_cast at hη'
  have h0 : (0 : ℝ) ≤ ‖z * Complex.exp (↑(-(θ : ℝ)) * Complex.I) - 1‖ := norm_nonneg _
  have hrem : (0 : ℝ) ≤ (cisRem (-θ) n : ℝ) := by
    have : (0 : ℚ) ≤ cisRem (-θ) n := by unfold cisRem; positivity
    exact_mod_cast this
  calc Real.pi / 2 * ‖z * Complex.exp (↑(-(θ : ℝ)) * Complex.I) - 1‖
      ≤ Real.pi / 2 * (B + ((cisRem (-θ) n : ℝ) + 1 / 2 ^ p)) := by
        exact mul_le_mul_of_nonneg_left hw (by positivity)
    _ ≤ piHiQ / 2 * (B + ((cisRem (-θ) n : ℝ) + 1 / 2 ^ p)) := by
        apply mul_le_mul_of_nonneg_right (by linarith) (by positivity)
    _ ≤ η := by linarith

/-! ### `H₀` -/

/-- Entry `(i, j)` of `H₀` in `Fin 6` coordinates. -/
lemma H0_apply (i j : I6) : BaseAnchor.H0 i j = BaseAnchor.ent (finSumFinEquiv i) (finSumFinEquiv j) := rfl

/-- **The `anchor` field** from the per-entry phase certificates and one exact membership. -/
theorem anchorK {ι : Type*} (A : ι → RecordCert) (l : ι) {S : SurdQ} {cfE : Fin 6 → Fin 6 → List (ℚ × ℚ)}
    {θF BF ηF : Fin 6 → Fin 6 → ℚ} {n p : ℕ} {E : ℚ} {t : BTgt}
    (hpoly : ∀ a b, BaseAnchor.ent a b = cpoly (cfE a b)) (hS : S.ok = true)
    (hent : ∀ a b, entOK S (cfE a b) (θF a b) n p (BF a b) (ηF a b) = true)
    (hE : sq6 (fun i j => ηF (finSumFinEquiv i) (finSumFinEquiv j)) ≤ E ^ 2) (hE0 : 0 ≤ E)
    (hm : memOKg (fun i j => θF (finSumFinEquiv i) (finSumFinEquiv j)) (fun _ _ => 0) t E = true)
    (hP : (A l).P = Pmat t.pt) (hR : (t.Rt : ℝ) ≤ (A l).R) :
    Step2.CoveredMatrix (InAtlas A) BaseAnchor.H0 := by
  set θ : I6 → I6 → ℚ := fun i j => θF (finSumFinEquiv i) (finSumFinEquiv j)
  set η : I6 → I6 → ℚ := fun i j => ηF (finSumFinEquiv i) (finSumFinEquiv j)
  have hph : ∀ i j, ∃ φ : ℝ, Complex.exp (φ * Complex.I) = BaseAnchor.H0 i j ∧ |φ - θ i j| ≤ η i j := by
    intro i j
    have hz : ‖BaseAnchor.H0 i j‖ = 1 := by
      have := BaseAnchor.isHadamard_H0.1 i j
      rw [Complex.normSq_eq_norm_sq] at this
      nlinarith [norm_nonneg (BaseAnchor.H0 i j)]
    rw [H0_apply, hpoly] at hz ⊢
    exact entOK_sound hS (hent _ _) hz
  choose Φ hΦ hΦb using hph
  have hH : BaseAnchor.H0 = phaseMat (Matrix.of Φ) := by
    ext i j; exact (hΦ i j).symm
  set Err : RMat6 := Matrix.of fun i j => Φ i j - (θ i j : ℝ)
  have hErr : frob Err ≤ E := by
    apply frob_le_of_sumsq (by exact_mod_cast hE0)
    have h1 : sumsq Err ≤ sumsq (Matrix.of fun i j => (η i j : ℝ)) := by
      simp only [sumsq, Err, Matrix.of_apply]
      refine Finset.sum_le_sum fun i _ => Finset.sum_le_sum fun j _ => ?_
      rw [← sq_abs]
      exact pow_le_pow_left₀ (abs_nonneg _) (hΦb i j) 2
    rw [sumsq_ofRat] at h1
    have h2 : ((sq6 η : ℚ) : ℝ) ≤ (E : ℝ) ^ 2 := by exact_mod_cast hE
    linarith
  have hPs : Matrix.of Φ = Matrix.of (fun a b => (θ a b : ℝ)) + piM (fun _ _ => 0) + Err := by
    ext i j; simp [Err, piM]
  have hm' := memg_sound hm hP hR hErr
  rw [← hPs] at hm'
  obtain ⟨δ, hδ, hlt, he⟩ := inRecord_gam t.sp t.wind hm'
  refine ⟨t.sp.gam (phaseMat (Matrix.of Φ)), _, ?_, ⟨l, δ, hδ, hlt.le, rfl⟩, he⟩
  rw [hH]; exact t.sp.inGamma_gam _

end NoFourMUBs.KernelAtlas
