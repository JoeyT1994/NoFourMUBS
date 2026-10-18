import NoFourMUBs.PRM.CoverageCorners
import NoFourMUBs.PRM.SideRoot
import NoFourMUBs.Step2.MatchedUnique
import NoFourMUBs.PRM.CoverageSumScalar

/-!
# The critical corner reduction on actual Hadamard matrices (`CRITICAL_CORNER_REDUCTION.md`)

For a `3 × 3` block `B` let `s, t, r` be the off-diagonal entries of its Gram matrix `B B*`
(`blockS = (BB*)₁₀`, `blockT = (BB*)₂₀`, `blockR = (BB*)₂₁`), `X, Y, Z` their squared moduli,
`p = X + Y + Z`, `J = 2 Re(s̄ r̄ t)` and `W = XY + XZ + YZ − XYZ`.

* `critR_eq_im_sq`: for a nonsingular phase block, `R(p, J, W) = 4 (Im Ψ(B))²` (`PRM.md` (7.1); this
  is `Side.RS_eq_im_sq` after dephasing the first row).  `R` is `CoverageSum.critR`.
* `blockEta_nonneg`: `9 − p + J = |perm|² ≥ 0` for every phase block (no nonsingularity needed).
* `gram3_compl`: in three complete rows of a Hadamard matrix, complementary column triples have
  opposite off-diagonal Gram entries; hence equal `p, W` and opposite `J`.
