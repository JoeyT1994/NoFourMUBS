import KernelAtlas.Edge.CoreRegular
import KernelAtlas.Edge.Label
import KernelAtlas.Edge.Angle

/-! Phase representatives and model soundness for the selected roots, including the fold. -/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def rootD (a : Fin 3 → ℝ) (ξH ξV : Fin 7 → ℝ) : Mat3 :=
  forcedD (L1.FlatCircuits.Em (rho4 a (ξH 0)))
    (L1.sideMat (sx (phiOf ξH)) (sy (phiOf ξH)))
    (L1.sideMat (sx (phiOf ξV)) (sy (phiOf ξV)))ᵀ

def rootPhase (a : Fin 3 → ℝ) (ξH ξV : Fin 7 → ℝ) (Φ : Fin 3 → Fin 3 → ℝ) : RMat6 :=
  Matrix.of fun i j => Qf (e4 (th4 a (ξH 0))) (e6 (phiOf ξH)) (e6 (phiOf ξV)) (e9 Φ) (ix i j)

set_option maxHeartbeats 2000000 in
/-- The real phase lift and both model enclosures for specified, checked roots. -/
theorem BoxRoots.phase_models {B : EBallD} {D : EBoxD} (r : BoxRoots B D)
    (hok : coreOK B D = true) (ul : BoxSpace D)
    (hHad : Hadamard6.IsHadamard
      (rootCompletion (aR B (ewOf D ul.1)) (r.H.root ul) (r.V.root ul))) :
    ∃ Φ : Fin 3 → Fin 3 → ℝ,
      (∀ a b, rootD (aR B (ewOf D ul.1)) (r.H.root ul) (r.V.root ul) a b = exp ((Φ a b : ℂ) * I)) ∧
      (∀ (a b : Fin 3), (gT (argModels B D) (3 * a + b)).Has ul.1 (Φ a b : ℂ)) ∧
      phaseMat (rootPhase (aR B (ewOf D ul.1)) (r.H.root ul) (r.V.root ul) Φ) =
        rootCompletion (aR B (ewOf D ul.1)) (r.H.root ul) (r.V.root ul) ∧
      (∀ i j, (gT (qModels B D) (ix i j)).Has ul.1
        (rootPhase (aR B (ewOf D ul.1)) (r.H.root ul) (r.V.root ul) Φ i j : ℂ)) ∧
      ∀ i j, (gT (kModels B D) (ix i j)).Has ul.1
        (phaseMat (rootPhase (aR B (ewOf D ul.1)) (r.H.root ul) (r.V.root ul) Φ) i j) := by
  let u := ul.1
  have hu := ul.2
  let ξH := r.H.root ul
  let ξV := r.V.root ul
  let h := D.hb
  let a := l3 (aT B D)
  let e012 := a.map (expI h nT)
  let xH := tubeE D.phH D.eH
  let xV := tubeE D.phV D.eV
  let e3 := addRho (expI h nT (re (gT D.phH 0))) (gn D.eH 0)
  let xyH := rowsE h D.phH D.eH
  let xyV := rowsE h D.phV D.eV
  let e := e012 ++ [e3]
  let Dk := forcedModel B D
  let argD := argModels B D
  have hQ : qModels B D = QT h (a ++ [gT xH 0])
      (l6 fun j => gT xH (j + 1)) (l6 fun j => gT xV (j + 1)) argD := rfl
  have hKm : kModels B D = blocksT (ET e) (BT xyH) (CT3 xyV) Dk.D := rfl
  have hp := coreOK_parts hok
  have hokH := hp.sideH
  have hokV := hp.sideV
  have hDok := hp.forced
  have hargok := hp.arg
  have he := has_e012 B D hu hp.exp_a
  have hel : e012.length = 3 := by simp [e012, a, l3]
  have hdH := r.H.error ul
  have hdV := r.V.error ul
  have hmH := has_tubeE hdH
  have hmV := has_tubeE hdV
  have hcor := has_e4 hel he (has_e3 hu hokH hdH)
  obtain ⟨hxH, hyH⟩ := has_rowsE hu hokH hdH
  obtain ⟨hxV, hyV⟩ := has_rowsE hu hokV hdV
  set E3 := L1.FlatCircuits.Em (rho4 (aR B (ewOf D u)) (ξH 0))
  set B3 := L1.sideMat (sx (phiOf ξH)) (sy (phiOf ξH))
  set C3 := (L1.sideMat (sx (phiOf ξV)) (sy (phiOf ξV)))ᵀ
  have hDmul : forcedD E3 B3 C3 * B3ᴴ = -(C3 * E3ᴴ) :=
    Method.forced_mul (cross_of_hadamard hHad)
  have hDh := forced_sound hu (has3_ET hcor) (has3_BT hxH hyH) (has3_CT3 hxV hyV) hDmul hDok
  have hunit : ∀ a b : Fin 3, ‖forcedD E3 B3 C3 a b‖ = 1 := fun a b => by
    have H := hHad.1 (.inr a) (.inr b)
    rw [Complex.normSq_eq_norm_sq] at H
    exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) (by norm_num)).1 H
  have harg : ∀ a b : Fin 3, ∃ Φ : ℝ, forcedD E3 B3 C3 a b = exp ((Φ : ℂ) * I) ∧
      (gT argD (3 * a + b)).Has u (Φ : ℂ) := fun a b => by
    have hk : 3 * (a : ℕ) + b < 9 := by omega
    have hak := all_l9 hargok hk
    simp only [Bool.and_eq_true] at hak
    obtain ⟨Φ, hΦ, hm⟩ := has_argT hu hak.1 (hDh a b)
    refine ⟨Φ, ?_, ?_⟩
    · rw [hΦ, hunit, Complex.ofReal_one, one_mul]
    · change (gT (l9 fun q => argT h nT (gi B.Pa q) (gT Dk.D q)) (3 * a + b)).Has u (Φ : ℂ)
      rw [gT_l9 _ hk]; exact hm
  choose Φ hΦD hΦm using harg
  have hAk : ∀ k, (gT argD k).Has u (e9 Φ k : ℂ) := fun k => by
    by_cases hk : k < 9
    · simp only [e9, dif_pos hk]
      have H := hΦm ⟨k / 3, by omega⟩ ⟨k % 3, by omega⟩
      simp only [] at H
      rwa [show 3 * (k / 3) + k % 3 = k by omega] at H
    · rw [gT_ge _ (by simp [argD, argModels, l9]; omega)]
      simp only [e9, dif_neg hk]
      exact has_zero' u
  set Qm := rootPhase (aR B (ewOf D u)) ξH ξV Φ
  have hphase : phaseMat Qm = completion E3 B3 C3 := by
    dsimp only [Qm, rootPhase]
    rw [phaseMat_Qf hΦD]; rfl
  refine ⟨Φ, hΦD, hΦm, hphase, fun i j => ?_, fun i j => ?_⟩
  · rw [hQ]
    exact has_QT (h := h) (has_th4 (B := B) (D := D) (hmH 0)) (has_phiOf hmH)
      (has_phiOf hmV) hAk (ix_lt i j)
  · rw [hKm, hphase]
    exact has_blocksT (has3_ET hcor) (has3_BT hxH hyH) (has3_CT3 hxV hyV) hDh i j

end NoFourMUBs.KernelAtlas.Edge
