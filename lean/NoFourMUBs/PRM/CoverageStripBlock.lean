import NoFourMUBs.PRM.CoverageInputs
import NoFourMUBs.PRM.CoverageQuarticDefs

/-!
# Critical strip classification (I4): the data of one critical corner

Notation of `CRITICAL_STRIP_CLASSIFICATION.md` for a `3 × 3` block `B` with Gram entries
`s, t, r` (`blockS/T/R`), `X, Y, Z = |s|², |t|², |r|²`, `p`, `J`, `W` as in `CoverageCritical`:

* `g = 27 − 3p + J` (`blockG`, `= |det|²` for a phase block), `χ` (`blockChi`), `z = χ / (2g)`
  (`blockTheta`; at a critical nonsingular corner this is the real invariant `Θ`);
* `c₀, c₁, c₂ = 9 − Z, 9 − Y, 9 − X` (`blockC`) and the moment denominators
  `L_j = g + c_j z` (`blockL`);
* `K = XYZ` (`blockK`), `k = 2J/(9 − p)²` (`blockKpar`), `w = s̄ r̄ t` (`blockWc`, so `J = 2 Re w`).

Facts on one nonsingular phase block with real side signature (`critical_data`):
`χ = 2 g z`, `η = 9 − p + J = z²`, `g > 0`; the norm identities `|P_j|² = g² + c_j χ + c_j² η`
(`P0_normSq`, `P1_normSq`, `Side.P2_normSq`), hence `|P_j| = |L_j|`; and the pole computation of
`CRITICAL_STRIP_CLASSIFICATION.md` §4 (`pole_block`): `L_j = 0` forces `z ≠ 0`, the `j`-th modulus
equals `9 + g/z`, and either `Im w = 0` or two of `X, Y, Z` coincide (this is the paper's
`Im P₀ = (X − Y) Im r`, done for each `j` directly, so no row relabelling is needed).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open Side

/-! ### Definitions -/

/-- `g = 27 − 3p + J`. -/
def blockG (B : Mat3) : ℝ := gS (blockS B) (blockT B) (blockR B)
/-- `χ = W − (p − 9)(p − 18) + (p − 15) J`. -/
def blockChi (B : Mat3) : ℝ := chiS (blockS B) (blockT B) (blockR B)
/-- `z = χ / (2g)`. -/
def blockTheta (B : Mat3) : ℝ := blockChi B / (2 * blockG B)
/-- `c₀, c₁, c₂ = 9 − Z, 9 − Y, 9 − X`. -/
def blockC (B : Mat3) (j : Fin 3) : ℝ := ![9 - blockZ B, 9 - blockY B, 9 - blockX B] j
/-- The moment denominators `L_j = g + c_j z`. -/
def blockL (B : Mat3) (j : Fin 3) : ℝ := blockG B + blockC B j * blockTheta B
/-- `K = XYZ`. -/
def blockK (B : Mat3) : ℝ := blockX B * blockY B * blockZ B
/-- `k = 2J / (9 − p)²`. -/
def blockKpar (B : Mat3) : ℝ := 2 * blockJ B / (9 - blockP B) ^ 2
/-- `w = s̄ r̄ t`. -/
def blockWc (B : Mat3) : ℂ := conj (blockS B) * conj (blockR B) * blockT B
/-- The modulus `X_j = 9 − c_j` (`Z, Y, X` for `j = 0, 1, 2`). -/
def blockMod (B : Mat3) (j : Fin 3) : ℝ := ![blockZ B, blockY B, blockX B] j

theorem blockG_eq (B : Mat3) : blockG B = 27 - 3 * blockP B + blockJ B := rfl

theorem blockChi_eq (B : Mat3) :
    blockChi B = blockW B - (blockP B - 9) * (blockP B - 18) + (blockP B - 15) * blockJ B := rfl

theorem blockJ_eq (B : Mat3) : blockJ B = 2 * (blockWc B).re := rfl

theorem blockC_eq (B : Mat3) (j : Fin 3) : blockC B j = 9 - blockMod B j := by
  fin_cases j <;> rfl

