import KernelAtlas.Edge.Implicit

/-! Smoothness of the explicit augmented equations, before selecting their roots. -/

open Complex NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

open scoped ContDiff

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed L1.FlatCircuits

@[fun_prop] lemma contDiff_complexOfReal : ContDiff ℝ ∞ Complex.ofReal := Complex.ofRealCLM.contDiff
@[fun_prop] lemma contDiff_complexRe : ContDiff ℝ ∞ Complex.re := Complex.reCLM.contDiff
@[fun_prop] lemma contDiff_complexIm : ContDiff ℝ ∞ Complex.im := Complex.imCLM.contDiff
@[fun_prop] lemma contDiff_complexConj : ContDiff ℝ ∞ (starRingEnd ℂ) := Complex.conjCLE.contDiff

@[fun_prop] lemma contDiff_phiOf : ContDiff ℝ ∞ phiOf := by
  exact contDiff_pi.mpr fun j => contDiff_apply ℝ ℝ j.succ

@[fun_prop] lemma contDiff_sx : ContDiff ℝ ∞ sx := by
  apply contDiff_pi.mpr
  intro j
  unfold sx
  fun_prop

@[fun_prop] lemma contDiff_sy : ContDiff ℝ ∞ sy := by
  apply contDiff_pi.mpr
  intro j
  unfold sy
  fun_prop

@[fun_prop] lemma contDiff_rho4 : ContDiff ℝ ∞ (fun z : (Fin 3 → ℝ) × ℝ => rho4 z.1 z.2) := by
  apply contDiff_pi.mpr
  intro k
  simp only [rho4_apply]
  fin_cases k <;> dsimp [th4] <;> fun_prop

@[fun_prop] lemma contDiff_sideG :
    ContDiff ℝ ∞ (fun z : (ℂ × ℂ × ℂ) × (Fin 6 → ℝ) => sideG z.1.1 z.1.2.1 z.1.2.2 z.2) := by
  apply contDiff_pi.mpr
  intro k
  fin_cases k <;> dsimp [sideG, sS, rS] <;> fun_prop

@[fun_prop] lemma contDiff_sideF :
    ContDiff ℝ ∞ (fun z : (ℂ × ℂ × ℂ) × (Fin 6 → ℝ) => sideF z.1.1 z.1.2.1 z.1.2.2 z.2) := by
  apply contDiff_pi.mpr
  intro i
  unfold sideF
  split_ifs <;> fun_prop

@[fun_prop] lemma contDiff_edgeF (v : Bool) :
    ContDiff ℝ ∞ (fun z : ((Fin 3 → ℝ) × ℝ) × (Fin 7 → ℝ) => edgeF v z.1.1 z.1.2 z.2) := by
  have hg : ContDiff ℝ ∞ (fun r : Fin 4 → ℂ => (gs v r, gt v r, gr v r)) := by
    cases v <;> simp only [gs, gt, gr, Bool.false_eq_true, ↓reduceIte, sh, th, rh, sv, tv, rv] <;> fun_prop
  have hp : ContDiff ℝ ∞ (fun ξ : Fin 7 → ℝ => psiS (phiOf ξ)) := by
    simp only [psiS_eq, piS, hS, cS]
    fun_prop
  apply contDiff_pi.mpr
  intro i
  unfold edgeF
  split_ifs with hi
  · have hr : ContDiff ℝ ∞ (fun z : ((Fin 3 → ℝ) × ℝ) × (Fin 7 → ℝ) => rho4 z.1.1 (z.2 0)) :=
      contDiff_rho4.comp (f := fun z : ((Fin 3 → ℝ) × ℝ) × (Fin 7 → ℝ) => (z.1.1, z.2 0))
        (by fun_prop)
    exact (contDiff_apply ℝ ℝ (⟨i.1, hi⟩ : Fin 6)).comp (contDiff_sideF.comp
      ((hg.comp hr).prodMk (contDiff_phiOf.comp contDiff_snd)))
  · exact (contDiff_complexIm.comp (hp.comp contDiff_snd)).add
      ((contDiff_const.mul (contDiff_snd.comp contDiff_fst)).div_const 2)

@[fun_prop] lemma contDiff_parameters (B : EBallD) (D : EBoxD) :
    ContDiff ℝ ∞ (fun u => (aR B (ewOf D u), yR B (ewOf D u))) := by
  unfold aR yR ewOf
  fun_prop

end NoFourMUBs.KernelAtlas.Edge
