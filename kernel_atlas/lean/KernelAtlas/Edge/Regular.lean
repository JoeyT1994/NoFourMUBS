import KernelAtlas.Edge.C1eSide

/-!
# Matching the two augmented sides off the fold

For a nonzero label, either augmented system gives `R(a,t) = y²`. Strict monotonicity of
`R(a,·)` on a common interval therefore identifies the two fourth angles. Their opposite labels
then give the Hadamard completion by the existing certified-side theorem.
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed L1 L1.FlatCircuits

/-- The discriminant of the corner with fourth angle `t`. -/
def edgeR (a : Fin 3 → ℝ) (t : ℝ) : ℝ := seedR (seedOf (th4 a t))

lemma psiS_TS (φ : Fin 6 → ℝ) : psiS φ = -TS (sx φ) (sy φ) := by
  rw [psiS, psi_eq, sig_rows _ (fun _ => rfl)]
  rfl

/-- Both augmented sides have discriminant `y²` when the label is nonzero. -/
theorem edgeF_discriminant {v : Bool} {a : Fin 3 → ℝ} {y : ℝ} {ξ : Fin 7 → ℝ}
    (hF : edgeF v a y ξ = 0) (hy : y ≠ 0) : edgeR a (ξ 0) = y ^ 2 := by
  obtain ⟨hs, ht, hr, hl⟩ := edgeF_zero hF
  rw [psiS_TS, Complex.neg_im] at hl
  have hT : (TS (sx (phiOf ξ)) (sy (phiOf ξ))).im ≠ 0 := by
    intro h0
    rw [h0] at hl
    cases v <;> simp [lsgn] at hl <;> exact hy (by linarith)
  have hh : hS (sx (phiOf ξ)) (sy (phiOf ξ)) ≠ 0 := by
    intro h0; apply hT; simp [TS, h0]
  have hR := RS_eq_im_sq (normSq_sx (phiOf ξ)) (normSq_sy (phiOf ξ)) hh
  rw [hs, ht, hr, RS_eq] at hR
  have hval : 4 * (TS (sx (phiOf ξ)) (sy (phiOf ξ))).im ^ 2 = y ^ 2 := by
    cases v
    · have hi : (TS (sx (phiOf ξ)) (sy (phiOf ξ))).im = y / 2 := by
        simp [lsgn] at hl; linarith
      rw [hi]; ring
    · have hi : (TS (sx (phiOf ξ)) (sy (phiOf ξ))).im = -y / 2 := by
        simp [lsgn] at hl; linarith
      rw [hi]; ring
  rw [hval] at hR
  rw [edgeR, seedR_eq']
  cases v
  · exact hR
  · have hu : ∀ i, Complex.normSq (rho4 a (ξ 0) i) = 1 := fun i => Circle.normSq_coe _
    obtain ⟨eg, ee, ec⟩ := hv_eq hu
    simp only [gs, gt, gr, ↓reduceIte, gR, eg, ee, ec] at hR
    exact hR

/-- Monotonicity identifies the fourth angles of the two sides. -/
theorem equal_fourth {a : Fin 3 → ℝ} {y : ℝ} {ξH ξV : Fin 7 → ℝ} {I : Set ℝ}
    (hH : edgeF false a y ξH = 0) (hV : edgeF true a y ξV = 0) (hy : y ≠ 0)
    (hmono : StrictMonoOn (edgeR a) I) (htH : ξH 0 ∈ I) (htV : ξV 0 ∈ I) : ξH 0 = ξV 0 :=
  hmono.injOn htH htV ((edgeF_discriminant hH hy).trans (edgeF_discriminant hV hy).symm)

/-- Once the fourth angles agree, the opposite labels give a Hadamard completion. -/
theorem regular_completion {a : Fin 3 → ℝ} {y : ℝ} {ξH ξV : Fin 7 → ℝ}
    (hH : edgeF false a y ξH = 0) (hV : edgeF true a y ξV = 0) (hy : y ≠ 0)
    (ht : ξH 0 = ξV 0) :
    Hadamard6.IsHadamard (completion (Em (rho4 a (ξH 0)))
      (sideMat (sx (phiOf ξH)) (sy (phiOf ξH))) (sideMat (sx (phiOf ξV)) (sy (phiOf ξV)))ᵀ) := by
  obtain ⟨hsH, htH, hrH, hlH⟩ := edgeF_zero hH
  obtain ⟨hsV, htV, hrV, hlV⟩ := edgeF_zero hV
  simp only [gs, gt, gr, lsgn, Bool.false_eq_true, ↓reduceIte, one_mul] at hsH htH hrH hlH
  simp only [gs, gt, gr, lsgn, ↓reduceIte, neg_one_mul, neg_neg] at hsV htV hrV hlV
  rw [← ht] at hsV htV hrV
  simp only [psiS] at hlH hlV
  rcases lt_or_gt_of_ne hy with hy | hy
  · exact (Seed.matched_of_sides (o := 1) hsH htH hrH hsV htV hrV
      (by norm_num [osgn]; linarith)
      (by norm_num [osgn]; linarith)).2.1
  · exact (Seed.matched_of_sides (o := -1) hsH htH hrH hsV htV hrV
      (by norm_num [osgn]; linarith)
      (by norm_num [osgn]; linarith)).2.1

end NoFourMUBs.KernelAtlas.Edge
