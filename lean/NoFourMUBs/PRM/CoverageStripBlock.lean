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
`χ = 2 g z`, `η = 9 − p + J = z²`, `g > 0`.  Also: the block's `P_j` (`blockPj`), the modulus
cubic and its discriminant, and the moduli and `g` at the complementary corner.
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

/-- `P_j` of the block. -/
def blockPj (B : Mat3) (j : Fin 3) : ℂ :=
  ![P0 (blockS B) (blockT B) (blockR B), P1 (blockS B) (blockT B) (blockR B),
    P2 (blockS B) (blockT B) (blockR B)] j

theorem blockPj_zero (B : Mat3) : blockPj B 0 = P0 (blockS B) (blockT B) (blockR B) := rfl
theorem blockPj_one (B : Mat3) : blockPj B 1 = P1 (blockS B) (blockT B) (blockR B) := rfl
theorem blockPj_two (B : Mat3) : blockPj B 2 = P2 (blockS B) (blockT B) (blockR B) := rfl

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
theorem blockMod_compl (j : Fin 3) : blockMod (triBlock H k (19 - l)) j = blockMod (triBlock H k l) j := by
  fin_cases j
  · exact blockZ_compl hH k l
  · exact blockY_compl hH k l
  · exact blockX_compl hH k l

theorem blockG_compl :
    blockG (triBlock H k (19 - l)) = 27 - 3 * blockP (triBlock H k l) - blockJ (triBlock H k l) := by
  rw [blockG_eq, blockP_compl hH, blockJ_compl hH]; ring

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