theorem blockMod_nonneg (B : Mat3) (j : Fin 3) : 0 ≤ blockMod B j := by
  fin_cases j <;> exact Complex.normSq_nonneg _

theorem blockK_eq_normSq (B : Mat3) : blockK B = Complex.normSq (blockWc B) := by
  simp only [blockK, blockWc, blockX, blockY, blockZ, Complex.normSq_mul, Complex.normSq_conj]; ring

/-- The moduli are the roots of the modulus cubic `T³ − pT² + (W + K)T − K`. -/
theorem modulus_cubic (B : Mat3) (T : ℝ) :
    T ^ 3 - blockP B * T ^ 2 + (blockW B + blockK B) * T - blockK B =
      (T - blockX B) * (T - blockY B) * (T - blockZ B) := by
  simp only [blockP_eq, blockW, blockK]; ring

theorem modulus_cubic_root (B : Mat3) (j : Fin 3) :
    blockMod B j ^ 3 - blockP B * blockMod B j ^ 2 + (blockW B + blockK B) * blockMod B j -
      blockK B = 0 := by
  rw [modulus_cubic]; fin_cases j <;> simp [blockMod]

/-- The discriminant of the modulus cubic, in its coefficients. -/
theorem modulus_disc (B : Mat3) :
    ((blockX B - blockY B) * (blockX B - blockZ B) * (blockY B - blockZ B)) ^ 2 =
      blockP B ^ 2 * (blockW B + blockK B) ^ 2 - 4 * (blockW B + blockK B) ^ 3 -
        4 * blockP B ^ 3 * blockK B - 27 * blockK B ^ 2 + 18 * blockP B * (blockW B + blockK B) * blockK B := by
  simp only [blockP_eq, blockW, blockK]; ring

/-- `J² ≤ 4K`. -/
theorem blockJ_sq_le (B : Mat3) : blockJ B ^ 2 ≤ 4 * blockK B := by
  rw [blockJ_eq, blockK_eq_normSq, Complex.normSq_apply]
  nlinarith [sq_nonneg (blockWc B).im]

/-! ### Norm identities for `P₀`, `P₁` -/

