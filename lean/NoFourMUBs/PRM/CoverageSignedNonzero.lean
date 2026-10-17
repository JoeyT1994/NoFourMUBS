import NoFourMUBs.PRM.CoverageSignedBoundary
import NoFourMUBs.PRM.CoverageSignedK0
import NoFourMUBs.PRM.CoverageSignedKp
import NoFourMUBs.PRM.CoverageSignedKn
import NoFourMUBs.PRM.CoverageSignedKmin
import NoFourMUBs.PRM.CoverageQuarticPole

/-!
# Critical strip classification (I4), nonzero `J`, by two signed sums (return K)

`proof/coverage/returns/K_nonzero_J/REPORT.md`.  At a corner of the top strip of an all-critical
Hadamard matrix with invertible minors and `J > 0`:

* (7) (`signed_boundary`, poles included): `Im w = 0` or two of `X, Y, Z` agree; with the modulus cubic
  this puts `K` on one of the four curves `K_min, K₀, K₊, K₋` (`pole_K`).
* §4: after a row relabelling (`swap01_data`, `swap02_data`, `swap12_data`) the moduli are
  `X = Y = 2/h, (3k² ± 2k + 1)/h` ((9), `repeated_cubic`) or `X = 4k²/h²` with `K = J²/4`
  ((10), `min_cubic`) — `OnCurve`.
* §5, **pole forcing** (`noPole`): if all six `L_{j,±} ≠ 0`, the weighted signed sum (4), which vanishes
  (`signed_zero`), equals `s t` times the nonzero value of the table (`K0_gauge`, `Kp_gauge`, `Kn_gauge`,
  `Kmin_gauge`, kernel-checked); contradiction.
* §6 (`lamProduct`): `h¹⁶ ∏_{j,±} L_{j,±} = poleNum₊ · poleNum₋`, and the factorizations of
  `CoverageQuarticPole` read off the candidates (`candidates_of_poleNum`); the candidates give the
  conclusion (`conclusion_of_candidates`, with the N2 window `CoverageTen.pStar_bounds`).

`nonzeroJ_signed`, and with the zero-`J` stratum `topStripClassification_signed : TopStripClassification`.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open StripMoments StripId Side

/-! ### The row swap `1 ↔ 2` -/

/-- The swap of rows `1, 2` permutes `(X, Y, Z) ↦ (Y, X, Z)` and keeps `J`. -/
theorem swap12_data (B : Mat3) :
    blockX (B.submatrix (Equiv.swap 1 2) id) = blockY B ∧
      blockY (B.submatrix (Equiv.swap 1 2) id) = blockX B ∧
      blockZ (B.submatrix (Equiv.swap 1 2) id) = blockZ B ∧
      blockJ (B.submatrix (Equiv.swap 1 2) id) = blockJ B := by
  have e1 : blockS (B.submatrix (Equiv.swap 1 2) id) = blockT B := by
    rw [blockS, gram3_submatrix]; rfl
  have e2 : blockT (B.submatrix (Equiv.swap 1 2) id) = blockS B := by
    rw [blockT, gram3_submatrix]; rfl
  have e3 : blockR (B.submatrix (Equiv.swap 1 2) id) = conj (blockR B) := by
    rw [blockR, gram3_submatrix, gram3_swap]; rfl
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [blockX, e1]; rfl
  · rw [blockY, e2]; rfl
  · rw [blockZ, e3, Complex.normSq_conj]; rfl
  · rw [blockJ, jS, e1, e2, e3, blockJ, jS, Complex.conj_conj]
    rw [show conj (blockT B) * blockR B * blockS B = conj (conj (blockS B) * conj (blockR B) * blockT B) by
      simp only [map_mul, Complex.conj_conj]; ring, Complex.conj_re]

theorem blockL_swap12 (B : Mat3) :
    blockL (B.submatrix (Equiv.swap 1 2) id) 0 = blockL B 0 ∧
      blockL (B.submatrix (Equiv.swap 1 2) id) 1 = blockL B 2 ∧
      blockL (B.submatrix (Equiv.swap 1 2) id) 2 = blockL B 1 := by
  obtain ⟨a1, a2, a3, a4⟩ := swap12_data B
  have pw : blockP (B.submatrix (Equiv.swap 1 2) id) = blockP B ∧
      blockW (B.submatrix (Equiv.swap 1 2) id) = blockW B :=
    ⟨by rw [blockP_eq, blockP_eq, a1, a2, a3]; ring, by simp only [blockW, a1, a2, a3]; ring⟩
  have hth := blockTheta_congr pw.1 a4 pw.2
  have hg := blockG_perm pw.1 a4
  refine ⟨?_, ?_, ?_⟩ <;> simp only [blockL, blockC_eq, blockMod, hth, hg] <;>
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons,
      Matrix.tail_cons, a1, a2, a3]

/-! ### The four curves (§4) -/

/-- (9): on `X = Y = u`, `Z = p − 2u` the `W`-equation factors. -/
theorem repeated_cubic (k u : ℝ) :
    Quartic.hk k ^ 3 * (u ^ 2 + 2 * u * (Quartic.pk k - 2 * u) - u ^ 2 * (Quartic.pk k - 2 * u) -
      Quartic.Wk k) =
      2 * (Quartic.hk k * u - 2) * (Quartic.hk k * u - (3 * k ^ 2 + 2 * k + 1)) *
        (Quartic.hk k * u - (3 * k ^ 2 - 2 * k + 1)) := by
  have hh := (hk_pos k).ne'
  simp only [Quartic.pk, Quartic.qk, Quartic.Wk]
  field_simp
  simp only [Quartic.hk]; ring

/-- (10): `4k²/h²` is a root of the modulus cubic at `K = K_min`. -/
theorem min_cubic (k : ℝ) :
    (4 * k ^ 2 / Quartic.hk k ^ 2) ^ 3 - Quartic.pk k * (4 * k ^ 2 / Quartic.hk k ^ 2) ^ 2 +
      (Quartic.Wk k + Quartic.Kmin k) * (4 * k ^ 2 / Quartic.hk k ^ 2) - Quartic.Kmin k = 0 := by
  have hh := (hk_pos k).ne'
  simp only [Quartic.pk, Quartic.qk, Quartic.Wk, Quartic.Kmin]
  field_simp
  simp only [Quartic.hk]; ring

