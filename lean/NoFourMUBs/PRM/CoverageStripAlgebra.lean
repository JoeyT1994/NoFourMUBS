import NoFourMUBs.PRM.CoverageStripLambda
import NoFourMUBs.PRM.CoverageStripScalar

/-!
# Critical strip classification (I4): the moments of a critical half

`block_moment`: on three rows of a Hadamard matrix, the moments `Σ_{u ∈ tri l} x_u^i y_u^j` of a nonsingular
half `l` with real side signature and no moment pole are the explicit rational functions
`(lamData s t r z g).mom (i, j)` of its Gram data `s, t, r` and invariants `z, g`
(`CRITICAL_STRIP_CLASSIFICATION.md` §1: Newton's identities `newton` and the `λ`-substitution
`halfDataOf_eq_lamData`).  Used by both strata: return O's mixed sums (`CoverageZeroJProduct`) and
return K's weighted signed sum (`CoverageSignedNonzero`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open StripMoments Side

/-- The moments of one critical half. -/
theorem half_moment {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hh : hS x y ≠ 0) {z : ℝ}
    (hT : TS x y = ((Side.gS (sS x) (sS y) (rS x y) * z : ℝ) : ℂ))
    (hL : ∀ j, lamL (sS x) (sS y) (rS x y) z (Side.gS (sS x) (sS y) (rS x y)) j ≠ 0) {p : ℤ × ℤ}
    (hp : p ∈ usedMoments) :
    ∑ k, x k ^ p.1 * y k ^ p.2 = (lamData (sS x) (sS y) (rS x y) z (Side.gS (sS x) (sS y) (rS x y))).mom p := by
  rw [newton (fun k => ne_zero_of_normSq (hx k)) (fun k => ne_zero_of_normSq (hy k)) hp,
    halfDataOf_eq_lamData hx hy hh hT hL]

theorem lamL_block (B : Mat3) (j : Fin 3) :
    lamL (blockS B) (blockT B) (blockR B) (blockTheta B) (blockG B) j = blockL B j := by
  fin_cases j <;> rfl

/-- The moments of the half `tri l` of the top strip. -/
theorem block_moment {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20)
    (hIm : (Step2.sideSignature (triBlock H 0 l)).im = 0) (hd : (triBlock H 0 l).det ≠ 0)
    (hL : ∀ j, blockL (triBlock H 0 l) j ≠ 0) {p : ℤ × ℤ} (hp : p ∈ usedMoments) :
    ∑ k : Fin 3, xsH H (tri l k) ^ p.1 * ysH H (tri l k) ^ p.2 =
      (lamData (blockS (triBlock H 0 l)) (blockT (triBlock H 0 l)) (blockR (triBlock H 0 l))
        (blockTheta (triBlock H 0 l)) (blockG (triBlock H 0 l))).mom p := by
  have hB := triBlock_unit hH 0 l
  have ex : ∀ k, dephase (triBlock H 0 l) 1 k = xsH H (tri l k) := by
    intro k; simp [dephase, triBlock, xsH, tri0_row]
  have ey : ∀ k, dephase (triBlock H 0 l) 2 k = ysH H (tri l k) := by
    intro k; simp [dephase, triBlock, ysH, tri0_row]
  have hm := half_moment (x := dephase (triBlock H 0 l) 1) (y := dephase (triBlock H 0 l) 2)
    (z := blockTheta (triBlock H 0 l)) (dephase_unit hB 1) (dephase_unit hB 2) (dephase_hS_ne hB hd)
    (by
      rw [← Step2.sig_rows _ (dephase_row0 hB), dephase_sig hB, dephase_sS1, dephase_sS2, dephase_rS hB]
      obtain ⟨-, -, hre⟩ := critical_data hB hd hIm
      apply Complex.ext
      · rw [hre, Complex.ofReal_re]; rfl
      · rw [hIm, Complex.ofReal_im])
    (by
      rw [dephase_sS1, dephase_sS2, dephase_rS hB]
      intro j; rw [show Side.gS (blockS (triBlock H 0 l)) (blockT (triBlock H 0 l))
        (blockR (triBlock H 0 l)) = blockG (triBlock H 0 l) from rfl, lamL_block]; exact hL j) hp
  rw [dephase_sS1, dephase_sS2, dephase_rS hB] at hm
  exact (Finset.sum_congr rfl fun k _ => by rw [ex, ey]).trans hm

end NoFourMUBs.PRM.Coverage
