import KernelAtlas.Edge.Models
import KernelAtlas.Edge.R4
import KernelAtlas.Edge.SideModels
import KernelAtlas.Edge.Image

/-!
# Soundness of an edge box away from the fold

The checked positive fourth-angle derivative identifies the two augmented roots. The existing
matched-side theorem then gives a Hadamard completion, enclosed by the phase and entry models.
Continuity is needed separately to extend this conclusion to the fold and glue the boxes.
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

lemma has_th4 {B : EBallD} {D : EBoxD} {u : Fin 4 → ℝ} {T : CT} {t : ℝ}
    (ht : T.Has u (t : ℂ)) (k : ℕ) :
    (gT (l3 (aT B D) ++ [T]) k).Has u (e4 (th4 (aR B (ewOf D u)) t) k : ℂ) := by
  by_cases hk : k < 4
  · interval_cases k
    · exact has_aT B D 0
    · exact has_aT B D 1
    · exact has_aT B D 2
    · exact ht
  · rw [gT_ge _ (by simp [l3]; omega)]
    simp only [e4, dif_neg hk]
    exact has_zero' u

lemma has_phiOf {u : Fin 4 → ℝ} {T : List CT} {ξ : Fin 7 → ℝ}
    (hT : ∀ j : Fin 7, (gT T j).Has u (ξ j : ℂ)) (k : ℕ) :
    (gT (l6 fun j => gT T (j + 1)) k).Has u (e6 (phiOf ξ) k : ℂ) := by
  by_cases hk : k < 6
  · rw [gT_l6 _ hk]
    simpa only [Fin.val_succ, e6, dif_pos hk, phiOf] using hT (Fin.succ ⟨k, hk⟩)
  · rw [gT_ge _ (by simp [l6]; omega)]
    simp only [e6, dif_neg hk]
    exact has_zero' u

