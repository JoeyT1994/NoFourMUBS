import NoFourMUBs.PRM.CoverageStripLambda
import NoFourMUBs.PRM.CoverageStripScalar

/-!
# Critical strip classification (I4): reduction of the square-sum identities to pure algebra

`stripSq_alg`: on three rows of a Hadamard matrix whose split `l | 19 − l` has nonsingular halves with real
side signature and no moment pole, the whole-strip square sum is the explicit rational function

  `S = momentPoly (M_A + M_B)`,  `M_A = (lamData s t r z_A g_A).mom`,  `M_B = (lamData (−s) (−t) (−r) z_B g_B).mom`

of the Gram data `s, t, r` of the first half and the invariants `z, g` of the two halves
(`CRITICAL_STRIP_CLASSIFICATION.md` §1: the moment expansion `stripSq_eq_momentPoly`, the halves'
moments (`sum_tri_compl`), Newton's identities (`newton`) and the `λ`-substitution
(`halfDataOf_eq_lamData`)).

Consequently the square-sum identities follow from two statements about complex numbers `s, t, r` only
(`NonzeroJAlgebra`, `ZeroJAlgebra`, the computer-algebra content of §§2–3):
`nonzeroJSquareSum_of_algebra`, `zeroJSquareSum_of_algebra`.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open StripMoments Side

/-- Pointwise agreement on the 36 moments gives the same `momentPoly`. -/
theorem momentPoly_congr {M M' : ℤ × ℤ → ℂ} (h : ∀ p ∈ usedMoments, M p = M' p) :
    momentPoly M = momentPoly M' := by
  simp only [momentPoly]
  rw [h (-4, 2) (by decide),
    h (-3, 0) (by decide),
    h (-3, 1) (by decide),
    h (-3, 2) (by decide),
    h (-3, 3) (by decide),
    h (-2, -2) (by decide),
    h (-2, -1) (by decide),
    h (-2, 0) (by decide),
    h (-2, 1) (by decide),
    h (-2, 2) (by decide),
    h (-2, 3) (by decide),
    h (-2, 4) (by decide),
    h (-1, -2) (by decide),
    h (-1, -1) (by decide),
    h (-1, 2) (by decide),
    h (-1, 3) (by decide),
    h (0, -3) (by decide),
    h (0, -2) (by decide),
    h (0, 2) (by decide),
    h (0, 3) (by decide),
    h (1, -3) (by decide),
    h (1, -2) (by decide),
    h (1, 1) (by decide),
    h (1, 2) (by decide),
    h (2, -4) (by decide),
    h (2, -3) (by decide),
    h (2, -2) (by decide),
    h (2, -1) (by decide),
    h (2, 0) (by decide),
    h (2, 1) (by decide),
    h (2, 2) (by decide),
    h (3, -3) (by decide),
    h (3, -2) (by decide),
    h (3, -1) (by decide),
    h (3, 0) (by decide),
    h (4, -2) (by decide)]

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

/-- **The whole-strip square sum as a rational function of the corner data.** -/
theorem stripSq_alg {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20)
    (hIm : (Step2.sideSignature (triBlock H 0 l)).im = 0)
    (hIm' : (Step2.sideSignature (triBlock H 0 (19 - l))).im = 0)
    (hd : (triBlock H 0 l).det ≠ 0) (hd' : (triBlock H 0 (19 - l)).det ≠ 0)
    (hL : ∀ j, blockL (triBlock H 0 l) j ≠ 0) (hL' : ∀ j, blockL (triBlock H 0 (19 - l)) j ≠ 0) :
    (stripSq H : ℂ) = momentPoly (fun p =>
      (lamData (blockS (triBlock H 0 l)) (blockT (triBlock H 0 l)) (blockR (triBlock H 0 l))
        (blockTheta (triBlock H 0 l)) (blockG (triBlock H 0 l))).mom p +
      (lamData (-blockS (triBlock H 0 l)) (-blockT (triBlock H 0 l)) (-blockR (triBlock H 0 l))
        (blockTheta (triBlock H 0 (19 - l))) (blockG (triBlock H 0 (19 - l)))).mom p) := by
  rw [stripSq_eq_momentPoly hH]
  apply momentPoly_congr
  intro p hp
  rw [← blockS_compl hH, ← blockT_compl hH, ← blockR_compl hH, ← block_moment hH l hIm hd hL hp,
    ← block_moment hH (19 - l) hIm' hd' hL' hp, momentOf]
  exact (sum_tri_compl l (fun u => xsH H u ^ p.1 * ysH H u ^ p.2)).symm

end NoFourMUBs.PRM.Coverage
