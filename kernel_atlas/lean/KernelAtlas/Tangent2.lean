import KernelAtlas.Tangent

/-!
# The sharper tangent test (v2): real-number core

`Tangent.lean` decides the linearised test of Stage C (`STAGEC.md` C2(b)) with the fixed multiplier `y = c` and one
branch of each remainder term.  Version 2 implements `StageC.leafRej_of_linear` in full, for **any** multiplier `y`:
the kernel reads `y` from a per-bin hint (a least-squares direction computed outside, rounded to integers) and only
checks the inequality, so nothing about the choice of `y` needs a proof.  It also adds the scalar test (6.12)
(`StageC.leafRej_of_scalar`).

This file is the real-number core.  Integer data enter as reals:

* `wt j i`, `s i`: the Gaussian-integer node values and column sums at scale `Z` (`‖wt/Z − wexp‖ ≤ ε₁`,
  `‖s/Z − σ‖ ≤ E`), so `star (s i) * wt j i ≈ 6Z² · star (S_i) q_{ji}`;
* `y`: any real multiplier;
* the bounds `SJ`, `Ub`, `NJ`, `Gb`, `Sp`, `SY2`, `SY1`, `SYinf` of the integer test.

`lin2_real`: if the integer comparison holds, every admissible `δ` rejects the bin (`LeafRej`).  `scal2_real`: the
same for the scalar test on one column.
-/

open Matrix Hadamard6 Complex

namespace NoFourMUBs.KernelAtlas

open NoFourMUBs.StageC

noncomputable section

/-! ### Error lemmas -/

/-- The pointwise error of the integer product `star(s_i) wt_{ji}` against `6Z² star(S_i) q_{ji}` (complex form of
`J_err`). -/
lemma C_err {P : RMat6} {u : I6 → ℝ} {Z ε1 E : ℝ} (hZ : 0 < Z) {wt : I6 → I6 → ℂ} {s : I6 → ℂ}
    (hw : ∀ j i, ‖wt j i / (Z : ℂ) - wexp P u j i‖ ≤ ε1) (hs : ∀ i, ‖s i / (Z : ℂ) - sigma P u i‖ ≤ E)
    (hε : 0 ≤ ε1) (i j : I6) :
    ‖6 * (star (S ((1 / (2 * Real.pi)) • P) u i) * q ((1 / (2 * Real.pi)) • P) u j i) -
      star (s i) * wt j i / ((Z : ℂ) ^ 2)‖ ≤ (6 + E) * ε1 + E := by
  have hZ' : (Z : ℂ) ≠ 0 := by exact_mod_cast hZ.ne'
  have e0 : 6 * (star (S ((1 / (2 * Real.pi)) • P) u i) * q ((1 / (2 * Real.pi)) • P) u j i) =
      star (sigma P u i) * wexp P u j i := by
    rw [S_eq_sigma, q_cyc, star_div₀, Complex.star_def, Complex.conj_ofReal, div_mul_div_comm, sqrt6_mul_self_C]
    field_simp
  have e1 : star (s i) * wt j i / ((Z : ℂ) ^ 2) = star (s i / (Z : ℂ)) * (wt j i / (Z : ℂ)) := by
    have hz : star (Z : ℂ) = (Z : ℂ) := Complex.conj_ofReal Z
    rw [star_div₀, hz, div_mul_div_comm, sq]
  rw [e0, e1]
  have e2 : star (sigma P u i) * wexp P u j i - star (s i / (Z : ℂ)) * (wt j i / (Z : ℂ)) =
      -(star (s i / (Z : ℂ) - sigma P u i) * wexp P u j i + star (s i / (Z : ℂ)) * (wt j i / (Z : ℂ) - wexp P u j i)) := by
    simp only [star_sub]; ring
  rw [e2, norm_neg]
  refine (norm_add_le _ _).trans ?_
  rw [norm_mul, norm_mul, norm_star, norm_star, norm_wexp, mul_one]
  have hsn : ‖s i / (Z : ℂ)‖ ≤ 6 + E := by
    calc ‖s i / (Z : ℂ)‖ = ‖(s i / (Z : ℂ) - sigma P u i) + sigma P u i‖ := by ring_nf
      _ ≤ ‖s i / (Z : ℂ) - sigma P u i‖ + ‖sigma P u i‖ := norm_add_le _ _
      _ ≤ E + 6 := add_le_add (hs i) (norm_sigma_le P u i)
      _ = 6 + E := by ring
  have := mul_le_mul hsn (hw j i) (norm_nonneg _) (by linarith [(norm_nonneg _).trans (hs i)])
  linarith [hs i]

/-- `‖S_i‖ ≤ (‖s_i‖ + E Z)/(√6 Z)`. -/
lemma S_le {P : RMat6} {u : I6 → ℝ} {Z E : ℝ} (hZ : 0 < Z) {s : I6 → ℂ}
    (hs : ∀ i, ‖s i / (Z : ℂ) - sigma P u i‖ ≤ E) (i : I6) :
    ‖S ((1 / (2 * Real.pi)) • P) u i‖ ≤ (‖s i‖ + E * Z) / (Real.sqrt 6 * Z) := by
  rw [norm_S_eq]
  have hn : ‖s i / (Z : ℂ)‖ = ‖s i‖ / Z := by rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hZ]
  have h1 : ‖sigma P u i‖ ≤ ‖s i‖ / Z + E := by
    calc ‖sigma P u i‖ = ‖s i / (Z : ℂ) - (s i / (Z : ℂ) - sigma P u i)‖ := by ring_nf
      _ ≤ ‖s i / (Z : ℂ)‖ + ‖s i / (Z : ℂ) - sigma P u i‖ := norm_sub_le _ _
      _ ≤ ‖s i‖ / Z + E := by rw [hn]; linarith [hs i]
  have h6 := sqrt6_pos
  rw [div_le_div_iff₀ h6 (by positivity)]
  have : ‖s i‖ / Z + E = (‖s i‖ + E * Z) / Z := by field_simp
  rw [this] at h1
  have h2 := mul_le_mul_of_nonneg_right h1 (by positivity : (0:ℝ) ≤ Real.sqrt 6 * Z)
  have e : (‖s i‖ + E * Z) / Z * (Real.sqrt 6 * Z) = (‖s i‖ + E * Z) * Real.sqrt 6 := by field_simp
  linarith

/-- `√(Σ x²) ≤ Σ |x|`. -/
lemma sqrt_sum_sq_le_sum_abs {ι : Type*} [Fintype ι] (x : ι → ℝ) : Real.sqrt (∑ i, x i ^ 2) ≤ ∑ i, |x i| := by
  rw [Real.sqrt_le_left (Finset.sum_nonneg fun i _ => abs_nonneg _)]
  calc ∑ i, x i ^ 2 = ∑ i, |x i| ^ 2 := Finset.sum_congr rfl fun i _ => (sq_abs _).symm
    _ ≤ (∑ i, |x i|) ^ 2 := Finset.sum_sq_le_sq_sum_of_nonneg fun i _ => abs_nonneg _