* `criticalCornerReduction`: at a corner of an all-critical Hadamard matrix whose block and
  complementary block are nonsingular, `R(p, J, W) = R(p, −J, W) = 0`, `0 ≤ p` and `p + |J| ≤ 9`.
  With `CoverageSum.nonzero_J_reduction` this gives `5 < p < 9`, `J² = (9 − p)³(p − 5)/4` and
  `W = −(p − 9)(p² − 10p + 27)/2` when `J ≠ 0` (`criticalCorner_nonzeroJ`), and
  `(W − (9 − p)(18 − p))² = 36 (9 − p)³` when `J = 0` (`criticalCorner_zeroJ`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open Side

/-! ### Scalar data of a block -/

/-- The Gram entry `(B B*)_{ab}`. -/
def gram3 (B : Mat3) (a b : Fin 3) : ℂ := ∑ j, B a j * conj (B b j)

def blockS (B : Mat3) : ℂ := gram3 B 1 0
def blockT (B : Mat3) : ℂ := gram3 B 2 0
def blockR (B : Mat3) : ℂ := gram3 B 2 1

def blockX (B : Mat3) : ℝ := Complex.normSq (blockS B)
def blockY (B : Mat3) : ℝ := Complex.normSq (blockT B)
def blockZ (B : Mat3) : ℝ := Complex.normSq (blockR B)

/-- `p = X + Y + Z`. -/
def blockP (B : Mat3) : ℝ := pS (blockS B) (blockT B) (blockR B)
/-- `J = 2 Re(s̄ r̄ t)`. -/
def blockJ (B : Mat3) : ℝ := jS (blockS B) (blockT B) (blockR B)
/-- `W = XY + XZ + YZ − XYZ`. -/
def blockW (B : Mat3) : ℝ :=
  blockX B * blockY B + blockX B * blockZ B + blockY B * blockZ B - blockX B * blockY B * blockZ B

theorem blockP_eq (B : Mat3) : blockP B = blockX B + blockY B + blockZ B := rfl

/-- The discriminant of `Side` is the scalar `R(p, J, W)` of `CRITICAL_CORNER_REDUCTION.md`. -/
theorem RS_eq_critR (s t r : ℂ) :
    RS s t r = CoverageSum.critR (pS s t r) (jS s t r)
      (Complex.normSq s * Complex.normSq t + Complex.normSq s * Complex.normSq r +
        Complex.normSq t * Complex.normSq r -
        Complex.normSq s * Complex.normSq t * Complex.normSq r) := by
  simp only [RS, gS, etaS, chiS, CoverageSum.critR, pS, jS]

/-! ### Dephasing the first row -/

/-- The block with its columns phased so that the first row is `1`. -/
def dephase (B : Mat3) : Mat3 := Matrix.of fun i j => (fun _ => (1 : ℂ)) i * B i j * conj (B 0 j)

section Dephase

variable {B : Mat3} (hB : ∀ i j, Complex.normSq (B i j) = 1)
include hB

theorem dephase_sig : Step2.sideSignature (dephase B) = Step2.sideSignature B :=
  Step2.sideSignature_scale B _ _ (fun _ => by simp)
    (fun j => by rw [Complex.conj_conj, mul_comm]; exact mul_conj_of_normSq (hB 0 j))

theorem dephase_row0 (j : Fin 3) : dephase B 0 j = 1 := by
  simp only [dephase, Matrix.of_apply, one_mul]; exact mul_conj_of_normSq (hB 0 j)

theorem dephase_unit (i j : Fin 3) : Complex.normSq (dephase B i j) = 1 := by
  simp [dephase, Complex.normSq_mul, Complex.normSq_conj, hB]

theorem dephase_hS : hS (dephase B 1) (dephase B 2) = B.det * (conj (B 0 0) * conj (B 0 1) * conj (B 0 2)) := by
  have h0 := dephase_row0 hB
  have e1 : (dephase B).det = hS (dephase B 1) (dephase B 2) := by
    rw [Matrix.det_fin_three, h0 0, h0 1, h0 2, hS]; ring
  have e2 : (dephase B).det = B.det * (conj (B 0 0) * conj (B 0 1) * conj (B 0 2)) := by
    simp only [Matrix.det_fin_three, dephase, Matrix.of_apply]; ring
  rw [← e1, e2]

omit hB in
theorem dephase_sS1 : sS (dephase B 1) = blockS B := by
  simp [sS, dephase, blockS, gram3, Fin.sum_univ_three]

omit hB in
theorem dephase_sS2 : sS (dephase B 2) = blockT B := by
  simp [sS, dephase, blockT, gram3, Fin.sum_univ_three]

theorem dephase_rS : rS (dephase B 1) (dephase B 2) = blockR B := by
  have u : ∀ j, conj (B 0 j) * B 0 j = 1 := fun j => by rw [mul_comm]; exact mul_conj_of_normSq (hB 0 j)
  simp only [rS, dephase, blockR, gram3, Fin.sum_univ_three, Matrix.of_apply, one_mul, map_mul,
    Complex.conj_conj]
  linear_combination (B 2 0 * conj (B 1 0)) * u 0 + (B 2 1 * conj (B 1 1)) * u 1 +
    (B 2 2 * conj (B 1 2)) * u 2

end Dephase

/-- **`R(E) = 4 (Im Ψ(B))²`** (`PRM.md` (7.1)) for a nonsingular phase block: the corner is strict
exactly when its side signature is not real. -/
theorem critR_eq_im_sq {B : Mat3} (hB : ∀ i j, Complex.normSq (B i j) = 1) (hd : B.det ≠ 0) :
    CoverageSum.critR (blockP B) (blockJ B) (blockW B) = 4 * (Step2.sideSignature B).im ^ 2 := by
  have hh : hS (dephase B 1) (dephase B 2) ≠ 0 := by
    rw [dephase_hS hB]
    refine mul_ne_zero hd (mul_ne_zero (mul_ne_zero ?_ ?_) ?_) <;>
      exact (map_ne_zero _).2 (ne_zero_of_normSq (hB 0 _))
  rw [← dephase_sig hB, Step2.sig_rows _ (dephase_row0 hB),
    ← RS_eq_im_sq (fun j => dephase_unit hB 1 j) (fun j => dephase_unit hB 2 j) hh,
    dephase_sS1, dephase_sS2, dephase_rS hB, RS_eq_critR]
  rfl

/-- `9 − p + J = |perm|² ≥ 0` for every phase block. -/
theorem blockEta_nonneg {B : Mat3} (hB : ∀ i j, Complex.normSq (B i j) = 1) :
    0 ≤ 9 - blockP B + blockJ B := by
  have h := pi_normSq (fun j => dephase_unit hB 1 j) (fun j => dephase_unit hB 2 j)
  rw [dephase_sS1, dephase_sS2, dephase_rS hB, Complex.mul_conj] at h
  have h' : Complex.normSq (piS (dephase B 1) (dephase B 2)) = etaS (blockS B) (blockT B) (blockR B) :=
    by exact_mod_cast h
  have := Complex.normSq_nonneg (piS (dephase B 1) (dephase B 2))
  rw [h', etaS] at this
  exact this

/-! ### Complementary corners in a Hadamard matrix -/

theorem sum_tri_compl : ∀ (l : Fin 20) (f : Fin 6 → ℂ),
    (∑ j : Fin 3, f (tri l j)) + (∑ j : Fin 3, f (tri (19 - l) j)) = ∑ u : Fin 6, f u := by
  intro l f
  fin_cases l <;> simp [tri, Fin.sum_univ_succ] <;> ring

theorem tri_injective : ∀ k : Fin 20, Function.Injective (tri k) := by decide

/-- Complementary column triples have opposite off-diagonal Gram entries. -/
theorem gram3_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (k l : Fin 20) {a b : Fin 3} (hab : a ≠ b) :
    gram3 (triBlock H k (19 - l)) a b = -gram3 (triBlock H k l) a b := by
  have hne : e6.symm (tri k a) ≠ e6.symm (tri k b) := fun h => hab (tri_injective k (e6.symm.injective h))
  have horth : (∑ c : I6, H (e6.symm (tri k a)) c * conj (H (e6.symm (tri k b)) c)) = 0 := by
    have h := congrArg (fun M : Mat6 => M (e6.symm (tri k a)) (e6.symm (tri k b))) hH.2
    simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.one_apply, Complex.star_def, hne] using h
  have hsum := sum_tri_compl l (fun u => H (e6.symm (tri k a)) (e6.symm u) *
    conj (H (e6.symm (tri k b)) (e6.symm u)))
  rw [Equiv.sum_comp e6.symm (fun c => H (e6.symm (tri k a)) c * conj (H (e6.symm (tri k b)) c)),
    horth] at hsum
  simp only [gram3, triBlock, Matrix.of_apply]
  linear_combination hsum

theorem blockS_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (k l : Fin 20) :
    blockS (triBlock H k (19 - l)) = -blockS (triBlock H k l) := gram3_compl hH k l (by decide)
theorem blockT_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (k l : Fin 20) :
    blockT (triBlock H k (19 - l)) = -blockT (triBlock H k l) := gram3_compl hH k l (by decide)
theorem blockR_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (k l : Fin 20) :
    blockR (triBlock H k (19 - l)) = -blockR (triBlock H k l) := gram3_compl hH k l (by decide)

theorem blockP_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (k l : Fin 20) :
    blockP (triBlock H k (19 - l)) = blockP (triBlock H k l) := by
  simp only [blockP, pS, blockS_compl hH, blockT_compl hH, blockR_compl hH, Complex.normSq_neg]

theorem jS_neg (s t r : ℂ) : jS (-s) (-t) (-r) = -jS s t r := by
  simp only [jS, map_neg]
  rw [show -conj s * -conj r * -t = -(conj s * conj r * t) by ring, Complex.neg_re]
  ring

theorem blockJ_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (k l : Fin 20) :
    blockJ (triBlock H k (19 - l)) = -blockJ (triBlock H k l) := by
  simp only [blockJ, blockS_compl hH, blockT_compl hH, blockR_compl hH, jS_neg]

theorem blockW_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (k l : Fin 20) :
    blockW (triBlock H k (19 - l)) = blockW (triBlock H k l) := by
  simp only [blockW, blockX, blockY, blockZ, blockS_compl hH, blockT_compl hH, blockR_compl hH,
    Complex.normSq_neg]

theorem triBlock_unit {H : Mat6} (hH : Hadamard6.IsHadamard H) (k l : Fin 20) (i j : Fin 3) :
    Complex.normSq (triBlock H k l i j) = 1 := hH.1 _ _

/-! ### The reduction -/

/-- **Critical corner reduction** (`CRITICAL_CORNER_REDUCTION.md`, equations (1)–(2)), on an actual
all-critical Hadamard matrix. -/
theorem criticalCornerReduction {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H) (k l : Fin 20)
    (hd : (triBlock H k l).det ≠ 0) (hd' : (triBlock H k (19 - l)).det ≠ 0) :
    CoverageSum.critR (blockP (triBlock H k l)) (blockJ (triBlock H k l)) (blockW (triBlock H k l)) = 0 ∧
      CoverageSum.critR (blockP (triBlock H k l)) (-blockJ (triBlock H k l))
        (blockW (triBlock H k l)) = 0 ∧
      0 ≤ blockP (triBlock H k l) ∧ blockP (triBlock H k l) + |blockJ (triBlock H k l)| ≤ 9 := by
  have e1 := critR_eq_im_sq (triBlock_unit hH k l) hd
  have e2 := critR_eq_im_sq (triBlock_unit hH k (19 - l)) hd'
  rw [hc.triBlock_im] at e1 e2
  rw [blockP_compl hH, blockJ_compl hH, blockW_compl hH] at e2
  have n1 := blockEta_nonneg (triBlock_unit hH k l)
  have n2 := blockEta_nonneg (triBlock_unit hH k (19 - l))
  rw [blockP_compl hH, blockJ_compl hH] at n2
  refine ⟨by rw [e1]; ring, by rw [e2]; ring, ?_, ?_⟩
  · simp only [blockP, pS]
    exact add_nonneg (add_nonneg (Complex.normSq_nonneg _) (Complex.normSq_nonneg _))
      (Complex.normSq_nonneg _)
  · rcases abs_cases (blockJ (triBlock H k l)) with ⟨h, -⟩ | ⟨h, -⟩ <;> rw [h] <;> linarith

/-- The nonzero-`J` stratum (`CRITICAL_CORNER_REDUCTION.md` (3)). -/
theorem criticalCorner_nonzeroJ {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H) (k l : Fin 20)
    (hd : (triBlock H k l).det ≠ 0) (hd' : (triBlock H k (19 - l)).det ≠ 0)
    (hJ : blockJ (triBlock H k l) ≠ 0) :
    5 < blockP (triBlock H k l) ∧ blockP (triBlock H k l) < 9 ∧
      blockJ (triBlock H k l) ^ 2 = (9 - blockP (triBlock H k l)) ^ 3 * (blockP (triBlock H k l) - 5) / 4 ∧
      blockW (triBlock H k l) = -(blockP (triBlock H k l) - 9) *
        (blockP (triBlock H k l) ^ 2 - 10 * blockP (triBlock H k l) + 27) / 2 := by
  obtain ⟨h1, h2, h3, h4⟩ := criticalCornerReduction hH hc k l hd hd'
  exact CoverageSum.nonzero_J_reduction _ _ _ h3 h4 hJ h1 h2

/-- The zero-`J` stratum (`CRITICAL_CORNER_REDUCTION.md` (6)). -/
theorem criticalCorner_zeroJ {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H) (k l : Fin 20)
    (hd : (triBlock H k l).det ≠ 0) (hd' : (triBlock H k (19 - l)).det ≠ 0)
    (hJ : blockJ (triBlock H k l) = 0) :
    (blockW (triBlock H k l) - (9 - blockP (triBlock H k l)) * (18 - blockP (triBlock H k l))) ^ 2 =
      36 * (9 - blockP (triBlock H k l)) ^ 3 := by
  obtain ⟨h1, -, -, -⟩ := criticalCornerReduction hH hc k l hd hd'
  rw [hJ] at h1
  exact (CoverageSum.zero_J_critical_iff _ _).1 h1

end NoFourMUBs.PRM.Coverage