set_option maxHeartbeats 2000000 in
/-- Every passing regular box has a Hadamard phase representative enclosed by both model lists. -/
theorem core_regular_sound {B : EBallD} {D : EBoxD} (hok : coreOK B D = true)
    {u : Fin 4 → ℝ} (hu : InBox D.hb u) (hy : yR B (ewOf D u) ≠ 0) :
    ∃ Q : RMat6, Hadamard6.IsHadamard (phaseMat Q) ∧
      (∀ i j, (gT (qModels B D) (ix i j)).Has u (Q i j : ℂ)) ∧
      ∀ i j, (gT (kModels B D) (ix i j)).Has u (phaseMat Q i j) := by
  set h := D.hb
  set a := l3 (aT B D)
  set e012 := a.map (expI h nT)
  set y := yT B D
  set xH := tubeE D.phH D.eH
  set xV := tubeE D.phV D.eV
  set e3 := addRho (expI h nT (re (gT D.phH 0))) (gn D.eH 0)
  set xyH := rowsE h D.phH D.eH
  set xyV := rowsE h D.phV D.eV
  set S := addRho (gT xH 0) (bnd h (sub (gT xH 0) (gT xV 0)))
  set dR := dRT h (gT e012 0) (gT e012 1) (gT e012 2) (expI h nT S)
  set e := e012 ++ [e3]
  set Dk := forcedT h D.Xp D.A0 (ET e) (BT xyH) (CT3 xyV)
  set argD := l9 fun q => argT h nT (gi B.Pa q) (gT Dk.D q)
  have hK : coreOK B D = (a.all (fun t => expOK t nT) &&
      sideE h false e012 y D.phH D.YH D.rhoH D.eH &&
      sideE h true e012 y D.phV D.YV D.rhoV D.eV && expOK S nT && posOK h dR && Dk.ok &&
      (l9 fun q => argOK h nT (gi B.Pa q) (gT Dk.D q) &&
        argWin h (gi B.Pa q) (gT argD q)).all id) := rfl
  have hQ : qModels B D = QT h (a ++ [gT xH 0])
      (l6 fun j => gT xH (j + 1)) (l6 fun j => gT xV (j + 1)) argD := rfl
  have hKm : kModels B D = blocksT (ET e) (BT xyH) (CT3 xyV) Dk.D := rfl
  rw [hK] at hok
  simp only [Bool.and_eq_true] at hok
  obtain ⟨⟨⟨⟨⟨⟨hexp, hokH⟩, hokV⟩, hSexp⟩, hpos⟩, hDok⟩, hargok⟩ := hok
  have he := has_e012 B D hu hexp
  have hel : e012.length = 3 := by simp [e012, a, l3]
  obtain ⟨⟨ξH, hξH, hFH⟩, hdistH, _⟩ := sideE_sound hu false hel he (has_yT B D) hokH
  obtain ⟨⟨ξV, hξV, hFV⟩, hdistV, _⟩ := sideE_sound hu true hel he (has_yT B D) hokV
  have hdH := hdistH ξH hξH hFH
  have hdV := hdistV ξV hξV hFV
  have hmH := has_tubeE hdH
  have hmV := has_tubeE hdV
  have hS := has_common_angle hu (hmH 0) (hmV 0)
  have hmono := strictMonoOn_edgeR hu (convex_uIcc _ _) (he 0) (he 1) (he 2) hS hSexp hpos
  have ht := equal_fourth hFH hFV hy hmono Set.left_mem_uIcc Set.right_mem_uIcc
  have hHad := regular_completion hFH hFV hy ht
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
    · rw [gT_l9 _ hk]; exact hm
  choose Φ hΦD hΦm using harg
  have hAk : ∀ k, (gT argD k).Has u (e9 Φ k : ℂ) := fun k => by
    by_cases hk : k < 9
    · simp only [e9, dif_pos hk]
      have H := hΦm ⟨k / 3, by omega⟩ ⟨k % 3, by omega⟩
      simp only [] at H
      rwa [show 3 * (k / 3) + k % 3 = k by omega] at H
    · rw [gT_ge _ (by simp [argD, l9]; omega)]
      simp only [e9, dif_neg hk]
      exact has_zero' u
  set Qm : RMat6 := Matrix.of fun i j => Qf (e4 (th4 (aR B (ewOf D u)) (ξH 0)))
    (e6 (phiOf ξH)) (e6 (phiOf ξV)) (e9 Φ) (ix i j)
  have hphase : phaseMat Qm = completion E3 B3 C3 := by
    dsimp only [Qm]
    rw [phaseMat_Qf hΦD]; rfl
  refine ⟨Qm, ?_, fun i j => ?_, fun i j => ?_⟩
  · rw [hphase]; exact hHad
  · rw [hQ]
    exact has_QT (h := h) (has_th4 (B := B) (D := D) (hmH 0)) (has_phiOf hmH)
      (has_phiOf hmV) hAk (ix_lt i j)
  · rw [hKm, hphase]
    exact has_blocksT (has3_ET hcor) (has3_BT hxH hyH) (has3_CT3 hxV hyV) hDh i j

/-- The regular C1e check also certifies the horizontal distance to F6. -/
theorem c1eBox_regular_sound {B : EBallD} {D : EBoxD} (hok : c1eBox B D = true)
    {u : Fin 4 → ℝ} (hu : InBox D.hb u) (hy : yR B (ewOf D u) ≠ 0) :
    ∃ Q : RMat6, Hadamard6.IsHadamard (phaseMat Q) ∧
      (∀ i j, (gT (qModels B D) (ix i j)).Has u (Q i j : ℂ)) ∧
      (∀ i j, (gT (kModels B D) (ix i j)).Has u (phaseMat Q i j)) ∧
      frob (hor (Q - F6phase)) ≤ rn B.nX / 36 := by
  rw [c1eBox_eq, Bool.and_eq_true] at hok
  obtain ⟨Q, hHad, hq, hk⟩ := core_regular_sound hok.1 hu hy
  exact ⟨Q, hHad, hq, hk, image_bound hu hq hok.2⟩

end NoFourMUBs.KernelAtlas.Edge