/-- The `N_y` bound: `√(Σ_{ij} (y_i J_ij)²) ≤ NJ/(6Z²) + (eW/√6) Σ|y_i|`. -/
lemma N_bound {P : RMat6} {u : I6 → ℝ} {Z eW NJ : ℝ} (hZ : 0 < Z) (hNJ0 : 0 ≤ NJ) {y : I6 → ℝ} {Jt : I6 → I6 → ℝ}
    (hJ : ∀ i j, |6 * Jm ((1 / (2 * Real.pi)) • P) u i j + Jt i j / Z ^ 2| ≤ eW)
    (hNJ : ∑ i, y i ^ 2 * ∑ j, Jt i j ^ 2 ≤ NJ ^ 2) :
    Real.sqrt (∑ i, ∑ j, (y i * Jm ((1 / (2 * Real.pi)) • P) u i j) ^ 2) ≤
      NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * ∑ i, |y i| := by
  set P' := (1 / (2 * Real.pi)) • P
  have hZ2 : 0 < Z ^ 2 := by positivity
  have heW : 0 ≤ eW := (abs_nonneg _).trans (hJ j0 j0)
  set f : I6 × I6 → ℝ := fun p => -(y p.1 * Jt p.1 p.2 / (6 * Z ^ 2)) with hf
  set g : I6 × I6 → ℝ := fun p => y p.1 * (Jm P' u p.1 p.2 + Jt p.1 p.2 / (6 * Z ^ 2)) with hg
  have hsplit : ∑ i, ∑ j, (y i * Jm P' u i j) ^ 2 = ∑ p : I6 × I6, (f p + g p) ^ 2 := by
    rw [Fintype.sum_prod_type]
    exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by simp only [hf, hg]; ring
  rw [hsplit]
  refine (sqrt_sum_add_le f g).trans (add_le_add ?_ ?_)
  · have e : ∑ p : I6 × I6, f p ^ 2 = (∑ i, y i ^ 2 * ∑ j, Jt i j ^ 2) / (6 * Z ^ 2) ^ 2 := by
      rw [Fintype.sum_prod_type, Finset.sum_div]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [Finset.mul_sum, Finset.sum_div]
      exact Finset.sum_congr rfl fun j _ => by simp only [hf]; rw [neg_sq, div_pow, mul_pow]
    rw [e, Real.sqrt_div' _ (by positivity), Real.sqrt_sq (by positivity)]
    apply div_le_div_of_nonneg_right _ (by positivity)
    calc Real.sqrt _ ≤ Real.sqrt (NJ ^ 2) := Real.sqrt_le_sqrt hNJ
      _ = NJ := Real.sqrt_sq hNJ0
  · have hg2 : ∀ p : I6 × I6, g p ^ 2 ≤ y p.1 ^ 2 * (eW / 6) ^ 2 := by
      intro p
      simp only [hg]
      rw [mul_pow]
      refine mul_le_mul_of_nonneg_left ?_ (sq_nonneg _)
      have h := hJ p.1 p.2
      have e : Jm P' u p.1 p.2 + Jt p.1 p.2 / (6 * Z ^ 2) = (6 * Jm P' u p.1 p.2 + Jt p.1 p.2 / Z ^ 2) / 6 := by
        field_simp
      rw [e, div_pow, div_pow, ← sq_abs]
      exact div_le_div_of_nonneg_right (pow_le_pow_left₀ (abs_nonneg _) h 2) (by positivity)
    have hsum : ∑ p : I6 × I6, g p ^ 2 ≤ (eW / Real.sqrt 6) ^ 2 * ∑ i, y i ^ 2 := by
      calc ∑ p : I6 × I6, g p ^ 2 ≤ ∑ p : I6 × I6, y p.1 ^ 2 * (eW / 6) ^ 2 := Finset.sum_le_sum fun p _ => hg2 p
        _ = (eW / Real.sqrt 6) ^ 2 * ∑ i, y i ^ 2 := by
          have h6 : (eW / Real.sqrt 6) ^ 2 = eW ^ 2 / 6 := by rw [div_pow, Real.sq_sqrt (by norm_num)]
          rw [Fintype.sum_prod_type, h6, Finset.mul_sum]
          refine Finset.sum_congr rfl fun i _ => ?_
          simp only [Finset.sum_const, Finset.card_univ, card_I6, nsmul_eq_mul]; ring
    calc Real.sqrt (∑ p : I6 × I6, g p ^ 2) ≤ Real.sqrt ((eW / Real.sqrt 6) ^ 2 * ∑ i, y i ^ 2) :=
          Real.sqrt_le_sqrt hsum
      _ = eW / Real.sqrt 6 * Real.sqrt (∑ i, y i ^ 2) := by
          rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (by positivity)]
      _ ≤ eW / Real.sqrt 6 * ∑ i, |y i| :=
          mul_le_mul_of_nonneg_left (sqrt_sum_sq_le_sum_abs y) (by positivity)

/-! ### The final arithmetic -/

lemma min_add_le (A B e : ℝ) (he : 0 ≤ e) : min (A + e) B ≤ min A B + e := by
  rcases le_total A B with h | h
  · rw [min_eq_left h]; exact min_le_left _ _
  · rw [min_eq_right h]; linarith [min_le_right (A + e) B]

set_option maxHeartbeats 2000000 in
/-- **The final arithmetic of test v2**, every quantity abstracted: if the integer comparison holds, the
inequality of `leafRej_of_linear` holds for the real bounds. -/
lemma lin2_final {a pihi s6hi x29hi Kbar rbar rFbar rHbar nbar G2 Z DT eW eN tcol : ℝ}
    {kV kU kN kA kB kG kP kC1 kC2 kD1 kD2 k1 ke : ℝ}
    {SJ Ub NJ Gb SY2 SY1 SYinf Yinf Y1 Ct : ℝ} {K r rF rH n SJr Bn Nr Gr SY2r SY1r SYinfr Lc : ℝ}
    (ha : 0 ≤ a) (hG2 : 0 < G2) (hZ : 0 < Z) (hDT : 0 < DT) (heW : 0 ≤ eW) (htcol : 0 ≤ tcol)
    (hpi : Real.pi ≤ pihi) (hs6 : Real.sqrt 6 ≤ s6hi) (hx29 : Real.sqrt (29 / 6) ≤ x29hi)
    (hkV : 4 * pihi * a * G2 ≤ kV) (hkU : 4 * pihi * rHbar * G2 / DT ≤ kU) (hkN : 4 * pihi * nbar * G2 ≤ kN)
    (hkA : 24 * pihi ^ 2 * Z ^ 2 * (Kbar * (x29hi * a) + rFbar) ^ 2 * G2 ≤ kA)
    (hkB : 24 * pihi ^ 2 * Z ^ 2 * (Kbar * (x29hi * a) + rbar) ^ 2 * G2 ≤ kB)
    (hkG : 4 * pihi ^ 2 * (x29hi * a) ^ 2 * G2 ≤ kG)
    (hkP : 4 * s6hi * pihi ^ 2 * Z * Kbar * (3 / 2 * a) * (x29hi * a) * G2 ≤ kP)
    (hkC1 : 8 * pihi ^ 2 * Z * (x29hi * a) * rFbar * G2 ≤ kC1) (hkC2 : 8 * pihi ^ 2 * Z * (x29hi * a) * rbar * G2 ≤ kC2)
    (hkD1 : 4 * pihi ^ 2 * Z * rFbar ^ 2 * G2 ≤ kD1) (hkD2 : 4 * pihi ^ 2 * Z * rbar ^ 2 * G2 ≤ kD2)
    (hk1 : (20 * pihi * a + 8 * pihi * rHbar * tcol + 4 * s6hi * pihi * nbar + 4 * pihi ^ 2 * (x29hi * a) ^ 2) *
      eW * Z ^ 2 * G2 ≤ k1)
    (hke : eN * Z ^ 2 ≤ ke)
    (hcheck : kV * SJ + kU * Ub + kN * NJ + min (kA * Yinf) (kB * Y1) + min (kG * Gb) (kP * SY2) +
      min (kC1 * SY2) (kC2 * SY1) + min (kD1 * SYinf) (kD2 * SY1) + k1 * Y1 < (Ct - ke * Y1) * G2)
    (hK0 : 0 ≤ K) (hKb : K ≤ Kbar) (hr0 : 0 ≤ r) (hr : r ≤ rbar) (hrF0 : 0 ≤ rF) (hrF : rF ≤ rFbar)
    (hrH0 : 0 ≤ rH) (hrH : rH ≤ rHbar) (hn0 : 0 ≤ n) (hn : n ≤ nbar)
    (hSJ0 : 0 ≤ SJ) (hUb0 : 0 ≤ Ub) (hNJ0 : 0 ≤ NJ) (hGb0 : 0 ≤ Gb) (hSY20 : 0 ≤ SY2) (hSY10 : 0 ≤ SY1)
    (hSYinf0 : 0 ≤ SYinf) (hYinf0 : 0 ≤ Yinf) (hY10 : 0 ≤ Y1)
    (hSJr0 : 0 ≤ SJr) (hBn0 : 0 ≤ Bn) (hNr0 : 0 ≤ Nr) (hGr0 : 0 ≤ Gr) (hSY2r0 : 0 ≤ SY2r) (hSY1r0 : 0 ≤ SY1r)
    (hSYinfr0 : 0 ≤ SYinfr)
    (hSJr : SJr ≤ SJ / (6 * Z ^ 2) + 5 * (Y1 * eW / 6))
    (hBn : Bn ≤ Ub / (6 * DT * Z ^ 2) + 2 * (Y1 * eW * tcol / 6))
    (hNr : Nr ≤ NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1)
    (hGr : Gr ≤ Gb / (6 * Z ^ 2) + Y1 * eW / 6)
    (hSY2r : SY2r ≤ SY2 / (Real.sqrt 6 * Z)) (hSY1r : SY1r ≤ SY1 / (Real.sqrt 6 * Z))
    (hSYinfr : SYinfr ≤ SYinf / (Real.sqrt 6 * Z))
    (hL : (Ct / Z ^ 2 - Y1 * eN) / (24 * Real.pi) ≤ Lc) :
    a * SJr + rH * Bn + n * Nr +
      Real.pi * (min (Yinf * (K * (Real.sqrt (29 / 6) * a) + rF) ^ 2) (Y1 * (K * (Real.sqrt (29 / 6) * a) + r) ^ 2) +
        min (Gr * (Real.sqrt (29 / 6) * a) ^ 2) (K * SY2r * (3 / 2 * a) * (Real.sqrt (29 / 6) * a)) +
        2 / Real.sqrt 6 * (Real.sqrt (29 / 6) * a) * min (SY2r * rF) (SY1r * r) +
        1 / Real.sqrt 6 * min (SYinfr * rF ^ 2) (SY1r * r ^ 2)) < Lc := by
  have hpi0 := Real.pi_pos
  have h6 := sqrt6_pos
  have hpihi0 : 0 ≤ pihi := by linarith
  have hs60 : 0 ≤ s6hi := h6.le.trans hs6
  have hZ2 : 0 < Z ^ 2 := by positivity
  set X := Real.sqrt (29 / 6) * a with hXdef
  set Xb := x29hi * a with hXb
  have hX0 : 0 ≤ X := by positivity
  have hXX : X ≤ Xb := mul_le_mul_of_nonneg_right hx29 ha
  have hxb0 : 0 ≤ Xb := hX0.trans hXX
  have hKb0 : 0 ≤ Kbar := hK0.trans hKb
  have hrb0 : 0 ≤ rbar := hr0.trans hr
  have hrFb0 : 0 ≤ rFbar := hrF0.trans hrF
  have hrHb0 : 0 ≤ rHbar := hrH0.trans hrH
  have hnb0 : 0 ≤ nbar := hn0.trans hn
  have hKX : K * X ≤ Kbar * Xb := mul_le_mul hKb hXX hX0 hKb0
  set M := 24 * pihi * Z ^ 2 * G2 with hM
  have hM0 : 0 ≤ M := by positivity
  set M2 := 24 * pihi ^ 2 * Z ^ 2 * G2 with hM2
  have hM20 : 0 ≤ M2 := by positivity
  have h24 : 24 / Real.sqrt 6 ≤ 4 * s6hi := by
    rw [div_le_iff₀ h6]
    have e : Real.sqrt 6 * Real.sqrt 6 = 6 := Real.mul_self_sqrt (by norm_num)
    have := mul_le_mul_of_nonneg_right hs6 h6.le
    linarith only [e, this]
  -- (1) the x-term
  have T1 : M * (a * SJr) ≤ kV * SJ + 20 * pihi * a * eW * Z ^ 2 * G2 * Y1 := by
    have h := mul_le_mul_of_nonneg_left hSJr (by positivity : (0:ℝ) ≤ M * a)
    have e : M * a * (SJ / (6 * Z ^ 2) + 5 * (Y1 * eW / 6)) =
        4 * pihi * a * G2 * SJ + 20 * pihi * a * eW * Z ^ 2 * G2 * Y1 := by rw [hM]; field_simp; ring
    have := mul_le_mul_of_nonneg_right hkV hSJ0
    linarith only [h, e, this]
  -- (2) the δ-term
  have T2 : M * (rH * Bn) ≤ kU * Ub + 8 * pihi * rHbar * tcol * eW * Z ^ 2 * G2 * Y1 := by
    have h1 : rH * Bn ≤ rHbar * (Ub / (6 * DT * Z ^ 2) + 2 * (Y1 * eW * tcol / 6)) :=
      mul_le_mul hrH hBn hBn0 hrHb0
    have h := mul_le_mul_of_nonneg_left h1 hM0
    have e : M * (rHbar * (Ub / (6 * DT * Z ^ 2) + 2 * (Y1 * eW * tcol / 6))) =
        4 * pihi * rHbar * G2 / DT * Ub + 8 * pihi * rHbar * tcol * eW * Z ^ 2 * G2 * Y1 := by
      rw [hM]; field_simp; ring
    have := mul_le_mul_of_nonneg_right hkU hUb0
    linarith only [h, e, this]
  -- (3) the ν-term
  have T3 : M * (n * Nr) ≤ kN * NJ + 4 * s6hi * pihi * nbar * eW * Z ^ 2 * G2 * Y1 := by
    have h1 : n * Nr ≤ nbar * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1) := mul_le_mul hn hNr hNr0 hnb0
    have h := mul_le_mul_of_nonneg_left h1 hM0
    have e : M * (nbar * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1)) =
        4 * pihi * nbar * G2 * NJ + (24 / Real.sqrt 6) * (pihi * nbar * eW * Z ^ 2 * G2 * Y1) := by
      rw [hM]; field_simp; ring
    have h2 := mul_le_mul_of_nonneg_right h24 (by positivity : (0:ℝ) ≤ pihi * nbar * eW * Z ^ 2 * G2 * Y1)
    have := mul_le_mul_of_nonneg_right hkN hNJ0
    linarith only [h, e, h2, this]
  -- (4) the squared increment
  have T4 : M2 * min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) ≤ min (kA * Yinf) (kB * Y1) := by
    have hm : min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) ≤
        min (Yinf * (Kbar * Xb + rFbar) ^ 2) (Y1 * (Kbar * Xb + rbar) ^ 2) :=
      min_le_min (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by positivity) (add_le_add hKX hrF) 2) hYinf0)
        (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by positivity) (add_le_add hKX hr) 2) hY10)
    refine (mul_le_mul_of_nonneg_left hm hM20).trans ?_
    rw [mul_min_of_nonneg _ _ hM20]
    apply min_le_min
    · calc M2 * (Yinf * (Kbar * Xb + rFbar) ^ 2) = 24 * pihi ^ 2 * Z ^ 2 * (Kbar * Xb + rFbar) ^ 2 * G2 * Yinf := by
            rw [hM2]; ring
        _ ≤ kA * Yinf := mul_le_mul_of_nonneg_right hkA hYinf0
    · calc M2 * (Y1 * (Kbar * Xb + rbar) ^ 2) = 24 * pihi ^ 2 * Z ^ 2 * (Kbar * Xb + rbar) ^ 2 * G2 * Y1 := by
            rw [hM2]; ring
        _ ≤ kB * Y1 := mul_le_mul_of_nonneg_right hkB hY10
  -- (5) the pure-x term
  have T5 : M2 * min (Gr * X ^ 2) (K * SY2r * (3 / 2 * a) * X) ≤
      min (kG * Gb) (kP * SY2) + 4 * pihi ^ 2 * Xb ^ 2 * eW * Z ^ 2 * G2 * Y1 := by
    have hA : Gr * X ^ 2 ≤ Xb ^ 2 * (Gb / (6 * Z ^ 2)) + Xb ^ 2 * (Y1 * eW / 6) := by
      have := mul_le_mul hGr (pow_le_pow_left₀ hX0 hXX 2) (sq_nonneg _) (by positivity)
      calc Gr * X ^ 2 ≤ (Gb / (6 * Z ^ 2) + Y1 * eW / 6) * Xb ^ 2 := this
        _ = _ := by ring
    have hB : K * SY2r * (3 / 2 * a) * X ≤ Kbar * (SY2 / (Real.sqrt 6 * Z)) * (3 / 2 * a) * Xb := by
      have := mul_le_mul hKb hSY2r hSY2r0 hKb0
      have h2 := mul_le_mul this hXX hX0 (by positivity)
      calc K * SY2r * (3 / 2 * a) * X = (K * SY2r) * X * (3 / 2 * a) := by ring
        _ ≤ (Kbar * (SY2 / (Real.sqrt 6 * Z))) * Xb * (3 / 2 * a) := mul_le_mul_of_nonneg_right h2 (by positivity)
        _ = _ := by ring
    have hm : min (Gr * X ^ 2) (K * SY2r * (3 / 2 * a) * X) ≤
        min (Xb ^ 2 * (Gb / (6 * Z ^ 2))) (Kbar * (SY2 / (Real.sqrt 6 * Z)) * (3 / 2 * a) * Xb) +
          Xb ^ 2 * (Y1 * eW / 6) :=
      (min_le_min hA hB).trans (min_add_le _ _ _ (by positivity))
    refine (mul_le_mul_of_nonneg_left hm hM20).trans ?_
    rw [mul_add, mul_min_of_nonneg _ _ hM20]
    have e3 : M2 * (Xb ^ 2 * (Y1 * eW / 6)) = 4 * pihi ^ 2 * Xb ^ 2 * eW * Z ^ 2 * G2 * Y1 := by rw [hM2]; ring
    rw [e3]
    refine add_le_add (min_le_min ?_ ?_) le_rfl
    · calc M2 * (Xb ^ 2 * (Gb / (6 * Z ^ 2))) = 4 * pihi ^ 2 * Xb ^ 2 * G2 * Gb := by rw [hM2]; field_simp; ring
        _ ≤ kG * Gb := mul_le_mul_of_nonneg_right hkG hGb0
    · calc M2 * (Kbar * (SY2 / (Real.sqrt 6 * Z)) * (3 / 2 * a) * Xb) =
            24 / Real.sqrt 6 * (pihi ^ 2 * Z * Kbar * (3 / 2 * a) * Xb * G2 * SY2) := by rw [hM2]; field_simp
        _ ≤ 4 * s6hi * (pihi ^ 2 * Z * Kbar * (3 / 2 * a) * Xb * G2 * SY2) :=
            mul_le_mul_of_nonneg_right h24 (by positivity)
        _ = 4 * s6hi * pihi ^ 2 * Z * Kbar * (3 / 2 * a) * Xb * G2 * SY2 := by ring
        _ ≤ kP * SY2 := mul_le_mul_of_nonneg_right hkP hSY20
  -- (6) the cross term
  have T6 : M2 * (2 / Real.sqrt 6 * X * min (SY2r * rF) (SY1r * r)) ≤ min (kC1 * SY2) (kC2 * SY1) := by
    have hm : min (SY2r * rF) (SY1r * r) ≤ min (SY2 / (Real.sqrt 6 * Z) * rFbar) (SY1 / (Real.sqrt 6 * Z) * rbar) :=
      min_le_min (mul_le_mul hSY2r hrF hrF0 (by positivity)) (mul_le_mul hSY1r hr hr0 (by positivity))
    have hm0 : 0 ≤ min (SY2r * rF) (SY1r * r) := le_min (by positivity) (by positivity)
    have hc : 2 / Real.sqrt 6 * X ≤ 2 / Real.sqrt 6 * Xb := mul_le_mul_of_nonneg_left hXX (by positivity)
    have h1 := mul_le_mul hc hm hm0 (by positivity)
    refine (mul_le_mul_of_nonneg_left h1 hM20).trans ?_
    have hc0 : 0 ≤ M2 * (2 / Real.sqrt 6 * Xb) := by positivity
    rw [← mul_assoc, mul_min_of_nonneg _ _ hc0]
    have h66 : Real.sqrt 6 * Real.sqrt 6 = 6 := Real.mul_self_sqrt (by norm_num)
    apply min_le_min
    · calc M2 * (2 / Real.sqrt 6 * Xb) * (SY2 / (Real.sqrt 6 * Z) * rFbar) = 8 * pihi ^ 2 * Z * Xb * rFbar * G2 * SY2 := by
            rw [hM2]; field_simp; rw [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 6)]; ring
        _ ≤ kC1 * SY2 := mul_le_mul_of_nonneg_right hkC1 hSY20
    · calc M2 * (2 / Real.sqrt 6 * Xb) * (SY1 / (Real.sqrt 6 * Z) * rbar) = 8 * pihi ^ 2 * Z * Xb * rbar * G2 * SY1 := by
            rw [hM2]; field_simp; rw [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 6)]; ring
        _ ≤ kC2 * SY1 := mul_le_mul_of_nonneg_right hkC2 hSY10
  -- (7) the pure-δ term
  have T7 : M2 * (1 / Real.sqrt 6 * min (SYinfr * rF ^ 2) (SY1r * r ^ 2)) ≤ min (kD1 * SYinf) (kD2 * SY1) := by
    have hm : min (SYinfr * rF ^ 2) (SY1r * r ^ 2) ≤
        min (SYinf / (Real.sqrt 6 * Z) * rFbar ^ 2) (SY1 / (Real.sqrt 6 * Z) * rbar ^ 2) :=
      min_le_min (mul_le_mul hSYinfr (pow_le_pow_left₀ hrF0 hrF 2) (sq_nonneg _) (by positivity))
        (mul_le_mul hSY1r (pow_le_pow_left₀ hr0 hr 2) (sq_nonneg _) (by positivity))
    have hc0 : 0 ≤ M2 * (1 / Real.sqrt 6) := by positivity
    refine (mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hm (by positivity)) hM20).trans ?_
    rw [← mul_assoc, mul_min_of_nonneg _ _ hc0]
    have h66 : Real.sqrt 6 * Real.sqrt 6 = 6 := Real.mul_self_sqrt (by norm_num)
    apply min_le_min
    · calc M2 * (1 / Real.sqrt 6) * (SYinf / (Real.sqrt 6 * Z) * rFbar ^ 2) = 4 * pihi ^ 2 * Z * rFbar ^ 2 * G2 * SYinf := by
            rw [hM2]; field_simp; rw [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 6)]; ring
        _ ≤ kD1 * SYinf := mul_le_mul_of_nonneg_right hkD1 hSYinf0
    · calc M2 * (1 / Real.sqrt 6) * (SY1 / (Real.sqrt 6 * Z) * rbar ^ 2) = 4 * pihi ^ 2 * Z * rbar ^ 2 * G2 * SY1 := by
            rw [hM2]; field_simp; rw [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 6)]; ring
        _ ≤ kD2 * SY1 := mul_le_mul_of_nonneg_right hkD2 hSY10
  -- assemble
  set brk := min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) + min (Gr * X ^ 2) (K * SY2r * (3 / 2 * a) * X) +
    2 / Real.sqrt 6 * X * min (SY2r * rF) (SY1r * r) + 1 / Real.sqrt 6 * min (SYinfr * rF ^ 2) (SY1r * r ^ 2)
    with hbrk
  have hbrk0 : 0 ≤ brk := by
    have : 0 ≤ min (Gr * X ^ 2) (K * SY2r * (3 / 2 * a) * X) := le_min (by positivity) (by positivity)
    have : 0 ≤ min (SY2r * rF) (SY1r * r) := le_min (by positivity) (by positivity)
    have : 0 ≤ min (SYinfr * rF ^ 2) (SY1r * r ^ 2) := le_min (by positivity) (by positivity)
    have : 0 ≤ min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) := le_min (by positivity) (by positivity)
    rw [hbrk]; positivity
  have Tb : M * (Real.pi * brk) ≤ M2 * brk := by
    have : M * Real.pi ≤ M2 := by
      have h1 := mul_le_mul_of_nonneg_left hpi hM0
      have e : M * pihi = M2 := by rw [hM, hM2]; ring
      linarith only [h1, e]
    calc M * (Real.pi * brk) = (M * Real.pi) * brk := by ring
      _ ≤ M2 * brk := mul_le_mul_of_nonneg_right this hbrk0
  have hk1' : (20 * pihi * a * eW * Z ^ 2 * G2 + 8 * pihi * rHbar * tcol * eW * Z ^ 2 * G2 +
      4 * s6hi * pihi * nbar * eW * Z ^ 2 * G2 + 4 * pihi ^ 2 * Xb ^ 2 * eW * Z ^ 2 * G2) * Y1 ≤ k1 * Y1 := by
    refine mul_le_mul_of_nonneg_right (le_trans (le_of_eq (by ring)) hk1) hY10
  have hsum : M * (a * SJr + rH * Bn + n * Nr + Real.pi * brk) ≤
      kV * SJ + kU * Ub + kN * NJ + min (kA * Yinf) (kB * Y1) + min (kG * Gb) (kP * SY2) +
        min (kC1 * SY2) (kC2 * SY1) + min (kD1 * SYinf) (kD2 * SY1) + k1 * Y1 := by
    have hb : M2 * brk = M2 * min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) +
        M2 * min (Gr * X ^ 2) (K * SY2r * (3 / 2 * a) * X) +
        M2 * (2 / Real.sqrt 6 * X * min (SY2r * rF) (SY1r * r)) +
        M2 * (1 / Real.sqrt 6 * min (SYinfr * rF ^ 2) (SY1r * r ^ 2)) := by rw [hbrk]; ring
    have e : M * (a * SJr + rH * Bn + n * Nr + Real.pi * brk) =
        M * (a * SJr) + M * (rH * Bn) + M * (n * Nr) + M * (Real.pi * brk) := by ring
    rw [e]
    linarith only [T1, T2, T3, T4, T5, T6, T7, Tb, hb, hk1']
  have hke' : ke * Y1 ≥ eN * Z ^ 2 * Y1 := mul_le_mul_of_nonneg_right hke hY10
  have hlt : M * (a * SJr + rH * Bn + n * Nr + Real.pi * brk) < (Ct - eN * Z ^ 2 * Y1) * G2 := by
    have := mul_le_mul_of_nonneg_right hke' hG2.le
    linarith only [hsum, hcheck, this]
  -- divide by 24 π Z² G2
  have hMpos : 0 < 24 * Real.pi * Z ^ 2 * G2 := by positivity
  have hMM : 24 * Real.pi * Z ^ 2 * G2 * (a * SJr + rH * Bn + n * Nr + Real.pi * brk) ≤
      M * (a * SJr + rH * Bn + n * Nr + Real.pi * brk) := by
    have h0 : 0 ≤ a * SJr + rH * Bn + n * Nr + Real.pi * brk := by positivity
    have : 24 * Real.pi * Z ^ 2 * G2 ≤ M := by
      have h1 := mul_le_mul_of_nonneg_right hpi (by positivity : (0:ℝ) ≤ 24 * Z ^ 2 * G2)
      have e : M = pihi * (24 * Z ^ 2 * G2) := by rw [hM]; ring
      rw [e]; linarith only [h1]
    exact mul_le_mul_of_nonneg_right this h0
  have hfin : a * SJr + rH * Bn + n * Nr + Real.pi * brk < (Ct / Z ^ 2 - Y1 * eN) / (24 * Real.pi) := by
    rw [lt_div_iff₀ (by positivity)]
    have h1 : 24 * Real.pi * Z ^ 2 * G2 * (a * SJr + rH * Bn + n * Nr + Real.pi * brk) < (Ct - eN * Z ^ 2 * Y1) * G2 :=
      hMM.trans_lt hlt
    have e : (Ct - eN * Z ^ 2 * Y1) * G2 = (Ct / Z ^ 2 - Y1 * eN) * (Z ^ 2 * G2) := by field_simp
    rw [e] at h1
    have h2 : (a * SJr + rH * Bn + n * Nr + Real.pi * brk) * (24 * Real.pi) * (Z ^ 2 * G2) <
        (Ct / Z ^ 2 - Y1 * eN) * (Z ^ 2 * G2) := by linarith only [h1]
    exact lt_of_mul_lt_mul_right h2 (by positivity)
  exact hfin.trans_le hL

/-! ### The real-number core -/

set_option maxHeartbeats 4000000 in
/-- **The real-number core of test v2**: for any multiplier `y`, if the integer bounds satisfy the comparison, every
admissible `δ` rejects the bin. -/
theorem lin2_real {P : RMat6} {u : I6 → ℝ} {Z ε1 E : ℝ} (hZ : 0 < Z) (hε : 0 ≤ ε1)
    {wt : I6 → I6 → ℂ} {s : I6 → ℂ}
    (hw : ∀ j i, ‖wt j i / (Z : ℂ) - wexp P u j i‖ ≤ ε1) (hs : ∀ i, ‖s i / (Z : ℂ) - sigma P u i‖ ≤ E)
    (y : I6 → ℝ)
    {T : Fin 4 → RMat6} {Th : Fin 4 → I6 → I6 → ℝ} {DT tcol : ℝ} (hDT : 0 < DT)
    (hT : ∀ k j i, T k j i = Th k j i / DT) (htcol : ∀ k i, ∑ j, |Th k j i| ≤ tcol * DT)
    {SJ Ub NJ Gb SY2 SY1 SYinf Yinf Y1 Ct ke : ℝ} {Sp : I6 → ℝ}
    (hSJ : SJ = ∑ j ∈ Finset.univ.erase j0, |∑ i, y i * (star (s i) * wt j i).im|)
    (hUb0 : 0 ≤ Ub) (hUb : ∑ k, (∑ i, y i * ∑ j, Th k j i * (star (s i) * wt j i).im) ^ 2 ≤ Ub ^ 2)
    (hNJ0 : 0 ≤ NJ) (hNJ : ∑ i, y i ^ 2 * ∑ j, (star (s i) * wt j i).im ^ 2 ≤ NJ ^ 2)
    (hGb0 : 0 ≤ Gb) (hGb : ∀ j, ‖∑ i, (y i : ℂ) * (star (s i) * wt j i)‖ ≤ Gb)
    (hSp : ∀ i, ‖s i‖ + E * Z ≤ Sp i)
    (hSY20 : 0 ≤ SY2) (hSY2 : ∑ i, y i ^ 2 * Sp i ^ 2 ≤ SY2 ^ 2)
    (hSY1 : SY1 = ∑ i, |y i| * Sp i) (hSYinf : ∀ i, |y i| * Sp i ≤ SYinf)
    (hYinf : ∀ i, |y i| ≤ Yinf) (hY1 : Y1 = ∑ i, |y i|)
    (hCt : Ct ≤ |∑ i, y i * (‖s i‖ ^ 2 - 6 * Z ^ 2)|)
    {a pihi s6hi x29hi Kbar rbar rFbar rHbar nbar G2 : ℝ} {kV kU kN kA kB kG kP kC1 kC2 kD1 kD2 k1 : ℝ}
    (ha : 0 ≤ a) (hG2 : 0 < G2)
    (hpi : Real.pi ≤ pihi) (hs6 : Real.sqrt 6 ≤ s6hi) (hx29 : Real.sqrt (29 / 6) ≤ x29hi)
    (hkV : 4 * pihi * a * G2 ≤ kV) (hkU : 4 * pihi * rHbar * G2 / DT ≤ kU) (hkN : 4 * pihi * nbar * G2 ≤ kN)
    (hkA : 24 * pihi ^ 2 * Z ^ 2 * (Kbar * (x29hi * a) + rFbar) ^ 2 * G2 ≤ kA)
    (hkB : 24 * pihi ^ 2 * Z ^ 2 * (Kbar * (x29hi * a) + rbar) ^ 2 * G2 ≤ kB)
    (hkG : 4 * pihi ^ 2 * (x29hi * a) ^ 2 * G2 ≤ kG)
    (hkP : 4 * s6hi * pihi ^ 2 * Z * Kbar * (3 / 2 * a) * (x29hi * a) * G2 ≤ kP)
    (hkC1 : 8 * pihi ^ 2 * Z * (x29hi * a) * rFbar * G2 ≤ kC1) (hkC2 : 8 * pihi ^ 2 * Z * (x29hi * a) * rbar * G2 ≤ kC2)
    (hkD1 : 4 * pihi ^ 2 * Z * rFbar ^ 2 * G2 ≤ kD1) (hkD2 : 4 * pihi ^ 2 * Z * rbar ^ 2 * G2 ≤ kD2)
    (hk1 : (20 * pihi * a + 8 * pihi * rHbar * tcol + 4 * s6hi * pihi * nbar + 4 * pihi ^ 2 * (x29hi * a) ^ 2) *
      ((6 + E) * ε1 + E) * Z ^ 2 * G2 ≤ k1)
    (hke : E * (12 + E) * Z ^ 2 ≤ ke)
    (hcheck : kV * SJ + kU * Ub + kN * NJ + min (kA * Yinf) (kB * Y1) + min (kG * Gb) (kP * SY2) +
      min (kC1 * SY2) (kC2 * SY1) + min (kD1 * SYinf) (kD2 * SY1) + k1 * Y1 < (Ct - ke * Y1) * G2)
    {K r rF rH n : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ Kbar) (hr : r ≤ rbar) (hrF : rF ≤ rFbar) (hrH : rH ≤ rHbar) (hn : n ≤ nbar) :
    ∀ δ, Admissible T rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • P) δ u a := by
  intro δ ⟨⟨η, ν, hδ, hη, hν⟩, hrc, hrFc⟩
  set P' := (1 / (2 * Real.pi)) • P with hP'
  have hpi0 := Real.pi_pos
  have h6 := sqrt6_pos
  have hE : 0 ≤ E := (norm_nonneg _).trans (hs j0)
  set eW := (6 + E) * ε1 + E with heW
  set eN := E * (12 + E) with heN
  have heW0 : 0 ≤ eW := by positivity
  have hrH0 : 0 ≤ rH := (Real.sqrt_nonneg _).trans hη
  have hn0 : 0 ≤ n := (frob_nonneg _).trans hν
  have hr0 : 0 ≤ r := (vnorm_nonneg _).trans (hrc j0)
  have hrF0 : 0 ≤ rF := (frob_nonneg _).trans hrFc
  have hY10 : 0 ≤ Y1 := by rw [hY1]; positivity
  have hYinf0 : 0 ≤ Yinf := (abs_nonneg _).trans (hYinf j0)
  have hZ2 : 0 < Z ^ 2 := by positivity
  have htcol0 : 0 ≤ tcol := by
    have := htcol 0 j0
    have h0 : 0 ≤ ∑ j, |Th 0 j j0| := Finset.sum_nonneg fun j _ => abs_nonneg _
    by_contra hc; push_neg at hc; nlinarith
  have hSp0 : ∀ i, 0 ≤ Sp i := fun i => (by positivity : (0:ℝ) ≤ ‖s i‖ + E * Z).trans (hSp i)
  have hSY10 : 0 ≤ SY1 := by rw [hSY1]; exact Finset.sum_nonneg fun i _ => mul_nonneg (abs_nonneg _) (hSp0 i)
  have hSYinf0 : 0 ≤ SYinf := (mul_nonneg (abs_nonneg _) (hSp0 j0)).trans (hSYinf j0)
  set Jt : I6 → I6 → ℝ := fun i j => (star (s i) * wt j i).im with hJt
  have hJ : ∀ i j, |6 * Jm P' u i j + Jt i j / Z ^ 2| ≤ eW := fun i j => J_err hZ hw hs hε i j
  -- (B) the x-term
  have hB1 : ∀ j, |Jty P' u y j| ≤ |∑ i, y i * Jt i j| / (6 * Z ^ 2) + Y1 * eW / 6 := by
    intro j
    have e : 6 * Jty P' u y j + (∑ i, y i * Jt i j) / Z ^ 2 = ∑ i, y i * (6 * Jm P' u i j + Jt i j / Z ^ 2) := by
      simp only [Jty, Finset.mul_sum, Finset.sum_div, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun i _ => by ring
    have hb : |6 * Jty P' u y j + (∑ i, y i * Jt i j) / Z ^ 2| ≤ Y1 * eW := by
      rw [e, hY1, Finset.sum_mul]
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
      rw [abs_mul]; exact mul_le_mul_of_nonneg_left (hJ i j) (abs_nonneg _)
    have h2 : |(∑ i, y i * Jt i j) / Z ^ 2| = |∑ i, y i * Jt i j| / Z ^ 2 := by rw [abs_div, abs_of_pos hZ2]
    have h5 : 6 * |Jty P' u y j| ≤ Y1 * eW + |∑ i, y i * Jt i j| / Z ^ 2 := by
      have h6 : |6 * Jty P' u y j| = 6 * |Jty P' u y j| := by rw [abs_mul]; norm_num
      have h7 := abs_sub (6 * Jty P' u y j + (∑ i, y i * Jt i j) / Z ^ 2) ((∑ i, y i * Jt i j) / Z ^ 2)
      rw [add_sub_cancel_right, h6, h2] at h7
      linarith
    have h8 : |∑ i, y i * Jt i j| / (6 * Z ^ 2) = |∑ i, y i * Jt i j| / Z ^ 2 / 6 := by rw [div_div, mul_comm]
    rw [h8]; linarith
  have hB2 : ∑ j ∈ Finset.univ.erase j0, |Jty P' u y j| ≤ SJ / (6 * Z ^ 2) + 5 * (Y1 * eW / 6) := by
    calc ∑ j ∈ Finset.univ.erase j0, |Jty P' u y j|
        ≤ ∑ j ∈ Finset.univ.erase j0, (|∑ i, y i * Jt i j| / (6 * Z ^ 2) + Y1 * eW / 6) :=
          Finset.sum_le_sum fun j _ => hB1 j
      _ = _ := by rw [sum_erase_card, hSJ, ← Finset.sum_div]
  -- (C) the δ-term
  set m := Y1 * eW * tcol / 6 with hm
  have hC1 : ∀ k, |Bty P' u y T k + (∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2)| ≤ m := by
    intro k
    have e1 : 6 * DT * Bty P' u y T k = ∑ i, y i * ∑ j, Th k j i * (6 * Jm P' u i j) := by
      simp only [Bty, hT, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
      field_simp
    have e2 : 6 * DT * ((∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2)) =
        ∑ i, y i * ∑ j, Th k j i * (Jt i j / Z ^ 2) := by
      rw [mul_div_assoc', mul_comm (6 * DT), ← div_div, mul_div_cancel_right₀ _ (by positivity), Finset.sum_div]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [mul_div_assoc, Finset.sum_div]
      exact congrArg _ (Finset.sum_congr rfl fun j _ => by ring)
    have e : 6 * DT * (Bty P' u y T k + (∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2)) =
        ∑ i, y i * ∑ j, Th k j i * (6 * Jm P' u i j + Jt i j / Z ^ 2) := by
      rw [mul_add, e1, e2, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [← mul_add, ← Finset.sum_add_distrib]
      exact congrArg _ (Finset.sum_congr rfl fun j _ => by ring)
    have hb : |∑ i, y i * ∑ j, Th k j i * (6 * Jm P' u i j + Jt i j / Z ^ 2)| ≤ Y1 * (tcol * DT) * eW := by
      rw [hY1, Finset.sum_mul, Finset.sum_mul]
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
      rw [abs_mul, mul_assoc]
      refine mul_le_mul_of_nonneg_left ?_ (abs_nonneg _)
      refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
      calc ∑ j, |Th k j i * (6 * Jm P' u i j + Jt i j / Z ^ 2)| ≤ ∑ j, |Th k j i| * eW :=
            Finset.sum_le_sum fun j _ => by rw [abs_mul]; exact mul_le_mul_of_nonneg_left (hJ i j) (abs_nonneg _)
        _ = (∑ j, |Th k j i|) * eW := by rw [Finset.sum_mul]
        _ ≤ tcol * DT * eW := mul_le_mul_of_nonneg_right (htcol k i) heW0
    rw [← e, abs_mul, abs_of_pos (by positivity : (0:ℝ) < 6 * DT)] at hb
    rw [hm, le_div_iff₀ (by norm_num : (0:ℝ) < 6)]
    nlinarith
  have hm0 : 0 ≤ m := (abs_nonneg _).trans (hC1 0)
  have hC2 : Real.sqrt (∑ k, Bty P' u y T k ^ 2) ≤ Ub / (6 * DT * Z ^ 2) + 2 * m := by
    set f : Fin 4 → ℝ := fun k => -((∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2))
    set g : Fin 4 → ℝ := fun k => Bty P' u y T k + (∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2)
    have hfg : ∀ k, Bty P' u y T k = f k + g k := fun k => by simp only [f, g]; ring
    simp only [hfg]
    refine (sqrt_sum_add_le f g).trans (add_le_add ?_ ?_)
    · have hD : (0 : ℝ) < 6 * DT * Z ^ 2 := by positivity
      have e : ∑ k, f k ^ 2 = (∑ k, (∑ i, y i * ∑ j, Th k j i * Jt i j) ^ 2) / (6 * DT * Z ^ 2) ^ 2 := by
        rw [Finset.sum_div]; exact Finset.sum_congr rfl fun k _ => by simp only [f]; rw [neg_sq, div_pow]
      rw [e, Real.sqrt_div' _ (by positivity), Real.sqrt_sq hD.le]
      apply div_le_div_of_nonneg_right _ hD.le
      calc Real.sqrt _ ≤ Real.sqrt (Ub ^ 2) := Real.sqrt_le_sqrt hUb
        _ = Ub := Real.sqrt_sq hUb0
    · have e : ∑ k, g k ^ 2 ≤ ∑ _k : Fin 4, m ^ 2 := Finset.sum_le_sum fun k _ => by
        rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) (hC1 k) 2
      rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin] at e
      calc Real.sqrt (∑ k, g k ^ 2) ≤ Real.sqrt ((2 * m) ^ 2) := Real.sqrt_le_sqrt (by simp at e; nlinarith)
        _ = 2 * m := Real.sqrt_sq (by positivity)
  -- (N) the ν-term
  have hN : Real.sqrt (∑ i, ∑ j, (y i * Jm P' u i j) ^ 2) ≤ NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 * Y1 := by
    rw [hY1]; exact N_bound hZ hNJ0 hJ hNJ
  -- (G) the pure-x term
  have hG : ∀ j, ‖∑ i, (y i : ℂ) * star (S P' u i) * q P' u j i‖ ≤ Gb / (6 * Z ^ 2) + Y1 * eW / 6 := by
    intro j
    have hZc : ((Z : ℂ) ^ 2) ≠ 0 := by exact_mod_cast hZ2.ne'
    have e : ∑ i, (y i : ℂ) * star (S P' u i) * q P' u j i =
        (∑ i, (y i : ℂ) * (star (s i) * wt j i)) / (6 * (Z : ℂ) ^ 2) +
        ∑ i, (y i : ℂ) * ((6 * (star (S P' u i) * q P' u j i) - star (s i) * wt j i / ((Z : ℂ) ^ 2)) / 6) := by
      rw [Finset.sum_div, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      field_simp; ring
    rw [e]
    refine (norm_add_le _ _).trans (add_le_add ?_ ?_)
    · rw [norm_div]
      have : ‖6 * (Z : ℂ) ^ 2‖ = 6 * Z ^ 2 := by
        rw [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hZ]; norm_num
      rw [this]; exact div_le_div_of_nonneg_right (hGb j) (by positivity)
    · refine (norm_sum_le _ _).trans ?_
      rw [hY1, Finset.sum_mul, Finset.sum_div]
      refine Finset.sum_le_sum fun i _ => ?_
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, norm_div]
      have h6n : ‖(6 : ℂ)‖ = 6 := by norm_num
      rw [h6n]
      have h := mul_le_mul_of_nonneg_left
        (div_le_div_of_nonneg_right (C_err hZ hw hs hε i j) (by norm_num : (0:ℝ) ≤ 6)) (abs_nonneg (y i))
      calc _ ≤ _ := h
        _ = |y i| * eW / 6 := by ring
  -- (S) the `S∘y` norms
  have hSi : ∀ i, |y i| * ‖S P' u i‖ ≤ |y i| * Sp i / (Real.sqrt 6 * Z) := by
    intro i
    have h1 : ‖S P' u i‖ ≤ Sp i / (Real.sqrt 6 * Z) :=
      (S_le hZ hs i).trans (div_le_div_of_nonneg_right (hSp i) (by positivity))
    rw [mul_div_assoc]; exact mul_le_mul_of_nonneg_left h1 (abs_nonneg _)
  have hS2 : vnorm (fun i => |y i| * ‖S P' u i‖) ≤ SY2 / (Real.sqrt 6 * Z) := by
    unfold vnorm
    have hsq : ∑ i, (|y i| * ‖S P' u i‖) ^ 2 ≤ (SY2 / (Real.sqrt 6 * Z)) ^ 2 := by
      calc ∑ i, (|y i| * ‖S P' u i‖) ^ 2 ≤ ∑ i, (|y i| * Sp i / (Real.sqrt 6 * Z)) ^ 2 :=
            Finset.sum_le_sum fun i _ => pow_le_pow_left₀ (by positivity) (hSi i) 2
        _ = (∑ i, y i ^ 2 * Sp i ^ 2) / (Real.sqrt 6 * Z) ^ 2 := by
            rw [Finset.sum_div]; exact Finset.sum_congr rfl fun i _ => by rw [div_pow, mul_pow, sq_abs]
        _ ≤ SY2 ^ 2 / (Real.sqrt 6 * Z) ^ 2 := div_le_div_of_nonneg_right hSY2 (by positivity)
        _ = (SY2 / (Real.sqrt 6 * Z)) ^ 2 := by rw [div_pow]
    calc Real.sqrt _ ≤ Real.sqrt ((SY2 / (Real.sqrt 6 * Z)) ^ 2) := Real.sqrt_le_sqrt hsq
      _ = _ := Real.sqrt_sq (by positivity)
  have hS1 : ∑ i, |y i| * ‖S P' u i‖ ≤ SY1 / (Real.sqrt 6 * Z) := by
    rw [hSY1, Finset.sum_div]; exact Finset.sum_le_sum fun i _ => hSi i
  have hSinf : ∀ i, |y i| * ‖S P' u i‖ ≤ SYinf / (Real.sqrt 6 * Z) := fun i =>
    (hSi i).trans (div_le_div_of_nonneg_right (hSYinf i) (by positivity))
  -- (D) the left side
  have hD : (Ct / Z ^ 2 - Y1 * eN) / (24 * Real.pi) ≤ |∑ i, y i * cc P' u i| := by
    have e : ∑ i, y i * cc P' u i = (∑ i, y i * (‖sigma P u i‖ ^ 2 - 6)) / (24 * Real.pi) := by
      rw [Finset.sum_div]; exact Finset.sum_congr rfl fun i _ => by rw [cc_cyc]; ring
    rw [e, abs_div, abs_of_pos (by positivity : (0:ℝ) < 24 * Real.pi)]
    apply div_le_div_of_nonneg_right _ (by positivity)
    have e2 : ∑ i, y i * (‖sigma P u i‖ ^ 2 - 6) =
        (∑ i, y i * (‖s i‖ ^ 2 - 6 * Z ^ 2)) / Z ^ 2 + ∑ i, y i * (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2) := by
      rw [Finset.sum_div, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun i _ => by field_simp; ring
    have e3 : |∑ i, y i * (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2)| ≤ Y1 * eN := by
      rw [hY1, Finset.sum_mul]
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
      rw [abs_mul]; exact mul_le_mul_of_nonneg_left (N_err hZ hs i) (abs_nonneg _)
    have e4 : Ct / Z ^ 2 ≤ |(∑ i, y i * (‖s i‖ ^ 2 - 6 * Z ^ 2)) / Z ^ 2| := by
      rw [abs_div, abs_of_pos hZ2]; exact div_le_div_of_nonneg_right hCt hZ2.le
    rw [e2]
    have := abs_add_le ((∑ i, y i * (‖s i‖ ^ 2 - 6 * Z ^ 2)) / Z ^ 2 + ∑ i, y i * (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2))
      (-(∑ i, y i * (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2)))
    rw [add_neg_cancel_right, abs_neg] at this
    linarith
  -- apply the linear test
  have hSJr0 : 0 ≤ ∑ j ∈ Finset.univ.erase j0, |Jty P' u y j| := Finset.sum_nonneg fun j _ => abs_nonneg _
  have hSJ0 : 0 ≤ SJ := by rw [hSJ]; exact Finset.sum_nonneg fun j _ => abs_nonneg _
  refine leafRej_of_linear (Yinf := Yinf) (Y1 := Y1) (G := Gb / (6 * Z ^ 2) + Y1 * eW / 6)
    (SY2 := SY2 / (Real.sqrt 6 * Z)) (SY1 := SY1 / (Real.sqrt 6 * Z)) (SYinf := SYinf / (Real.sqrt 6 * Z))
    (Bn := Real.sqrt (∑ k, Bty P' u y T k ^ 2)) (N := Real.sqrt (∑ i, ∑ j, (y i * Jm P' u i j) ^ 2))
    ha hδ hη hν hrc hrFc hK0 hK hYinf (le_of_eq hY1.symm) hG hS2 hS1 hSinf le_rfl le_rfl ?_
  exact lin2_final ha hG2 hZ hDT heW0 htcol0 hpi hs6 hx29 hkV hkU hkN hkA hkB hkG hkP hkC1 hkC2 hkD1 hkD2 hk1
    hke hcheck hK0 hKb hr0 hr hrF0 hrF hrH0 hrH hn0 hn hSJ0 hUb0 hNJ0 hGb0 hSY20 hSY10 hSYinf0 hYinf0 hY10
    hSJr0 (Real.sqrt_nonneg _) (Real.sqrt_nonneg _) (by positivity) (by positivity) (by positivity) (by positivity)
    hB2 hC2 hN le_rfl le_rfl le_rfl le_rfl hD

/-! ### The scalar test (6.12) -/

set_option maxHeartbeats 2000000 in
/-- **The real-number core of the scalar test** on column `i`, from integer bounds. -/
theorem scal2_real {P : RMat6} {u : I6 → ℝ} {Z ε1 E : ℝ} (hZ : 0 < Z) (hε : 0 ≤ ε1)
    {wt : I6 → I6 → ℂ} {s : I6 → ℂ}
    (hw : ∀ j i, ‖wt j i / (Z : ℂ) - wexp P u j i‖ ≤ ε1) (hs : ∀ i, ‖s i / (Z : ℂ) - sigma P u i‖ ≤ E)
    (i : I6) {SJ NJ Sp Ct ke : ℝ}
    (hSJ : SJ = ∑ j ∈ Finset.univ.erase j0, |(star (s i) * wt j i).im|)
    (hNJ0 : 0 ≤ NJ) (hNJ : ∑ j, (star (s i) * wt j i).im ^ 2 ≤ NJ ^ 2)
    (hSp : ‖s i‖ + E * Z ≤ Sp) (hCt : Ct ≤ |‖s i‖ ^ 2 - 6 * Z ^ 2|)
    {a pihi s6hi i6hi x29hi Kbar rbar G2 : ℝ} {sV sR sA1 sB1 sA2 sB2 s1 : ℝ}
    (ha : 0 ≤ a) (hG2 : 0 < G2)
    (hpi : Real.pi ≤ pihi) (hs6 : Real.sqrt 6 ≤ s6hi) (hi6 : 1 / Real.sqrt 6 ≤ i6hi)
    (hx29 : Real.sqrt (29 / 6) ≤ x29hi)
    (hsV : 4 * pihi * a * G2 ≤ sV) (hsR : 4 * pihi * rbar * G2 ≤ sR)
    (hsA1 : 24 * pihi ^ 2 * Z ^ 2 * (Kbar * (x29hi * a) + rbar) ^ 2 * G2 ≤ sA1)
    (hsB1 : 4 * s6hi * pihi ^ 2 * Z * (Kbar * (3 / 2 * a) * (x29hi * a) +
      (2 * (x29hi * a) * rbar + rbar ^ 2) * i6hi) * G2 ≤ sB1)
    (hsA2 : 24 * pihi ^ 2 * Z ^ 2 * (5 * a * i6hi + rbar) ^ 2 * G2 ≤ sA2)
    (hsB2 : 4 * s6hi * pihi ^ 2 * Z * ((x29hi * a + rbar) ^ 2 * i6hi) * G2 ≤ sB2)
    (hs1 : (20 * pihi * a + 4 * s6hi * pihi * rbar) * ((6 + E) * ε1 + E) * Z ^ 2 * G2 ≤ s1)
    (hke : E * (12 + E) * Z ^ 2 ≤ ke)
    (hcheck : sV * SJ + sR * NJ + min (sA1 + sB1 * Sp) (sA2 + sB2 * Sp) + s1 < (Ct - ke) * G2)
    {K r rF rH n : ℝ} {T : Fin 4 → RMat6} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z) (hKb : K ≤ Kbar) (hr : r ≤ rbar) :
    ∀ δ, Admissible T rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • P) δ u a := by
  intro δ ⟨_, hrc, _⟩
  set P' := (1 / (2 * Real.pi)) • P with hP'
  have hpi0 := Real.pi_pos
  have h6 := sqrt6_pos
  have hE : 0 ≤ E := (norm_nonneg _).trans (hs j0)
  set eW := (6 + E) * ε1 + E with heW
  set eN := E * (12 + E) with heN
  have heW0 : 0 ≤ eW := by positivity
  have hr0 : 0 ≤ r := (vnorm_nonneg _).trans (hrc i)
  have hrb0 : 0 ≤ rbar := hr0.trans hr
  have hKb0 : 0 ≤ Kbar := hK0.trans hKb
  have hZ2 : 0 < Z ^ 2 := by positivity
  have hpihi0 : 0 ≤ pihi := by linarith
  have hs60 : 0 ≤ s6hi := h6.le.trans hs6
  have hi60 : 0 ≤ i6hi := (by positivity : (0:ℝ) ≤ 1 / Real.sqrt 6).trans hi6
  have hSp0 : 0 ≤ Sp := (by positivity : (0:ℝ) ≤ ‖s i‖ + E * Z).trans hSp
  set Jt : I6 → ℝ := fun j => (star (s i) * wt j i).im with hJt
  have hJ : ∀ j, |6 * Jm P' u i j + Jt j / Z ^ 2| ≤ eW := fun j => J_err hZ hw hs hε i j
  have hJ1 : ∀ j, |Jm P' u i j| ≤ |Jt j| / (6 * Z ^ 2) + eW / 6 := by
    intro j
    have h := hJ j
    have e : Jm P' u i j = (6 * Jm P' u i j + Jt j / Z ^ 2) / 6 - Jt j / (6 * Z ^ 2) := by field_simp; ring
    rw [e]
    refine (abs_sub _ _).trans ?_
    rw [abs_div, abs_div, abs_of_pos (by norm_num : (0:ℝ) < 6), abs_of_pos (by positivity : (0:ℝ) < 6 * Z ^ 2)]
    linarith [div_le_div_of_nonneg_right h (by norm_num : (0:ℝ) ≤ 6)]
  -- the x-term
  set SJr := ∑ j ∈ Finset.univ.erase j0, |Jm P' u i j| with hSJr
  have hB : SJr ≤ SJ / (6 * Z ^ 2) + 5 * (eW / 6) := by
    calc SJr ≤ ∑ j ∈ Finset.univ.erase j0, (|Jt j| / (6 * Z ^ 2) + eW / 6) := Finset.sum_le_sum fun j _ => hJ1 j
      _ = _ := by rw [sum_erase_card, hSJ, ← Finset.sum_div]
  -- the column norm
  set Nr := Real.sqrt (∑ j, Jm P' u i j ^ 2) with hNr
  have hN : Nr ≤ NJ / (6 * Z ^ 2) + eW / Real.sqrt 6 := by
    set f : I6 → ℝ := fun j => -(Jt j / (6 * Z ^ 2))
    set g : I6 → ℝ := fun j => Jm P' u i j + Jt j / (6 * Z ^ 2)
    have hfg : ∀ j, Jm P' u i j = f j + g j := fun j => by simp only [f, g]; ring
    rw [hNr]; simp only [hfg]
    refine (sqrt_sum_add_le f g).trans (add_le_add ?_ ?_)
    · have e : ∑ j, f j ^ 2 = (∑ j, Jt j ^ 2) / (6 * Z ^ 2) ^ 2 := by
        rw [Finset.sum_div]; exact Finset.sum_congr rfl fun j _ => by simp only [f]; rw [neg_sq, div_pow]
      rw [e, Real.sqrt_div' _ (by positivity), Real.sqrt_sq (by positivity)]
      apply div_le_div_of_nonneg_right _ (by positivity)
      calc Real.sqrt _ ≤ Real.sqrt (NJ ^ 2) := Real.sqrt_le_sqrt hNJ
        _ = NJ := Real.sqrt_sq hNJ0
    · have hg : ∀ j, g j ^ 2 ≤ (eW / 6) ^ 2 := by
        intro j
        have e : g j = (6 * Jm P' u i j + Jt j / Z ^ 2) / 6 := by simp only [g]; field_simp
        rw [e, div_pow, ← sq_abs, div_pow]
        exact div_le_div_of_nonneg_right (pow_le_pow_left₀ (abs_nonneg _) (hJ j) 2) (by positivity)
      have hsum : ∑ j, g j ^ 2 ≤ (eW / Real.sqrt 6) ^ 2 := by
        calc ∑ j, g j ^ 2 ≤ ∑ _j : I6, (eW / 6) ^ 2 := Finset.sum_le_sum fun j _ => hg j
          _ = (eW / Real.sqrt 6) ^ 2 := by
            rw [Finset.sum_const, Finset.card_univ, card_I6, nsmul_eq_mul, div_pow, div_pow,
              Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 6)]; ring
      calc Real.sqrt (∑ j, g j ^ 2) ≤ Real.sqrt ((eW / Real.sqrt 6) ^ 2) := Real.sqrt_le_sqrt hsum
        _ = _ := Real.sqrt_sq (by positivity)
  -- Smax
  set Smax := Sp / (Real.sqrt 6 * Z) with hSmax
  have hS : ‖S P' u i‖ ≤ Smax := (S_le hZ hs i).trans (div_le_div_of_nonneg_right hSp (by positivity))
  have hSm0 : 0 ≤ Smax := by positivity
  -- the left side
  have hD : (Ct / Z ^ 2 - eN) / (24 * Real.pi) ≤ |cc P' u i| := by
    rw [cc_cyc, abs_div, abs_of_pos (by positivity : (0:ℝ) < 24 * Real.pi)]
    apply div_le_div_of_nonneg_right _ (by positivity)
    have e : ‖sigma P u i‖ ^ 2 - 6 = (‖s i‖ ^ 2 - 6 * Z ^ 2) / Z ^ 2 + (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2) := by
      field_simp; ring
    have e3 := N_err hZ hs i
    have e4 : Ct / Z ^ 2 ≤ |(‖s i‖ ^ 2 - 6 * Z ^ 2) / Z ^ 2| := by
      rw [abs_div, abs_of_pos hZ2]; exact div_le_div_of_nonneg_right hCt hZ2.le
    rw [e]
    have := abs_add_le ((‖s i‖ ^ 2 - 6 * Z ^ 2) / Z ^ 2 + (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2))
      (-(‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2))
    rw [add_neg_cancel_right, abs_neg] at this
    linarith
  refine leafRej_of_scalar i ha hK0 hK (hrc i |>.trans hr |> fun h => (hrc i).trans le_rfl) hS ?_
  -- the arithmetic
  set X := Real.sqrt (29 / 6) * a with hXdef
  set Xb := x29hi * a with hXb
  have hX0 : 0 ≤ X := by positivity
  have hXX : X ≤ Xb := mul_le_mul_of_nonneg_right hx29 ha
  have hxb0 : 0 ≤ Xb := hX0.trans hXX
  have hKX : K * X ≤ Kbar * Xb := mul_le_mul hKb hXX hX0 hKb0
  have h24 : 24 / Real.sqrt 6 ≤ 4 * s6hi := by
    rw [div_le_iff₀ h6]
    have e : Real.sqrt 6 * Real.sqrt 6 = 6 := Real.mul_self_sqrt (by norm_num)
    have := mul_le_mul_of_nonneg_right hs6 h6.le
    linarith only [e, this]
  set M := 24 * pihi * Z ^ 2 * G2 with hM
  have hM0 : 0 ≤ M := by positivity
  set M2 := 24 * pihi ^ 2 * Z ^ 2 * G2 with hM2
  have hM20 : 0 ≤ M2 := by positivity
  have T1 : M * (a * SJr) ≤ sV * SJ + 20 * pihi * a * eW * Z ^ 2 * G2 := by
    have h := mul_le_mul_of_nonneg_left hB (by positivity : (0:ℝ) ≤ M * a)
    have e : M * a * (SJ / (6 * Z ^ 2) + 5 * (eW / 6)) = 4 * pihi * a * G2 * SJ + 20 * pihi * a * eW * Z ^ 2 * G2 := by
      rw [hM]; field_simp; ring
    have := mul_le_mul_of_nonneg_right hsV (by rw [hSJ]; exact Finset.sum_nonneg fun j _ => abs_nonneg _ : (0:ℝ) ≤ SJ)
    calc M * (a * SJr) = M * a * SJr := by ring
      _ ≤ _ := h
      _ = _ := e
      _ ≤ _ := by linarith only [this]
  have T2 : M * (r * Nr) ≤ sR * NJ + 4 * s6hi * pihi * rbar * eW * Z ^ 2 * G2 := by
    have h1 : r * Nr ≤ rbar * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6) := mul_le_mul hr hN (Real.sqrt_nonneg _) hrb0
    have h := mul_le_mul_of_nonneg_left h1 hM0
    have e : M * (rbar * (NJ / (6 * Z ^ 2) + eW / Real.sqrt 6)) =
        4 * pihi * rbar * G2 * NJ + 24 / Real.sqrt 6 * (pihi * rbar * eW * Z ^ 2 * G2) := by rw [hM]; field_simp; ring
    have h2 := mul_le_mul_of_nonneg_right h24 (by positivity : (0:ℝ) ≤ pihi * rbar * eW * Z ^ 2 * G2)
    have := mul_le_mul_of_nonneg_right hsR hNJ0
    linarith only [h, e, h2, this]
  set A1 := (K * X + r) ^ 2 + Smax * (K * (3 / 2 * a) * X + (2 * X * r + r ^ 2) / Real.sqrt 6) with hA1
  set A2 := (5 * a / Real.sqrt 6 + r) ^ 2 + Smax * (X + r) ^ 2 / Real.sqrt 6 with hA2
  have T3 : M2 * min A1 A2 ≤ min (sA1 + sB1 * Sp) (sA2 + sB2 * Sp) := by
    rw [mul_min_of_nonneg _ _ hM20]
    apply min_le_min
    · have b1 : (K * X + r) ^ 2 ≤ (Kbar * Xb + rbar) ^ 2 := pow_le_pow_left₀ (by positivity) (add_le_add hKX hr) 2
      have b2 : K * (3 / 2 * a) * X + (2 * X * r + r ^ 2) / Real.sqrt 6 ≤
          Kbar * (3 / 2 * a) * Xb + (2 * Xb * rbar + rbar ^ 2) * i6hi := by
        have c1 : K * (3 / 2 * a) * X ≤ Kbar * (3 / 2 * a) * Xb := by
          have := mul_le_mul_of_nonneg_left hKX (by positivity : (0:ℝ) ≤ 3 / 2 * a); linarith only [this]
        have c2 : (2 * X * r + r ^ 2) / Real.sqrt 6 ≤ (2 * Xb * rbar + rbar ^ 2) * i6hi := by
          rw [div_eq_mul_one_div]
          exact mul_le_mul (add_le_add (mul_le_mul (by linarith) hr hr0 (by positivity))
            (pow_le_pow_left₀ hr0 hr 2)) hi6 (by positivity) (by positivity)
        linarith only [c1, c2]
      have e1 : M2 * A1 = M2 * (K * X + r) ^ 2 +
          24 / Real.sqrt 6 * (pihi ^ 2 * Z * G2 * Sp * (K * (3 / 2 * a) * X + (2 * X * r + r ^ 2) / Real.sqrt 6)) := by
        rw [hA1, hSmax, hM2]; field_simp
      rw [e1]
      have q1 : M2 * (K * X + r) ^ 2 ≤ sA1 := by
        calc M2 * (K * X + r) ^ 2 ≤ M2 * (Kbar * Xb + rbar) ^ 2 := mul_le_mul_of_nonneg_left b1 hM20
          _ = 24 * pihi ^ 2 * Z ^ 2 * (Kbar * Xb + rbar) ^ 2 * G2 := by rw [hM2]; ring
          _ ≤ sA1 := hsA1
      have q2 : 24 / Real.sqrt 6 * (pihi ^ 2 * Z * G2 * Sp * (K * (3 / 2 * a) * X + (2 * X * r + r ^ 2) / Real.sqrt 6)) ≤
          sB1 * Sp := by
        have hb0 : 0 ≤ K * (3 / 2 * a) * X + (2 * X * r + r ^ 2) / Real.sqrt 6 := by positivity
        calc _ ≤ 4 * s6hi * (pihi ^ 2 * Z * G2 * Sp * (K * (3 / 2 * a) * X + (2 * X * r + r ^ 2) / Real.sqrt 6)) :=
              mul_le_mul_of_nonneg_right h24 (by positivity)
          _ ≤ 4 * s6hi * (pihi ^ 2 * Z * G2 * Sp * (Kbar * (3 / 2 * a) * Xb + (2 * Xb * rbar + rbar ^ 2) * i6hi)) :=
              mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left b2 (by positivity)) (by positivity)
          _ = 4 * s6hi * pihi ^ 2 * Z * (Kbar * (3 / 2 * a) * Xb + (2 * Xb * rbar + rbar ^ 2) * i6hi) * G2 * Sp := by ring
          _ ≤ sB1 * Sp := mul_le_mul_of_nonneg_right hsB1 hSp0
      linarith only [q1, q2]
    · have b1 : (5 * a / Real.sqrt 6 + r) ^ 2 ≤ (5 * a * i6hi + rbar) ^ 2 := by
        refine pow_le_pow_left₀ (by positivity) (add_le_add ?_ hr) 2
        rw [div_eq_mul_one_div (5 * a)]
        exact mul_le_mul_of_nonneg_left hi6 (by positivity)
      have b2 : (X + r) ^ 2 / Real.sqrt 6 ≤ (Xb + rbar) ^ 2 * i6hi := by
        rw [div_eq_mul_one_div]
        exact mul_le_mul (pow_le_pow_left₀ (by positivity) (add_le_add hXX hr) 2) hi6 (by positivity) (by positivity)
      have e1 : M2 * A2 = M2 * (5 * a / Real.sqrt 6 + r) ^ 2 + 24 / Real.sqrt 6 * (pihi ^ 2 * Z * G2 * Sp * ((X + r) ^ 2 / Real.sqrt 6)) := by
        rw [hA2, hSmax, hM2]; field_simp
      rw [e1]
      have q1 : M2 * (5 * a / Real.sqrt 6 + r) ^ 2 ≤ sA2 := by
        calc M2 * (5 * a / Real.sqrt 6 + r) ^ 2 ≤ M2 * (5 * a * i6hi + rbar) ^ 2 := mul_le_mul_of_nonneg_left b1 hM20
          _ = 24 * pihi ^ 2 * Z ^ 2 * (5 * a * i6hi + rbar) ^ 2 * G2 := by rw [hM2]; ring
          _ ≤ sA2 := hsA2
      have q2 : 24 / Real.sqrt 6 * (pihi ^ 2 * Z * G2 * Sp * ((X + r) ^ 2 / Real.sqrt 6)) ≤ sB2 * Sp := by
        calc _ ≤ 4 * s6hi * (pihi ^ 2 * Z * G2 * Sp * ((X + r) ^ 2 / Real.sqrt 6)) :=
              mul_le_mul_of_nonneg_right h24 (by positivity)
          _ ≤ 4 * s6hi * (pihi ^ 2 * Z * G2 * Sp * ((Xb + rbar) ^ 2 * i6hi)) :=
              mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left b2 (by positivity)) (by positivity)
          _ = 4 * s6hi * pihi ^ 2 * Z * ((Xb + rbar) ^ 2 * i6hi) * G2 * Sp := by ring
          _ ≤ sB2 * Sp := mul_le_mul_of_nonneg_right hsB2 hSp0
      linarith only [q1, q2]
  have hmin0 : 0 ≤ min A1 A2 := le_min (by positivity) (by positivity)
  have Tb : M * (Real.pi * min A1 A2) ≤ M2 * min A1 A2 := by
    have h1 := mul_le_mul_of_nonneg_left hpi hM0
    have e : M * pihi = M2 := by rw [hM, hM2]; ring
    calc M * (Real.pi * min A1 A2) = (M * Real.pi) * min A1 A2 := by ring
      _ ≤ M2 * min A1 A2 := mul_le_mul_of_nonneg_right (by linarith only [h1, e]) hmin0
  have hsum : M * (a * SJr + r * Nr + Real.pi * min A1 A2) ≤
      sV * SJ + sR * NJ + min (sA1 + sB1 * Sp) (sA2 + sB2 * Sp) + s1 := by
    have h1 : 20 * pihi * a * eW * Z ^ 2 * G2 + 4 * s6hi * pihi * rbar * eW * Z ^ 2 * G2 ≤ s1 :=
      le_trans (le_of_eq (by ring)) hs1
    have e : M * (a * SJr + r * Nr + Real.pi * min A1 A2) = M * (a * SJr) + M * (r * Nr) + M * (Real.pi * min A1 A2) := by
      ring
    rw [e]; linarith only [T1, T2, T3, Tb, h1]
  have hke' : eN * Z ^ 2 * G2 ≤ ke * G2 := mul_le_mul_of_nonneg_right hke hG2.le
  have hMM : 24 * Real.pi * Z ^ 2 * G2 * (a * SJr + r * Nr + Real.pi * min A1 A2) ≤
      M * (a * SJr + r * Nr + Real.pi * min A1 A2) := by
    have h0 : 0 ≤ a * SJr + r * Nr + Real.pi * min A1 A2 := by positivity
    have : 24 * Real.pi * Z ^ 2 * G2 ≤ M := by
      have h1 := mul_le_mul_of_nonneg_right hpi (by positivity : (0:ℝ) ≤ 24 * Z ^ 2 * G2)
      have e : M = pihi * (24 * Z ^ 2 * G2) := by rw [hM]; ring
      rw [e]; linarith only [h1]
    exact mul_le_mul_of_nonneg_right this h0
  have hfin : a * SJr + r * Nr + Real.pi * min A1 A2 < (Ct / Z ^ 2 - eN) / (24 * Real.pi) := by
    rw [lt_div_iff₀ (by positivity)]
    have h1 : 24 * Real.pi * Z ^ 2 * G2 * (a * SJr + r * Nr + Real.pi * min A1 A2) < (Ct - eN * Z ^ 2) * G2 := by
      have := hMM.trans hsum
      linarith only [this, hcheck, hke']
    have e : (Ct - eN * Z ^ 2) * G2 = (Ct / Z ^ 2 - eN) * (Z ^ 2 * G2) := by field_simp
    rw [e] at h1
    have h2 : (a * SJr + r * Nr + Real.pi * min A1 A2) * (24 * Real.pi) * (Z ^ 2 * G2) <
        (Ct / Z ^ 2 - eN) * (Z ^ 2 * G2) := by linarith only [h1]
    exact lt_of_mul_lt_mul_right h2 (by positivity)
  have key := hfin.trans_le hD
  have e : min (Real.pi * ((K * (Real.sqrt (29 / 6) * a) + r) ^ 2 + Smax * (K * (3 / 2 * a) * (Real.sqrt (29 / 6) * a) +
          (2 * (Real.sqrt (29 / 6) * a) * r + r ^ 2) / Real.sqrt 6)))
        (Real.pi * ((5 * a / Real.sqrt 6 + r) ^ 2 + Smax * (Real.sqrt (29 / 6) * a + r) ^ 2 / Real.sqrt 6)) =
      Real.pi * min A1 A2 := by
    rw [mul_min_of_nonneg _ _ hpi0.le]
  rw [e]; exact key

end

end NoFourMUBs.KernelAtlas