private theorem gS_cast (s t r : ℂ) : (gS s t r : ℂ) = 27 - 3 * (s * conj s + t * conj t + r * conj r) +
    (conj s * conj r * t + s * r * conj t) := by
  rw [gS]; push_cast [Complex.re_eq_add_conj, cast_normSq']; simp [map_mul]; ring

theorem P0_normSq (s t r : ℂ) :
    P0 s t r * conj (P0 s t r) =
      (gS s t r : ℂ) ^ 2 + (cR r : ℂ) * chiS s t r + (cR r : ℂ) ^ 2 * etaS s t r := by
  simp only [P0, map_add, map_mul, map_pow, Complex.conj_conj, Complex.conj_ofReal]
  simp only [chiS, etaS, pS, cR, gS_cast, Complex.ofReal_sub, Complex.ofReal_add, Complex.ofReal_mul,
    Complex.ofReal_ofNat, cast_jS, cast_normSq']
  ring

theorem P1_normSq (s t r : ℂ) :
    P1 s t r * conj (P1 s t r) =
      (gS s t r : ℂ) ^ 2 + (cR t : ℂ) * chiS s t r + (cR t : ℂ) ^ 2 * etaS s t r := by
  simp only [P1, map_add, map_mul, map_pow, Complex.conj_conj, Complex.conj_ofReal]
  simp only [chiS, etaS, pS, cR, gS_cast, Complex.ofReal_sub, Complex.ofReal_add, Complex.ofReal_mul,
    Complex.ofReal_ofNat, cast_jS, cast_normSq']
  ring

/-- `P_j` of the block. -/
def blockPj (B : Mat3) (j : Fin 3) : ℂ :=
  ![P0 (blockS B) (blockT B) (blockR B), P1 (blockS B) (blockT B) (blockR B),
    P2 (blockS B) (blockT B) (blockR B)] j

theorem blockPj_zero (B : Mat3) : blockPj B 0 = P0 (blockS B) (blockT B) (blockR B) := rfl
theorem blockPj_one (B : Mat3) : blockPj B 1 = P1 (blockS B) (blockT B) (blockR B) := rfl
theorem blockPj_two (B : Mat3) : blockPj B 2 = P2 (blockS B) (blockT B) (blockR B) := rfl

theorem blockPj_normSq (B : Mat3) (j : Fin 3) :
    blockPj B j * conj (blockPj B j) = (blockG B : ℂ) ^ 2 + (blockC B j : ℂ) * blockChi B +
      (blockC B j : ℂ) ^ 2 * (9 - blockP B + blockJ B : ℝ) := by
  fin_cases j
  · exact P0_normSq _ _ _
  · exact P1_normSq _ _ _
  · exact P2_normSq _ _ _

/-! ### The pole computation: `Im(ā_j P_j) = (difference of moduli) · Im w` -/

theorem blockPj_im (B : Mat3) :
    (conj (blockS B) * conj (blockT B) * blockPj B 0).im = (blockY B - blockX B) * (blockWc B).im ∧
      (blockS B * conj (blockR B) * blockPj B 1).im = (blockX B - blockZ B) * (blockWc B).im ∧
      (blockT B * blockR B * blockPj B 2).im = (blockZ B - blockY B) * (blockWc B).im := by
  set s := blockS B; set t := blockT B; set r := blockR B
  have e0 : conj s * conj t * blockPj B 0 = (blockX B : ℂ) * conj (blockWc B) +
      (blockY B : ℂ) * blockWc B + ((3 - blockZ B) * blockX B * blockY B : ℝ) := by
    simp only [blockPj_zero, P0, blockWc, blockX, blockY, blockZ, Complex.ofReal_mul,
      Complex.ofReal_sub, Complex.ofReal_ofNat, cast_normSq', map_mul, Complex.conj_conj]
    ring
  have e1 : s * conj r * blockPj B 1 = (blockX B : ℂ) * blockWc B +
      (blockZ B : ℂ) * conj (blockWc B) + ((3 - blockY B) * blockX B * blockZ B : ℝ) := by
    simp only [blockPj_one, P1, blockWc, blockX, blockY, blockZ,
      Complex.ofReal_mul, Complex.ofReal_sub, Complex.ofReal_ofNat, cast_normSq', map_mul,
      Complex.conj_conj]
    ring
  have e2 : t * r * blockPj B 2 = (blockY B : ℂ) * conj (blockWc B) +
      (blockZ B : ℂ) * blockWc B + ((3 - blockX B) * blockY B * blockZ B : ℝ) := by
    simp only [blockPj_two, P2, blockWc, blockX,
      blockY, blockZ, Complex.ofReal_mul, Complex.ofReal_sub, Complex.ofReal_ofNat, cast_normSq',
      map_mul, Complex.conj_conj]
    ring
  refine ⟨?_, ?_, ?_⟩
  · rw [e0]; simp only [Complex.add_im, Complex.im_ofReal_mul, Complex.conj_im,
      Complex.ofReal_im]; ring
  · rw [e1]; simp only [Complex.add_im, Complex.im_ofReal_mul, Complex.conj_im, Complex.ofReal_im]; ring
  · rw [e2]; simp only [Complex.add_im, Complex.im_ofReal_mul, Complex.conj_im, Complex.ofReal_im]; ring

/-- If `P_j = 0` then `Im w = 0` or two of the moduli coincide. -/
theorem im_or_repeated_of_Pj (B : Mat3) (j : Fin 3) (hP : blockPj B j = 0) :
    (blockWc B).im = 0 ∨
      (blockX B - blockY B) * (blockX B - blockZ B) * (blockY B - blockZ B) = 0 := by
  obtain ⟨e0, e1, e2⟩ := blockPj_im B
  fin_cases j
  · simp only [Fin.zero_eta] at hP
    rw [hP, mul_zero, Complex.zero_im] at e0
    rcases mul_eq_zero.1 e0.symm with h | h
    · right; rw [show blockX B - blockY B = -(blockY B - blockX B) by ring, h]; ring
    · left; exact h
  · simp only [Fin.mk_one] at hP
    rw [hP, mul_zero, Complex.zero_im] at e1
    rcases mul_eq_zero.1 e1.symm with h | h
    · right; rw [h]; ring
    · left; exact h
  · simp only [Fin.reduceFinMk] at hP
    rw [hP, mul_zero, Complex.zero_im] at e2
    rcases mul_eq_zero.1 e2.symm with h | h
    · right; rw [show blockY B - blockZ B = -(blockZ B - blockY B) by ring, h]; ring
    · left; exact h

/-! ### One nonsingular phase block with real side signature -/

section Block

variable {B : Mat3} (hB : ∀ i j, Complex.normSq (B i j) = 1) (hd : B.det ≠ 0)
include hB hd

theorem dephase_hS_ne : hS (dephase B 1) (dephase B 2) ≠ 0 := by
  rw [dephase_hS hB]
  refine mul_ne_zero hd (mul_ne_zero (mul_ne_zero ?_ ?_) ?_) <;>
    exact (map_ne_zero _).2 (ne_zero_of_normSq (hB 0 _))

/-- `g = |det|² > 0`. -/
theorem blockG_pos : 0 < blockG B := by
  obtain ⟨-, -, -, G⟩ := side_identities (fun j => dephase_unit hB 1 j) (fun j => dephase_unit hB 2 j)
  rw [dephase_sS1, dephase_sS2, dephase_rS hB] at G
  have e : Complex.normSq (hS (dephase B 1) (dephase B 2)) = blockG B := by exact_mod_cast G
  rw [← e]; exact Complex.normSq_pos.2 (dephase_hS_ne hB hd)

/-- At a critical nonsingular corner: `χ = 2gz`, `η = z²`, and the signature is `g z`. -/
theorem critical_data (hIm : (Step2.sideSignature B).im = 0) :
    blockChi B = 2 * blockG B * blockTheta B ∧ 9 - blockP B + blockJ B = blockTheta B ^ 2 ∧
      (Step2.sideSignature B).re = blockG B * blockTheta B := by
  have hg := blockG_pos hB hd
  obtain ⟨h1, h2⟩ := TS_root (fun j => dephase_unit hB 1 j) (fun j => dephase_unit hB 2 j)
    (dephase_hS_ne hB hd)
  rw [← Step2.sig_rows _ (dephase_row0 hB), dephase_sig hB, dephase_sS1, dephase_sS2,
    dephase_rS hB] at h1 h2
  set T := Step2.sideSignature B
  have e2 := congrArg Complex.re h2
  have e1 := congrArg Complex.re h1
  rw [← Complex.ofReal_pow, ← Complex.ofReal_mul, Complex.ofReal_re] at e1
  simp only [Complex.add_re, Complex.conj_re, Complex.ofReal_re, Complex.mul_re, Complex.conj_im,
    hIm] at e1 e2
  change T.re + T.re = blockChi B at e2
  change T.re * T.re - 0 * -0 = blockG B ^ 2 * etaS _ _ _ at e1
  have hz : blockTheta B = T.re / blockG B := by
    rw [blockTheta, ← e2]; field_simp; ring
  have hgz : T.re = blockG B * blockTheta B := by rw [hz]; field_simp
  refine ⟨by rw [← e2, hgz]; ring, ?_, hgz⟩
  have : etaS (blockS B) (blockT B) (blockR B) = 9 - blockP B + blockJ B := rfl
  rw [this] at e1
  rw [hz, div_pow]
  field_simp
  linarith

/-- `|P_j|² = L_j²` at a critical nonsingular corner. -/
theorem blockPj_normSq_eq (hIm : (Step2.sideSignature B).im = 0) (j : Fin 3) :
    Complex.normSq (blockPj B j) = blockL B j ^ 2 := by
  obtain ⟨hc, he, -⟩ := critical_data hB hd hIm
  have e := blockPj_normSq B j
  rw [Complex.mul_conj] at e
  have e' : Complex.normSq (blockPj B j) = blockG B ^ 2 + blockC B j * blockChi B +
      blockC B j ^ 2 * (9 - blockP B + blockJ B) := by exact_mod_cast e
  rw [e', hc, he, blockL]; ring

/-- **Poles** (`CRITICAL_STRIP_CLASSIFICATION.md` §4).  If `L_j = 0` then `z ≠ 0`, the `j`-th modulus
is `9 + g/z`, and `Im w = 0` or two moduli coincide. -/
theorem pole_block (hIm : (Step2.sideSignature B).im = 0) {j : Fin 3} (hL : blockL B j = 0) :
    blockTheta B ≠ 0 ∧ blockMod B j = 9 + blockG B / blockTheta B ∧
      ((blockWc B).im = 0 ∨
        (blockX B - blockY B) * (blockX B - blockZ B) * (blockY B - blockZ B) = 0) := by
  have hg := blockG_pos hB hd
  have hz : blockTheta B ≠ 0 := by
    intro h0; rw [blockL, h0, mul_zero, add_zero] at hL; linarith
  refine ⟨hz, ?_, im_or_repeated_of_Pj B j ?_⟩
  · rw [blockL, blockC_eq] at hL
    field_simp
    linarith
  · have e := blockPj_normSq_eq hB hd hIm j
    rw [hL] at e
    exact Complex.normSq_eq_zero.1 (by rw [e]; ring)

end Block

/-! ### Complementary corners -/

section Compl

variable {H : Mat6} (hH : Hadamard6.IsHadamard H) (k l : Fin 20)
include hH

theorem blockX_compl : blockX (triBlock H k (19 - l)) = blockX (triBlock H k l) := by
  simp only [blockX, blockS_compl hH, Complex.normSq_neg]
theorem blockY_compl : blockY (triBlock H k (19 - l)) = blockY (triBlock H k l) := by
  simp only [blockY, blockT_compl hH, Complex.normSq_neg]
theorem blockZ_compl : blockZ (triBlock H k (19 - l)) = blockZ (triBlock H k l) := by
  simp only [blockZ, blockR_compl hH, Complex.normSq_neg]
theorem blockK_compl : blockK (triBlock H k (19 - l)) = blockK (triBlock H k l) := by
  simp only [blockK, blockX_compl hH, blockY_compl hH, blockZ_compl hH]
theorem blockMod_compl (j : Fin 3) : blockMod (triBlock H k (19 - l)) j = blockMod (triBlock H k l) j := by
  fin_cases j
  · exact blockZ_compl hH k l
  · exact blockY_compl hH k l
  · exact blockX_compl hH k l

theorem blockG_compl :
    blockG (triBlock H k (19 - l)) = 27 - 3 * blockP (triBlock H k l) - blockJ (triBlock H k l) := by
  rw [blockG_eq, blockP_compl hH, blockJ_compl hH]; ring

theorem blockChi_compl :
    blockChi (triBlock H k (19 - l)) = blockW (triBlock H k l) -
      (blockP (triBlock H k l) - 9) * (blockP (triBlock H k l) - 18) -
        (blockP (triBlock H k l) - 15) * blockJ (triBlock H k l) := by
  rw [blockChi_eq, blockP_compl hH, blockJ_compl hH, blockW_compl hH]; ring

end Compl

/-- The whole-strip square sum `S = Σ_l 4 (Im Ψ(corner l))²` of the top three rows (`Ψ` up to sign is
the side signature).  It is `Σ_l −D_l²` of `CRITICAL_STRIP_CLASSIFICATION.md` §1. -/
def stripSq (H : Mat6) : ℝ := ∑ l : Fin 20, 4 * (Step2.sideSignature (triBlock H 0 l)).im ^ 2

theorem stripSq_eq_zero {H : Mat6} (hc : AllCritical H) : stripSq H = 0 := by
  simp [stripSq, hc.triBlock_im]

/-- The corner `triBlock H 0 l` of a matrix with invertible minors is nonsingular. -/
theorem triBlock_det_ne {H : Mat6} (hinv : AllMinorsInvertible H) (k l : Fin 20) :
    (triBlock H k l).det ≠ 0 := by
  have := hinv (triPerm (19 - k)) (triPerm l)
  rwa [rightBlock_triPerm] at this

end NoFourMUBs.PRM.Coverage