/-- The labelled curves of §4, in the parameter `k`. -/
def OnCurveK (k : ℝ) (C : Mat3) : Prop :=
  (blockX C = blockY C ∧ (blockX C = 2 / Quartic.hk k ∨ blockX C = (3 * k ^ 2 + 2 * k + 1) / Quartic.hk k ∨
      blockX C = (3 * k ^ 2 - 2 * k + 1) / Quartic.hk k)) ∨
    (blockK C = blockJ C ^ 2 / 4 ∧ blockX C = 4 * k ^ 2 / Quartic.hk k ^ 2)

theorem curve_of_repeated {C : Mat3} {k : ℝ} (hp : blockP C = Quartic.pk k) (hW : blockW C = Quartic.Wk k)
    (hXY : blockX C = blockY C) :
    blockX C = 2 / Quartic.hk k ∨ blockX C = (3 * k ^ 2 + 2 * k + 1) / Quartic.hk k ∨
      blockX C = (3 * k ^ 2 - 2 * k + 1) / Quartic.hk k := by
  have hh := hk_pos k
  have hZ : blockZ C = Quartic.pk k - 2 * blockX C := by rw [← hp, blockP_eq, ← hXY]; ring
  have e := repeated_cubic k (blockX C)
  rw [← hZ, ← hW] at e
  have e0 : 2 * (Quartic.hk k * blockX C - 2) * (Quartic.hk k * blockX C - (3 * k ^ 2 + 2 * k + 1)) *
      (Quartic.hk k * blockX C - (3 * k ^ 2 - 2 * k + 1)) = 0 := by
    rw [← e, blockW, ← hXY]; ring
  rcases mul_eq_zero.1 e0 with h | h
  · rcases mul_eq_zero.1 h with h | h
    · left; rw [eq_div_iff hh.ne']; have := (mul_eq_zero.1 h).resolve_left two_ne_zero; linarith
    · right; left; rw [eq_div_iff hh.ne']; linarith
  · right; right; rw [eq_div_iff hh.ne']; linarith

/-! ### Pole forcing (§5) -/

theorem gauge_repeated {s t r : ℂ} (hs : s ≠ 0) (ht : t ≠ 0) {x : ℂ} (hx : x ≠ 0)
    (hX : (Complex.normSq s : ℂ) = x) (hY : (Complex.normSq t : ℂ) = x) :
    conj r * t / s = (jS s t r : ℂ) / x - r * s / t ∧
      (r * s / t) ^ 2 = (jS s t r : ℂ) / x * (r * s / t) - Complex.normSq r := by
  have hXc := cast_normSq' s
  have hYc := cast_normSq' t
  have hZc := cast_normSq' r
  have e1 : conj r * t / s * x = conj s * conj r * t := by rw [← hX, hXc]; field_simp <;> ring
  have e2 : r * s / t * x = s * r * conj t := by rw [← hY, hYc]; field_simp <;> ring
  have e3 : r * s / t * (conj r * t / s) = r * conj r := by field_simp <;> ring
  have h1 : conj r * t / s = (jS s t r : ℂ) / x - r * s / t := by
    rw [cast_jS, eq_sub_iff_add_eq, eq_div_iff hx]; linear_combination e1 + e2
  refine ⟨h1, ?_⟩
  rw [hZc]; linear_combination (r * s / t) * h1 - e3

theorem weighted_value_ne {v : ℝ} (hv : v ≠ 0) {s t : ℂ} (hs : s ≠ 0) (ht : t ≠ 0) :
    s * t * (v : ℂ) ≠ 0 := mul_ne_zero (mul_ne_zero hs ht) (by exact_mod_cast hv)

/-- **No pole-free strip on a labelled curve.** -/
theorem noPole_core {H : Mat6} (hH : Hadamard6.IsHadamard H)
    (hcrit : ∀ m : Fin 20, (Step2.sideSignature (triBlock H 0 m)).im = 0) (l : Fin 20)
    (hd : (triBlock H 0 l).det ≠ 0) (hd' : (triBlock H 0 (19 - l)).det ≠ 0)
    (hJ : 0 < blockJ (triBlock H 0 l)) (hL : ∀ j, blockL (triBlock H 0 l) j ≠ 0)
    (hL' : ∀ j, blockL (triBlock H 0 (19 - l)) j ≠ 0)
    (hc : OnCurveK (blockKpar (triBlock H 0 l)) (triBlock H 0 l)) : False := by
  have hIm := hcrit l
  have hIm' := hcrit (19 - l)
  obtain ⟨h1, h2, h3, h4⟩ := halves_reduction hH l hIm hIm' hd hd'
  obtain ⟨h5, h9, hJ2, hW⟩ := CoverageSum.nonzero_J_reduction _ _ _ h3 h4 hJ.ne' h1 h2
  obtain ⟨hk0, hp, hJk, hWk⟩ := param_of_reduction h5 h9 hJ2 hW hJ
  have hw := (signed_zero hH hcrit).2
  have hS : weightedPoly (momentOf (xsH H) (ysH H)) = weightedPoly (fun p =>
      (lamData (blockS (triBlock H 0 l)) (blockT (triBlock H 0 l)) (blockR (triBlock H 0 l))
        (blockTheta (triBlock H 0 l)) (blockG (triBlock H 0 l))).mom p +
      (lamData (-blockS (triBlock H 0 l)) (-blockT (triBlock H 0 l)) (-blockR (triBlock H 0 l))
        (blockTheta (triBlock H 0 (19 - l))) (blockG (triBlock H 0 (19 - l)))).mom p) := by
    apply weightedPoly_congr
    intro p hp
    rw [← blockS_compl hH, ← blockT_compl hH, ← blockR_compl hH, ← block_moment hH l hIm hd hL hp,
      ← block_moment hH (19 - l) hIm' hd' hL' hp, momentOf]
    exact (sum_tri_compl l (fun u => xsH H u ^ p.1 * ysH H u ^ p.2)).symm
  have hLA0 := fun j => lamL_block (triBlock H 0 l) j
  have hLB0 := fun j => lamL_block (triBlock H 0 (19 - l)) j
  have eS := blockS_compl hH 0 l
  have eT := blockT_compl hH 0 l
  have eR := blockR_compl hH 0 l
  have hp' := blockP_compl hH 0 l
  have hJ' := blockJ_compl hH 0 l
  have hW' := blockW_compl hH 0 l
  rw [eS, eT, eR] at hLB0
  rw [hS] at hw
  generalize triBlock H 0 (19 - l) = B' at *
  generalize triBlock H 0 l = B at *
  have hkp : blockKpar B = 2 * blockJ B / (9 - blockP B) ^ 2 := rfl
  rw [hkp] at hc
  generalize 2 * blockJ B / (9 - blockP B) ^ 2 = k at *
  obtain ⟨hg, hz⟩ := theta_param (σ := 1) (g := blockG B) (χ := blockChi B) hk0 (Or.inl rfl)
    (by rw [blockG_eq, hp, ← hJk]; ring) (by rw [blockChi_eq, hp, ← hJk, hWk]; ring)
  obtain ⟨hg', hz'⟩ := theta_param (σ := -1) (g := blockG B') (χ := blockChi B') hk0 (Or.inr rfl)
    (by rw [blockG_eq, hp', hp, hJ', hJk]; ring) (by rw [blockChi_eq, hp', hp, hJ', hJk, hW', hWk]; ring)
  have hz2 : blockTheta B = Quartic.zS 1 k := hz
  have hz2' : blockTheta B' = Quartic.zS (-1) k := hz'
  rw [hz2, hg, hz2', hg'] at hw
  rw [hz2, hg] at hLA0
  rw [hz2', hg'] at hLB0
  have hLA : ∀ j, lamL (blockS B) (blockT B) (blockR B) (Quartic.zS 1 k) (Quartic.gS 1 k) j ≠ 0 :=
    fun j => by rw [hLA0]; exact hL j
  have hLB : ∀ j, lamL (-blockS B) (-blockT B) (-blockR B) (Quartic.zS (-1) k) (Quartic.gS (-1) k) j ≠ 0 :=
    fun j => by rw [hLB0]; exact hL' j
  -- `s, t ≠ 0`
  have hK : 0 < blockK B := by nlinarith [blockJ_sq_le B, sq_pos_of_pos hJ]
  have hX0 : 0 < blockX B := by
    rcases (Complex.normSq_nonneg (blockS B)).lt_or_eq with h | h
    · exact h
    · exfalso; simp only [blockK] at hK; rw [show blockX B = 0 from h.symm] at hK; simp at hK
  have hY0 : 0 < blockY B := by
    rcases (Complex.normSq_nonneg (blockT B)).lt_or_eq with h | h
    · exact h
    · exfalso; simp only [blockK] at hK; rw [show blockY B = 0 from h.symm] at hK; simp at hK
  have hs := ne_zero_of_normSq_pos hX0
  have ht := ne_zero_of_normSq_pos hY0
  rw [halves_scaled_w _ _ _ _ _ _ _ hs ht hLA hLB] at hw
  have hW0 := (mul_eq_zero.1 hw).resolve_left (mul_ne_zero hs ht)
  simp only [zS_cast] at hW0
  -- the six denominators in complex form
  have eLA : ∀ j, ((lamL (blockS B) (blockT B) (blockR B) (Quartic.zS 1 k) (Quartic.gS 1 k) j : ℝ) : ℂ) =
      gC 1 k + (9 - ![((blockZ B : ℝ) : ℂ), ((blockY B : ℝ) : ℂ), ((blockX B : ℝ) : ℂ)] j) * zC 1 k := by
    intro j; rw [lamL_cast, gS_cast, zS_cast]; rfl
  have eLB : ∀ j, ((lamL (-blockS B) (-blockT B) (-blockR B) (Quartic.zS (-1) k) (Quartic.gS (-1) k) j : ℝ) :
      ℂ) = gC (-1) k + (9 - ![((blockZ B : ℝ) : ℂ), ((blockY B : ℝ) : ℂ), ((blockX B : ℝ) : ℂ)] j) *
        zC (-1) k := by
    intro j; rw [lamL_cast, gS_cast, zS_cast]; simp only [Complex.normSq_neg]; rfl
  have nA : ∀ j, ((lamL (blockS B) (blockT B) (blockR B) (Quartic.zS 1 k) (Quartic.gS 1 k) j : ℝ) : ℂ) ≠ 0 :=
    fun j => by exact_mod_cast hLA j
  have nB : ∀ j, ((lamL (-blockS B) (-blockT B) (-blockR B) (Quartic.zS (-1) k) (Quartic.gS (-1) k) j : ℝ) :
      ℂ) ≠ 0 := fun j => by exact_mod_cast hLB j
  have hh : (1 + (k : ℂ) ^ 2) ≠ 0 := by exact_mod_cast (hk_pos k).ne'
  have hkc : (k : ℂ) ≠ 0 := by exact_mod_cast hk0.ne'
  have hJc : ((jS (blockS B) (blockT B) (blockR B) : ℝ) : ℂ) = 8 * k / (1 + (k : ℂ) ^ 2) ^ 2 := by
    rw [show jS (blockS B) (blockT B) (blockR B) = blockJ B from rfl, hJk, Quartic.Jk, Quartic.hk]; push_cast
    ring
  have hpc : ((blockX B : ℝ) : ℂ) + (blockY B : ℂ) + (blockZ B : ℂ) = 9 - 4 / (1 + (k : ℂ) ^ 2) := by
    have := congrArg (fun x : ℝ => (x : ℂ)) hp
    simp only [blockP_eq, Quartic.pk, Quartic.qk, Quartic.hk] at this; push_cast at this; exact this
  rcases hc with ⟨hXY, hx | hx | hx⟩ | ⟨hKJ, hx⟩
  · -- `K₀`
    have eX : ((blockX B : ℝ) : ℂ) = SignedK0.Xc k := by rw [hx, SignedK0.Xc, Quartic.hk]; push_cast; ring
    have eY : ((blockY B : ℝ) : ℂ) = SignedK0.Xc k := by rw [← hXY, eX]
    have eZ : ((blockZ B : ℝ) : ℂ) = SignedK0.Zc k := by
      rw [SignedK0.Zc]; rw [eX, eY, SignedK0.Xc] at hpc; field_simp at hpc ⊢; linear_combination hpc
    obtain ⟨hR, hrel⟩ := gauge_repeated (r := blockR B) hs ht (x := SignedK0.Xc k)
      (by simp [SignedK0.Xc, hh]) eX eY
    have hJx : ((jS (blockS B) (blockT B) (blockR B) : ℝ) : ℂ) / SignedK0.Xc k = 4 * k / (1 + (k : ℂ) ^ 2) := by
      rw [hJc, SignedK0.Xc]; field_simp <;> ring
    rw [hJx] at hR hrel
    rw [show ((Complex.normSq (blockR B) : ℝ) : ℂ) = SignedK0.Zc k from eZ] at hrel
    rw [show ((Complex.normSq (blockS B) : ℝ) : ℂ) = SignedK0.Xc k from eX,
      show ((Complex.normSq (blockT B) : ℝ) : ℂ) = SignedK0.Xc k from eY,
      show ((Complex.normSq (blockR B) : ℝ) : ℂ) = SignedK0.Zc k from eZ, hR] at hW0
    have e := SignedK0.K0_gauge hk0 rfl hrel
      (LA := fun j => ((lamL (blockS B) (blockT B) (blockR B) (Quartic.zS 1 k) (Quartic.gS 1 k) j : ℝ) : ℂ))
      (LB := fun j => ((lamL (-blockS B) (-blockT B) (-blockR B) (Quartic.zS (-1) k) (Quartic.gS (-1) k) j :
        ℝ) : ℂ))
      (fun j => by rw [eLA, eX, eY, eZ]) (fun j => by rw [eLB, eX, eY, eZ]) nA nB
    have e0 := e.symm.trans hW0
    have : (0 : ℝ) < 32 * k ^ 2 * (3 * k ^ 4 + 2 * k ^ 2 + 3) / (1 + k ^ 2) ^ 3 := by positivity
    exact this.ne' (by exact_mod_cast e0)
  · -- `K₊`
    have eX : ((blockX B : ℝ) : ℂ) = SignedKp.Xc k := by rw [hx, SignedKp.Xc, Quartic.hk]; push_cast; ring
    have eY : ((blockY B : ℝ) : ℂ) = SignedKp.Xc k := by rw [← hXY, eX]
    have eZ : ((blockZ B : ℝ) : ℂ) = SignedKp.Zc k := by
      rw [SignedKp.Zc]; rw [eX, eY, SignedKp.Xc] at hpc; field_simp at hpc ⊢; linear_combination hpc
    have he : (3 * (k : ℂ) ^ 2 + 2 * k + 1) ≠ 0 := by
      exact_mod_cast (show (3 * k ^ 2 + 2 * k + 1 : ℝ) ≠ 0 by positivity)
    obtain ⟨hR, hrel⟩ := gauge_repeated (r := blockR B) hs ht (x := SignedKp.Xc k)
      (by simp [SignedKp.Xc, hh, he]) eX eY
    have hJx : ((jS (blockS B) (blockT B) (blockR B) : ℝ) : ℂ) / SignedKp.Xc k =
        8 * k / ((1 + (k : ℂ) ^ 2) * (3 * k ^ 2 + 2 * k + 1)) := by
      rw [hJc, SignedKp.Xc]; field_simp <;> ring
    rw [hJx] at hR hrel
    rw [show ((Complex.normSq (blockR B) : ℝ) : ℂ) = SignedKp.Zc k from eZ] at hrel
    rw [show ((Complex.normSq (blockS B) : ℝ) : ℂ) = SignedKp.Xc k from eX,
      show ((Complex.normSq (blockT B) : ℝ) : ℂ) = SignedKp.Xc k from eY,
      show ((Complex.normSq (blockR B) : ℝ) : ℂ) = SignedKp.Zc k from eZ, hR] at hW0
    have e := SignedKp.Kp_gauge hk0 rfl hrel
      (LA := fun j => ((lamL (blockS B) (blockT B) (blockR B) (Quartic.zS 1 k) (Quartic.gS 1 k) j : ℝ) : ℂ))
      (LB := fun j => ((lamL (-blockS B) (-blockT B) (-blockR B) (Quartic.zS (-1) k) (Quartic.gS (-1) k) j :
        ℝ) : ℂ))
      (fun j => by rw [eLA, eX, eY, eZ]) (fun j => by rw [eLB, eX, eY, eZ]) nA nB
    have e0 := e.symm.trans hW0
    have : (0 : ℝ) < 64 * k ^ 2 * (3 * k ^ 2 + 1) ^ 2 / ((1 + k ^ 2) ^ 4 * (3 * k ^ 2 + 2 * k + 1)) := by
      positivity
    exact this.ne' (by
      have : ((64 * k ^ 2 * (3 * k ^ 2 + 1) ^ 2 / ((1 + k ^ 2) ^ 4 * (3 * k ^ 2 + 2 * k + 1)) : ℝ) : ℂ) = 0 := by
        push_cast; linear_combination -e0
      exact_mod_cast this)
  · -- `K₋`
    have eX : ((blockX B : ℝ) : ℂ) = SignedKn.Xc k := by rw [hx, SignedKn.Xc, Quartic.hk]; push_cast; ring
    have eY : ((blockY B : ℝ) : ℂ) = SignedKn.Xc k := by rw [← hXY, eX]
    have eZ : ((blockZ B : ℝ) : ℂ) = SignedKn.Zc k := by
      rw [SignedKn.Zc]; rw [eX, eY, SignedKn.Xc] at hpc; field_simp at hpc ⊢; linear_combination hpc
    have he : (3 * (k : ℂ) ^ 2 - 2 * k + 1) ≠ 0 := by
      exact_mod_cast (show (3 * k ^ 2 - 2 * k + 1 : ℝ) ≠ 0 by nlinarith [sq_nonneg (k - 1 / 3)])
    obtain ⟨hR, hrel⟩ := gauge_repeated (r := blockR B) hs ht (x := SignedKn.Xc k)
      (by simp [SignedKn.Xc, hh, he]) eX eY
    have hJx : ((jS (blockS B) (blockT B) (blockR B) : ℝ) : ℂ) / SignedKn.Xc k =
        8 * k / ((1 + (k : ℂ) ^ 2) * (3 * k ^ 2 - 2 * k + 1)) := by
      rw [hJc, SignedKn.Xc]; field_simp <;> ring
    rw [hJx] at hR hrel
    rw [show ((Complex.normSq (blockR B) : ℝ) : ℂ) = SignedKn.Zc k from eZ] at hrel
    rw [show ((Complex.normSq (blockS B) : ℝ) : ℂ) = SignedKn.Xc k from eX,
      show ((Complex.normSq (blockT B) : ℝ) : ℂ) = SignedKn.Xc k from eY,
      show ((Complex.normSq (blockR B) : ℝ) : ℂ) = SignedKn.Zc k from eZ, hR] at hW0
    have e := SignedKn.Kn_gauge hk0 rfl hrel
      (LA := fun j => ((lamL (blockS B) (blockT B) (blockR B) (Quartic.zS 1 k) (Quartic.gS 1 k) j : ℝ) : ℂ))
      (LB := fun j => ((lamL (-blockS B) (-blockT B) (-blockR B) (Quartic.zS (-1) k) (Quartic.gS (-1) k) j :
        ℝ) : ℂ))
      (fun j => by rw [eLA, eX, eY, eZ]) (fun j => by rw [eLB, eX, eY, eZ]) nA nB
    have e0 := e.symm.trans hW0
    have hpos : (0 : ℝ) < 3 * k ^ 2 - 2 * k + 1 := by nlinarith [sq_nonneg (k - 1 / 3)]
    have : (0 : ℝ) < 64 * k ^ 2 * (3 * k ^ 2 + 1) ^ 2 / ((1 + k ^ 2) ^ 4 * (3 * k ^ 2 - 2 * k + 1)) := by
      positivity
    exact this.ne' (by
      have : ((64 * k ^ 2 * (3 * k ^ 2 + 1) ^ 2 / ((1 + k ^ 2) ^ 4 * (3 * k ^ 2 - 2 * k + 1)) : ℝ) : ℂ) = 0 := by
        push_cast; linear_combination -e0
      exact_mod_cast this)
  · -- `K_min`
    set s := blockS B
    set t := blockT B
    set r := blockR B
    -- `w = s̄ r̄ t` is real, `= J/2`
    have hwim : (blockWc B).im = 0 := by
      have e1 := blockK_eq_normSq B
      rw [Complex.normSq_apply, hKJ, blockJ_eq] at e1
      have h2 : (blockWc B).im * (blockWc B).im = 0 := by linear_combination -e1
      exact mul_self_eq_zero.1 h2
    have hw2 : conj s * conj r * t = ((4 * k / (1 + k ^ 2) ^ 2 : ℝ) : ℂ) := by
      apply Complex.ext
      · rw [Complex.ofReal_re, show conj s * conj r * t = blockWc B from rfl]
        have : (blockWc B).re = blockJ B / 2 := by rw [blockJ_eq]; ring
        rw [this, hJk, Quartic.Jk, Quartic.hk]; ring
      · rw [Complex.ofReal_im, show conj s * conj r * t = blockWc B from rfl, hwim]
    have hw2' : s * r * conj t = ((4 * k / (1 + k ^ 2) ^ 2 : ℝ) : ℂ) := by
      have := congrArg conj hw2
      rwa [map_mul, map_mul, Complex.conj_conj, Complex.conj_conj, Complex.conj_ofReal] at this
    have eX : ((blockX B : ℝ) : ℂ) = SignedKmin.Xc k := by
      rw [hx, SignedKmin.Xc, Quartic.hk]; push_cast; ring
    have hXc : ((blockX B : ℝ) : ℂ) = s * conj s := cast_normSq' s
    have hYc : ((blockY B : ℝ) : ℂ) = t * conj t := cast_normSq' t
    have hZc : ((blockZ B : ℝ) : ℂ) = r * conj r := cast_normSq' r
    -- `YZ = 4/h²` from `K = K_min`
    have hKc : ((blockX B : ℝ) : ℂ) * (blockY B : ℂ) * (blockZ B : ℂ) = 16 * k ^ 2 / (1 + (k : ℂ) ^ 2) ^ 4 := by
      have : blockK B = Quartic.Kmin k := by rw [hKJ, hJk, kmin_eq]
      have := congrArg (fun x : ℝ => (x : ℂ)) this
      simp only [blockK, Quartic.Kmin, Quartic.hk] at this; push_cast at this; exact this
    have hprod : ((blockY B : ℝ) : ℂ) * (blockZ B : ℂ) = 4 / (1 + (k : ℂ) ^ 2) ^ 2 := by
      rw [eX, SignedKmin.Xc] at hKc
      have h4 : (4 * (k : ℂ) ^ 2 / (1 + (k : ℂ) ^ 2) ^ 2) ≠ 0 := by simp [hkc, hh]
      apply mul_left_cancel₀ h4
      rw [← mul_assoc, hKc]; field_simp <;> ring
    have hsum : ((blockY B : ℝ) : ℂ) + (blockZ B : ℂ) = (9 * k ^ 4 + 10 * k ^ 2 + 5) / (1 + (k : ℂ) ^ 2) ^ 2 := by
      rw [eX, SignedKmin.Xc] at hpc; field_simp at hpc ⊢; linear_combination hpc
    have hY0' : ((blockY B : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hY0.ne'
    -- the gauge values `r s/t = kZ`, `r̄ t/s = 1/k`
    have hζ : r * s / t = k * ((blockZ B : ℝ) : ℂ) := by
      have e1 : r * s / t * (blockY B : ℂ) = ((4 * k / (1 + k ^ 2) ^ 2 : ℝ) : ℂ) := by
        rw [hYc, ← hw2']; field_simp <;> ring
      apply mul_right_cancel₀ hY0'
      rw [e1, mul_assoc, mul_comm (blockZ B : ℂ), hprod]; push_cast; ring
    have hR : conj r * t / s = 1 / k := by
      have hX0' : ((blockX B : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hX0.ne'
      have e1 : conj r * t / s * (blockX B : ℂ) = ((4 * k / (1 + k ^ 2) ^ 2 : ℝ) : ℂ) := by
        rw [hXc, ← hw2]; field_simp <;> ring
      apply mul_right_cancel₀ hX0'
      rw [e1, eX, SignedKmin.Xc]; push_cast; field_simp <;> ring
    rw [show ((Complex.normSq s : ℝ) : ℂ) = SignedKmin.Xc k from eX, hζ, hR] at hW0
    have e := SignedKmin.Kmin_gauge hk0 hsum hprod
      (LA := fun j => ((lamL s t r (Quartic.zS 1 k) (Quartic.gS 1 k) j : ℝ) : ℂ))
      (LB := fun j => ((lamL (-s) (-t) (-r) (Quartic.zS (-1) k) (Quartic.gS (-1) k) j : ℝ) : ℂ))
      (fun j => by rw [eLA, eX]) (fun j => by rw [eLB, eX]) nA nB
    have e0 := e.symm.trans hW0
    have hZn : 0 ≤ blockZ B := Complex.normSq_nonneg _
    have : (0 : ℝ) < 64 * k ^ 2 * (1 + k ^ 2 * blockZ B) / ((1 + k ^ 2) * (3 * k ^ 2 + 1)) := by positivity
    exact this.ne' (by
      have : ((64 * k ^ 2 * (1 + k ^ 2 * blockZ B) / ((1 + k ^ 2) * (3 * k ^ 2 + 1)) : ℝ) : ℂ) = 0 := by
        push_cast; linear_combination -e0
      exact_mod_cast this)

/-- The labelled-curve statement through a row relabelling `π` of the top strip. -/
theorem noPole_via {H : Mat6} (hH : Hadamard6.IsHadamard H)
    (hcrit : ∀ m : Fin 20, (Step2.sideSignature (triBlock H 0 m)).im = 0) (l : Fin 20)
    (π : Equiv.Perm (Fin 3)) (hd : (triBlock H 0 l).det ≠ 0) (hd' : (triBlock H 0 (19 - l)).det ≠ 0)
    (hJ : 0 < blockJ ((triBlock H 0 l).submatrix π id))
    (hL : ∀ j, blockL ((triBlock H 0 l).submatrix π id) j ≠ 0)
    (hL' : ∀ j, blockL ((triBlock H 0 (19 - l)).submatrix π id) j ≠ 0)
    (hc : OnCurveK (blockKpar ((triBlock H 0 l).submatrix π id)) ((triBlock H 0 l).submatrix π id)) :
    False := by
  have eB := triBlock_rowperm H π
  exact noPole_core (isHadamard_rowperm hH π) (fun m => by rw [eB, sig_submatrix]; exact hcrit m) l
    (by rw [eB]; exact det_submatrix_ne hd π) (by rw [eB]; exact det_submatrix_ne hd' π)
    (by rw [eB]; exact hJ) (by rw [eB]; exact hL) (by rw [eB]; exact hL') (by rw [eB]; exact hc)

/-- **Pole forcing** (return K): at a corner with `J > 0` of a strip whose top corners are all
critical, some moment denominator `L_{j,±}` vanishes. -/
theorem noPole {H : Mat6} (hH : Hadamard6.IsHadamard H)
    (hcrit : ∀ m : Fin 20, (Step2.sideSignature (triBlock H 0 m)).im = 0) (l : Fin 20)
    (hd : (triBlock H 0 l).det ≠ 0) (hd' : (triBlock H 0 (19 - l)).det ≠ 0)
    (hJ : 0 < blockJ (triBlock H 0 l)) (hL : ∀ j, blockL (triBlock H 0 l) j ≠ 0)
    (hL' : ∀ j, blockL (triBlock H 0 (19 - l)) j ≠ 0) : False := by
  have hb := signed_boundary hH hcrit l hd hd' hJ
  obtain ⟨h1, h2, h3, h4⟩ := halves_reduction hH l (hcrit l) (hcrit (19 - l)) hd hd'
  obtain ⟨h5, h9, hJ2, hW⟩ := CoverageSum.nonzero_J_reduction _ _ _ h3 h4 hJ.ne' h1 h2
  obtain ⟨hk0, hp, hJk, hWk⟩ := param_of_reduction h5 h9 hJ2 hW hJ
  set B := triBlock H 0 l with hBdef
  set B' := triBlock H 0 (19 - l) with hB'def
  have hkp : blockKpar B = 2 * blockJ B / (9 - blockP B) ^ 2 := rfl
  set k := 2 * blockJ B / (9 - blockP B) ^ 2 with hkdef
  -- the three relabellings
  obtain ⟨a1, a2, a3, a4⟩ := swap01_data B
  obtain ⟨b1, b2, b3, b4⟩ := swap02_data B
  obtain ⟨c1, c2, c3, c4⟩ := swap12_data B
  have pa := blockP_of_perm (B := B) (C := B.submatrix (Equiv.swap 0 1) id) (Or.inl ⟨a1, a2, a3⟩)
  have pb := blockP_of_perm (B := B) (C := B.submatrix (Equiv.swap 0 2) id) (Or.inr (Or.inl ⟨b1, b2, b3⟩))
  have pc : blockP (B.submatrix (Equiv.swap 1 2) id) = blockP B ∧
      blockW (B.submatrix (Equiv.swap 1 2) id) = blockW B :=
    ⟨by rw [blockP_eq, blockP_eq, c1, c2, c3]; ring, by simp only [blockW, c1, c2, c3]; ring⟩
  have ka : blockKpar (B.submatrix (Equiv.swap 0 1) id) = k := by rw [blockKpar, a4, pa.1]
  have kb : blockKpar (B.submatrix (Equiv.swap 0 2) id) = k := by rw [blockKpar, b4, pb.1]
  have kc : blockKpar (B.submatrix (Equiv.swap 1 2) id) = k := by rw [blockKpar, c4, pc.1]
  obtain ⟨la0, la1, la2⟩ := blockL_swap01 B
  obtain ⟨la0', la1', la2'⟩ := blockL_swap01 B'
  obtain ⟨lb0, lb1, lb2⟩ := blockL_swap02 B
  obtain ⟨lb0', lb1', lb2'⟩ := blockL_swap02 B'
  obtain ⟨lc0, lc1, lc2⟩ := blockL_swap12 B
  obtain ⟨lc0', lc1', lc2'⟩ := blockL_swap12 B'
  have hLa : ∀ j, blockL (B.submatrix (Equiv.swap 0 1) id) j ≠ 0 := by
    intro j; fin_cases j
    · rw [show ((⟨0, by decide⟩ : Fin 3)) = 0 from rfl, la0]; exact hL 1
    · rw [show ((⟨1, by decide⟩ : Fin 3)) = 1 from rfl, la1]; exact hL 0
    · rw [show ((⟨2, by decide⟩ : Fin 3)) = 2 from rfl, la2]; exact hL 2
  have hLa' : ∀ j, blockL (B'.submatrix (Equiv.swap 0 1) id) j ≠ 0 := by
    intro j; fin_cases j
    · rw [show ((⟨0, by decide⟩ : Fin 3)) = 0 from rfl, la0']; exact hL' 1
    · rw [show ((⟨1, by decide⟩ : Fin 3)) = 1 from rfl, la1']; exact hL' 0
    · rw [show ((⟨2, by decide⟩ : Fin 3)) = 2 from rfl, la2']; exact hL' 2
  have hLb : ∀ j, blockL (B.submatrix (Equiv.swap 0 2) id) j ≠ 0 := by
    intro j; fin_cases j
    · rw [show ((⟨0, by decide⟩ : Fin 3)) = 0 from rfl, lb0]; exact hL 2
    · rw [show ((⟨1, by decide⟩ : Fin 3)) = 1 from rfl, lb1]; exact hL 1
    · rw [show ((⟨2, by decide⟩ : Fin 3)) = 2 from rfl, lb2]; exact hL 0
  have hLb' : ∀ j, blockL (B'.submatrix (Equiv.swap 0 2) id) j ≠ 0 := by
    intro j; fin_cases j
    · rw [show ((⟨0, by decide⟩ : Fin 3)) = 0 from rfl, lb0']; exact hL' 2
    · rw [show ((⟨1, by decide⟩ : Fin 3)) = 1 from rfl, lb1']; exact hL' 1
    · rw [show ((⟨2, by decide⟩ : Fin 3)) = 2 from rfl, lb2']; exact hL' 0
  have hLc : ∀ j, blockL (B.submatrix (Equiv.swap 1 2) id) j ≠ 0 := by
    intro j; fin_cases j
    · rw [show ((⟨0, by decide⟩ : Fin 3)) = 0 from rfl, lc0]; exact hL 0
    · rw [show ((⟨1, by decide⟩ : Fin 3)) = 1 from rfl, lc1]; exact hL 2
    · rw [show ((⟨2, by decide⟩ : Fin 3)) = 2 from rfl, lc2]; exact hL 1
  have hLc' : ∀ j, blockL (B'.submatrix (Equiv.swap 1 2) id) j ≠ 0 := by
    intro j; fin_cases j
    · rw [show ((⟨0, by decide⟩ : Fin 3)) = 0 from rfl, lc0']; exact hL' 0
    · rw [show ((⟨1, by decide⟩ : Fin 3)) = 1 from rfl, lc1']; exact hL' 2
    · rw [show ((⟨2, by decide⟩ : Fin 3)) = 2 from rfl, lc2']; exact hL' 1
  have e1 : B.submatrix (⇑(1 : Equiv.Perm (Fin 3))) id = B := by ext; rfl
  have e1' : B'.submatrix (⇑(1 : Equiv.Perm (Fin 3))) id = B' := by ext; rfl
  rcases hb with hw | hrep
  · -- `Im w = 0`: `K = J²/4` and one modulus is `4k²/h²` ((10))
    have hKJ := blockK_of_im hw
    have hroot : (4 * k ^ 2 / Quartic.hk k ^ 2 - blockX B) * (4 * k ^ 2 / Quartic.hk k ^ 2 - blockY B) *
        (4 * k ^ 2 / Quartic.hk k ^ 2 - blockZ B) = 0 := by
      rw [← modulus_cubic, hp, hWk, hKJ, hJk, ← kmin_eq]; exact min_cubic k
    rcases mul_eq_zero.1 hroot with h | h
    · rcases mul_eq_zero.1 h with h | h
      · refine noPole_via hH hcrit l 1 hd hd' (by rw [e1]; exact hJ) (by rw [e1]; exact hL)
          (by rw [e1']; exact hL') ?_
        rw [e1, hkp]; right; exact ⟨hKJ, by linarith⟩
      · refine noPole_via hH hcrit l (Equiv.swap 1 2) hd hd' (by rw [c4]; exact hJ) hLc hLc' ?_
        rw [kc]; right
        exact ⟨by simp only [blockK]; rw [c1, c2, c3, c4, ← hKJ]; simp only [blockK]; ring,
          by rw [c1]; linarith⟩
    · refine noPole_via hH hcrit l (Equiv.swap 0 2) hd hd' (by rw [b4]; exact hJ) hLb hLb' ?_
      rw [kb]; right
      exact ⟨by simp only [blockK]; rw [b1, b2, b3, b4, ← hKJ]; simp only [blockK]; ring,
        by rw [b1]; linarith⟩
  · -- a repeated modulus ((9))
    rcases mul_eq_zero.1 hrep with h | h
    · rcases mul_eq_zero.1 h with h | h
      · have hXY : blockX B = blockY B := by linarith
        refine noPole_via hH hcrit l 1 hd hd' (by rw [e1]; exact hJ) (by rw [e1]; exact hL)
          (by rw [e1']; exact hL') ?_
        rw [e1, hkp]; left; exact ⟨hXY, curve_of_repeated hp hWk hXY⟩
      · -- `Y = Z`: relabel rows `0 ↔ 2`, `(X, Y, Z) ↦ (Z, Y, X)`
        have hXY : blockX (B.submatrix (Equiv.swap 0 2) id) = blockY (B.submatrix (Equiv.swap 0 2) id) := by
          rw [b1, b2]; linarith
        refine noPole_via hH hcrit l (Equiv.swap 0 2) hd hd' (by rw [b4]; exact hJ) hLb hLb' ?_
        rw [kb]; left
        exact ⟨hXY, curve_of_repeated (by rw [pb.1, hp]) (by rw [pb.2, hWk]) hXY⟩
    · -- `Z = X`: relabel rows `0 ↔ 1`, `(X, Y, Z) ↦ (X, Z, Y)`
      have hXY : blockX (B.submatrix (Equiv.swap 0 1) id) = blockY (B.submatrix (Equiv.swap 0 1) id) := by
        rw [a1, a2]; linarith
      refine noPole_via hH hcrit l (Equiv.swap 0 1) hd hd' (by rw [a4]; exact hJ) hLa hLa' ?_
      rw [ka]; left
      exact ⟨hXY, curve_of_repeated (by rw [pa.1, hp]) (by rw [pa.2, hWk]) hXY⟩

/-! ### The product of the six denominators (§6) -/

/-- `h⁸ ∏_j L_{j,σ} = poleNum σ` (Vieta, with the modulus cubic's coefficients `p, W + K, K`). -/
theorem prodL_eq (B : Mat3) (σ k : ℝ) (hp : blockP B = Quartic.pk k) (hW : blockW B = Quartic.Wk k) :
    lf σ k (blockZ B) * lf σ k (blockY B) * lf σ k (blockX B) * Quartic.hk k ^ 8 =
      Quartic.poleNum σ k (blockK B) := by
  rw [Quartic.poleNum, ← hp, ← hW, blockP_eq]
  simp only [lf, blockW, blockK, Quartic.hk]
  ring

/-- **§6**: `h¹⁶ ∏_{j,±} L_{j,±} = poleNum₊ · poleNum₋`. -/
theorem lamProduct (B : Mat3) (k : ℝ) (hp : blockP B = Quartic.pk k) (hW : blockW B = Quartic.Wk k) :
    (lf 1 k (blockZ B) * lf 1 k (blockY B) * lf 1 k (blockX B)) *
        (lf (-1) k (blockZ B) * lf (-1) k (blockY B) * lf (-1) k (blockX B)) * Quartic.hk k ^ 16 =
      Quartic.poleNum 1 k (blockK B) * Quartic.poleNum (-1) k (blockK B) := by
  rw [← prodL_eq B 1 k hp hW, ← prodL_eq B (-1) k hp hW]; ring

/-! ### The nonzero-`J` stratum -/

/-- **The nonzero-`J` stratum with `J > 0`**, by the signed sums. -/
theorem nonzeroJ_pos_signed {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H)
    (hinv : AllMinorsInvertible H) (l : Fin 20) (hJ : 0 < blockJ (triBlock H 0 l)) :
    ((17 : ℝ) / 3 < blockP (triBlock H 0 l) ∧ blockP (triBlock H 0 l) < (29 : ℝ) / 5) ∨
      EquiEndpoint (triBlock H 0 l) ∨ P7Endpoint (triBlock H 0 l) := by
  have hcrit : ∀ m : Fin 20, (Step2.sideSignature (triBlock H 0 m)).im = 0 := hc.triBlock_im 0
  have hd := triBlock_det_ne hinv 0 l
  have hd' := triBlock_det_ne hinv 0 (19 - l)
  have hb := signed_boundary hH hcrit l hd hd' hJ
  obtain ⟨h5, h9, hJ2, hW⟩ := criticalCorner_nonzeroJ hH hc 0 l hd hd' hJ.ne'
  obtain ⟨hk0, hp, hJk, hWk⟩ := param_of_reduction h5 h9 hJ2 hW hJ
  -- poles: some `L` vanishes
  have hpole : (∃ j, blockL (triBlock H 0 l) j = 0) ∨ ∃ j, blockL (triBlock H 0 (19 - l)) j = 0 := by
    by_contra hno
    simp only [not_or, not_exists] at hno
    exact noPole hH hcrit l hd hd' hJ hno.1 hno.2
  set B := triBlock H 0 l with hBdef
  set B' := triBlock H 0 (19 - l) with hB'def
  set k := 2 * blockJ B / (9 - blockP B) ^ 2 with hkdef
  have hp' : blockP B' = Quartic.pk k := by rw [hB'def, blockP_compl hH]; exact hp
  have hW' : blockW B' = Quartic.Wk k := by rw [hB'def, blockW_compl hH]; exact hWk
  have hJ' : blockJ B' = -Quartic.Jk k := by rw [hB'def, blockJ_compl hH, ← hJk]
  obtain ⟨hg, hz⟩ := theta_param (σ := 1) (g := blockG B) (χ := blockChi B) hk0 (Or.inl rfl)
    (by rw [blockG_eq, hp, ← hJk]; ring) (by rw [blockChi_eq, hp, ← hJk, hWk]; ring)
  obtain ⟨hg', hz'⟩ := theta_param (σ := -1) (g := blockG B') (χ := blockChi B') hk0 (Or.inr rfl)
    (by rw [blockG_eq, hp', hJ']; ring) (by rw [blockChi_eq, hp', hJ', hW']; ring)
  have eL : ∀ j, blockL B j = lf 1 k (blockMod B j) := by
    intro j; rw [blockL, show blockTheta B = Quartic.zS 1 k from hz, hg, blockC_eq]; rfl
  have eL' : ∀ j, blockL B' j = lf (-1) k (blockMod B j) := by
    intro j; rw [blockL, show blockTheta B' = Quartic.zS (-1) k from hz', hg', blockC_eq, hB'def,
      blockMod_compl hH]; rfl
  -- the product of the six denominators vanishes
  have h0 : (lf 1 k (blockZ B) * lf 1 k (blockY B) * lf 1 k (blockX B)) *
      (lf (-1) k (blockZ B) * lf (-1) k (blockY B) * lf (-1) k (blockX B)) = 0 := by
    rcases hpole with ⟨j, hj⟩ | ⟨j, hj⟩
    · rw [eL] at hj
      fin_cases j <;> simp only [Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk] at hj <;>
        [rw [show blockMod B 0 = blockZ B from rfl] at hj; rw [show blockMod B 1 = blockY B from rfl] at hj;
          rw [show blockMod B 2 = blockX B from rfl] at hj] <;> rw [hj] <;> ring
    · rw [eL'] at hj
      fin_cases j <;> simp only [Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk] at hj <;>
        [rw [show blockMod B 0 = blockZ B from rfl] at hj; rw [show blockMod B 1 = blockY B from rfl] at hj;
          rw [show blockMod B 2 = blockX B from rfl] at hj] <;> rw [hj] <;> ring
  have hprod := lamProduct B k hp hWk
  rw [h0, zero_mul] at hprod
  -- `K` is on one of the four curves ((7), poles included)
  have hK4 := pole_K hp hWk (by rw [hJk]) (by
    rcases hb with h | h
    · exact Or.inl h
    · right; linear_combination -h)
  have cand : Quartic.Candidates k (blockK B) := by
    rcases mul_eq_zero.1 hprod.symm with h | h
    · exact Quartic.candidates_of_poleNum (Or.inl rfl) hk0 hK4 h
    · exact Quartic.candidates_of_poleNum (Or.inr rfl) hk0 hK4 h
  exact conclusion_of_candidates hk0 hp (by rw [abs_of_pos hJ]; exact hJk) hWk cand

/-- **The nonzero-`J` stratum** (return K). -/
theorem nonzeroJ_signed {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H)
    (hinv : AllMinorsInvertible H) (l : Fin 20) (hJ : blockJ (triBlock H 0 l) ≠ 0) :
    ((17 : ℝ) / 3 < blockP (triBlock H 0 l) ∧ blockP (triBlock H 0 l) < (29 : ℝ) / 5) ∨
      EquiEndpoint (triBlock H 0 l) ∨ P7Endpoint (triBlock H 0 l) := by
  rcases lt_or_gt_of_ne hJ with hneg | hpos
  · have hJ' : 0 < blockJ (triBlock H 0 (19 - l)) := by rw [blockJ_compl hH]; linarith
    have h := nonzeroJ_pos_signed hH hc hinv (19 - l) hJ'
    rwa [blockP_compl hH, equiEndpoint_compl hH, p7Endpoint_compl hH] at h
  · exact nonzeroJ_pos_signed hH hc hinv l hpos

/-- **I4**, the critical strip classification: zero `J` by the zero-`J` square-sum identity, nonzero
`J` by the two signed sums. -/
theorem topStripClassification_signed (hZ : ZeroJAlgebra) : TopStripClassification := by
  intro H hH hc hinv l
  exact ⟨fun hJ => zeroJ_classification (zeroJSquareSum_of_algebra hZ) hH hc hinv l hJ,
    fun hJ => nonzeroJ_signed hH hc hinv l hJ⟩

end NoFourMUBs.PRM.Coverage
